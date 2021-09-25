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

discard "forward decl of StepGeom_Surface"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepShape_FaceSurface"
discard "forward decl of StepShape_FaceSurface"
type
  HandleStepShapeFaceSurface* = Handle[StepShapeFaceSurface]
  StepShapeFaceSurface* {.importcpp: "StepShape_FaceSurface",
                         header: "StepShape_FaceSurface.hxx", bycopy.} = object of StepShapeFace ##
                                                                                          ## !
                                                                                          ## Returns
                                                                                          ## a
                                                                                          ## FaceSurface


proc constructStepShapeFaceSurface*(): StepShapeFaceSurface {.constructor,
    importcpp: "StepShape_FaceSurface(@)", header: "StepShape_FaceSurface.hxx".}
proc init*(this: var StepShapeFaceSurface; aName: Handle[TCollectionHAsciiString];
          aBounds: Handle[StepShapeHArray1OfFaceBound];
          aFaceGeometry: Handle[StepGeomSurface]; aSameSense: bool) {.
    importcpp: "Init", header: "StepShape_FaceSurface.hxx".}
proc setFaceGeometry*(this: var StepShapeFaceSurface;
                     aFaceGeometry: Handle[StepGeomSurface]) {.
    importcpp: "SetFaceGeometry", header: "StepShape_FaceSurface.hxx".}
proc faceGeometry*(this: StepShapeFaceSurface): Handle[StepGeomSurface] {.
    noSideEffect, importcpp: "FaceGeometry", header: "StepShape_FaceSurface.hxx".}
proc setSameSense*(this: var StepShapeFaceSurface; aSameSense: bool) {.
    importcpp: "SetSameSense", header: "StepShape_FaceSurface.hxx".}
proc sameSense*(this: StepShapeFaceSurface): bool {.noSideEffect,
    importcpp: "SameSense", header: "StepShape_FaceSurface.hxx".}
type
  StepShapeFaceSurfacebaseType* = StepShapeFace

proc getTypeName*(): cstring {.importcpp: "StepShape_FaceSurface::get_type_name(@)",
                            header: "StepShape_FaceSurface.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepShape_FaceSurface::get_type_descriptor(@)",
    header: "StepShape_FaceSurface.hxx".}
proc dynamicType*(this: StepShapeFaceSurface): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepShape_FaceSurface.hxx".}
