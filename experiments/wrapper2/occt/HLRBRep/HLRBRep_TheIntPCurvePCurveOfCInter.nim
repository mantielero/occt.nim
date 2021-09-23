##  Created on: 1992-10-14
##  Created by: Christophe MARION
##  Copyright (c) 1992-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../IntRes2d/IntRes2d_Domain,
  ../IntRes2d/IntRes2d_Intersection, ../Standard/Standard_Address,
  ../Standard/Standard_Real, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean

discard "forward decl of HLRBRep_CurveTool"
discard "forward decl of HLRBRep_TheProjPCurOfCInter"
discard "forward decl of HLRBRep_ThePolygon2dOfTheIntPCurvePCurveOfCInter"
discard "forward decl of HLRBRep_TheDistBetweenPCurvesOfTheIntPCurvePCurveOfCInter"
discard "forward decl of HLRBRep_ExactIntersectionPointOfTheIntPCurvePCurveOfCInter"
discard "forward decl of IntRes2d_Domain"
type
  HLRBRep_TheIntPCurvePCurveOfCInter* {.importcpp: "HLRBRep_TheIntPCurvePCurveOfCInter", header: "HLRBRep_TheIntPCurvePCurveOfCInter.hxx",
                                       bycopy.} = object of IntRes2d_Intersection ## !
                                                                             ## Method to
                                                                             ## find
                                                                             ## intersection
                                                                             ## between two
                                                                             ## curves
                                                                             ## ! :
                                                                             ## returns
                                                                             ## false for
                                                                             ## case
                                                                             ## when
                                                                             ## some
                                                                             ## points of
                                                                             ## polygon
                                                                             ## ! :
                                                                             ## were
                                                                             ## replaced on
                                                                             ## line and
                                                                             ## exact
                                                                             ## point of
                                                                             ## intersection was not
                                                                             ## found
                                                                             ## ! : for
                                                                             ## case
                                                                             ## when
                                                                             ## point of
                                                                             ## intersection was
                                                                             ## found
                                                                             ## ! :
                                                                             ## during
                                                                             ## prelimanary
                                                                             ## search for
                                                                             ## line
                                                                             ## (case of bad
                                                                             ## paramerization of
                                                                             ## Bspline for
                                                                             ## example).
    ## ! Minimal number of sample points


proc constructHLRBRep_TheIntPCurvePCurveOfCInter*(): HLRBRep_TheIntPCurvePCurveOfCInter {.
    constructor, importcpp: "HLRBRep_TheIntPCurvePCurveOfCInter(@)",
    header: "HLRBRep_TheIntPCurvePCurveOfCInter.hxx".}
proc Perform*(this: var HLRBRep_TheIntPCurvePCurveOfCInter;
             Curve1: Standard_Address; Domain1: IntRes2d_Domain;
             Curve2: Standard_Address; Domain2: IntRes2d_Domain;
             TolConf: Standard_Real; Tol: Standard_Real) {.importcpp: "Perform",
    header: "HLRBRep_TheIntPCurvePCurveOfCInter.hxx".}
proc Perform*(this: var HLRBRep_TheIntPCurvePCurveOfCInter;
             Curve1: Standard_Address; Domain1: IntRes2d_Domain;
             TolConf: Standard_Real; Tol: Standard_Real) {.importcpp: "Perform",
    header: "HLRBRep_TheIntPCurvePCurveOfCInter.hxx".}
proc SetMinNbSamples*(this: var HLRBRep_TheIntPCurvePCurveOfCInter;
                     theMinNbSamples: Standard_Integer) {.
    importcpp: "SetMinNbSamples", header: "HLRBRep_TheIntPCurvePCurveOfCInter.hxx".}
proc GetMinNbSamples*(this: HLRBRep_TheIntPCurvePCurveOfCInter): Standard_Integer {.
    noSideEffect, importcpp: "GetMinNbSamples",
    header: "HLRBRep_TheIntPCurvePCurveOfCInter.hxx".}