"""\
wxHyperlinkCtrl objects

@copyright: 2012-2016 Carsten Grohmann
@copyright: 2016-2020 Dietmar Schwertberger
@license: MIT (see LICENSE.txt) - THIS PROGRAM COMES WITH NO WARRANTY
"""


import wx
import common, compat, config
from edit_windows import ManagedBase, EditStylesMixin
import new_properties as np
import decorators

if compat.IS_PHOENIX:
    import wx.adv
    from wx.adv import HyperlinkCtrl
else:
    from wx import HyperlinkCtrl


class EditHyperlinkCtrl(ManagedBase, EditStylesMixin):
    "Class to handle wxHyperlinkCtrl objects"
    WX_CLASS = "wxHyperlinkCtrl"
    _PROPERTIES = ["Widget", "url", "label", "style", "attribute"]
    PROPERTIES = ManagedBase.PROPERTIES + _PROPERTIES + ManagedBase.EXTRA_PROPERTIES
    ManagedBase.MOVE_PROPERTY(PROPERTIES, "attribute", "name")
    _PROPERTY_HELP = { 'label':"Label of the hyperlink",
                       'url':"URL associated with the given label",
                       "attribute":'Store instance as attribute of window class; e.g. self.bitmap_1 = wx.wxStaticBitmap'
                                   '(...)\nWithout this, you can not access the bitmap from your program.'}

    def __init__(self, name, parent, index, label):
        # Initialise parent classes
        ManagedBase.__init__(self, name, parent, index)
        EditStylesMixin.__init__(self)

        # initialise instance properties
        self.label = np.TextProperty(label, multiline="grow")
        self.url   = np.TextProperty("")
        self.attribute = np.CheckBoxProperty(False, default_value=False)

    def create_widget(self):
        self.widget = HyperlinkCtrl(self.parent_window.widget, self.id, self.label, self.url)

    def _properties_changed(self, modified, actions):
        if not modified or "label" in modified:
            if self.widget: self.widget.SetLabel(self.label)
            if modified: actions.add("layout")

        if not modified or "url" in modified:
            if self.widget: self.widget.SetURL(self.url)
            if modified: actions.add("layout")

        EditStylesMixin._properties_changed(self, modified, actions)
        ManagedBase._properties_changed(self, modified, actions)

    # handle compatibility:
    @decorators.memoize
    def wxname2attr(self, name):
        cn = self.codegen.get_class(self.codegen.cn(name))
        module = wx if compat.IS_CLASSIC else wx.adv
        return getattr(module, cn)


def builder(parent, index, url=None, label=None):
    "factory function for EditHyperlinkCtrl objects"
    name = parent.toplevel_parent.get_next_contained_name('hyperlink_%d')
    if url is None and label is None:
        import dialogs, misc
        dlg = dialogs.WidgetStyleSelectionDialog(_("Hyperlink"), None, None, ["?URL", "?Label"])
        with misc.disable_stay_on_top(common.adding_window or parent):
            res = dlg.ShowModal()
        url, label = dlg.get_options()
        dlg.Destroy()
        if res != wx.ID_OK: return

    with parent.frozen():
        editor = EditHyperlinkCtrl(name, parent, index, label or "")
        editor.properties["style"].set_to_default()
        editor.properties["attribute"].set(True)  # allow to modificate it later on...
        editor.properties["url"].set(url or "")
        editor.check_defaults()
        if parent.widget: editor.create()
    return editor


def xml_builder(parser, base, name, parent, index):
    "factory to build EditHyperlinkCtrl objects from a XML file"
    return EditHyperlinkCtrl(name, parent, index, "")


def initialize():
    "initialization function for the module: returns a wxBitmapButton to be added to the main palette"
    common.widget_classes['EditHyperlinkCtrl'] = EditHyperlinkCtrl
    common.widgets['EditHyperlinkCtrl'] = builder
    common.widgets_from_xml['EditHyperlinkCtrl'] = xml_builder

    return common.make_object_button('EditHyperlinkCtrl', 'hyperlink_ctrl.xpm')
