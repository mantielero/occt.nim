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

discard "forward decl of StepGeom_Axis1Placement"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_Curve"
discard "forward decl of StepGeom_SurfaceOfRevolution"
discard "forward decl of StepGeom_SurfaceOfRevolution"
type
  HandleStepGeomSurfaceOfRevolution* = Handle[StepGeomSurfaceOfRevolution]
  StepGeomSurfaceOfRevolution* {.importcpp: "StepGeom_SurfaceOfRevolution",
                                header: "StepGeom_SurfaceOfRevolution.hxx", bycopy.} = object of StepGeomSweptSurface ##
                                                                                                               ## !
                                                                                                               ## Returns
                                                                                                               ## a
                                                                                                               ## SurfaceOfRevolution


proc constructStepGeomSurfaceOfRevolution*(): StepGeomSurfaceOfRevolution {.
    constructor, importcpp: "StepGeom_SurfaceOfRevolution(@)",
    header: "StepGeom_SurfaceOfRevolution.hxx".}
proc init*(this: var StepGeomSurfaceOfRevolution;
          aName: Handle[TCollectionHAsciiString];
          aSweptCurve: Handle[StepGeomCurve];
          aAxisPosition: Handle[StepGeomAxis1Placement]) {.importcpp: "Init",
    header: "StepGeom_SurfaceOfRevolution.hxx".}
proc setAxisPosition*(this: var StepGeomSurfaceOfRevolution;
                     aAxisPosition: Handle[StepGeomAxis1Placement]) {.
    importcpp: "SetAxisPosition", header: "StepGeom_SurfaceOfRevolution.hxx".}
proc axisPosition*(this: StepGeomSurfaceOfRevolution): Handle[
    StepGeomAxis1Placement] {.noSideEffect, importcpp: "AxisPosition",
                             header: "StepGeom_SurfaceOfRevolution.hxx".}
type
  StepGeomSurfaceOfRevolutionbaseType* = StepGeomSweptSurface

proc getTypeName*(): cstring {.importcpp: "StepGeom_SurfaceOfRevolution::get_type_name(@)",
                            header: "StepGeom_SurfaceOfRevolution.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepGeom_SurfaceOfRevolution::get_type_descriptor(@)",
    header: "StepGeom_SurfaceOfRevolution.hxx".}
proc dynamicType*(this: StepGeomSurfaceOfRevolution): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepGeom_SurfaceOfRevolution.hxx".}
