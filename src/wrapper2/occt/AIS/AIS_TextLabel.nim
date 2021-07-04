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

import
  AIS_InteractiveObject, ../gp/gp_Pnt, ../gp/gp_Ax2,
  ../Graphic3d/Graphic3d_VerticalTextAlignment,
  ../Graphic3d/Graphic3d_HorizontalTextAlignment, ../Font/Font_FontAspect,
  ../TCollection/TCollection_ExtendedString

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
proc AcceptDisplayMode*(this: AIS_TextLabel; theMode: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "AcceptDisplayMode", header: "AIS_TextLabel.hxx".}
proc SetColor*(this: var AIS_TextLabel; theColor: Quantity_Color) {.
    importcpp: "SetColor", header: "AIS_TextLabel.hxx".}
proc SetTransparency*(this: var AIS_TextLabel; theValue: Standard_Real) {.
    importcpp: "SetTransparency", header: "AIS_TextLabel.hxx".}
proc UnsetTransparency*(this: var AIS_TextLabel) {.importcpp: "UnsetTransparency",
    header: "AIS_TextLabel.hxx".}
proc SetMaterial*(this: var AIS_TextLabel; a2: Graphic3d_MaterialAspect) {.
    importcpp: "SetMaterial", header: "AIS_TextLabel.hxx".}
proc SetText*(this: var AIS_TextLabel; theText: TCollection_ExtendedString) {.
    importcpp: "SetText", header: "AIS_TextLabel.hxx".}
proc SetPosition*(this: var AIS_TextLabel; thePosition: gp_Pnt) {.
    importcpp: "SetPosition", header: "AIS_TextLabel.hxx".}
proc SetHJustification*(this: var AIS_TextLabel;
                       theHJust: Graphic3d_HorizontalTextAlignment) {.
    importcpp: "SetHJustification", header: "AIS_TextLabel.hxx".}
proc SetVJustification*(this: var AIS_TextLabel;
                       theVJust: Graphic3d_VerticalTextAlignment) {.
    importcpp: "SetVJustification", header: "AIS_TextLabel.hxx".}
proc SetAngle*(this: var AIS_TextLabel; theAngle: Standard_Real) {.
    importcpp: "SetAngle", header: "AIS_TextLabel.hxx".}
proc SetZoomable*(this: var AIS_TextLabel; theIsZoomable: Standard_Boolean) {.
    importcpp: "SetZoomable", header: "AIS_TextLabel.hxx".}
proc SetHeight*(this: var AIS_TextLabel; theHeight: Standard_Real) {.
    importcpp: "SetHeight", header: "AIS_TextLabel.hxx".}
proc SetFontAspect*(this: var AIS_TextLabel; theFontAspect: Font_FontAspect) {.
    importcpp: "SetFontAspect", header: "AIS_TextLabel.hxx".}
proc SetFont*(this: var AIS_TextLabel; theFont: Standard_CString) {.
    importcpp: "SetFont", header: "AIS_TextLabel.hxx".}
proc SetOrientation3D*(this: var AIS_TextLabel; theOrientation: gp_Ax2) {.
    importcpp: "SetOrientation3D", header: "AIS_TextLabel.hxx".}
proc UnsetOrientation3D*(this: var AIS_TextLabel) {.importcpp: "UnsetOrientation3D",
    header: "AIS_TextLabel.hxx".}
proc Position*(this: AIS_TextLabel): gp_Pnt {.noSideEffect, importcpp: "Position",
    header: "AIS_TextLabel.hxx".}
proc Text*(this: AIS_TextLabel): TCollection_ExtendedString {.noSideEffect,
    importcpp: "Text", header: "AIS_TextLabel.hxx".}
proc FontName*(this: AIS_TextLabel): TCollection_AsciiString {.noSideEffect,
    importcpp: "FontName", header: "AIS_TextLabel.hxx".}
proc FontAspect*(this: AIS_TextLabel): Font_FontAspect {.noSideEffect,
    importcpp: "FontAspect", header: "AIS_TextLabel.hxx".}
proc Orientation3D*(this: AIS_TextLabel): gp_Ax2 {.noSideEffect,
    importcpp: "Orientation3D", header: "AIS_TextLabel.hxx".}
proc HasOrientation3D*(this: AIS_TextLabel): Standard_Boolean {.noSideEffect,
    importcpp: "HasOrientation3D", header: "AIS_TextLabel.hxx".}
proc SetFlipping*(this: var AIS_TextLabel; theIsFlipping: Standard_Boolean) {.
    importcpp: "SetFlipping", header: "AIS_TextLabel.hxx".}
proc HasFlipping*(this: AIS_TextLabel): Standard_Boolean {.noSideEffect,
    importcpp: "HasFlipping", header: "AIS_TextLabel.hxx".}
proc HasOwnAnchorPoint*(this: AIS_TextLabel): Standard_Boolean {.noSideEffect,
    importcpp: "HasOwnAnchorPoint", header: "AIS_TextLabel.hxx".}
proc SetOwnAnchorPoint*(this: var AIS_TextLabel; theOwnAnchorPoint: Standard_Boolean) {.
    importcpp: "SetOwnAnchorPoint", header: "AIS_TextLabel.hxx".}
proc SetDisplayType*(this: var AIS_TextLabel;
                    theDisplayType: Aspect_TypeOfDisplayText) {.
    importcpp: "SetDisplayType", header: "AIS_TextLabel.hxx".}
proc SetColorSubTitle*(this: var AIS_TextLabel; theColor: Quantity_Color) {.
    importcpp: "SetColorSubTitle", header: "AIS_TextLabel.hxx".}
proc TextFormatter*(this: AIS_TextLabel): handle[Font_TextFormatter] {.noSideEffect,
    importcpp: "TextFormatter", header: "AIS_TextLabel.hxx".}
proc SetTextFormatter*(this: var AIS_TextLabel;
                      theFormatter: handle[Font_TextFormatter]) {.
    importcpp: "SetTextFormatter", header: "AIS_TextLabel.hxx".}
type
  AIS_TextLabelbase_type* = AIS_InteractiveObject

proc get_type_name*(): cstring {.importcpp: "AIS_TextLabel::get_type_name(@)",
                              header: "AIS_TextLabel.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "AIS_TextLabel::get_type_descriptor(@)",
    header: "AIS_TextLabel.hxx".}
proc DynamicType*(this: AIS_TextLabel): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "AIS_TextLabel.hxx".}
discard "forward decl of AIS_TextLabel"
type
  Handle_AIS_TextLabel* = handle[AIS_TextLabel]
