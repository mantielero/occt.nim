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
  StepGeom_HArray1OfPcurveOrSurface,
  StepGeom_PreferredSurfaceCurveRepresentation, StepGeom_Curve,
  ../Standard/Standard_Integer

discard "forward decl of StepGeom_Curve"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_PcurveOrSurface"
discard "forward decl of StepGeom_SurfaceCurve"
discard "forward decl of StepGeom_SurfaceCurve"
type
  Handle_StepGeom_SurfaceCurve* = handle[StepGeom_SurfaceCurve]
  StepGeom_SurfaceCurve* {.importcpp: "StepGeom_SurfaceCurve",
                          header: "StepGeom_SurfaceCurve.hxx", bycopy.} = object of StepGeom_Curve ##
                                                                                            ## !
                                                                                            ## Returns
                                                                                            ## a
                                                                                            ## SurfaceCurve


proc constructStepGeom_SurfaceCurve*(): StepGeom_SurfaceCurve {.constructor,
    importcpp: "StepGeom_SurfaceCurve(@)", header: "StepGeom_SurfaceCurve.hxx".}
proc Init*(this: var StepGeom_SurfaceCurve; aName: handle[TCollection_HAsciiString];
          aCurve3d: handle[StepGeom_Curve];
          aAssociatedGeometry: handle[StepGeom_HArray1OfPcurveOrSurface];
          aMasterRepresentation: StepGeom_PreferredSurfaceCurveRepresentation) {.
    importcpp: "Init", header: "StepGeom_SurfaceCurve.hxx".}
proc SetCurve3d*(this: var StepGeom_SurfaceCurve; aCurve3d: handle[StepGeom_Curve]) {.
    importcpp: "SetCurve3d", header: "StepGeom_SurfaceCurve.hxx".}
proc Curve3d*(this: StepGeom_SurfaceCurve): handle[StepGeom_Curve] {.noSideEffect,
    importcpp: "Curve3d", header: "StepGeom_SurfaceCurve.hxx".}
proc SetAssociatedGeometry*(this: var StepGeom_SurfaceCurve; aAssociatedGeometry: handle[
    StepGeom_HArray1OfPcurveOrSurface]) {.importcpp: "SetAssociatedGeometry",
    header: "StepGeom_SurfaceCurve.hxx".}
proc AssociatedGeometry*(this: StepGeom_SurfaceCurve): handle[
    StepGeom_HArray1OfPcurveOrSurface] {.noSideEffect,
                                        importcpp: "AssociatedGeometry",
                                        header: "StepGeom_SurfaceCurve.hxx".}
proc AssociatedGeometryValue*(this: StepGeom_SurfaceCurve; num: Standard_Integer): StepGeom_PcurveOrSurface {.
    noSideEffect, importcpp: "AssociatedGeometryValue",
    header: "StepGeom_SurfaceCurve.hxx".}
proc NbAssociatedGeometry*(this: StepGeom_SurfaceCurve): Standard_Integer {.
    noSideEffect, importcpp: "NbAssociatedGeometry",
    header: "StepGeom_SurfaceCurve.hxx".}
proc SetMasterRepresentation*(this: var StepGeom_SurfaceCurve; aMasterRepresentation: StepGeom_PreferredSurfaceCurveRepresentation) {.
    importcpp: "SetMasterRepresentation", header: "StepGeom_SurfaceCurve.hxx".}
proc MasterRepresentation*(this: StepGeom_SurfaceCurve): StepGeom_PreferredSurfaceCurveRepresentation {.
    noSideEffect, importcpp: "MasterRepresentation",
    header: "StepGeom_SurfaceCurve.hxx".}
type
  StepGeom_SurfaceCurvebase_type* = StepGeom_Curve

proc get_type_name*(): cstring {.importcpp: "StepGeom_SurfaceCurve::get_type_name(@)",
                              header: "StepGeom_SurfaceCurve.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepGeom_SurfaceCurve::get_type_descriptor(@)",
    header: "StepGeom_SurfaceCurve.hxx".}
proc DynamicType*(this: StepGeom_SurfaceCurve): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepGeom_SurfaceCurve.hxx".}