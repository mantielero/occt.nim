import graphic3d_types

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



proc newGraphic3dText*(theHeight: StandardShortReal): Graphic3dText {.cdecl,
    constructor, importcpp: "Graphic3d_Text(@)", header: "Graphic3d_Text.hxx".}
proc destroyGraphic3dText*(this: var Graphic3dText) {.cdecl,
    importcpp: "#.~Graphic3d_Text()", header: "Graphic3d_Text.hxx".}
proc text*(this: Graphic3dText): NCollectionString {.noSideEffect, cdecl,
    importcpp: "Text", header: "Graphic3d_Text.hxx".}
proc setText*(this: var Graphic3dText; theText: NCollectionString) {.cdecl,
    importcpp: "SetText", header: "Graphic3d_Text.hxx".}
proc setText*(this: var Graphic3dText; theText: TCollectionAsciiString) {.cdecl,
    importcpp: "SetText", header: "Graphic3d_Text.hxx".}
proc setText*(this: var Graphic3dText; theText: cstring) {.cdecl, importcpp: "SetText",
    header: "Graphic3d_Text.hxx".}
proc textFormatter*(this: Graphic3dText): Handle[FontTextFormatter] {.noSideEffect,
    cdecl, importcpp: "TextFormatter", header: "Graphic3d_Text.hxx".}
proc setTextFormatter*(this: var Graphic3dText;
                      theFormatter: Handle[FontTextFormatter]) {.cdecl,
    importcpp: "SetTextFormatter", header: "Graphic3d_Text.hxx".}
proc position*(this: Graphic3dText): PntObj {.noSideEffect, cdecl, importcpp: "Position",
                                       header: "Graphic3d_Text.hxx".}
proc setPosition*(this: var Graphic3dText; thePoint: PntObj) {.cdecl,
    importcpp: "SetPosition", header: "Graphic3d_Text.hxx".}
proc orientation*(this: Graphic3dText): Ax2Obj {.noSideEffect, cdecl,
    importcpp: "Orientation", header: "Graphic3d_Text.hxx".}
proc hasPlane*(this: Graphic3dText): bool {.noSideEffect, cdecl,
                                        importcpp: "HasPlane", header: "Graphic3d_Text.hxx".}
proc setOrientation*(this: var Graphic3dText; theOrientation: Ax2Obj) {.cdecl,
    importcpp: "SetOrientation", header: "Graphic3d_Text.hxx".}
proc resetOrientation*(this: var Graphic3dText) {.cdecl,
    importcpp: "ResetOrientation", header: "Graphic3d_Text.hxx".}
proc hasOwnAnchorPoint*(this: Graphic3dText): bool {.noSideEffect, cdecl,
    importcpp: "HasOwnAnchorPoint", header: "Graphic3d_Text.hxx".}
proc setOwnAnchorPoint*(this: var Graphic3dText; theHasOwnAnchor: bool) {.cdecl,
    importcpp: "SetOwnAnchorPoint", header: "Graphic3d_Text.hxx".}
proc height*(this: Graphic3dText): StandardShortReal {.noSideEffect, cdecl,
    importcpp: "Height", header: "Graphic3d_Text.hxx".}
proc setHeight*(this: var Graphic3dText; theHeight: StandardShortReal) {.cdecl,
    importcpp: "SetHeight", header: "Graphic3d_Text.hxx".}
proc horizontalAlignment*(this: Graphic3dText): Graphic3dHorizontalTextAlignment {.
    noSideEffect, cdecl, importcpp: "HorizontalAlignment", header: "Graphic3d_Text.hxx".}
proc setHorizontalAlignment*(this: var Graphic3dText;
                            theJustification: Graphic3dHorizontalTextAlignment) {.
    cdecl, importcpp: "SetHorizontalAlignment", header: "Graphic3d_Text.hxx".}
proc verticalAlignment*(this: Graphic3dText): Graphic3dVerticalTextAlignment {.
    noSideEffect, cdecl, importcpp: "VerticalAlignment", header: "Graphic3d_Text.hxx".}
proc setVerticalAlignment*(this: var Graphic3dText;
                          theJustification: Graphic3dVerticalTextAlignment) {.
    cdecl, importcpp: "SetVerticalAlignment", header: "Graphic3d_Text.hxx".}

