##  Created on: 2000-08-11
##  Created by: Andrey BETENEV
##  Copyright (c) 2000-2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Quantity/Quantity_ColorRGBAHasher,
  ../XCAFDoc/XCAFDoc_VisMaterial

## ! Represents a set of styling settings applicable to a (sub)shape

type
  XCAFPrs_Style* {.importcpp: "XCAFPrs_Style", header: "XCAFPrs_Style.hxx", bycopy.} = object ##
                                                                                      ## !
                                                                                      ## Empty
                                                                                      ## constructor
                                                                                      ## -
                                                                                      ## colors
                                                                                      ## are
                                                                                      ## unset,
                                                                                      ## visibility
                                                                                      ## is
                                                                                      ## TRUE.


proc constructXCAFPrs_Style*(): XCAFPrs_Style {.constructor,
    importcpp: "XCAFPrs_Style(@)", header: "XCAFPrs_Style.hxx".}
proc IsEmpty*(this: XCAFPrs_Style): Standard_Boolean {.noSideEffect,
    importcpp: "IsEmpty", header: "XCAFPrs_Style.hxx".}
proc Material*(this: XCAFPrs_Style): handle[XCAFDoc_VisMaterial] {.noSideEffect,
    importcpp: "Material", header: "XCAFPrs_Style.hxx".}
proc SetMaterial*(this: var XCAFPrs_Style; theMaterial: handle[XCAFDoc_VisMaterial]) {.
    importcpp: "SetMaterial", header: "XCAFPrs_Style.hxx".}
proc IsSetColorSurf*(this: XCAFPrs_Style): Standard_Boolean {.noSideEffect,
    importcpp: "IsSetColorSurf", header: "XCAFPrs_Style.hxx".}
proc GetColorSurf*(this: XCAFPrs_Style): Quantity_Color {.noSideEffect,
    importcpp: "GetColorSurf", header: "XCAFPrs_Style.hxx".}
proc SetColorSurf*(this: var XCAFPrs_Style; theColor: Quantity_Color) {.
    importcpp: "SetColorSurf", header: "XCAFPrs_Style.hxx".}
proc GetColorSurfRGBA*(this: XCAFPrs_Style): Quantity_ColorRGBA {.noSideEffect,
    importcpp: "GetColorSurfRGBA", header: "XCAFPrs_Style.hxx".}
proc SetColorSurf*(this: var XCAFPrs_Style; theColor: Quantity_ColorRGBA) {.
    importcpp: "SetColorSurf", header: "XCAFPrs_Style.hxx".}
proc UnSetColorSurf*(this: var XCAFPrs_Style) {.importcpp: "UnSetColorSurf",
    header: "XCAFPrs_Style.hxx".}
proc IsSetColorCurv*(this: XCAFPrs_Style): Standard_Boolean {.noSideEffect,
    importcpp: "IsSetColorCurv", header: "XCAFPrs_Style.hxx".}
proc GetColorCurv*(this: XCAFPrs_Style): Quantity_Color {.noSideEffect,
    importcpp: "GetColorCurv", header: "XCAFPrs_Style.hxx".}
proc SetColorCurv*(this: var XCAFPrs_Style; col: Quantity_Color) {.
    importcpp: "SetColorCurv", header: "XCAFPrs_Style.hxx".}
proc UnSetColorCurv*(this: var XCAFPrs_Style) {.importcpp: "UnSetColorCurv",
    header: "XCAFPrs_Style.hxx".}
proc SetVisibility*(this: var XCAFPrs_Style; theVisibility: Standard_Boolean) {.
    importcpp: "SetVisibility", header: "XCAFPrs_Style.hxx".}
proc IsVisible*(this: XCAFPrs_Style): Standard_Boolean {.noSideEffect,
    importcpp: "IsVisible", header: "XCAFPrs_Style.hxx".}
proc IsEqual*(this: XCAFPrs_Style; theOther: XCAFPrs_Style): Standard_Boolean {.
    noSideEffect, importcpp: "IsEqual", header: "XCAFPrs_Style.hxx".}
proc `==`*(this: XCAFPrs_Style; theOther: XCAFPrs_Style): Standard_Boolean {.
    noSideEffect, importcpp: "(# == #)", header: "XCAFPrs_Style.hxx".}
proc HashCode*(theStyle: XCAFPrs_Style; theUpperBound: Standard_Integer): Standard_Integer {.
    importcpp: "XCAFPrs_Style::HashCode(@)", header: "XCAFPrs_Style.hxx".}
proc IsEqual*(theS1: XCAFPrs_Style; theS2: XCAFPrs_Style): Standard_Boolean {.
    importcpp: "XCAFPrs_Style::IsEqual(@)", header: "XCAFPrs_Style.hxx".}
proc DumpJson*(this: XCAFPrs_Style; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "XCAFPrs_Style.hxx".}