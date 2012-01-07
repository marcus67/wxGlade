#!/usr/bin/env python
# wxglade.py: entry point of wxGlade
#
# Copyright (c) 2002-2007 Alberto Griggio <agriggio@users.sourceforge.net>
#
# License: MIT (see license.txt)
# THIS PROGRAM COMES WITH NO WARRANTY

import os
import sys
import gettext
import common
import optparse


t = gettext.translation(domain="wxglade", localedir="locale", fallback=True)
t.install("wxglade")

def _fix_path(path):
    """\
    Returns an absolute version of path, accroding to the invoking dir of
    wxglade (which can be different from '.' if it is invoked from a shell
    script)
    """
    if not os.path.isabs(path):
        return os.path.join(os.getcwd(), path)
        #getenv('WXGLADE_INVOKING_DIR', '.'), path)
    return path


def parse_command_line():
    """\
    Parse command line
    """
    # list of all available languages
    # don't load code generators at this point!!
    languages = ['C++', 'XRC', 'lisp', 'perl', 'python']

    # inject 
    optparse.OptionParser.format_description = lambda self, formatter: self.description

    parser = optparse.OptionParser(
        add_help_option=False,
        usage=_("""\
Usage: wxglade <WXG File>             start the wxGlade GUI
 or:   wxglade <Options> <WXG File>   generate code from command line
 or:   wxglade --version              show programs version number and exit
 or:   wxglade -h|--help              show this help message and exit"""),
        version=_("""\
wxGlade version %s
Copyright (C) 2007-2012 Alberto Griggio
License MIT: The MIT License
             <http://www.opensource.org/licenses/mit-license.php>""") % common.version
        )
    parser.add_option(
        '-h',
        '--help',
        dest='help',
        action='store_true',
        help=_('show this help message and exit'),
        )
    parser.add_option(
        "-g",
        "--generate-code",
        type="choice",
        choices=languages,
        metavar="LANG",
        dest="language",
        help=_("(required) output language, valid languages are: %s") % ", ".join(languages)
        )
    parser.add_option(
        "-o",
        "--output",
        metavar="PATH",
        dest="output",
        help=_("(optional) output file in single-file mode or output directory in multi-file mode"),
        )

    (options, args) = parser.parse_args()

    # print epilog because OptionParser.epilog isn't available to Python 2.3
    if options.help:
        parser.print_help()
        print _("""
Example: Generate Python code out of myapp.wxg

   wxglade -o temp -g python myapp.wxg

Report bugs to:    <wxglade-general@lists.sourceforge.net> or at
                   <http://sourceforge.net/projects/wxglade/>
wxGlade home page: <http://wxglade.sourceforge.net/>""")
        sys.exit()

    # make absolute path
    if len(args) == 1:
        options.filename = _fix_path(args[0])
    else:
        options.filename = None

    # check parameters
    #  - language
    #     - one file            -> cmdline code generation
    #     - no / > one files    -> usage
    #  - no language            -> start gui
    if options.language:
        if len(args) == 1:
            options.start_gui = False
        elif len(args) == 0:
            print >> sys.stderr, _("ERROR: No wxg file given!\n")
            parser.print_help()
            sys.exit(1)
        else:
            print >> sys.stderr, _("ERROR: Too many wxg files given!\n")
            parser.print_help()
            sys.exit(1)
    else:
        options.start_gui = True

    return options


def command_line_code_generation(filename, language, out_path=None):
    """\
    Starts a code generator without starting the GUI.

    @param filename: Name of wxg file to generate code from
    @type filename:  String
    @param language: Code generator language
    @type language:  String
    @param out_path: output file / output directory
    @type out_path:  String
    """
    common.use_gui = False # don't import wxPython.wx
    # use_gui has to be set before importing config
    import config
    config.init_preferences()
    common.load_code_writers()
    common.load_widgets()
    common.load_sizers()

    from xml_parse import CodeWriter
    if not common.code_writers.has_key(language):
        print >> sys.stderr, \
            _('Error: no writer for language "%s" available') % language
        sys.exit(1)

    writer = common.code_writers[language]
    CodeWriter(writer, filename, out_path)
    sys.exit(0)


def determine_wxglade_path():
    """\
    @return: wxGlade application directory
    """
    # use directory of the exe in case of frozen packages e.g.
    # PyInstaller or py2exe
    if hasattr(sys, 'frozen'):
        return os.path.dirname(sys.argv[0])

    root = __file__
    if os.path.islink(root):
        root = os.path.realpath(root)
    return os.path.dirname(os.path.abspath(root))


def run_main():
    """\
    This main procedure is started by calling either wxglade.py or
    wxglade.pyw on windows
    """
    # check command line parameters first
    options = parse_command_line()

    # print versions 
    print _("Starting wxGlade version %s on Python %s") % (
        common.version,
        common.py_version,
        )

    # prepend the widgets dir to the
    wxglade_path = determine_wxglade_path()
    
    # set the program's paths
    common.wxglade_path   = wxglade_path

    # static paths
    common.docs_path      = os.path.join(wxglade_path, 'docs')
    common.icons_path     = os.path.join(wxglade_path, 'icons')
    common.widgets_path   = os.path.join(wxglade_path, 'widgets')
    common.templates_path = os.path.join(wxglade_path, 'templates')
    common.tutorial_file  = os.path.join(common.docs_path, 'html', 'index.html')

    # search credits file at two different locations
    # - <wxglade_path>/docs/credits.txt for linux packages
    # - <wxglade_path>/credits.txt at Windows or started from source directory
    if os.path.exists(os.path.join(common.wxglade_path, 'credits.txt')):
        common.credits_file = os.path.join(common.wxglade_path, 'credits.txt')
    elif os.path.exists(os.path.join(common.docs_path, 'credits.txt')):
        common.credits_file = os.path.join(common.docs_path, 'credits.txt')
    else:
        print _('ERROR: credits file "credits.txt" not found!')
        common.credits_file = None

    # search license file at two different locations
    # - <wxglade_path>/docs/license.txt for linux packages
    # - <wxglade_path>/license.txt at Windows or started from source directory
    if os.path.exists(os.path.join(common.wxglade_path, 'license.txt')):
        common.license_file = os.path.join(common.wxglade_path, 'license.txt')
    elif os.path.exists(os.path.join(common.docs_path, 'license.txt')):
        common.license_file = os.path.join(common.docs_path, 'license.txt')
    else:
        print _('ERROR: license file "license.txt" not found!')
        common.license_file = None

    # print used paths
    print _('Base directory:             %s') % common.wxglade_path
    print _('Documentation directory:    %s') % common.docs_path
    print _('Icons directory:            %s') % common.icons_path
    print _('Build-in widgets directory: %s') % common.widgets_path
    print _('Template directory:         %s') % common.templates_path
    print _('Credits file:               %s') % common.credits_file
    print _('License file:               %s') % common.license_file
    print _('Tutorial file:              %s') % common.tutorial_file

    # adapt application search path
    sys.path = [common.wxglade_path, common.widgets_path] + sys.path

    if options.start_gui:
        import main
        main.main(options.filename)
    else:
        command_line_code_generation(
            filename=options.filename,
            language=options.language,
            out_path=options.output,
            )

if __name__ == "__main__":
    run_main()
