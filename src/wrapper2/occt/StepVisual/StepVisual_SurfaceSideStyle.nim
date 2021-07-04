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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  StepVisual_HArray1OfSurfaceStyleElementSelect, ../Standard/Standard_Transient,
  ../Standard/Standard_Integer

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepVisual_SurfaceStyleElementSelect"
discard "forward decl of StepVisual_SurfaceSideStyle"
discard "forward decl of StepVisual_SurfaceSideStyle"
type
  Handle_StepVisual_SurfaceSideStyle* = handle[StepVisual_SurfaceSideStyle]
  StepVisual_SurfaceSideStyle* {.importcpp: "StepVisual_SurfaceSideStyle",
                                header: "StepVisual_SurfaceSideStyle.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                            ## !
                                                                                                            ## Returns
                                                                                                            ## a
                                                                                                            ## SurfaceSideStyle


proc constructStepVisual_SurfaceSideStyle*(): StepVisual_SurfaceSideStyle {.
    constructor, importcpp: "StepVisual_SurfaceSideStyle(@)",
    header: "StepVisual_SurfaceSideStyle.hxx".}
proc Init*(this: var StepVisual_SurfaceSideStyle;
          aName: handle[TCollection_HAsciiString];
          aStyles: handle[StepVisual_HArray1OfSurfaceStyleElementSelect]) {.
    importcpp: "Init", header: "StepVisual_SurfaceSideStyle.hxx".}
proc SetName*(this: var StepVisual_SurfaceSideStyle;
             aName: handle[TCollection_HAsciiString]) {.importcpp: "SetName",
    header: "StepVisual_SurfaceSideStyle.hxx".}
proc Name*(this: StepVisual_SurfaceSideStyle): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Name", header: "StepVisual_SurfaceSideStyle.hxx".}
proc SetStyles*(this: var StepVisual_SurfaceSideStyle;
               aStyles: handle[StepVisual_HArray1OfSurfaceStyleElementSelect]) {.
    importcpp: "SetStyles", header: "StepVisual_SurfaceSideStyle.hxx".}
proc Styles*(this: StepVisual_SurfaceSideStyle): handle[
    StepVisual_HArray1OfSurfaceStyleElementSelect] {.noSideEffect,
    importcpp: "Styles", header: "StepVisual_SurfaceSideStyle.hxx".}
proc StylesValue*(this: StepVisual_SurfaceSideStyle; num: Standard_Integer): StepVisual_SurfaceStyleElementSelect {.
    noSideEffect, importcpp: "StylesValue",
    header: "StepVisual_SurfaceSideStyle.hxx".}
proc NbStyles*(this: StepVisual_SurfaceSideStyle): Standard_Integer {.noSideEffect,
    importcpp: "NbStyles", header: "StepVisual_SurfaceSideStyle.hxx".}
type
  StepVisual_SurfaceSideStylebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepVisual_SurfaceSideStyle::get_type_name(@)",
                              header: "StepVisual_SurfaceSideStyle.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepVisual_SurfaceSideStyle::get_type_descriptor(@)",
    header: "StepVisual_SurfaceSideStyle.hxx".}
proc DynamicType*(this: StepVisual_SurfaceSideStyle): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepVisual_SurfaceSideStyle.hxx".}