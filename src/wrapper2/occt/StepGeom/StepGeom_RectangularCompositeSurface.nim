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
  ../Standard/Standard, ../Standard/Standard_Type, StepGeom_HArray2OfSurfacePatch,
  StepGeom_BoundedSurface, ../Standard/Standard_Integer

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_SurfacePatch"
discard "forward decl of StepGeom_RectangularCompositeSurface"
discard "forward decl of StepGeom_RectangularCompositeSurface"
type
  Handle_StepGeom_RectangularCompositeSurface* = handle[
      StepGeom_RectangularCompositeSurface]
  StepGeom_RectangularCompositeSurface* {.
      importcpp: "StepGeom_RectangularCompositeSurface",
      header: "StepGeom_RectangularCompositeSurface.hxx", bycopy.} = object of StepGeom_BoundedSurface ##
                                                                                                ## !
                                                                                                ## Returns
                                                                                                ## a
                                                                                                ## RectangularCompositeSurface


proc constructStepGeom_RectangularCompositeSurface*(): StepGeom_RectangularCompositeSurface {.
    constructor, importcpp: "StepGeom_RectangularCompositeSurface(@)",
    header: "StepGeom_RectangularCompositeSurface.hxx".}
proc Init*(this: var StepGeom_RectangularCompositeSurface;
          aName: handle[TCollection_HAsciiString];
          aSegments: handle[StepGeom_HArray2OfSurfacePatch]) {.importcpp: "Init",
    header: "StepGeom_RectangularCompositeSurface.hxx".}
proc SetSegments*(this: var StepGeom_RectangularCompositeSurface;
                 aSegments: handle[StepGeom_HArray2OfSurfacePatch]) {.
    importcpp: "SetSegments", header: "StepGeom_RectangularCompositeSurface.hxx".}
proc Segments*(this: StepGeom_RectangularCompositeSurface): handle[
    StepGeom_HArray2OfSurfacePatch] {.noSideEffect, importcpp: "Segments", header: "StepGeom_RectangularCompositeSurface.hxx".}
proc SegmentsValue*(this: StepGeom_RectangularCompositeSurface;
                   num1: Standard_Integer; num2: Standard_Integer): handle[
    StepGeom_SurfacePatch] {.noSideEffect, importcpp: "SegmentsValue",
                            header: "StepGeom_RectangularCompositeSurface.hxx".}
proc NbSegmentsI*(this: StepGeom_RectangularCompositeSurface): Standard_Integer {.
    noSideEffect, importcpp: "NbSegmentsI",
    header: "StepGeom_RectangularCompositeSurface.hxx".}
proc NbSegmentsJ*(this: StepGeom_RectangularCompositeSurface): Standard_Integer {.
    noSideEffect, importcpp: "NbSegmentsJ",
    header: "StepGeom_RectangularCompositeSurface.hxx".}
type
  StepGeom_RectangularCompositeSurfacebase_type* = StepGeom_BoundedSurface

proc get_type_name*(): cstring {.importcpp: "StepGeom_RectangularCompositeSurface::get_type_name(@)", header: "StepGeom_RectangularCompositeSurface.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepGeom_RectangularCompositeSurface::get_type_descriptor(@)",
    header: "StepGeom_RectangularCompositeSurface.hxx".}
proc DynamicType*(this: StepGeom_RectangularCompositeSurface): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepGeom_RectangularCompositeSurface.hxx".}