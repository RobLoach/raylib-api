return {
  defines = {
    {
      name = "RAYGUI_H",
      type = "GUARD",
      value = "",
      description = ""
    },
    {
      name = "RAYGUI_VERSION",
      type = "STRING",
      value = "3.0",
      description = ""
    },
    {
      name = "RAYGUIAPI",
      type = "UNKNOWN",
      value = "__declspec(dllexport)",
      description = "We are building the library as a Win32 shared library (.dll)"
    },
    {
      name = "RAYGUI_MALLOC(sz)",
      type = "MACRO",
      value = "malloc(sz)",
      description = ""
    },
    {
      name = "RAYGUI_CALLOC(n,sz)",
      type = "MACRO",
      value = "calloc(n,sz)",
      description = ""
    },
    {
      name = "RAYGUI_FREE(p)",
      type = "MACRO",
      value = "free(p)",
      description = ""
    },
    {
      name = "TRACELOG(level, ...)",
      type = "MACRO",
      value = "(void)0",
      description = ""
    }
  },
  structs = {
    {
      name = "Vector2",
      description = "Vector2 type",
      fields = {
        {
          type = "float",
          name = "x",
          description = ""
        },
        {
          type = "float",
          name = "y",
          description = ""
        }
      }
    },
    {
      name = "Vector3",
      description = "Vector3 type                 // -- ConvertHSVtoRGB(), ConvertRGBtoHSV()",
      fields = {
        {
          type = "float",
          name = "x",
          description = ""
        },
        {
          type = "float",
          name = "y",
          description = ""
        },
        {
          type = "float",
          name = "z",
          description = ""
        }
      }
    },
    {
      name = "Color",
      description = "Color type, RGBA (32bit)",
      fields = {
        {
          type = "unsigned char",
          name = "r",
          description = ""
        },
        {
          type = "unsigned char",
          name = "g",
          description = ""
        },
        {
          type = "unsigned char",
          name = "b",
          description = ""
        },
        {
          type = "unsigned char",
          name = "a",
          description = ""
        }
      }
    },
    {
      name = "Rectangle",
      description = "Rectangle type",
      fields = {
        {
          type = "float",
          name = "x",
          description = ""
        },
        {
          type = "float",
          name = "y",
          description = ""
        },
        {
          type = "float",
          name = "width",
          description = ""
        },
        {
          type = "float",
          name = "height",
          description = ""
        }
      }
    },
    {
      name = "Texture2D",
      description = "It should be redesigned to be provided by user",
      fields = {
        {
          type = "unsigned int",
          name = "id",
          description = "OpenGL texture id"
        },
        {
          type = "int",
          name = "width",
          description = "Texture base width"
        },
        {
          type = "int",
          name = "height",
          description = "Texture base height"
        },
        {
          type = "int",
          name = "mipmaps",
          description = "Mipmap levels, 1 by default"
        },
        {
          type = "int",
          name = "format",
          description = "Data format (PixelFormat type)"
        }
      }
    },
    {
      name = "GlyphInfo",
      description = "GlyphInfo, font characters glyphs info",
      fields = {
        {
          type = "int",
          name = "value",
          description = "Character value (Unicode)"
        },
        {
          type = "int",
          name = "offsetX",
          description = "Character offset X when drawing"
        },
        {
          type = "int",
          name = "offsetY",
          description = "Character offset Y when drawing"
        },
        {
          type = "int",
          name = "advanceX",
          description = "Character advance position X"
        },
        {
          type = "Image",
          name = "image",
          description = "Character image data"
        }
      }
    },
    {
      name = "Font",
      description = "It should be redesigned to be provided by user",
      fields = {
        {
          type = "int",
          name = "baseSize",
          description = "Base size (default chars height)"
        },
        {
          type = "int",
          name = "glyphCount",
          description = "Number of characters"
        },
        {
          type = "Texture2D",
          name = "texture",
          description = "Characters texture atlas"
        },
        {
          type = "Rectangle *",
          name = "recs",
          description = "Characters rectangles in texture"
        },
        {
          type = "GlyphInfo *",
          name = "chars",
          description = "Characters info data"
        }
      }
    },
    {
      name = "GuiStyleProp",
      description = "Style property",
      fields = {
        {
          type = "unsigned short",
          name = "controlId",
          description = ""
        },
        {
          type = "unsigned short",
          name = "propertyId",
          description = ""
        },
        {
          type = "int",
          name = "propertyValue",
          description = ""
        }
      }
    }
  },
  aliases = {
  },
  enums = {
    {
      name = "GuiControlState",
      description = "Gui control state",
      values = {
        {
          name = "GUI_STATE_NORMAL",
          value = 0,
          description = ""
        },
        {
          name = "GUI_STATE_FOCUSED",
          value = 1,
          description = ""
        },
        {
          name = "GUI_STATE_PRESSED",
          value = 2,
          description = ""
        },
        {
          name = "GUI_STATE_DISABLED",
          value = 3,
          description = ""
        }
      }
    },
    {
      name = "GuiTextAlignment",
      description = "Gui control text alignment",
      values = {
        {
          name = "GUI_TEXT_ALIGN_LEFT",
          value = 0,
          description = ""
        },
        {
          name = "GUI_TEXT_ALIGN_CENTER",
          value = 1,
          description = ""
        },
        {
          name = "GUI_TEXT_ALIGN_RIGHT",
          value = 2,
          description = ""
        }
      }
    },
    {
      name = "GuiControl",
      description = "Gui controls",
      values = {
        {
          name = "DEFAULT",
          value = 0,
          description = "Generic control -> populates to all controls when set"
        },
        {
          name = "LABEL",
          value = 1,
          description = "Used also for: LABELBUTTON"
        },
        {
          name = "BUTTON",
          value = 2,
          description = ""
        },
        {
          name = "TOGGLE",
          value = 3,
          description = "Used also for: TOGGLEGROUP"
        },
        {
          name = "SLIDER",
          value = 4,
          description = "Used also for: SLIDERBAR"
        },
        {
          name = "PROGRESSBAR",
          value = 5,
          description = ""
        },
        {
          name = "CHECKBOX",
          value = 6,
          description = ""
        },
        {
          name = "COMBOBOX",
          value = 7,
          description = ""
        },
        {
          name = "DROPDOWNBOX",
          value = 8,
          description = ""
        },
        {
          name = "TEXTBOX",
          value = 9,
          description = "Used also for: TEXTBOXMULTI"
        },
        {
          name = "VALUEBOX",
          value = 10,
          description = ""
        },
        {
          name = "SPINNER",
          value = 11,
          description = ""
        },
        {
          name = "LISTVIEW",
          value = 12,
          description = ""
        },
        {
          name = "COLORPICKER",
          value = 13,
          description = ""
        },
        {
          name = "SCROLLBAR",
          value = 14,
          description = ""
        },
        {
          name = "STATUSBAR",
          value = 15,
          description = ""
        }
      }
    },
    {
      name = "GuiControlProperty",
      description = "Gui base properties for every control",
      values = {
        {
          name = "BORDER_COLOR_NORMAL",
          value = 0,
          description = ""
        },
        {
          name = "BASE_COLOR_NORMAL",
          value = 1,
          description = ""
        },
        {
          name = "TEXT_COLOR_NORMAL",
          value = 2,
          description = ""
        },
        {
          name = "BORDER_COLOR_FOCUSED",
          value = 3,
          description = ""
        },
        {
          name = "BASE_COLOR_FOCUSED",
          value = 4,
          description = ""
        },
        {
          name = "TEXT_COLOR_FOCUSED",
          value = 5,
          description = ""
        },
        {
          name = "BORDER_COLOR_PRESSED",
          value = 6,
          description = ""
        },
        {
          name = "BASE_COLOR_PRESSED",
          value = 7,
          description = ""
        },
        {
          name = "TEXT_COLOR_PRESSED",
          value = 8,
          description = ""
        },
        {
          name = "BORDER_COLOR_DISABLED",
          value = 9,
          description = ""
        },
        {
          name = "BASE_COLOR_DISABLED",
          value = 10,
          description = ""
        },
        {
          name = "TEXT_COLOR_DISABLED",
          value = 11,
          description = ""
        },
        {
          name = "BORDER_WIDTH",
          value = 12,
          description = ""
        },
        {
          name = "TEXT_PADDING",
          value = 13,
          description = ""
        },
        {
          name = "TEXT_ALIGNMENT",
          value = 14,
          description = ""
        },
        {
          name = "RESERVED",
          value = 15,
          description = ""
        }
      }
    },
    {
      name = "GuiDefaultProperty",
      description = "DEFAULT extended properties",
      values = {
        {
          name = "TEXT_SIZE",
          value = 16,
          description = ""
        },
        {
          name = "TEXT_SPACING",
          value = 17,
          description = ""
        },
        {
          name = "LINE_COLOR",
          value = 18,
          description = ""
        },
        {
          name = "BACKGROUND_COLOR",
          value = 19,
          description = ""
        }
      }
    },
    {
      name = "GuiToggleProperty",
      description = "Toggle/ToggleGroup",
      values = {
        {
          name = "GROUP_PADDING",
          value = 16,
          description = ""
        }
      }
    },
    {
      name = "GuiSliderProperty",
      description = "Slider/SliderBar",
      values = {
        {
          name = "SLIDER_WIDTH",
          value = 16,
          description = ""
        },
        {
          name = "SLIDER_PADDING",
          value = 17,
          description = ""
        }
      }
    },
    {
      name = "GuiProgressBarProperty",
      description = "ProgressBar",
      values = {
        {
          name = "PROGRESS_PADDING",
          value = 16,
          description = ""
        }
      }
    },
    {
      name = "GuiCheckBoxProperty",
      description = "CheckBox",
      values = {
        {
          name = "CHECK_PADDING",
          value = 16,
          description = ""
        }
      }
    },
    {
      name = "GuiComboBoxProperty",
      description = "ComboBox",
      values = {
        {
          name = "COMBO_BUTTON_WIDTH",
          value = 16,
          description = ""
        },
        {
          name = "COMBO_BUTTON_PADDING",
          value = 17,
          description = ""
        }
      }
    },
    {
      name = "GuiDropdownBoxProperty",
      description = "DropdownBox",
      values = {
        {
          name = "ARROW_PADDING",
          value = 16,
          description = ""
        },
        {
          name = "DROPDOWN_ITEMS_PADDING",
          value = 17,
          description = ""
        }
      }
    },
    {
      name = "GuiTextBoxProperty",
      description = "TextBox/TextBoxMulti/ValueBox/Spinner",
      values = {
        {
          name = "TEXT_INNER_PADDING",
          value = 16,
          description = ""
        },
        {
          name = "TEXT_LINES_PADDING",
          value = 17,
          description = ""
        },
        {
          name = "COLOR_SELECTED_FG",
          value = 18,
          description = ""
        },
        {
          name = "COLOR_SELECTED_BG",
          value = 19,
          description = ""
        }
      }
    },
    {
      name = "GuiSpinnerProperty",
      description = "Spinner",
      values = {
        {
          name = "SPIN_BUTTON_WIDTH",
          value = 16,
          description = ""
        },
        {
          name = "SPIN_BUTTON_PADDING",
          value = 17,
          description = ""
        }
      }
    },
    {
      name = "GuiScrollBarProperty",
      description = "ScrollBar",
      values = {
        {
          name = "ARROWS_SIZE",
          value = 16,
          description = ""
        },
        {
          name = "ARROWS_VISIBLE",
          value = 17,
          description = ""
        },
        {
          name = "SCROLL_SLIDER_PADDING",
          value = 18,
          description = ""
        },
        {
          name = "SCROLL_SLIDER_SIZE",
          value = 19,
          description = ""
        },
        {
          name = "SCROLL_PADDING",
          value = 20,
          description = ""
        },
        {
          name = "SCROLL_SPEED",
          value = 21,
          description = ""
        }
      }
    },
    {
      name = "GuiScrollBarSide",
      description = "ScrollBar side",
      values = {
        {
          name = "SCROLLBAR_LEFT_SIDE",
          value = 0,
          description = ""
        },
        {
          name = "SCROLLBAR_RIGHT_SIDE",
          value = 1,
          description = ""
        }
      }
    },
    {
      name = "GuiListViewProperty",
      description = "ListView",
      values = {
        {
          name = "LIST_ITEMS_HEIGHT",
          value = 16,
          description = ""
        },
        {
          name = "LIST_ITEMS_PADDING",
          value = 17,
          description = ""
        },
        {
          name = "SCROLLBAR_WIDTH",
          value = 18,
          description = ""
        },
        {
          name = "SCROLLBAR_SIDE",
          value = 19,
          description = ""
        }
      }
    },
    {
      name = "GuiColorPickerProperty",
      description = "ColorPicker",
      values = {
        {
          name = "COLOR_SELECTOR_SIZE",
          value = 16,
          description = ""
        },
        {
          name = "HUEBAR_WIDTH",
          value = 17,
          description = "Right hue bar width"
        },
        {
          name = "HUEBAR_PADDING",
          value = 18,
          description = "Right hue bar separation from panel"
        },
        {
          name = "HUEBAR_SELECTOR_HEIGHT",
          value = 19,
          description = "Right hue bar selector height"
        },
        {
          name = "HUEBAR_SELECTOR_OVERFLOW",
          value = 20,
          description = "Right hue bar selector overflow"
        }
      }
    }
  },
  callbacks = {
  },
  functions = {
    {
      name = "GuiEnable",
      description = "Enable gui controls (global state)",
      returnType = "void"
    },
    {
      name = "GuiDisable",
      description = "Disable gui controls (global state)",
      returnType = "void"
    },
    {
      name = "GuiLock",
      description = "Lock gui controls (global state)",
      returnType = "void"
    },
    {
      name = "GuiUnlock",
      description = "Unlock gui controls (global state)",
      returnType = "void"
    },
    {
      name = "GuiIsLocked",
      description = "Check if gui is locked (global state)",
      returnType = "bool"
    },
    {
      name = "GuiFade",
      description = "Set gui controls alpha (global state), alpha goes from 0.0f to 1.0f",
      returnType = "void",
      params = {
        {type = "float", name = "alpha"}
      }
    },
    {
      name = "GuiSetState",
      description = "Set gui state (global state)",
      returnType = "void",
      params = {
        {type = "int", name = "state"}
      }
    },
    {
      name = "GuiGetState",
      description = "Get gui state (global state)",
      returnType = "int"
    },
    {
      name = "GuiSetFont",
      description = "Set gui custom font (global state)",
      returnType = "void",
      params = {
        {type = "Font", name = "font"}
      }
    },
    {
      name = "GuiGetFont",
      description = "Get gui custom font (global state)",
      returnType = "Font"
    },
    {
      name = "GuiSetStyle",
      description = "Set one style property",
      returnType = "void",
      params = {
        {type = "int", name = "control"},
        {type = "int", name = "property"},
        {type = "int", name = "value"}
      }
    },
    {
      name = "GuiGetStyle",
      description = "Get one style property",
      returnType = "int",
      params = {
        {type = "int", name = "control"},
        {type = "int", name = "property"}
      }
    },
    {
      name = "GuiWindowBox",
      description = "Window Box control, shows a window that can be closed",
      returnType = "bool",
      params = {
        {type = "Rectangle", name = "bounds"},
        {type = "const char *", name = "title"}
      }
    },
    {
      name = "GuiGroupBox",
      description = "Group Box control with text name",
      returnType = "void",
      params = {
        {type = "Rectangle", name = "bounds"},
        {type = "const char *", name = "text"}
      }
    },
    {
      name = "GuiLine",
      description = "Line separator control, could contain text",
      returnType = "void",
      params = {
        {type = "Rectangle", name = "bounds"},
        {type = "const char *", name = "text"}
      }
    },
    {
      name = "GuiPanel",
      description = "Panel control, useful to group controls",
      returnType = "void",
      params = {
        {type = "Rectangle", name = "bounds"}
      }
    },
    {
      name = "GuiScrollPanel",
      description = "Scroll Panel control",
      returnType = "Rectangle",
      params = {
        {type = "Rectangle", name = "bounds"},
        {type = "Rectangle", name = "content"},
        {type = "Vector2 *", name = "scroll"}
      }
    },
    {
      name = "GuiLabel",
      description = "Label control, shows text",
      returnType = "void",
      params = {
        {type = "Rectangle", name = "bounds"},
        {type = "const char *", name = "text"}
      }
    },
    {
      name = "GuiButton",
      description = "Button control, returns true when clicked",
      returnType = "bool",
      params = {
        {type = "Rectangle", name = "bounds"},
        {type = "const char *", name = "text"}
      }
    },
    {
      name = "GuiLabelButton",
      description = "Label button control, show true when clicked",
      returnType = "bool",
      params = {
        {type = "Rectangle", name = "bounds"},
        {type = "const char *", name = "text"}
      }
    },
    {
      name = "GuiToggle",
      description = "Toggle Button control, returns true when active",
      returnType = "bool",
      params = {
        {type = "Rectangle", name = "bounds"},
        {type = "const char *", name = "text"},
        {type = "bool", name = "active"}
      }
    },
    {
      name = "GuiToggleGroup",
      description = "Toggle Group control, returns active toggle index",
      returnType = "int",
      params = {
        {type = "Rectangle", name = "bounds"},
        {type = "const char *", name = "text"},
        {type = "int", name = "active"}
      }
    },
    {
      name = "GuiCheckBox",
      description = "Check Box control, returns true when active",
      returnType = "bool",
      params = {
        {type = "Rectangle", name = "bounds"},
        {type = "const char *", name = "text"},
        {type = "bool", name = "checked"}
      }
    },
    {
      name = "GuiComboBox",
      description = "Combo Box control, returns selected item index",
      returnType = "int",
      params = {
        {type = "Rectangle", name = "bounds"},
        {type = "const char *", name = "text"},
        {type = "int", name = "active"}
      }
    },
    {
      name = "GuiDropdownBox",
      description = "Dropdown Box control, returns selected item",
      returnType = "bool",
      params = {
        {type = "Rectangle", name = "bounds"},
        {type = "const char *", name = "text"},
        {type = "int *", name = "active"},
        {type = "bool", name = "editMode"}
      }
    },
    {
      name = "GuiSpinner",
      description = "Spinner control, returns selected value",
      returnType = "bool",
      params = {
        {type = "Rectangle", name = "bounds"},
        {type = "const char *", name = "text"},
        {type = "int *", name = "value"},
        {type = "int", name = "minValue"},
        {type = "int", name = "maxValue"},
        {type = "bool", name = "editMode"}
      }
    },
    {
      name = "GuiValueBox",
      description = "Value Box control, updates input text with numbers",
      returnType = "bool",
      params = {
        {type = "Rectangle", name = "bounds"},
        {type = "const char *", name = "text"},
        {type = "int *", name = "value"},
        {type = "int", name = "minValue"},
        {type = "int", name = "maxValue"},
        {type = "bool", name = "editMode"}
      }
    },
    {
      name = "GuiTextBox",
      description = "Text Box control, updates input text",
      returnType = "bool",
      params = {
        {type = "Rectangle", name = "bounds"},
        {type = "char *", name = "text"},
        {type = "int", name = "textSize"},
        {type = "bool", name = "editMode"}
      }
    },
    {
      name = "GuiTextBoxMulti",
      description = "Text Box control with multiple lines",
      returnType = "bool",
      params = {
        {type = "Rectangle", name = "bounds"},
        {type = "char *", name = "text"},
        {type = "int", name = "textSize"},
        {type = "bool", name = "editMode"}
      }
    },
    {
      name = "GuiSlider",
      description = "Slider control, returns selected value",
      returnType = "float",
      params = {
        {type = "Rectangle", name = "bounds"},
        {type = "const char *", name = "textLeft"},
        {type = "const char *", name = "textRight"},
        {type = "float", name = "value"},
        {type = "float", name = "minValue"},
        {type = "float", name = "maxValue"}
      }
    },
    {
      name = "GuiSliderBar",
      description = "Slider Bar control, returns selected value",
      returnType = "float",
      params = {
        {type = "Rectangle", name = "bounds"},
        {type = "const char *", name = "textLeft"},
        {type = "const char *", name = "textRight"},
        {type = "float", name = "value"},
        {type = "float", name = "minValue"},
        {type = "float", name = "maxValue"}
      }
    },
    {
      name = "GuiProgressBar",
      description = "Progress Bar control, shows current progress value",
      returnType = "float",
      params = {
        {type = "Rectangle", name = "bounds"},
        {type = "const char *", name = "textLeft"},
        {type = "const char *", name = "textRight"},
        {type = "float", name = "value"},
        {type = "float", name = "minValue"},
        {type = "float", name = "maxValue"}
      }
    },
    {
      name = "GuiStatusBar",
      description = "Status Bar control, shows info text",
      returnType = "void",
      params = {
        {type = "Rectangle", name = "bounds"},
        {type = "const char *", name = "text"}
      }
    },
    {
      name = "GuiDummyRec",
      description = "Dummy control for placeholders",
      returnType = "void",
      params = {
        {type = "Rectangle", name = "bounds"},
        {type = "const char *", name = "text"}
      }
    },
    {
      name = "GuiScrollBar",
      description = "Scroll Bar control",
      returnType = "int",
      params = {
        {type = "Rectangle", name = "bounds"},
        {type = "int", name = "value"},
        {type = "int", name = "minValue"},
        {type = "int", name = "maxValue"}
      }
    },
    {
      name = "GuiGrid",
      description = "Grid control",
      returnType = "Vector2",
      params = {
        {type = "Rectangle", name = "bounds"},
        {type = "float", name = "spacing"},
        {type = "int", name = "subdivs"}
      }
    },
    {
      name = "GuiListView",
      description = "List View control, returns selected list item index",
      returnType = "int",
      params = {
        {type = "Rectangle", name = "bounds"},
        {type = "const char *", name = "text"},
        {type = "int *", name = "scrollIndex"},
        {type = "int", name = "active"}
      }
    },
    {
      name = "GuiListViewEx",
      description = "List View with extended parameters",
      returnType = "int",
      params = {
        {type = "Rectangle", name = "bounds"},
        {type = "const char **", name = "text"},
        {type = "int", name = "count"},
        {type = "int *", name = "focus"},
        {type = "int *", name = "scrollIndex"},
        {type = "int", name = "active"}
      }
    },
    {
      name = "GuiMessageBox",
      description = "Message Box control, displays a message",
      returnType = "int",
      params = {
        {type = "Rectangle", name = "bounds"},
        {type = "const char *", name = "title"},
        {type = "const char *", name = "message"},
        {type = "const char *", name = "buttons"}
      }
    },
    {
      name = "GuiTextInputBox",
      description = "Text Input Box control, ask for text",
      returnType = "int",
      params = {
        {type = "Rectangle", name = "bounds"},
        {type = "const char *", name = "title"},
        {type = "const char *", name = "message"},
        {type = "const char *", name = "buttons"},
        {type = "char *", name = "text"}
      }
    },
    {
      name = "GuiColorPicker",
      description = "Color Picker control (multiple color controls)",
      returnType = "Color",
      params = {
        {type = "Rectangle", name = "bounds"},
        {type = "Color", name = "color"}
      }
    },
    {
      name = "GuiColorPanel",
      description = "Color Panel control",
      returnType = "Color",
      params = {
        {type = "Rectangle", name = "bounds"},
        {type = "Color", name = "color"}
      }
    },
    {
      name = "GuiColorBarAlpha",
      description = "Color Bar Alpha control",
      returnType = "float",
      params = {
        {type = "Rectangle", name = "bounds"},
        {type = "float", name = "alpha"}
      }
    },
    {
      name = "GuiColorBarHue",
      description = "Color Bar Hue control",
      returnType = "float",
      params = {
        {type = "Rectangle", name = "bounds"},
        {type = "float", name = "value"}
      }
    },
    {
      name = "GuiLoadStyle",
      description = "Load style file over global style variable (.rgs)",
      returnType = "void",
      params = {
        {type = "const char *", name = "fileName"}
      }
    },
    {
      name = "GuiLoadStyleDefault",
      description = "Load style default over global style",
      returnType = "void"
    },
    {
      name = "LoadGuiStyle",
      description = "Load style from file (.rgs)",
      returnType = "GuiStyle",
      params = {
        {type = "const char *", name = "fileName"}
      }
    },
    {
      name = "UnloadGuiStyle",
      description = "Unload style",
      returnType = "void",
      params = {
        {type = "GuiStyle", name = "style"}
      }
    },
    {
      name = "GuiIconText",
      description = "Get text with icon id prepended (if supported)",
      returnType = "const char *",
      params = {
        {type = "int", name = "iconId"},
        {type = "const char *", name = "text"}
      }
    },
    {
      name = "GuiDrawIcon",
      description = "",
      returnType = "void",
      params = {
        {type = "int", name = "iconId"},
        {type = "int", name = "posX"},
        {type = "int", name = "posY"},
        {type = "int", name = "pixelSize"},
        {type = "Color", name = "color"}
      }
    },
    {
      name = "GuiGetIcons",
      description = "Get full icons data pointer",
      returnType = "unsigned int *"
    },
    {
      name = "GuiGetIconData",
      description = "Get icon bit data",
      returnType = "unsigned int *",
      params = {
        {type = "int", name = "iconId"}
      }
    },
    {
      name = "GuiSetIconData",
      description = "Set icon bit data",
      returnType = "void",
      params = {
        {type = "int", name = "iconId"},
        {type = "unsigned int *", name = "data"}
      }
    },
    {
      name = "GuiSetIconPixel",
      description = "Set icon pixel value",
      returnType = "void",
      params = {
        {type = "int", name = "iconId"},
        {type = "int", name = "x"},
        {type = "int", name = "y"}
      }
    },
    {
      name = "GuiClearIconPixel",
      description = "Clear icon pixel value",
      returnType = "void",
      params = {
        {type = "int", name = "iconId"},
        {type = "int", name = "x"},
        {type = "int", name = "y"}
      }
    },
    {
      name = "GuiCheckIconPixel",
      description = "Check icon pixel value",
      returnType = "bool",
      params = {
        {type = "int", name = "iconId"},
        {type = "int", name = "x"},
        {type = "int", name = "y"}
      }
    }
  }
}
