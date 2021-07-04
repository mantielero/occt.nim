##  Created on: 2002-12-12
##  Created by: data exchange team
##  Copyright (c) 2002-2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_Type, StepFEA_CoordinateSystemType,
  ../StepGeom/StepGeom_Axis2Placement3d, ../Standard/Standard_Boolean

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_CartesianPoint"
discard "forward decl of StepGeom_Direction"
discard "forward decl of StepFEA_FeaAxis2Placement3d"
discard "forward decl of StepFEA_FeaAxis2Placement3d"
type
  Handle_StepFEA_FeaAxis2Placement3d* = handle[StepFEA_FeaAxis2Placement3d]

## ! Representation of STEP entity FeaAxis2Placement3d

type
  StepFEA_FeaAxis2Placement3d* {.importcpp: "StepFEA_FeaAxis2Placement3d",
                                header: "StepFEA_FeaAxis2Placement3d.hxx", bycopy.} = object of StepGeom_Axis2Placement3d ##
                                                                                                                   ## !
                                                                                                                   ## Empty
                                                                                                                   ## constructor


proc constructStepFEA_FeaAxis2Placement3d*(): StepFEA_FeaAxis2Placement3d {.
    constructor, importcpp: "StepFEA_FeaAxis2Placement3d(@)",
    header: "StepFEA_FeaAxis2Placement3d.hxx".}
proc Init*(this: var StepFEA_FeaAxis2Placement3d;
          aRepresentationItem_Name: handle[TCollection_HAsciiString];
          aPlacement_Location: handle[StepGeom_CartesianPoint];
          hasAxis2Placement3d_Axis: Standard_Boolean;
          aAxis2Placement3d_Axis: handle[StepGeom_Direction];
          hasAxis2Placement3d_RefDirection: Standard_Boolean;
          aAxis2Placement3d_RefDirection: handle[StepGeom_Direction];
          aSystemType: StepFEA_CoordinateSystemType;
          aDescription: handle[TCollection_HAsciiString]) {.importcpp: "Init",
    header: "StepFEA_FeaAxis2Placement3d.hxx".}
proc SystemType*(this: StepFEA_FeaAxis2Placement3d): StepFEA_CoordinateSystemType {.
    noSideEffect, importcpp: "SystemType",
    header: "StepFEA_FeaAxis2Placement3d.hxx".}
proc SetSystemType*(this: var StepFEA_FeaAxis2Placement3d;
                   SystemType: StepFEA_CoordinateSystemType) {.
    importcpp: "SetSystemType", header: "StepFEA_FeaAxis2Placement3d.hxx".}
proc Description*(this: StepFEA_FeaAxis2Placement3d): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "Description",
                               header: "StepFEA_FeaAxis2Placement3d.hxx".}
proc SetDescription*(this: var StepFEA_FeaAxis2Placement3d;
                    Description: handle[TCollection_HAsciiString]) {.
    importcpp: "SetDescription", header: "StepFEA_FeaAxis2Placement3d.hxx".}
type
  StepFEA_FeaAxis2Placement3dbase_type* = StepGeom_Axis2Placement3d

proc get_type_name*(): cstring {.importcpp: "StepFEA_FeaAxis2Placement3d::get_type_name(@)",
                              header: "StepFEA_FeaAxis2Placement3d.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepFEA_FeaAxis2Placement3d::get_type_descriptor(@)",
    header: "StepFEA_FeaAxis2Placement3d.hxx".}
proc DynamicType*(this: StepFEA_FeaAxis2Placement3d): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepFEA_FeaAxis2Placement3d.hxx".}