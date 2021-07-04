##  Created on: 1997-08-20
##  Created by: Guest Design
##  Copyright (c) 1997-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Real,
  ../Standard/Standard_Boolean

discard "forward decl of TDataXtd_Constraint"
discard "forward decl of AIS_InteractiveObject"
discard "forward decl of TCollection_ExtendedString"
discard "forward decl of TopoDS_Shape"
discard "forward decl of Geom_Geometry"
type
  TPrsStd_ConstraintTools* {.importcpp: "TPrsStd_ConstraintTools",
                            header: "TPrsStd_ConstraintTools.hxx", bycopy.} = object


proc UpdateOnlyValue*(aConst: handle[TDataXtd_Constraint];
                     anAIS: handle[AIS_InteractiveObject]) {.
    importcpp: "TPrsStd_ConstraintTools::UpdateOnlyValue(@)",
    header: "TPrsStd_ConstraintTools.hxx".}
proc ComputeDistance*(aConst: handle[TDataXtd_Constraint];
                     anAIS: var handle[AIS_InteractiveObject]) {.
    importcpp: "TPrsStd_ConstraintTools::ComputeDistance(@)",
    header: "TPrsStd_ConstraintTools.hxx".}
proc ComputeParallel*(aConst: handle[TDataXtd_Constraint];
                     anAIS: var handle[AIS_InteractiveObject]) {.
    importcpp: "TPrsStd_ConstraintTools::ComputeParallel(@)",
    header: "TPrsStd_ConstraintTools.hxx".}
proc ComputeTangent*(aConst: handle[TDataXtd_Constraint];
                    anAIS: var handle[AIS_InteractiveObject]) {.
    importcpp: "TPrsStd_ConstraintTools::ComputeTangent(@)",
    header: "TPrsStd_ConstraintTools.hxx".}
proc ComputePerpendicular*(aConst: handle[TDataXtd_Constraint];
                          anAIS: var handle[AIS_InteractiveObject]) {.
    importcpp: "TPrsStd_ConstraintTools::ComputePerpendicular(@)",
    header: "TPrsStd_ConstraintTools.hxx".}
proc ComputeConcentric*(aConst: handle[TDataXtd_Constraint];
                       anAIS: var handle[AIS_InteractiveObject]) {.
    importcpp: "TPrsStd_ConstraintTools::ComputeConcentric(@)",
    header: "TPrsStd_ConstraintTools.hxx".}
proc ComputeSymmetry*(aConst: handle[TDataXtd_Constraint];
                     anAIS: var handle[AIS_InteractiveObject]) {.
    importcpp: "TPrsStd_ConstraintTools::ComputeSymmetry(@)",
    header: "TPrsStd_ConstraintTools.hxx".}
proc ComputeMidPoint*(aConst: handle[TDataXtd_Constraint];
                     anAIS: var handle[AIS_InteractiveObject]) {.
    importcpp: "TPrsStd_ConstraintTools::ComputeMidPoint(@)",
    header: "TPrsStd_ConstraintTools.hxx".}
proc ComputeAngle*(aConst: handle[TDataXtd_Constraint];
                  anAIS: var handle[AIS_InteractiveObject]) {.
    importcpp: "TPrsStd_ConstraintTools::ComputeAngle(@)",
    header: "TPrsStd_ConstraintTools.hxx".}
proc ComputeRadius*(aConst: handle[TDataXtd_Constraint];
                   anAIS: var handle[AIS_InteractiveObject]) {.
    importcpp: "TPrsStd_ConstraintTools::ComputeRadius(@)",
    header: "TPrsStd_ConstraintTools.hxx".}
proc ComputeMinRadius*(aConst: handle[TDataXtd_Constraint];
                      anAIS: var handle[AIS_InteractiveObject]) {.
    importcpp: "TPrsStd_ConstraintTools::ComputeMinRadius(@)",
    header: "TPrsStd_ConstraintTools.hxx".}
proc ComputeMaxRadius*(aConst: handle[TDataXtd_Constraint];
                      anAIS: var handle[AIS_InteractiveObject]) {.
    importcpp: "TPrsStd_ConstraintTools::ComputeMaxRadius(@)",
    header: "TPrsStd_ConstraintTools.hxx".}
proc ComputeEqualDistance*(aConst: handle[TDataXtd_Constraint];
                          anAIS: var handle[AIS_InteractiveObject]) {.
    importcpp: "TPrsStd_ConstraintTools::ComputeEqualDistance(@)",
    header: "TPrsStd_ConstraintTools.hxx".}
proc ComputeEqualRadius*(aConst: handle[TDataXtd_Constraint];
                        anAIS: var handle[AIS_InteractiveObject]) {.
    importcpp: "TPrsStd_ConstraintTools::ComputeEqualRadius(@)",
    header: "TPrsStd_ConstraintTools.hxx".}
proc ComputeFix*(aConst: handle[TDataXtd_Constraint];
                anAIS: var handle[AIS_InteractiveObject]) {.
    importcpp: "TPrsStd_ConstraintTools::ComputeFix(@)",
    header: "TPrsStd_ConstraintTools.hxx".}
proc ComputeDiameter*(aConst: handle[TDataXtd_Constraint];
                     anAIS: var handle[AIS_InteractiveObject]) {.
    importcpp: "TPrsStd_ConstraintTools::ComputeDiameter(@)",
    header: "TPrsStd_ConstraintTools.hxx".}
proc ComputeOffset*(aConst: handle[TDataXtd_Constraint];
                   anAIS: var handle[AIS_InteractiveObject]) {.
    importcpp: "TPrsStd_ConstraintTools::ComputeOffset(@)",
    header: "TPrsStd_ConstraintTools.hxx".}
proc ComputePlacement*(aConst: handle[TDataXtd_Constraint];
                      anAIS: var handle[AIS_InteractiveObject]) {.
    importcpp: "TPrsStd_ConstraintTools::ComputePlacement(@)",
    header: "TPrsStd_ConstraintTools.hxx".}
proc ComputeCoincident*(aConst: handle[TDataXtd_Constraint];
                       anAIS: var handle[AIS_InteractiveObject]) {.
    importcpp: "TPrsStd_ConstraintTools::ComputeCoincident(@)",
    header: "TPrsStd_ConstraintTools.hxx".}
proc ComputeRound*(aConst: handle[TDataXtd_Constraint];
                  anAIS: var handle[AIS_InteractiveObject]) {.
    importcpp: "TPrsStd_ConstraintTools::ComputeRound(@)",
    header: "TPrsStd_ConstraintTools.hxx".}
proc ComputeOthers*(aConst: handle[TDataXtd_Constraint];
                   anAIS: var handle[AIS_InteractiveObject]) {.
    importcpp: "TPrsStd_ConstraintTools::ComputeOthers(@)",
    header: "TPrsStd_ConstraintTools.hxx".}
proc ComputeTextAndValue*(aConst: handle[TDataXtd_Constraint];
                         aValue: var Standard_Real;
                         aText: var TCollection_ExtendedString;
                         anIsAngle: Standard_Boolean) {.
    importcpp: "TPrsStd_ConstraintTools::ComputeTextAndValue(@)",
    header: "TPrsStd_ConstraintTools.hxx".}
proc ComputeAngleForOneFace*(aConst: handle[TDataXtd_Constraint];
                            anAIS: var handle[AIS_InteractiveObject]) {.
    importcpp: "TPrsStd_ConstraintTools::ComputeAngleForOneFace(@)",
    header: "TPrsStd_ConstraintTools.hxx".}