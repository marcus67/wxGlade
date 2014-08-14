#!/usr/bin/env lisp
;;;
;;; generated by wxGlade "faked test version"
;;;

(asdf:operate 'asdf:load-op 'wxcl)
(use-package "FFI")
(ffi:default-foreign-language :stdc)


;;; begin wxGlade: dependencies
(use-package :wxBitmapButton)
(use-package :wxButton)
(use-package :wxCL)
(use-package :wxChoice)
(use-package :wxColour)
(use-package :wxComboBox)
(use-package :wxDatePickerCtrl)
(use-package :wxEvent)
(use-package :wxEvtHandler)
(use-package :wxFrame)
(use-package :wxGauge)
(use-package :wxListBox)
(use-package :wxListCtrl)
(use-package :wxNotebook)
(use-package :wxPanel)
(use-package :wxRadioBox)
(use-package :wxRadioButton)
(use-package :wxSizer)
(use-package :wxSpinButton)
(use-package :wxSpinCtrl)
(use-package :wxStaticBitmap)
(use-package :wxStaticLine)
(use-package :wxStaticText)
(use-package :wxTextCtrl)
(use-package :wxWindow)
(use-package :wx_main)
(use-package :wx_wrapper)
;;; end wxGlade

;;; begin wxGlade: extracode
;;; end wxGlade


(defclass All_Widgets_Frame()
        ((top-window :initform nil :accessor slot-top-window)
        (bitmap-button-1 :initform nil :accessor slot-bitmap-button-1)
        (sizer-13 :initform nil :accessor slot-sizer-13)
        (notebook-1-wxBitmapButton :initform nil :accessor slot-notebook-1-wxBitmapButton)
        (sizer-12 :initform nil :accessor slot-sizer-12)
        (notebook-1-wxCalendarCtrl :initform nil :accessor slot-notebook-1-wxCalendarCtrl)
        (choice-empty :initform nil :accessor slot-choice-empty)
        (choice-filled :initform nil :accessor slot-choice-filled)
        (sizer-5 :initform nil :accessor slot-sizer-5)
        (notebook-1-wxChoice :initform nil :accessor slot-notebook-1-wxChoice)
        (combo-box-empty :initform nil :accessor slot-combo-box-empty)
        (combo-box-filled :initform nil :accessor slot-combo-box-filled)
        (sizer-7 :initform nil :accessor slot-sizer-7)
        (sizer-6 :initform nil :accessor slot-sizer-6)
        (notebook-1-wxComboBox :initform nil :accessor slot-notebook-1-wxComboBox)
        (datepicker-ctrl-1 :initform nil :accessor slot-datepicker-ctrl-1)
        (sizer-17 :initform nil :accessor slot-sizer-17)
        (notebook-1-wxDatePickerCtrl :initform nil :accessor slot-notebook-1-wxDatePickerCtrl)
        (list-box-empty :initform nil :accessor slot-list-box-empty)
        (list-box-filled :initform nil :accessor slot-list-box-filled)
        (sizer-4 :initform nil :accessor slot-sizer-4)
        (notebook-1-wxListBox :initform nil :accessor slot-notebook-1-wxListBox)
        (list-ctrl-1 :initform nil :accessor slot-list-ctrl-1)
        (sizer-3 :initform nil :accessor slot-sizer-3)
        (notebook-1-wxListCtrl :initform nil :accessor slot-notebook-1-wxListCtrl)
        (radio-box-empty1 :initform nil :accessor slot-radio-box-empty1)
        (radio-box-filled1 :initform nil :accessor slot-radio-box-filled1)
        (radio-box-empty2 :initform nil :accessor slot-radio-box-empty2)
        (radio-box-filled2 :initform nil :accessor slot-radio-box-filled2)
        (grid-sizer-1 :initform nil :accessor slot-grid-sizer-1)
        (notebook-1-wxRadioBox :initform nil :accessor slot-notebook-1-wxRadioBox)
        (radio-btn-1 :initform nil :accessor slot-radio-btn-1)
        (text-ctrl-1 :initform nil :accessor slot-text-ctrl-1)
        (radio-btn-2 :initform nil :accessor slot-radio-btn-2)
        (text-ctrl-2 :initform nil :accessor slot-text-ctrl-2)
        (radio-btn-3 :initform nil :accessor slot-radio-btn-3)
        (text-ctrl-3 :initform nil :accessor slot-text-ctrl-3)
        (grid-sizer-2 :initform nil :accessor slot-grid-sizer-2)
        (sizer-8 :initform nil :accessor slot-sizer-8)
        (notebook-1-wxRadioButton :initform nil :accessor slot-notebook-1-wxRadioButton)
        (gauge-1 :initform nil :accessor slot-gauge-1)
        (sizer-15 :initform nil :accessor slot-sizer-15)
        (notebook-1-wxSlider :initform nil :accessor slot-notebook-1-wxSlider)
        (spin-button-1 :initform nil :accessor slot-spin-button-1)
        (sizer-16 :initform nil :accessor slot-sizer-16)
        (notebook-1-wxSpinButton :initform nil :accessor slot-notebook-1-wxSpinButton)
        (spin-ctrl-1 :initform nil :accessor slot-spin-ctrl-1)
        (sizer-14 :initform nil :accessor slot-sizer-14)
        (notebook-1-wxSpinCtrl :initform nil :accessor slot-notebook-1-wxSpinCtrl)
        (notebook-1-wxSplitterWindow :initform nil :accessor slot-notebook-1-wxSplitterWindow)
        (bitmap-code-nullbitmap :initform nil :accessor slot-bitmap-code-nullbitmap)
        (bitmap-file :initform nil :accessor slot-bitmap-file)
        (bitmap-nofile :initform nil :accessor slot-bitmap-nofile)
        (sizer-11 :initform nil :accessor slot-sizer-11)
        (notebook-1-wxStaticBitmap :initform nil :accessor slot-notebook-1-wxStaticBitmap)
        (static-line-2 :initform nil :accessor slot-static-line-2)
        (static-line-3 :initform nil :accessor slot-static-line-3)
        (sizer-10 :initform nil :accessor slot-sizer-10)
        (static-line-4 :initform nil :accessor slot-static-line-4)
        (static-line-5 :initform nil :accessor slot-static-line-5)
        (sizer-9 :initform nil :accessor slot-sizer-9)
        (notebook-1-wxStaticLine :initform nil :accessor slot-notebook-1-wxStaticLine)
        (label-3 :initform nil :accessor slot-label-3)
        (label-2 :initform nil :accessor slot-label-2)
        (grid-sizer-3 :initform nil :accessor slot-grid-sizer-3)
        (notebook-1-Spacer :initform nil :accessor slot-notebook-1-Spacer)
        (text-ctrl :initform nil :accessor slot-text-ctrl)
        (sizer-18 :initform nil :accessor slot-sizer-18)
        (notebook-1-wxTextCtrl :initform nil :accessor slot-notebook-1-wxTextCtrl)
        (notebook-1 :initform nil :accessor slot-notebook-1)
        (static-line-1 :initform nil :accessor slot-static-line-1)
        (button-5 :initform nil :accessor slot-button-5)
        (button-1 :initform nil :accessor slot-button-1)
        (sizer-2 :initform nil :accessor slot-sizer-2)
        (sizer-1 :initform nil :accessor slot-sizer-1)))

