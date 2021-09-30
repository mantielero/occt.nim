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

discard "forward decl of TDataXtd_Constraint"
discard "forward decl of AIS_InteractiveObject"
discard "forward decl of TCollection_ExtendedString"
discard "forward decl of TopoDS_Shape"
discard "forward decl of Geom_Geometry"
type
  TPrsStdConstraintTools* {.importcpp: "TPrsStd_ConstraintTools",
                           header: "TPrsStd_ConstraintTools.hxx", bycopy.} = object


proc `new`*(this: var TPrsStdConstraintTools; theSize: csize_t): pointer {.
    importcpp: "TPrsStd_ConstraintTools::operator new",
    header: "TPrsStd_ConstraintTools.hxx".}
proc `delete`*(this: var TPrsStdConstraintTools; theAddress: pointer) {.
    importcpp: "TPrsStd_ConstraintTools::operator delete",
    header: "TPrsStd_ConstraintTools.hxx".}
proc `new[]`*(this: var TPrsStdConstraintTools; theSize: csize_t): pointer {.
    importcpp: "TPrsStd_ConstraintTools::operator new[]",
    header: "TPrsStd_ConstraintTools.hxx".}
proc `delete[]`*(this: var TPrsStdConstraintTools; theAddress: pointer) {.
    importcpp: "TPrsStd_ConstraintTools::operator delete[]",
    header: "TPrsStd_ConstraintTools.hxx".}
proc `new`*(this: var TPrsStdConstraintTools; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TPrsStd_ConstraintTools::operator new",
    header: "TPrsStd_ConstraintTools.hxx".}
proc `delete`*(this: var TPrsStdConstraintTools; a2: pointer; a3: pointer) {.
    importcpp: "TPrsStd_ConstraintTools::operator delete",
    header: "TPrsStd_ConstraintTools.hxx".}
proc updateOnlyValue*(aConst: Handle[TDataXtdConstraint];
                     anAIS: Handle[AIS_InteractiveObject]) {.
    importcpp: "TPrsStd_ConstraintTools::UpdateOnlyValue(@)",
    header: "TPrsStd_ConstraintTools.hxx".}
proc computeDistance*(aConst: Handle[TDataXtdConstraint];
                     anAIS: var Handle[AIS_InteractiveObject]) {.
    importcpp: "TPrsStd_ConstraintTools::ComputeDistance(@)",
    header: "TPrsStd_ConstraintTools.hxx".}
proc computeParallel*(aConst: Handle[TDataXtdConstraint];
                     anAIS: var Handle[AIS_InteractiveObject]) {.
    importcpp: "TPrsStd_ConstraintTools::ComputeParallel(@)",
    header: "TPrsStd_ConstraintTools.hxx".}
proc computeTangent*(aConst: Handle[TDataXtdConstraint];
                    anAIS: var Handle[AIS_InteractiveObject]) {.
    importcpp: "TPrsStd_ConstraintTools::ComputeTangent(@)",
    header: "TPrsStd_ConstraintTools.hxx".}
proc computePerpendicular*(aConst: Handle[TDataXtdConstraint];
                          anAIS: var Handle[AIS_InteractiveObject]) {.
    importcpp: "TPrsStd_ConstraintTools::ComputePerpendicular(@)",
    header: "TPrsStd_ConstraintTools.hxx".}
proc computeConcentric*(aConst: Handle[TDataXtdConstraint];
                       anAIS: var Handle[AIS_InteractiveObject]) {.
    importcpp: "TPrsStd_ConstraintTools::ComputeConcentric(@)",
    header: "TPrsStd_ConstraintTools.hxx".}
proc computeSymmetry*(aConst: Handle[TDataXtdConstraint];
                     anAIS: var Handle[AIS_InteractiveObject]) {.
    importcpp: "TPrsStd_ConstraintTools::ComputeSymmetry(@)",
    header: "TPrsStd_ConstraintTools.hxx".}
proc computeMidPoint*(aConst: Handle[TDataXtdConstraint];
                     anAIS: var Handle[AIS_InteractiveObject]) {.
    importcpp: "TPrsStd_ConstraintTools::ComputeMidPoint(@)",
    header: "TPrsStd_ConstraintTools.hxx".}
proc computeAngle*(aConst: Handle[TDataXtdConstraint];
                  anAIS: var Handle[AIS_InteractiveObject]) {.
    importcpp: "TPrsStd_ConstraintTools::ComputeAngle(@)",
    header: "TPrsStd_ConstraintTools.hxx".}
