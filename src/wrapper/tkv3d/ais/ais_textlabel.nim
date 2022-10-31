import ../../tkmath/gp/gp_types
import ../tkv3d/graphic3d/graphic3d_types
import ../../tkernel/tcollection/tcollection_types
import ../../tkservice/aspect/aspect_types
import ../../tkernel/standard/standard_types
import ais_types
import ../../tkernel/quantity/quantity_types



##  Created on: 2014-11-10
##  Copyright (c) 2014 OPEN CASCADE SAS
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



proc newAIS_TextLabel*(): AIS_TextLabel {.cdecl, constructor,
                                       importcpp: "AIS_TextLabel(@)",
                                       header: "AIS_TextLabel.hxx".}
proc acceptDisplayMode*(this: AIS_TextLabel; theMode: cint): bool {.noSideEffect,
    cdecl, importcpp: "AcceptDisplayMode", header: "AIS_TextLabel.hxx".}
proc setColor*(this: var AIS_TextLabel; theColor: QuantityColor) {.cdecl,
    importcpp: "SetColor", header: "AIS_TextLabel.hxx".}
proc setTransparency*(this: var AIS_TextLabel; theValue: cfloat) {.cdecl,
    importcpp: "SetTransparency", header: "AIS_TextLabel.hxx".}
proc unsetTransparency*(this: var AIS_TextLabel) {.cdecl,
    importcpp: "UnsetTransparency", header: "AIS_TextLabel.hxx".}
proc setMaterial*(this: var AIS_TextLabel; a2: Graphic3dMaterialAspect) {.cdecl,
    importcpp: "SetMaterial", header: "AIS_TextLabel.hxx".}
proc setText*(this: var AIS_TextLabel; theText: TCollectionExtendedString) {.cdecl,
    importcpp: "SetText", header: "AIS_TextLabel.hxx".}
proc setPosition*(this: var AIS_TextLabel; thePosition: PntObj) {.cdecl,
    importcpp: "SetPosition", header: "AIS_TextLabel.hxx".}
proc setHJustification*(this: var AIS_TextLabel;
                       theHJust: Graphic3dHorizontalTextAlignment) {.cdecl,
    importcpp: "SetHJustification", header: "AIS_TextLabel.hxx".}
proc setVJustification*(this: var AIS_TextLabel;
                       theVJust: Graphic3dVerticalTextAlignment) {.cdecl,
    importcpp: "SetVJustification", header: "AIS_TextLabel.hxx".}
proc setAngle*(this: var AIS_TextLabel; theAngle: cfloat) {.cdecl,
    importcpp: "SetAngle", header: "AIS_TextLabel.hxx".}
proc setZoomable*(this: var AIS_TextLabel; theIsZoomable: bool) {.cdecl,
    importcpp: "SetZoomable", header: "AIS_TextLabel.hxx".}
proc setHeight*(this: var AIS_TextLabel; theHeight: cfloat) {.cdecl,
    importcpp: "SetHeight", header: "AIS_TextLabel.hxx".}
proc setFontAspect*(this: var AIS_TextLabel; theFontAspect: FontFontAspect) {.cdecl,
    importcpp: "SetFontAspect", header: "AIS_TextLabel.hxx".}
proc setFont*(this: var AIS_TextLabel; theFont: cstring) {.cdecl, importcpp: "SetFont",
    header: "AIS_TextLabel.hxx".}
proc setOrientation3D*(this: var AIS_TextLabel; theOrientation: Ax2Obj) {.cdecl,
    importcpp: "SetOrientation3D", header: "AIS_TextLabel.hxx".}
proc unsetOrientation3D*(this: var AIS_TextLabel) {.cdecl,
    importcpp: "UnsetOrientation3D", header: "AIS_TextLabel.hxx".}
proc position*(this: AIS_TextLabel): PntObj {.noSideEffect, cdecl, importcpp: "Position",
                                       header: "AIS_TextLabel.hxx".}
proc text*(this: AIS_TextLabel): TCollectionExtendedString {.noSideEffect, cdecl,
    importcpp: "Text", header: "AIS_TextLabel.hxx".}
proc fontName*(this: AIS_TextLabel): TCollectionAsciiString {.noSideEffect, cdecl,
    importcpp: "FontName", header: "AIS_TextLabel.hxx".}
proc fontAspect*(this: AIS_TextLabel): FontFontAspect {.noSideEffect, cdecl,
    importcpp: "FontAspect", header: "AIS_TextLabel.hxx".}
proc orientation3D*(this: AIS_TextLabel): Ax2Obj {.noSideEffect, cdecl,
    importcpp: "Orientation3D", header: "AIS_TextLabel.hxx".}
proc hasOrientation3D*(this: AIS_TextLabel): bool {.noSideEffect, cdecl,
    importcpp: "HasOrientation3D", header: "AIS_TextLabel.hxx".}
proc setFlipping*(this: var AIS_TextLabel; theIsFlipping: bool) {.cdecl,
    importcpp: "SetFlipping", header: "AIS_TextLabel.hxx".}
proc hasFlipping*(this: AIS_TextLabel): bool {.noSideEffect, cdecl,
    importcpp: "HasFlipping", header: "AIS_TextLabel.hxx".}
proc hasOwnAnchorPoint*(this: AIS_TextLabel): bool {.noSideEffect, cdecl,
    importcpp: "HasOwnAnchorPoint", header: "AIS_TextLabel.hxx".}
proc setOwnAnchorPoint*(this: var AIS_TextLabel; theOwnAnchorPoint: bool) {.cdecl,
    importcpp: "SetOwnAnchorPoint", header: "AIS_TextLabel.hxx".}
proc setDisplayType*(this: var AIS_TextLabel;
                    theDisplayType: AspectTypeOfDisplayText) {.cdecl,
    importcpp: "SetDisplayType", header: "AIS_TextLabel.hxx".}
proc setColorSubTitle*(this: var AIS_TextLabel; theColor: QuantityColor) {.cdecl,
    importcpp: "SetColorSubTitle", header: "AIS_TextLabel.hxx".}
proc textFormatter*(this: AIS_TextLabel): Handle[FontTextFormatter] {.noSideEffect,
    cdecl, importcpp: "TextFormatter", header: "AIS_TextLabel.hxx".}
proc setTextFormatter*(this: var AIS_TextLabel;
                      theFormatter: Handle[FontTextFormatter]) {.cdecl,
    importcpp: "SetTextFormatter", header: "AIS_TextLabel.hxx".}


