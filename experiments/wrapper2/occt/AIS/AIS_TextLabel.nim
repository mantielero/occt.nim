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

discard "forward decl of Font_TextFormatter"
type
  AIS_TextLabel* {.importcpp: "AIS_TextLabel", header: "AIS_TextLabel.hxx", bycopy.} = object of AIS_InteractiveObject ##
                                                                                                             ## !
                                                                                                             ## Default
                                                                                                             ## constructor
                                                                                                             ##
                                                                                                             ## !
                                                                                                             ## Compute
                                                                                                             ##
                                                                                                             ## !
                                                                                                             ## CASCADE
                                                                                                             ## RTTI


proc constructAIS_TextLabel*(): AIS_TextLabel {.constructor,
    importcpp: "AIS_TextLabel(@)", header: "AIS_TextLabel.hxx".}
proc acceptDisplayMode*(this: AIS_TextLabel; theMode: int): bool {.noSideEffect,
    importcpp: "AcceptDisplayMode", header: "AIS_TextLabel.hxx".}
proc setColor*(this: var AIS_TextLabel; theColor: QuantityColor) {.
    importcpp: "SetColor", header: "AIS_TextLabel.hxx".}
proc setTransparency*(this: var AIS_TextLabel; theValue: float) {.
    importcpp: "SetTransparency", header: "AIS_TextLabel.hxx".}
proc unsetTransparency*(this: var AIS_TextLabel) {.importcpp: "UnsetTransparency",
    header: "AIS_TextLabel.hxx".}
proc setMaterial*(this: var AIS_TextLabel; a2: Graphic3dMaterialAspect) {.
    importcpp: "SetMaterial", header: "AIS_TextLabel.hxx".}
proc setText*(this: var AIS_TextLabel; theText: TCollectionExtendedString) {.
    importcpp: "SetText", header: "AIS_TextLabel.hxx".}
proc setPosition*(this: var AIS_TextLabel; thePosition: Pnt) {.
    importcpp: "SetPosition", header: "AIS_TextLabel.hxx".}
proc setHJustification*(this: var AIS_TextLabel;
                       theHJust: Graphic3dHorizontalTextAlignment) {.
    importcpp: "SetHJustification", header: "AIS_TextLabel.hxx".}
proc setVJustification*(this: var AIS_TextLabel;
                       theVJust: Graphic3dVerticalTextAlignment) {.
    importcpp: "SetVJustification", header: "AIS_TextLabel.hxx".}
proc setAngle*(this: var AIS_TextLabel; theAngle: float) {.importcpp: "SetAngle",
    header: "AIS_TextLabel.hxx".}
proc setZoomable*(this: var AIS_TextLabel; theIsZoomable: bool) {.
    importcpp: "SetZoomable", header: "AIS_TextLabel.hxx".}
proc setHeight*(this: var AIS_TextLabel; theHeight: float) {.importcpp: "SetHeight",
    header: "AIS_TextLabel.hxx".}
proc setFontAspect*(this: var AIS_TextLabel; theFontAspect: FontFontAspect) {.
    importcpp: "SetFontAspect", header: "AIS_TextLabel.hxx".}
proc setFont*(this: var AIS_TextLabel; theFont: StandardCString) {.
    importcpp: "SetFont", header: "AIS_TextLabel.hxx".}
proc setOrientation3D*(this: var AIS_TextLabel; theOrientation: Ax2) {.
    importcpp: "SetOrientation3D", header: "AIS_TextLabel.hxx".}
proc unsetOrientation3D*(this: var AIS_TextLabel) {.importcpp: "UnsetOrientation3D",
    header: "AIS_TextLabel.hxx".}
proc position*(this: AIS_TextLabel): Pnt {.noSideEffect, importcpp: "Position",
                                       header: "AIS_TextLabel.hxx".}
proc text*(this: AIS_TextLabel): TCollectionExtendedString {.noSideEffect,
    importcpp: "Text", header: "AIS_TextLabel.hxx".}
proc fontName*(this: AIS_TextLabel): TCollectionAsciiString {.noSideEffect,
    importcpp: "FontName", header: "AIS_TextLabel.hxx".}
proc fontAspect*(this: AIS_TextLabel): FontFontAspect {.noSideEffect,
    importcpp: "FontAspect", header: "AIS_TextLabel.hxx".}
proc orientation3D*(this: AIS_TextLabel): Ax2 {.noSideEffect,
    importcpp: "Orientation3D", header: "AIS_TextLabel.hxx".}
proc hasOrientation3D*(this: AIS_TextLabel): bool {.noSideEffect,
    importcpp: "HasOrientation3D", header: "AIS_TextLabel.hxx".}
proc setFlipping*(this: var AIS_TextLabel; theIsFlipping: bool) {.
    importcpp: "SetFlipping", header: "AIS_TextLabel.hxx".}
proc hasFlipping*(this: AIS_TextLabel): bool {.noSideEffect,
    importcpp: "HasFlipping", header: "AIS_TextLabel.hxx".}
proc hasOwnAnchorPoint*(this: AIS_TextLabel): bool {.noSideEffect,
    importcpp: "HasOwnAnchorPoint", header: "AIS_TextLabel.hxx".}
proc setOwnAnchorPoint*(this: var AIS_TextLabel; theOwnAnchorPoint: bool) {.
    importcpp: "SetOwnAnchorPoint", header: "AIS_TextLabel.hxx".}
proc setDisplayType*(this: var AIS_TextLabel;
                    theDisplayType: AspectTypeOfDisplayText) {.
    importcpp: "SetDisplayType", header: "AIS_TextLabel.hxx".}
proc setColorSubTitle*(this: var AIS_TextLabel; theColor: QuantityColor) {.
    importcpp: "SetColorSubTitle", header: "AIS_TextLabel.hxx".}
proc textFormatter*(this: AIS_TextLabel): Handle[FontTextFormatter] {.noSideEffect,
    importcpp: "TextFormatter", header: "AIS_TextLabel.hxx".}
proc setTextFormatter*(this: var AIS_TextLabel;
                      theFormatter: Handle[FontTextFormatter]) {.
    importcpp: "SetTextFormatter", header: "AIS_TextLabel.hxx".}
type
  AIS_TextLabelbaseType* = AIS_InteractiveObject

proc getTypeName*(): cstring {.importcpp: "AIS_TextLabel::get_type_name(@)",
                            header: "AIS_TextLabel.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "AIS_TextLabel::get_type_descriptor(@)",
    header: "AIS_TextLabel.hxx".}
proc dynamicType*(this: AIS_TextLabel): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "AIS_TextLabel.hxx".}
discard "forward decl of AIS_TextLabel"
type
  HandleAIS_TextLabel* = Handle[AIS_TextLabel]