proc computeRadius*(aConst: Handle[TDataXtdConstraint];
                   anAIS: var Handle[AIS_InteractiveObject]) {.
    importcpp: "TPrsStd_ConstraintTools::ComputeRadius(@)",
    header: "TPrsStd_ConstraintTools.hxx".}
proc computeMinRadius*(aConst: Handle[TDataXtdConstraint];
                      anAIS: var Handle[AIS_InteractiveObject]) {.
    importcpp: "TPrsStd_ConstraintTools::ComputeMinRadius(@)",
    header: "TPrsStd_ConstraintTools.hxx".}
proc computeMaxRadius*(aConst: Handle[TDataXtdConstraint];
                      anAIS: var Handle[AIS_InteractiveObject]) {.
    importcpp: "TPrsStd_ConstraintTools::ComputeMaxRadius(@)",
    header: "TPrsStd_ConstraintTools.hxx".}
proc computeEqualDistance*(aConst: Handle[TDataXtdConstraint];
                          anAIS: var Handle[AIS_InteractiveObject]) {.
    importcpp: "TPrsStd_ConstraintTools::ComputeEqualDistance(@)",
    header: "TPrsStd_ConstraintTools.hxx".}
proc computeEqualRadius*(aConst: Handle[TDataXtdConstraint];
                        anAIS: var Handle[AIS_InteractiveObject]) {.
    importcpp: "TPrsStd_ConstraintTools::ComputeEqualRadius(@)",
    header: "TPrsStd_ConstraintTools.hxx".}
proc computeFix*(aConst: Handle[TDataXtdConstraint];
                anAIS: var Handle[AIS_InteractiveObject]) {.
    importcpp: "TPrsStd_ConstraintTools::ComputeFix(@)",
    header: "TPrsStd_ConstraintTools.hxx".}
proc computeDiameter*(aConst: Handle[TDataXtdConstraint];
                     anAIS: var Handle[AIS_InteractiveObject]) {.
    importcpp: "TPrsStd_ConstraintTools::ComputeDiameter(@)",
    header: "TPrsStd_ConstraintTools.hxx".}
proc computeOffset*(aConst: Handle[TDataXtdConstraint];
                   anAIS: var Handle[AIS_InteractiveObject]) {.
    importcpp: "TPrsStd_ConstraintTools::ComputeOffset(@)",
    header: "TPrsStd_ConstraintTools.hxx".}
proc computePlacement*(aConst: Handle[TDataXtdConstraint];
                      anAIS: var Handle[AIS_InteractiveObject]) {.
    importcpp: "TPrsStd_ConstraintTools::ComputePlacement(@)",
    header: "TPrsStd_ConstraintTools.hxx".}
proc computeCoincident*(aConst: Handle[TDataXtdConstraint];
                       anAIS: var Handle[AIS_InteractiveObject]) {.
    importcpp: "TPrsStd_ConstraintTools::ComputeCoincident(@)",
    header: "TPrsStd_ConstraintTools.hxx".}
proc computeRound*(aConst: Handle[TDataXtdConstraint];
                  anAIS: var Handle[AIS_InteractiveObject]) {.
    importcpp: "TPrsStd_ConstraintTools::ComputeRound(@)",
    header: "TPrsStd_ConstraintTools.hxx".}
proc computeOthers*(aConst: Handle[TDataXtdConstraint];
                   anAIS: var Handle[AIS_InteractiveObject]) {.
    importcpp: "TPrsStd_ConstraintTools::ComputeOthers(@)",
    header: "TPrsStd_ConstraintTools.hxx".}
proc computeTextAndValue*(aConst: Handle[TDataXtdConstraint];
                         aValue: var StandardReal;
                         aText: var TCollectionExtendedString;
                         anIsAngle: StandardBoolean) {.
    importcpp: "TPrsStd_ConstraintTools::ComputeTextAndValue(@)",
    header: "TPrsStd_ConstraintTools.hxx".}
proc computeAngleForOneFace*(aConst: Handle[TDataXtdConstraint];
                            anAIS: var Handle[AIS_InteractiveObject]) {.
    importcpp: "TPrsStd_ConstraintTools::ComputeAngleForOneFace(@)",
    header: "TPrsStd_ConstraintTools.hxx".}