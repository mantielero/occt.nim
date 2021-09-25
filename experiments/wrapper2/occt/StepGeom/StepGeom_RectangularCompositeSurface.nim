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
discard "forward decl of StepGeom_SurfacePatch"
discard "forward decl of StepGeom_RectangularCompositeSurface"
discard "forward decl of StepGeom_RectangularCompositeSurface"
type
  HandleStepGeomRectangularCompositeSurface* = Handle[
      StepGeomRectangularCompositeSurface]
  StepGeomRectangularCompositeSurface* {.importcpp: "StepGeom_RectangularCompositeSurface", header: "StepGeom_RectangularCompositeSurface.hxx",
                                        bycopy.} = object of StepGeomBoundedSurface ## !
                                                                               ## Returns a
                                                                               ## RectangularCompositeSurface


proc constructStepGeomRectangularCompositeSurface*(): StepGeomRectangularCompositeSurface {.
    constructor, importcpp: "StepGeom_RectangularCompositeSurface(@)",
    header: "StepGeom_RectangularCompositeSurface.hxx".}
proc init*(this: var StepGeomRectangularCompositeSurface;
          aName: Handle[TCollectionHAsciiString];
          aSegments: Handle[StepGeomHArray2OfSurfacePatch]) {.importcpp: "Init",
    header: "StepGeom_RectangularCompositeSurface.hxx".}
proc setSegments*(this: var StepGeomRectangularCompositeSurface;
                 aSegments: Handle[StepGeomHArray2OfSurfacePatch]) {.
    importcpp: "SetSegments", header: "StepGeom_RectangularCompositeSurface.hxx".}
proc segments*(this: StepGeomRectangularCompositeSurface): Handle[
    StepGeomHArray2OfSurfacePatch] {.noSideEffect, importcpp: "Segments", header: "StepGeom_RectangularCompositeSurface.hxx".}
proc segmentsValue*(this: StepGeomRectangularCompositeSurface; num1: int; num2: int): Handle[
    StepGeomSurfacePatch] {.noSideEffect, importcpp: "SegmentsValue",
                           header: "StepGeom_RectangularCompositeSurface.hxx".}
proc nbSegmentsI*(this: StepGeomRectangularCompositeSurface): int {.noSideEffect,
    importcpp: "NbSegmentsI", header: "StepGeom_RectangularCompositeSurface.hxx".}
proc nbSegmentsJ*(this: StepGeomRectangularCompositeSurface): int {.noSideEffect,
    importcpp: "NbSegmentsJ", header: "StepGeom_RectangularCompositeSurface.hxx".}
type
  StepGeomRectangularCompositeSurfacebaseType* = StepGeomBoundedSurface

proc getTypeName*(): cstring {.importcpp: "StepGeom_RectangularCompositeSurface::get_type_name(@)",
                            header: "StepGeom_RectangularCompositeSurface.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepGeom_RectangularCompositeSurface::get_type_descriptor(@)",
    header: "StepGeom_RectangularCompositeSurface.hxx".}
proc dynamicType*(this: StepGeomRectangularCompositeSurface): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepGeom_RectangularCompositeSurface.hxx".}