(defun make-All_Widgets_Frame ()
        (let ((obj (make-instance 'All_Widgets_Frame)))
          (init obj)
          (set-properties obj)
          (do-layout obj)
          obj))

(defmethod init ((obj All_Widgets_Frame))
"Method creates the objects contained in the class."
        ;;; begin wxGlade: All_Widgets_Frame.__init__
        (setf (slot-top-window obj) (wxFrame_create nil wxID_ANY "" -1 -1 -1 -1 wxDEFAULT_FRAME_STYLE))
        (setf (slot-notebook-1 obj) (wxNotebook_Create (slot-top-window obj) wxID_ANY -1 -1 -1 -1 wxNB_BOTTOM))
        (setf (slot-notebook-1-wxBitmapButton obj) (wxPanel_Create (slot-notebook-1 obj) wxID_ANY -1 -1 -1 -1 wxTAB_TRAVERSAL))
        (setf (slot-bitmap-button-1 obj) (wxBitmapButton_Create (slot-notebook-1-wxBitmapButton obj) wxID_ANY (wxBitmap_CreateLoad "icon.xpm", wxBITMAP_TYPE_ANY) -1 -1 -1 -1 0))
        (setf (slot-notebook-1-wxCalendarCtrl obj) (wxPanel_Create (slot-notebook-1 obj) wxID_ANY -1 -1 -1 -1 wxTAB_TRAVERSAL))
        
        ;;; WARNING: Code for instance "calendar-ctrl-1" of "wxCalendarCtrl" not generated: no suitable writer found
        
        (setf (slot-notebook-1-wxChoice obj) (wxPanel_Create (slot-notebook-1 obj) wxID_ANY -1 -1 -1 -1 wxTAB_TRAVERSAL))
        (setf (slot-choice-empty obj) (wxChoice_Create (slot-notebook-1-wxChoice obj) wxID_ANY -1 -1 -1 -1 0 (vector )  0))
        (setf (slot-choice-filled obj) (wxChoice_Create (slot-notebook-1-wxChoice obj) wxID_ANY -1 -1 -1 -1 2 (vector (_"Item 1") (_"Item 2 (pre-selected)"))  0))
        (setf (slot-notebook-1-wxComboBox obj) (wxPanel_Create (slot-notebook-1 obj) wxID_ANY -1 -1 -1 -1 wxTAB_TRAVERSAL))
        (setf (slot-combo-box-empty obj) (wxComboBox_Create (slot-notebook-1-wxComboBox obj) wxID_ANY "" -1 -1 -1 -1 0 (vector ) wxCB_DROPDOWN))
        (setf (slot-combo-box-filled obj) (wxComboBox_Create (slot-notebook-1-wxComboBox obj) wxID_ANY "" -1 -1 -1 -1 2 (vector (_"Item 1 (pre-selected)") (_"Item 2")) wxCB_DROPDOWN))
        (setf (slot-notebook-1-wxDatePickerCtrl obj) (wxPanel_Create (slot-notebook-1 obj) wxID_ANY -1 -1 -1 -1 wxTAB_TRAVERSAL))
        (setf (slot-datepicker-ctrl-1 obj) (wxDatePickerCtrl_Create (slot-notebook-1-wxDatePickerCtrl obj) wxID_ANY -1 -1 -1 -1 0))
        (setf (slot-notebook-1-wxListBox obj) (wxPanel_Create (slot-notebook-1 obj) wxID_ANY -1 -1 -1 -1 wxTAB_TRAVERSAL))
        (setf (slot-list-box-empty obj) (wxListBox_Create (slot-notebook-1-wxListBox obj) wxID_ANY -1 -1 -1 -1 0 (vector ) 0))
        (setf (slot-list-box-filled obj) (wxListBox_Create (slot-notebook-1-wxListBox obj) wxID_ANY -1 -1 -1 -1 2 (vector (_"Item 1") (_"Item 2 (pre-selected)")) 0))
        (setf (slot-notebook-1-wxListCtrl obj) (wxPanel_Create (slot-notebook-1 obj) wxID_ANY -1 -1 -1 -1 wxTAB_TRAVERSAL))
        (setf (slot-list-ctrl-1 obj) (wxListCtrl_Create (slot-notebook-1-wxListCtrl obj) wxID_ANY -1 -1 -1 -1 (logior wxLC_REPORT wxSUNKEN_BORDER)))
        (setf (slot-notebook-1-wxRadioBox obj) (wxPanel_Create (slot-notebook-1 obj) wxID_ANY -1 -1 -1 -1 wxTAB_TRAVERSAL))
        (setf (slot-radio-box-empty1 obj) (wxRadioBox_Create (slot-notebook-1-wxRadioBox obj) wxID_ANY (_"radio_box_empty1") -1 -1 -1 -1 0 (vector ) 0 wxRA_SPECIFY_ROWS))
        (setf (slot-radio-box-filled1 obj) (wxRadioBox_Create (slot-notebook-1-wxRadioBox obj) wxID_ANY (_"radio_box_filled1") -1 -1 -1 -1 3 (vector (_"choice 1") (_"choice 2 (pre-selected)") (_"choice 3")) 0 wxRA_SPECIFY_ROWS))
        (setf (slot-radio-box-empty2 obj) (wxRadioBox_Create (slot-notebook-1-wxRadioBox obj) wxID_ANY (_"radio_box_empty2") -1 -1 -1 -1 0 (vector ) 0 wxRA_SPECIFY_COLS))
        (setf (slot-radio-box-filled2 obj) (wxRadioBox_Create (slot-notebook-1-wxRadioBox obj) wxID_ANY (_"radio_box_filled2") -1 -1 -1 -1 2 (vector (_"choice 1") (_"choice 2 (pre-selected)")) 0 wxRA_SPECIFY_COLS))
        (setf (slot-notebook-1-wxRadioButton obj) (wxPanel_Create (slot-notebook-1 obj) wxID_ANY -1 -1 -1 -1 wxTAB_TRAVERSAL))
        (setf (slot-radio-btn-1 obj) (wxRadioButton_Create (slot-notebook-1-wxRadioButton obj) wxID_ANY (_"Alice") -1 -1 -1 -1 wxRB_GROUP))
        (setf (slot-text-ctrl-1 obj) (wxTextCtrl_Create (slot-notebook-1-wxRadioButton obj) wxID_ANY "" -1 -1 -1 -1 0))
        (setf (slot-radio-btn-2 obj) (wxRadioButton_Create (slot-notebook-1-wxRadioButton obj) wxID_ANY (_"Bob") -1 -1 -1 -1 0))
        (setf (slot-text-ctrl-2 obj) (wxTextCtrl_Create (slot-notebook-1-wxRadioButton obj) wxID_ANY "" -1 -1 -1 -1 0))
        (setf (slot-radio-btn-3 obj) (wxRadioButton_Create (slot-notebook-1-wxRadioButton obj) wxID_ANY (_"Malroy") -1 -1 -1 -1 0))
        (setf (slot-text-ctrl-3 obj) (wxTextCtrl_Create (slot-notebook-1-wxRadioButton obj) wxID_ANY "" -1 -1 -1 -1 0))
        (setf (slot-sizer-8 obj) (StaticBoxSizer_Create (wxStaticBox:wxStaticBox_Create (slot-notebook-1-wxRadioButton obj) (_"My RadioButton Group")) wxHORIZONTAL))
        (setf (slot-notebook-1-wxSlider obj) (wxPanel_Create (slot-notebook-1 obj) wxID_ANY -1 -1 -1 -1 wxTAB_TRAVERSAL))
        (setf (slot-gauge-1 obj) (wxGauge_Create (slot-notebook-1-wxSlider obj) wxID_ANY 20 -1 -1 -1 -1 0))
        (setf (slot-notebook-1-wxSpinButton obj) (wxPanel_Create (slot-notebook-1 obj) wxID_ANY -1 -1 -1 -1 wxTAB_TRAVERSAL))
        (setf (slot-spin-button-1 obj) (wxSpinButton_Create (slot-notebook-1-wxSpinButton obj) wxID_ANY -1 -1 -1 -1 0))
        (setf (slot-notebook-1-wxSpinCtrl obj) (wxPanel_Create (slot-notebook-1 obj) wxID_ANY -1 -1 -1 -1 wxTAB_TRAVERSAL))
        (setf (slot-spin-ctrl-1 obj) (wxSpinCtrl_Create (slot-notebook-1-wxSpinCtrl obj) wxID_ANY 4 -1 -1 -1 -1 (logior wxSP_ARROW_KEYS wxTE_AUTO_URL) 0 100 4))
        (setf (slot-notebook-1-wxSplitterWindow obj) (wxPanel_Create (slot-notebook-1 obj) wxID_ANY -1 -1 -1 -1 wxTAB_TRAVERSAL))
        (setf (slot-notebook-1-wxStaticBitmap obj) (wxPanel_Create (slot-notebook-1 obj) wxID_ANY -1 -1 -1 -1 wxTAB_TRAVERSAL))
        (setf (slot-bitmap-code-nullbitmap obj) (wxStaticBitmap_Create (slot-notebook-1-wxStaticBitmap obj) wxID_ANY  (wxNullBitmap) -1 -1 -1 -1 0))
        (setf (slot-bitmap-file obj) (wxStaticBitmap_Create (slot-notebook-1-wxStaticBitmap obj) wxID_ANY  (wxBitmap_CreateLoad "icon.xpm" wxBITMAP_TYPE_ANY) -1 -1 -1 -1 0))
        (setf (slot-bitmap-nofile obj) (wxStaticBitmap_Create (slot-notebook-1-wxStaticBitmap obj) wxID_ANY  (wxBitmap_CreateLoad "non-existing.bmp" wxBITMAP_TYPE_ANY) -1 -1 -1 -1 0))
        (setf (slot-notebook-1-wxStaticLine obj) (wxPanel_Create (slot-notebook-1 obj) wxID_ANY -1 -1 -1 -1 wxTAB_TRAVERSAL))
        (setf (slot-static-line-2 obj) (wxStaticLine_Create (slot-notebook-1-wxStaticLine obj) wxID_ANY -1 -1 -1 -1 wxLI_VERTICAL))
        (setf (slot-static-line-3 obj) (wxStaticLine_Create (slot-notebook-1-wxStaticLine obj) wxID_ANY -1 -1 -1 -1 wxLI_VERTICAL))
        (setf (slot-static-line-4 obj) (wxStaticLine_Create (slot-notebook-1-wxStaticLine obj) wxID_ANY -1 -1 -1 -1 0))
        (setf (slot-static-line-5 obj) (wxStaticLine_Create (slot-notebook-1-wxStaticLine obj) wxID_ANY -1 -1 -1 -1 0))
        (setf (slot-notebook-1-Spacer obj) (wxPanel_Create (slot-notebook-1 obj) wxID_ANY -1 -1 -1 -1 wxTAB_TRAVERSAL))
        (setf (slot-label-3 obj) (wxStaticText_Create (slot-notebook-1-Spacer obj) wxID_ANY (_"Two labels with a") -1 -1 -1 -1 0))
        (setf (slot-label-2 obj) (wxStaticText_Create (slot-notebook-1-Spacer obj) wxID_ANY (_"spacer between") -1 -1 -1 -1 0))
        (setf (slot-notebook-1-wxTextCtrl obj) (wxPanel_Create (slot-notebook-1 obj) wxID_ANY -1 -1 -1 -1 wxTAB_TRAVERSAL))
        (setf (slot-text-ctrl obj) (wxTextCtrl_Create (slot-notebook-1-wxTextCtrl obj) wxID_ANY (_"This\nis\na\nmultiline\nwxTextCtrl") -1 -1 -1 -1 (logior wxTE_MULTILINE wxTE_LINEWRAP wxTE_WORDWRAP)))
        (setf (slot-static-line-1 obj) (wxStaticLine_Create (slot-top-window obj) wxID_ANY -1 -1 -1 -1 0))
        (setf (slot-button-5 obj) (wxButton_Create (slot-top-window obj) wxID_CLOSE "" -1 -1 -1 -1 0))
        (setf (slot-button-1 obj) (wxButton_Create (slot-top-window obj) wxID_OK "" -1 -1 -1 -1 wxBU_TOP))

        (wxEvtHandler_Connect (slot-top-window obj) obj.button-1 (expwxEVT_BUTTON)
        (wxClosure_Create #'startConverting obj))
        ;;; end wxGlade
        )

(defmethod set-properties ((obj All_Widgets_Frame))
        ;;; begin wxGlade: All_Widgets_Frame.__set_properties
        (wxFrame_SetTitle (slot-top-window obj) (_"All Widgets"))
        (wxButton_SetDefault (slot-bitmap-button-1 obj))
        (wxButton_SetDefault (slot-bitmap-button-1 obj))
        (wxChoice_SetSelection (slot-choice-filled obj) 1)
        (wxComboBox_SetSelection (slot-combo-box-filled obj) 0)
        (wxListBox_SetSelection (slot-list-box-filled obj) 1)
        (wxRadioBox_SetSelection (slot-radio-box-filled1 obj) 1)
        (wxRadioBox_SetSelection (slot-radio-box-filled2 obj) 1)
        ;;; end wxGlade
        )

(defmethod do-layout ((obj All_Widgets_Frame))
        ;;; begin wxGlade: All_Widgets_Frame.__do_layout
        (setf (slot-sizer-1 obj) (wxGridSizer_Create 3 1 0 0))
        (setf (slot-sizer-2 obj) (wxGridSizer_Create 1 2 0 0))
        (setf (slot-sizer-18 obj) (wxBoxSizer_Create wxHORIZONTAL))
        (setf (slot-grid-sizer-3 obj) (wxGridSizer_Create 1 3 0 0))
        (setf (slot-sizer-9 obj) (wxBoxSizer_Create wxVERTICAL))
        (setf (slot-sizer-10 obj) (wxBoxSizer_Create wxHORIZONTAL))
        (setf (slot-sizer-11 obj) (wxBoxSizer_Create wxVERTICAL))
        (setf (slot-sizer-14 obj) (wxBoxSizer_Create wxHORIZONTAL))
        (setf (slot-sizer-16 obj) (wxBoxSizer_Create wxHORIZONTAL))
        (setf (slot-sizer-15 obj) (wxBoxSizer_Create wxHORIZONTAL))
        (setf (slot-grid-sizer-2 obj) (wxGridSizer_Create 3 2 0 0))
        (setf (slot-grid-sizer-1 obj) (wxGridSizer_Create 2 2 0 0))
        (setf (slot-sizer-3 obj) (wxBoxSizer_Create wxHORIZONTAL))
        (setf (slot-sizer-4 obj) (wxBoxSizer_Create wxVERTICAL))
        (setf (slot-sizer-17 obj) (wxBoxSizer_Create wxHORIZONTAL))
        (setf (slot-sizer-6 obj) (wxBoxSizer_Create wxVERTICAL))
        (setf (slot-sizer-7 obj) (wxBoxSizer_Create wxHORIZONTAL))
        (setf (slot-sizer-5 obj) (wxBoxSizer_Create wxHORIZONTAL))
        (setf (slot-sizer-12 obj) (wxBoxSizer_Create wxHORIZONTAL))
        (setf (slot-sizer-13 obj) (wxBoxSizer_Create wxHORIZONTAL))
        (wxSizer_AddWindow (slot-sizer-13 obj) (slot-bitmap-button-1 obj) 1 (logior wxALL wxEXPAND) 5 nil)
        (wxWindow_SetSizer (slot-notebook-1-wxBitmapButton obj) (slot-sizer-13 obj))
        (wxWindow_SetSizer (slot-notebook-1-wxCalendarCtrl obj) (slot-sizer-12 obj))
        (wxSizer_AddWindow (slot-sizer-5 obj) (slot-choice-empty obj) 1 wxALL 5 nil)
        (wxSizer_AddWindow (slot-sizer-5 obj) (slot-choice-filled obj) 1 wxALL 5 nil)
        (wxWindow_SetSizer (slot-notebook-1-wxChoice obj) (slot-sizer-5 obj))
        (wxSizer_AddWindow (slot-sizer-7 obj) (slot-combo-box-empty obj) 1 wxALL 5 nil)
        (wxSizer_AddWindow (slot-sizer-7 obj) (slot-combo-box-filled obj) 1 wxALL 5 nil)
        (wxSizer_AddSizer (slot-sizer-6 obj) (slot-sizer-7 obj) 1 wxEXPAND 0 nil)
        (wxWindow_SetSizer (slot-notebook-1-wxComboBox obj) (slot-sizer-6 obj))
        (wxSizer_AddWindow (slot-sizer-17 obj) (slot-datepicker-ctrl-1 obj) 1 (logior wxALL wxALIGN_CENTER_HORIZONTAL wxALIGN_CENTER_VERTICAL) 5 nil)
        (wxWindow_SetSizer (slot-notebook-1-wxDatePickerCtrl obj) (slot-sizer-17 obj))
        (wxSizer_AddWindow (slot-sizer-4 obj) (slot-list-box-empty obj) 1 (logior wxALL wxEXPAND) 5 nil)
        (wxSizer_AddWindow (slot-sizer-4 obj) (slot-list-box-filled obj) 1 (logior wxALL wxEXPAND) 5 nil)
        (wxWindow_SetSizer (slot-notebook-1-wxListBox obj) (slot-sizer-4 obj))
        (wxSizer_AddWindow (slot-sizer-3 obj) (slot-list-ctrl-1 obj) 1 (logior wxALL wxEXPAND) 5 nil)
        (wxWindow_SetSizer (slot-notebook-1-wxListCtrl obj) (slot-sizer-3 obj))
        (wxSizer_AddWindow (slot-grid-sizer-1 obj) (slot-radio-box-empty1 obj) 1 (logior wxALL wxEXPAND) 5 nil)
        (wxSizer_AddWindow (slot-grid-sizer-1 obj) (slot-radio-box-filled1 obj) 1 (logior wxALL wxEXPAND) 5 nil)
        (wxSizer_AddWindow (slot-grid-sizer-1 obj) (slot-radio-box-empty2 obj) 1 (logior wxALL wxEXPAND) 5 nil)
        (wxSizer_AddWindow (slot-grid-sizer-1 obj) (slot-radio-box-filled2 obj) 1 (logior wxALL wxEXPAND) 5 nil)
        (wxWindow_SetSizer (slot-notebook-1-wxRadioBox obj) (slot-grid-sizer-1 obj))
        (wxSizer_AddWindow (slot-grid-sizer-2 obj) (slot-radio-btn-1 obj) 1 (logior wxALL wxEXPAND) 5 nil)
        (wxSizer_AddWindow (slot-grid-sizer-2 obj) (slot-text-ctrl-1 obj) 1 (logior wxALL wxEXPAND) 5 nil)
        (wxSizer_AddWindow (slot-grid-sizer-2 obj) (slot-radio-btn-2 obj) 1 (logior wxALL wxEXPAND) 5 nil)
        (wxSizer_AddWindow (slot-grid-sizer-2 obj) (slot-text-ctrl-2 obj) 1 (logior wxALL wxEXPAND) 5 nil)
        (wxSizer_AddWindow (slot-grid-sizer-2 obj) (slot-radio-btn-3 obj) 1 (logior wxALL wxEXPAND) 5 nil)
        (wxSizer_AddWindow (slot-grid-sizer-2 obj) (slot-text-ctrl-3 obj) 1 (logior wxALL wxEXPAND) 5 nil)
        (wxSizer_AddSizer (slot-sizer-8 obj) (slot-grid-sizer-2 obj) 1 wxEXPAND 0 nil)
        (wxWindow_SetSizer (slot-notebook-1-wxRadioButton obj) (slot-sizer-8 obj))
        (wxSizer_AddWindow (slot-sizer-15 obj) (slot-gauge-1 obj) 1 wxALL 5 nil)
        (wxWindow_SetSizer (slot-notebook-1-wxSlider obj) (slot-sizer-15 obj))
        (wxSizer_AddWindow (slot-sizer-16 obj) (slot-spin-button-1 obj) 1 (logior wxALL wxEXPAND wxALIGN_CENTER_HORIZONTAL wxALIGN_CENTER_VERTICAL) 5 nil)
        (wxWindow_SetSizer (slot-notebook-1-wxSpinButton obj) (slot-sizer-16 obj))
        (wxSizer_AddWindow (slot-sizer-14 obj) (slot-spin-ctrl-1 obj) 1 wxALL 5 nil)
        (wxWindow_SetSizer (slot-notebook-1-wxSpinCtrl obj) (slot-sizer-14 obj))
        (wxSizer_AddWindow (slot-sizer-11 obj) (slot-bitmap-code-nullbitmap obj) 1 (logior wxALL wxEXPAND wxALIGN_CENTER_HORIZONTAL wxALIGN_CENTER_VERTICAL) 5 nil)
        (wxSizer_AddWindow (slot-sizer-11 obj) (slot-bitmap-file obj) 1 (logior wxALL wxEXPAND wxALIGN_CENTER_HORIZONTAL wxALIGN_CENTER_VERTICAL) 5 nil)
        (wxSizer_AddWindow (slot-sizer-11 obj) (slot-bitmap-nofile obj) 1 (logior wxALL wxEXPAND wxALIGN_CENTER_HORIZONTAL wxALIGN_CENTER_VERTICAL) 5 nil)
        (wxWindow_SetSizer (slot-notebook-1-wxStaticBitmap obj) (slot-sizer-11 obj))
        (wxSizer_AddWindow (slot-sizer-10 obj) (slot-static-line-2 obj) 1 (logior wxALL wxEXPAND) 5 nil)
        (wxSizer_AddWindow (slot-sizer-10 obj) (slot-static-line-3 obj) 1 (logior wxALL wxEXPAND) 5 nil)
        (wxSizer_AddSizer (slot-sizer-9 obj) (slot-sizer-10 obj) 1 wxEXPAND 0 nil)
        (wxSizer_AddWindow (slot-sizer-9 obj) (slot-static-line-4 obj) 1 (logior wxALL wxEXPAND) 5 nil)
        (wxSizer_AddWindow (slot-sizer-9 obj) (slot-static-line-5 obj) 1 (logior wxALL wxEXPAND) 5 nil)
        (wxWindow_SetSizer (slot-notebook-1-wxStaticLine obj) (slot-sizer-9 obj))
        (wxSizer_AddWindow (slot-grid-sizer-3 obj) (slot-label-3 obj) 1 (logior wxALL wxEXPAND) 5 nil)
        (wxSizer_AddWindow (slot-grid-sizer-3 obj) ((60, 20) obj) 1 (logior wxALL wxEXPAND) 5 nil)
        (wxSizer_AddWindow (slot-grid-sizer-3 obj) (slot-label-2 obj) 1 (logior wxALL wxEXPAND) 5 nil)
        (wxWindow_SetSizer (slot-notebook-1-Spacer obj) (slot-grid-sizer-3 obj))
        (wxSizer_AddWindow (slot-sizer-18 obj) (slot-text-ctrl obj) 1 (logior wxALL wxEXPAND) 5 nil)
        (wxWindow_SetSizer (slot-notebook-1-wxTextCtrl obj) (slot-sizer-18 obj))
        (wxNotebook_AddPage (slot-notebook-1 obj) (slot-notebook-1-wxBitmapButton obj) (_"wxBitmapButton") 1 -1)
        (wxNotebook_AddPage (slot-notebook-1 obj) (slot-notebook-1-wxCalendarCtrl obj) (_"wxCalendarCtrl") 1 -1)
        (wxNotebook_AddPage (slot-notebook-1 obj) (slot-notebook-1-wxChoice obj) (_"wxChoice") 1 -1)
        (wxNotebook_AddPage (slot-notebook-1 obj) (slot-notebook-1-wxComboBox obj) (_"wxComboBox") 1 -1)
        (wxNotebook_AddPage (slot-notebook-1 obj) (slot-notebook-1-wxDatePickerCtrl obj) (_"wxDatePickerCtrl") 1 -1)
        (wxNotebook_AddPage (slot-notebook-1 obj) (slot-notebook-1-wxListBox obj) (_"wxListBox") 1 -1)
        (wxNotebook_AddPage (slot-notebook-1 obj) (slot-notebook-1-wxListCtrl obj) (_"wxListCtrl") 1 -1)
        (wxNotebook_AddPage (slot-notebook-1 obj) (slot-notebook-1-wxRadioBox obj) (_"wxRadioBox") 1 -1)
        (wxNotebook_AddPage (slot-notebook-1 obj) (slot-notebook-1-wxRadioButton obj) (_"wxRadioButton") 1 -1)
        (wxNotebook_AddPage (slot-notebook-1 obj) (slot-notebook-1-wxSlider obj) (_"wxSlider") 1 -1)
        (wxNotebook_AddPage (slot-notebook-1 obj) (slot-notebook-1-wxSpinButton obj) (_"wxSpinButton") 1 -1)
        (wxNotebook_AddPage (slot-notebook-1 obj) (slot-notebook-1-wxSpinCtrl obj) (_"wxSpinCtrl") 1 -1)
        (wxNotebook_AddPage (slot-notebook-1 obj) (slot-notebook-1-wxSplitterWindow obj) (_"wxSplitterWindow") 1 -1)
        (wxNotebook_AddPage (slot-notebook-1 obj) (slot-notebook-1-wxStaticBitmap obj) (_"wxStaticBitmap") 1 -1)
        (wxNotebook_AddPage (slot-notebook-1 obj) (slot-notebook-1-wxStaticLine obj) (_"wxStaticLine") 1 -1)
        (wxNotebook_AddPage (slot-notebook-1 obj) (slot-notebook-1-Spacer obj) (_"wxStaticText (with Spacer)") 1 -1)
        (wxNotebook_AddPage (slot-notebook-1 obj) (slot-notebook-1-wxTextCtrl obj) (_"wxTextCtrl") 1 -1)
        (wxSizer_AddWindow (slot-sizer-1 obj) (slot-notebook-1 obj) 1 wxEXPAND 0 nil)
        (wxSizer_AddWindow (slot-sizer-1 obj) (slot-static-line-1 obj) 0 (logior wxALL wxEXPAND) 5 nil)
        (wxSizer_AddWindow (slot-sizer-2 obj) (slot-button-5 obj) 0 (logior wxALL wxALIGN_RIGHT) 5 nil)
        (wxSizer_AddWindow (slot-sizer-2 obj) (slot-button-1 obj) 0 (logior wxALL wxALIGN_RIGHT) 5 nil)
        (wxSizer_AddSizer (slot-sizer-1 obj) (slot-sizer-2 obj) 0 wxALIGN_RIGHT 0 nil)
        (wxWindow_SetSizer (slot-frame obj) (slot-sizer-1 obj))
        (wxSizer_Fit (slot-sizer-1 obj) (slot-frame obj))
        (wxSizer_SetSizeHints (slot-slot-sizer-1 obj) (slot-frame obj))
        (wxFlexGridSizer_AddGrowableRow (slot-sizer-1 obj) 0)
        (wxFlexGridSizer_AddGrowableCol (slot-sizer-1 obj) 0)
        (wxFrame_layout (slot-All-Widgets self))
        (wxFrame_Centre (slot-top-window obj) wxBOTH)
        ;;; end wxGlade
        )

(defun startConverting (function data event) ;;; wxGlade: All_Widgets_Frame.<event_handler>
        (print "Event handler 'startConverting' not implemented!")
        (when event
                (wxEvent:wxEvent_Skip event)))

;;; end of class All_Widgets_Frame


(defun init-func (fun data evt)
    (setf (textdomain) "ComplexExampleApp") ;; replace with the appropriate catalog name
    (defun _ (msgid) (gettext msgid "ComplexExampleApp"))

    (let ((All-Widgets (make-All_Widgets_Frame)))
    (ELJApp_SetTopWindow (slot-top-window All-Widgets))
    (wxWindow_Show (slot-top-window All-Widgets))))

(unwind-protect
    (Eljapp_initializeC (wxclosure_Create #'init-func nil) 0 nil)
    (ffi:close-foreign-library "../miscellaneous/wxc-msw2.6.2.dll"))