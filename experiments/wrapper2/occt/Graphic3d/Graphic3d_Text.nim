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

## ! This class allows the definition of a text object for display.
## ! The text might be defined in one of ways, using:
## ! - text value and position,
## ! - text value, orientation and the state whether the text uses position as point of attach.
## ! - text formatter. Formatter contains text, height and alignment parameter.
## !
## ! This class also has parameters of the text height and H/V alignments.
## ! Custom formatting is available using Font_TextFormatter.

type
  Graphic3dText* {.importcpp: "Graphic3d_Text", header: "Graphic3d_Text.hxx", bycopy.} = object of StandardTransient ##
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

  Graphic3dTextbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Graphic3d_Text::get_type_name(@)",
                            header: "Graphic3d_Text.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Graphic3d_Text::get_type_descriptor(@)",
    header: "Graphic3d_Text.hxx".}
proc dynamicType*(this: Graphic3dText): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Graphic3d_Text.hxx".}
proc constructGraphic3dText*(theHeight: StandardShortReal): Graphic3dText {.
    constructor, importcpp: "Graphic3d_Text(@)", header: "Graphic3d_Text.hxx".}
proc destroyGraphic3dText*(this: var Graphic3dText) {.
    importcpp: "#.~Graphic3d_Text()", header: "Graphic3d_Text.hxx".}
proc text*(this: Graphic3dText): NCollectionString {.noSideEffect, importcpp: "Text",
    header: "Graphic3d_Text.hxx".}
proc setText*(this: var Graphic3dText; theText: NCollectionString) {.
    importcpp: "SetText", header: "Graphic3d_Text.hxx".}
proc setText*(this: var Graphic3dText; theText: TCollectionAsciiString) {.
    importcpp: "SetText", header: "Graphic3d_Text.hxx".}
proc setText*(this: var Graphic3dText; theText: StandardCString) {.
    importcpp: "SetText", header: "Graphic3d_Text.hxx".}
proc textFormatter*(this: Graphic3dText): Handle[FontTextFormatter] {.noSideEffect,
    importcpp: "TextFormatter", header: "Graphic3d_Text.hxx".}
proc setTextFormatter*(this: var Graphic3dText;
                      theFormatter: Handle[FontTextFormatter]) {.
    importcpp: "SetTextFormatter", header: "Graphic3d_Text.hxx".}
proc position*(this: Graphic3dText): Pnt {.noSideEffect, importcpp: "Position",
                                       header: "Graphic3d_Text.hxx".}
proc setPosition*(this: var Graphic3dText; thePoint: Pnt) {.importcpp: "SetPosition",
    header: "Graphic3d_Text.hxx".}
proc orientation*(this: Graphic3dText): Ax2 {.noSideEffect, importcpp: "Orientation",
    header: "Graphic3d_Text.hxx".}
proc hasPlane*(this: Graphic3dText): bool {.noSideEffect, importcpp: "HasPlane",
                                        header: "Graphic3d_Text.hxx".}
proc setOrientation*(this: var Graphic3dText; theOrientation: Ax2) {.
    importcpp: "SetOrientation", header: "Graphic3d_Text.hxx".}
proc resetOrientation*(this: var Graphic3dText) {.importcpp: "ResetOrientation",
    header: "Graphic3d_Text.hxx".}
proc hasOwnAnchorPoint*(this: Graphic3dText): bool {.noSideEffect,
    importcpp: "HasOwnAnchorPoint", header: "Graphic3d_Text.hxx".}
proc setOwnAnchorPoint*(this: var Graphic3dText; theHasOwnAnchor: bool) {.
    importcpp: "SetOwnAnchorPoint", header: "Graphic3d_Text.hxx".}
proc height*(this: Graphic3dText): StandardShortReal {.noSideEffect,
    importcpp: "Height", header: "Graphic3d_Text.hxx".}
proc setHeight*(this: var Graphic3dText; theHeight: StandardShortReal) {.
    importcpp: "SetHeight", header: "Graphic3d_Text.hxx".}
proc horizontalAlignment*(this: Graphic3dText): Graphic3dHorizontalTextAlignment {.
    noSideEffect, importcpp: "HorizontalAlignment", header: "Graphic3d_Text.hxx".}
proc setHorizontalAlignment*(this: var Graphic3dText;
                            theJustification: Graphic3dHorizontalTextAlignment) {.
    importcpp: "SetHorizontalAlignment", header: "Graphic3d_Text.hxx".}
proc verticalAlignment*(this: Graphic3dText): Graphic3dVerticalTextAlignment {.
    noSideEffect, importcpp: "VerticalAlignment", header: "Graphic3d_Text.hxx".}
proc setVerticalAlignment*(this: var Graphic3dText;
                          theJustification: Graphic3dVerticalTextAlignment) {.
    importcpp: "SetVerticalAlignment", header: "Graphic3d_Text.hxx".}
discard "forward decl of Graphic3d_Text"
type
  HandleGraphic3dText* = Handle[Graphic3dText]

