##  Copyright (c) 2019 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.

import
  ../gp/gp_Ax2, Graphic3d_Vertex, ../Font/Font_TextFormatter,
  Graphic3d_HorizontalTextAlignment, Graphic3d_VerticalTextAlignment,
  ../NCollection/NCollection_String, ../Standard/Standard_Type,
  ../Standard/Standard_Transient, ../TCollection/TCollection_AsciiString

## ! This class allows the definition of a text object for display.
## ! The text might be defined in one of ways, using:
## ! - text value and position,
## ! - text value, orientation and the state whether the text uses position as point of attach.
## ! - text formatter. Formatter contains text, height and alignment parameter.
## !
## ! This class also has parameters of the text height and H/V alignments.
## ! Custom formatting is available using Font_TextFormatter.

type
  Graphic3d_Text* {.importcpp: "Graphic3d_Text", header: "Graphic3d_Text.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                             ## !
                                                                                                             ## Creates
                                                                                                             ## default
                                                                                                             ## text
                                                                                                             ## parameters.
    ## !< text formatter
    ## !< text value
    ## !< Text orientation in 3D space.
    ## !< height of text
    ## !< horizontal alignment
    ## !< vertical alignment
    ## !< Check if text have orientation in 3D space.
    ## !< flag if text uses position as point of attach

  Graphic3d_Textbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Graphic3d_Text::get_type_name(@)",
                              header: "Graphic3d_Text.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Graphic3d_Text::get_type_descriptor(@)",
    header: "Graphic3d_Text.hxx".}
proc DynamicType*(this: Graphic3d_Text): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Graphic3d_Text.hxx".}
proc constructGraphic3d_Text*(theHeight: Standard_ShortReal): Graphic3d_Text {.
    constructor, importcpp: "Graphic3d_Text(@)", header: "Graphic3d_Text.hxx".}
proc destroyGraphic3d_Text*(this: var Graphic3d_Text) {.
    importcpp: "#.~Graphic3d_Text()", header: "Graphic3d_Text.hxx".}
proc Text*(this: Graphic3d_Text): NCollection_String {.noSideEffect,
    importcpp: "Text", header: "Graphic3d_Text.hxx".}
proc SetText*(this: var Graphic3d_Text; theText: NCollection_String) {.
    importcpp: "SetText", header: "Graphic3d_Text.hxx".}
proc SetText*(this: var Graphic3d_Text; theText: TCollection_AsciiString) {.
    importcpp: "SetText", header: "Graphic3d_Text.hxx".}
proc SetText*(this: var Graphic3d_Text; theText: Standard_CString) {.
    importcpp: "SetText", header: "Graphic3d_Text.hxx".}
proc TextFormatter*(this: Graphic3d_Text): handle[Font_TextFormatter] {.
    noSideEffect, importcpp: "TextFormatter", header: "Graphic3d_Text.hxx".}
proc SetTextFormatter*(this: var Graphic3d_Text;
                      theFormatter: handle[Font_TextFormatter]) {.
    importcpp: "SetTextFormatter", header: "Graphic3d_Text.hxx".}
proc Position*(this: Graphic3d_Text): gp_Pnt {.noSideEffect, importcpp: "Position",
    header: "Graphic3d_Text.hxx".}
proc SetPosition*(this: var Graphic3d_Text; thePoint: gp_Pnt) {.
    importcpp: "SetPosition", header: "Graphic3d_Text.hxx".}
proc Orientation*(this: Graphic3d_Text): gp_Ax2 {.noSideEffect,
    importcpp: "Orientation", header: "Graphic3d_Text.hxx".}
proc HasPlane*(this: Graphic3d_Text): Standard_Boolean {.noSideEffect,
    importcpp: "HasPlane", header: "Graphic3d_Text.hxx".}
proc SetOrientation*(this: var Graphic3d_Text; theOrientation: gp_Ax2) {.
    importcpp: "SetOrientation", header: "Graphic3d_Text.hxx".}
proc ResetOrientation*(this: var Graphic3d_Text) {.importcpp: "ResetOrientation",
    header: "Graphic3d_Text.hxx".}
proc HasOwnAnchorPoint*(this: Graphic3d_Text): Standard_Boolean {.noSideEffect,
    importcpp: "HasOwnAnchorPoint", header: "Graphic3d_Text.hxx".}
proc SetOwnAnchorPoint*(this: var Graphic3d_Text; theHasOwnAnchor: Standard_Boolean) {.
    importcpp: "SetOwnAnchorPoint", header: "Graphic3d_Text.hxx".}
proc Height*(this: Graphic3d_Text): Standard_ShortReal {.noSideEffect,
    importcpp: "Height", header: "Graphic3d_Text.hxx".}
proc SetHeight*(this: var Graphic3d_Text; theHeight: Standard_ShortReal) {.
    importcpp: "SetHeight", header: "Graphic3d_Text.hxx".}
proc HorizontalAlignment*(this: Graphic3d_Text): Graphic3d_HorizontalTextAlignment {.
    noSideEffect, importcpp: "HorizontalAlignment", header: "Graphic3d_Text.hxx".}
proc SetHorizontalAlignment*(this: var Graphic3d_Text;
                            theJustification: Graphic3d_HorizontalTextAlignment) {.
    importcpp: "SetHorizontalAlignment", header: "Graphic3d_Text.hxx".}
proc VerticalAlignment*(this: Graphic3d_Text): Graphic3d_VerticalTextAlignment {.
    noSideEffect, importcpp: "VerticalAlignment", header: "Graphic3d_Text.hxx".}
proc SetVerticalAlignment*(this: var Graphic3d_Text;
                          theJustification: Graphic3d_VerticalTextAlignment) {.
    importcpp: "SetVerticalAlignment", header: "Graphic3d_Text.hxx".}
discard "forward decl of Graphic3d_Text"
type
  Handle_Graphic3d_Text* = handle[Graphic3d_Text]
