##  Created on: 1995-12-01
##  Created by: EXPRESS->CDL V0.2 Translator
##  Copyright (c) 1995-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepVisual_SurfaceStyleElementSelect"
discard "forward decl of StepVisual_SurfaceSideStyle"
discard "forward decl of StepVisual_SurfaceSideStyle"
type
  HandleC1C1* = Handle[StepVisualSurfaceSideStyle]
  StepVisualSurfaceSideStyle* {.importcpp: "StepVisual_SurfaceSideStyle",
                               header: "StepVisual_SurfaceSideStyle.hxx", bycopy.} = object of StandardTransient ##
                                                                                                          ## !
                                                                                                          ## Returns
                                                                                                          ## a
                                                                                                          ## SurfaceSideStyle


proc constructStepVisualSurfaceSideStyle*(): StepVisualSurfaceSideStyle {.
    constructor, importcpp: "StepVisual_SurfaceSideStyle(@)",
    header: "StepVisual_SurfaceSideStyle.hxx".}
proc init*(this: var StepVisualSurfaceSideStyle;
          aName: Handle[TCollectionHAsciiString];
          aStyles: Handle[StepVisualHArray1OfSurfaceStyleElementSelect]) {.
    importcpp: "Init", header: "StepVisual_SurfaceSideStyle.hxx".}
proc setName*(this: var StepVisualSurfaceSideStyle;
             aName: Handle[TCollectionHAsciiString]) {.importcpp: "SetName",
    header: "StepVisual_SurfaceSideStyle.hxx".}
proc name*(this: StepVisualSurfaceSideStyle): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Name", header: "StepVisual_SurfaceSideStyle.hxx".}
proc setStyles*(this: var StepVisualSurfaceSideStyle;
               aStyles: Handle[StepVisualHArray1OfSurfaceStyleElementSelect]) {.
    importcpp: "SetStyles", header: "StepVisual_SurfaceSideStyle.hxx".}
proc styles*(this: StepVisualSurfaceSideStyle): Handle[
    StepVisualHArray1OfSurfaceStyleElementSelect] {.noSideEffect,
    importcpp: "Styles", header: "StepVisual_SurfaceSideStyle.hxx".}
proc stylesValue*(this: StepVisualSurfaceSideStyle; num: cint): StepVisualSurfaceStyleElementSelect {.
    noSideEffect, importcpp: "StylesValue",
    header: "StepVisual_SurfaceSideStyle.hxx".}
proc nbStyles*(this: StepVisualSurfaceSideStyle): cint {.noSideEffect,
    importcpp: "NbStyles", header: "StepVisual_SurfaceSideStyle.hxx".}
type
  StepVisualSurfaceSideStylebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepVisual_SurfaceSideStyle::get_type_name(@)",
                            header: "StepVisual_SurfaceSideStyle.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepVisual_SurfaceSideStyle::get_type_descriptor(@)",
    header: "StepVisual_SurfaceSideStyle.hxx".}
proc dynamicType*(this: StepVisualSurfaceSideStyle): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepVisual_SurfaceSideStyle.hxx".}

























