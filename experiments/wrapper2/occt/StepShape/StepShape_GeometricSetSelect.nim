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

discard "forward decl of Standard_Transient"
discard "forward decl of StepGeom_Point"
discard "forward decl of StepGeom_Curve"
discard "forward decl of StepGeom_Surface"
type
  StepShapeGeometricSetSelect* {.importcpp: "StepShape_GeometricSetSelect",
                                header: "StepShape_GeometricSetSelect.hxx", bycopy.} = object of StepDataSelectType ##
                                                                                                             ## !
                                                                                                             ## Returns
                                                                                                             ## a
                                                                                                             ## GeometricSetSelect
                                                                                                             ## SelectType


proc constructStepShapeGeometricSetSelect*(): StepShapeGeometricSetSelect {.
    constructor, importcpp: "StepShape_GeometricSetSelect(@)",
    header: "StepShape_GeometricSetSelect.hxx".}
proc caseNum*(this: StepShapeGeometricSetSelect; ent: Handle[StandardTransient]): int {.
    noSideEffect, importcpp: "CaseNum", header: "StepShape_GeometricSetSelect.hxx".}
proc point*(this: StepShapeGeometricSetSelect): Handle[StepGeomPoint] {.
    noSideEffect, importcpp: "Point", header: "StepShape_GeometricSetSelect.hxx".}
proc curve*(this: StepShapeGeometricSetSelect): Handle[StepGeomCurve] {.
    noSideEffect, importcpp: "Curve", header: "StepShape_GeometricSetSelect.hxx".}
proc surface*(this: StepShapeGeometricSetSelect): Handle[StepGeomSurface] {.
    noSideEffect, importcpp: "Surface", header: "StepShape_GeometricSetSelect.hxx".}
