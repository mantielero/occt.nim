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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_CartesianPoint"
discard "forward decl of StepGeom_Direction"
discard "forward decl of StepFEA_FeaAxis2Placement3d"
discard "forward decl of StepFEA_FeaAxis2Placement3d"
type
  HandleC1C1* = Handle[StepFEA_FeaAxis2Placement3d]

## ! Representation of STEP entity FeaAxis2Placement3d

type
  StepFEA_FeaAxis2Placement3d* {.importcpp: "StepFEA_FeaAxis2Placement3d",
                                header: "StepFEA_FeaAxis2Placement3d.hxx", bycopy.} = object of StepGeomAxis2Placement3d ##
                                                                                                                  ## !
                                                                                                                  ## Empty
                                                                                                                  ## constructor


proc constructStepFEA_FeaAxis2Placement3d*(): StepFEA_FeaAxis2Placement3d {.
    constructor, importcpp: "StepFEA_FeaAxis2Placement3d(@)",
    header: "StepFEA_FeaAxis2Placement3d.hxx".}
proc init*(this: var StepFEA_FeaAxis2Placement3d;
          aRepresentationItemName: Handle[TCollectionHAsciiString];
          aPlacementLocation: Handle[StepGeomCartesianPoint];
          hasAxis2Placement3dAxis: StandardBoolean;
          aAxis2Placement3dAxis: Handle[StepGeomDirection];
          hasAxis2Placement3dRefDirection: StandardBoolean;
          aAxis2Placement3dRefDirection: Handle[StepGeomDirection];
          aSystemType: StepFEA_CoordinateSystemType;
          aDescription: Handle[TCollectionHAsciiString]) {.importcpp: "Init",
    header: "StepFEA_FeaAxis2Placement3d.hxx".}
proc systemType*(this: StepFEA_FeaAxis2Placement3d): StepFEA_CoordinateSystemType {.
    noSideEffect, importcpp: "SystemType",
    header: "StepFEA_FeaAxis2Placement3d.hxx".}
proc setSystemType*(this: var StepFEA_FeaAxis2Placement3d;
                   systemType: StepFEA_CoordinateSystemType) {.
    importcpp: "SetSystemType", header: "StepFEA_FeaAxis2Placement3d.hxx".}
proc description*(this: StepFEA_FeaAxis2Placement3d): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "Description",
                              header: "StepFEA_FeaAxis2Placement3d.hxx".}
proc setDescription*(this: var StepFEA_FeaAxis2Placement3d;
                    description: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetDescription", header: "StepFEA_FeaAxis2Placement3d.hxx".}
type
  StepFEA_FeaAxis2Placement3dbaseType* = StepGeomAxis2Placement3d

proc getTypeName*(): cstring {.importcpp: "StepFEA_FeaAxis2Placement3d::get_type_name(@)",
                            header: "StepFEA_FeaAxis2Placement3d.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepFEA_FeaAxis2Placement3d::get_type_descriptor(@)",
    header: "StepFEA_FeaAxis2Placement3d.hxx".}
proc dynamicType*(this: StepFEA_FeaAxis2Placement3d): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepFEA_FeaAxis2Placement3d.hxx".}