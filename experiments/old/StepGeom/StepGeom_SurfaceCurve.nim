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

discard "forward decl of StepGeom_Curve"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_PcurveOrSurface"
discard "forward decl of StepGeom_SurfaceCurve"
discard "forward decl of StepGeom_SurfaceCurve"
type
  HandleC1C1* = Handle[StepGeomSurfaceCurve]
  StepGeomSurfaceCurve* {.importcpp: "StepGeom_SurfaceCurve",
                         header: "StepGeom_SurfaceCurve.hxx", bycopy.} = object of StepGeomCurve ##
                                                                                          ## !
                                                                                          ## Returns
                                                                                          ## a
                                                                                          ## SurfaceCurve


proc constructStepGeomSurfaceCurve*(): StepGeomSurfaceCurve {.constructor,
    importcpp: "StepGeom_SurfaceCurve(@)", header: "StepGeom_SurfaceCurve.hxx".}
proc init*(this: var StepGeomSurfaceCurve; aName: Handle[TCollectionHAsciiString];
          aCurve3d: Handle[StepGeomCurve];
          aAssociatedGeometry: Handle[StepGeomHArray1OfPcurveOrSurface];
          aMasterRepresentation: StepGeomPreferredSurfaceCurveRepresentation) {.
    importcpp: "Init", header: "StepGeom_SurfaceCurve.hxx".}
proc setCurve3d*(this: var StepGeomSurfaceCurve; aCurve3d: Handle[StepGeomCurve]) {.
    importcpp: "SetCurve3d", header: "StepGeom_SurfaceCurve.hxx".}
proc curve3d*(this: StepGeomSurfaceCurve): Handle[StepGeomCurve] {.noSideEffect,
    importcpp: "Curve3d", header: "StepGeom_SurfaceCurve.hxx".}
proc setAssociatedGeometry*(this: var StepGeomSurfaceCurve; aAssociatedGeometry: Handle[
    StepGeomHArray1OfPcurveOrSurface]) {.importcpp: "SetAssociatedGeometry",
                                        header: "StepGeom_SurfaceCurve.hxx".}
proc associatedGeometry*(this: StepGeomSurfaceCurve): Handle[
    StepGeomHArray1OfPcurveOrSurface] {.noSideEffect,
                                       importcpp: "AssociatedGeometry",
                                       header: "StepGeom_SurfaceCurve.hxx".}
proc associatedGeometryValue*(this: StepGeomSurfaceCurve; num: int): StepGeomPcurveOrSurface {.
    noSideEffect, importcpp: "AssociatedGeometryValue",
    header: "StepGeom_SurfaceCurve.hxx".}
proc nbAssociatedGeometry*(this: StepGeomSurfaceCurve): int {.noSideEffect,
    importcpp: "NbAssociatedGeometry", header: "StepGeom_SurfaceCurve.hxx".}
proc setMasterRepresentation*(this: var StepGeomSurfaceCurve; aMasterRepresentation: StepGeomPreferredSurfaceCurveRepresentation) {.
    importcpp: "SetMasterRepresentation", header: "StepGeom_SurfaceCurve.hxx".}
proc masterRepresentation*(this: StepGeomSurfaceCurve): StepGeomPreferredSurfaceCurveRepresentation {.
    noSideEffect, importcpp: "MasterRepresentation",
    header: "StepGeom_SurfaceCurve.hxx".}
type
  StepGeomSurfaceCurvebaseType* = StepGeomCurve

proc getTypeName*(): cstring {.importcpp: "StepGeom_SurfaceCurve::get_type_name(@)",
                            header: "StepGeom_SurfaceCurve.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepGeom_SurfaceCurve::get_type_descriptor(@)",
    header: "StepGeom_SurfaceCurve.hxx".}
proc dynamicType*(this: StepGeomSurfaceCurve): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepGeom_SurfaceCurve.hxx".}