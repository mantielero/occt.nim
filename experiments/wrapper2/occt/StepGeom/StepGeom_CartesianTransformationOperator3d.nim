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

discard "forward decl of StepGeom_Direction"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_CartesianPoint"
discard "forward decl of StepGeom_CartesianTransformationOperator3d"
discard "forward decl of StepGeom_CartesianTransformationOperator3d"
type
  HandleStepGeomCartesianTransformationOperator3d* = Handle[
      StepGeomCartesianTransformationOperator3d]
  StepGeomCartesianTransformationOperator3d* {.
      importcpp: "StepGeom_CartesianTransformationOperator3d",
      header: "StepGeom_CartesianTransformationOperator3d.hxx", bycopy.} = object of StepGeomCartesianTransformationOperator ##
                                                                                                                      ## !
                                                                                                                      ## Returns
                                                                                                                      ## a
                                                                                                                      ## CartesianTransformationOperator3d


proc constructStepGeomCartesianTransformationOperator3d*(): StepGeomCartesianTransformationOperator3d {.
    constructor, importcpp: "StepGeom_CartesianTransformationOperator3d(@)",
    header: "StepGeom_CartesianTransformationOperator3d.hxx".}
proc init*(this: var StepGeomCartesianTransformationOperator3d;
          aName: Handle[TCollectionHAsciiString]; hasAaxis1: bool;
          aAxis1: Handle[StepGeomDirection]; hasAaxis2: bool;
          aAxis2: Handle[StepGeomDirection];
          aLocalOrigin: Handle[StepGeomCartesianPoint]; hasAscale: bool;
          aScale: float; hasAaxis3: bool; aAxis3: Handle[StepGeomDirection]) {.
    importcpp: "Init", header: "StepGeom_CartesianTransformationOperator3d.hxx".}
proc setAxis3*(this: var StepGeomCartesianTransformationOperator3d;
              aAxis3: Handle[StepGeomDirection]) {.importcpp: "SetAxis3",
    header: "StepGeom_CartesianTransformationOperator3d.hxx".}
proc unSetAxis3*(this: var StepGeomCartesianTransformationOperator3d) {.
    importcpp: "UnSetAxis3",
    header: "StepGeom_CartesianTransformationOperator3d.hxx".}
proc axis3*(this: StepGeomCartesianTransformationOperator3d): Handle[
    StepGeomDirection] {.noSideEffect, importcpp: "Axis3", header: "StepGeom_CartesianTransformationOperator3d.hxx".}
proc hasAxis3*(this: StepGeomCartesianTransformationOperator3d): bool {.
    noSideEffect, importcpp: "HasAxis3",
    header: "StepGeom_CartesianTransformationOperator3d.hxx".}
type
  StepGeomCartesianTransformationOperator3dbaseType* = StepGeomCartesianTransformationOperator

proc getTypeName*(): cstring {.importcpp: "StepGeom_CartesianTransformationOperator3d::get_type_name(@)", header: "StepGeom_CartesianTransformationOperator3d.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepGeom_CartesianTransformationOperator3d::get_type_descriptor(@)",
    header: "StepGeom_CartesianTransformationOperator3d.hxx".}
proc dynamicType*(this: StepGeomCartesianTransformationOperator3d): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "StepGeom_CartesianTransformationOperator3d.hxx".}
