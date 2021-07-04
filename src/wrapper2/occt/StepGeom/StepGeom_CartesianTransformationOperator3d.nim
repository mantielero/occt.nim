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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Boolean,
  StepGeom_CartesianTransformationOperator, ../Standard/Standard_Real

discard "forward decl of StepGeom_Direction"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_CartesianPoint"
discard "forward decl of StepGeom_CartesianTransformationOperator3d"
discard "forward decl of StepGeom_CartesianTransformationOperator3d"
type
  Handle_StepGeom_CartesianTransformationOperator3d* = handle[
      StepGeom_CartesianTransformationOperator3d]
  StepGeom_CartesianTransformationOperator3d* {.
      importcpp: "StepGeom_CartesianTransformationOperator3d",
      header: "StepGeom_CartesianTransformationOperator3d.hxx", bycopy.} = object of StepGeom_CartesianTransformationOperator ##
                                                                                                                       ## !
                                                                                                                       ## Returns
                                                                                                                       ## a
                                                                                                                       ## CartesianTransformationOperator3d


proc constructStepGeom_CartesianTransformationOperator3d*(): StepGeom_CartesianTransformationOperator3d {.
    constructor, importcpp: "StepGeom_CartesianTransformationOperator3d(@)",
    header: "StepGeom_CartesianTransformationOperator3d.hxx".}
proc Init*(this: var StepGeom_CartesianTransformationOperator3d;
          aName: handle[TCollection_HAsciiString]; hasAaxis1: Standard_Boolean;
          aAxis1: handle[StepGeom_Direction]; hasAaxis2: Standard_Boolean;
          aAxis2: handle[StepGeom_Direction];
          aLocalOrigin: handle[StepGeom_CartesianPoint];
          hasAscale: Standard_Boolean; aScale: Standard_Real;
          hasAaxis3: Standard_Boolean; aAxis3: handle[StepGeom_Direction]) {.
    importcpp: "Init", header: "StepGeom_CartesianTransformationOperator3d.hxx".}
proc SetAxis3*(this: var StepGeom_CartesianTransformationOperator3d;
              aAxis3: handle[StepGeom_Direction]) {.importcpp: "SetAxis3",
    header: "StepGeom_CartesianTransformationOperator3d.hxx".}
proc UnSetAxis3*(this: var StepGeom_CartesianTransformationOperator3d) {.
    importcpp: "UnSetAxis3",
    header: "StepGeom_CartesianTransformationOperator3d.hxx".}
proc Axis3*(this: StepGeom_CartesianTransformationOperator3d): handle[
    StepGeom_Direction] {.noSideEffect, importcpp: "Axis3", header: "StepGeom_CartesianTransformationOperator3d.hxx".}
proc HasAxis3*(this: StepGeom_CartesianTransformationOperator3d): Standard_Boolean {.
    noSideEffect, importcpp: "HasAxis3",
    header: "StepGeom_CartesianTransformationOperator3d.hxx".}
type
  StepGeom_CartesianTransformationOperator3dbase_type* = StepGeom_CartesianTransformationOperator

proc get_type_name*(): cstring {.importcpp: "StepGeom_CartesianTransformationOperator3d::get_type_name(@)", header: "StepGeom_CartesianTransformationOperator3d.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepGeom_CartesianTransformationOperator3d::get_type_descriptor(@)",
    header: "StepGeom_CartesianTransformationOperator3d.hxx".}
proc DynamicType*(this: StepGeom_CartesianTransformationOperator3d): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepGeom_CartesianTransformationOperator3d.hxx".}