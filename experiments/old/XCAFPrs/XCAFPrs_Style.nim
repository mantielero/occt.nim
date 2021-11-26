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

## ! Represents a set of styling settings applicable to a (sub)shape

type
  XCAFPrsStyle* {.importcpp: "XCAFPrs_Style", header: "XCAFPrs_Style.hxx", bycopy.} = object ##
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


proc constructXCAFPrsStyle*(): XCAFPrsStyle {.constructor,
    importcpp: "XCAFPrs_Style(@)", header: "XCAFPrs_Style.hxx".}
proc isEmpty*(this: XCAFPrsStyle): bool {.noSideEffect, importcpp: "IsEmpty",
                                      header: "XCAFPrs_Style.hxx".}
proc material*(this: XCAFPrsStyle): Handle[XCAFDocVisMaterial] {.noSideEffect,
    importcpp: "Material", header: "XCAFPrs_Style.hxx".}
proc setMaterial*(this: var XCAFPrsStyle; theMaterial: Handle[XCAFDocVisMaterial]) {.
    importcpp: "SetMaterial", header: "XCAFPrs_Style.hxx".}
proc isSetColorSurf*(this: XCAFPrsStyle): bool {.noSideEffect,
    importcpp: "IsSetColorSurf", header: "XCAFPrs_Style.hxx".}
proc getColorSurf*(this: XCAFPrsStyle): QuantityColor {.noSideEffect,
    importcpp: "GetColorSurf", header: "XCAFPrs_Style.hxx".}
proc setColorSurf*(this: var XCAFPrsStyle; theColor: QuantityColor) {.
    importcpp: "SetColorSurf", header: "XCAFPrs_Style.hxx".}
proc getColorSurfRGBA*(this: XCAFPrsStyle): QuantityColorRGBA {.noSideEffect,
    importcpp: "GetColorSurfRGBA", header: "XCAFPrs_Style.hxx".}
proc setColorSurf*(this: var XCAFPrsStyle; theColor: QuantityColorRGBA) {.
    importcpp: "SetColorSurf", header: "XCAFPrs_Style.hxx".}
proc unSetColorSurf*(this: var XCAFPrsStyle) {.importcpp: "UnSetColorSurf",
    header: "XCAFPrs_Style.hxx".}
proc isSetColorCurv*(this: XCAFPrsStyle): bool {.noSideEffect,
    importcpp: "IsSetColorCurv", header: "XCAFPrs_Style.hxx".}
proc getColorCurv*(this: XCAFPrsStyle): QuantityColor {.noSideEffect,
    importcpp: "GetColorCurv", header: "XCAFPrs_Style.hxx".}
proc setColorCurv*(this: var XCAFPrsStyle; col: QuantityColor) {.
    importcpp: "SetColorCurv", header: "XCAFPrs_Style.hxx".}
proc unSetColorCurv*(this: var XCAFPrsStyle) {.importcpp: "UnSetColorCurv",
    header: "XCAFPrs_Style.hxx".}
proc setVisibility*(this: var XCAFPrsStyle; theVisibility: bool) {.
    importcpp: "SetVisibility", header: "XCAFPrs_Style.hxx".}
proc isVisible*(this: XCAFPrsStyle): bool {.noSideEffect, importcpp: "IsVisible",
                                        header: "XCAFPrs_Style.hxx".}
proc isEqual*(this: XCAFPrsStyle; theOther: XCAFPrsStyle): bool {.noSideEffect,
    importcpp: "IsEqual", header: "XCAFPrs_Style.hxx".}
proc `==`*(this: XCAFPrsStyle; theOther: XCAFPrsStyle): bool {.noSideEffect,
    importcpp: "(# == #)", header: "XCAFPrs_Style.hxx".}
proc hashCode*(theStyle: XCAFPrsStyle; theUpperBound: int): int {.
    importcpp: "XCAFPrs_Style::HashCode(@)", header: "XCAFPrs_Style.hxx".}
proc isEqual*(theS1: XCAFPrsStyle; theS2: XCAFPrsStyle): bool {.
    importcpp: "XCAFPrs_Style::IsEqual(@)", header: "XCAFPrs_Style.hxx".}
proc dumpJson*(this: XCAFPrsStyle; theOStream: var StandardOStream;
              theDepth: int = -1) {.noSideEffect, importcpp: "DumpJson",
                                header: "XCAFPrs_Style.hxx".}














































