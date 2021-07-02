##  Created on: 1992-06-04
##  Created by: Jacques GOUSSARD
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

discard "forward decl of Adaptor2d_Curve2d"
discard "forward decl of Geom2dInt_Geom2dCurveTool"
discard "forward decl of Geom2dInt_TheProjPCurOfGInter"
discard "forward decl of Geom2dInt_ThePolygon2dOfTheIntPCurvePCurveOfGInter"
discard "forward decl of Geom2dInt_TheDistBetweenPCurvesOfTheIntPCurvePCurveOfGInter"
discard "forward decl of Geom2dInt_ExactIntersectionPointOfTheIntPCurvePCurveOfGInter"
discard "forward decl of IntRes2d_Domain"
type
  Geom2dIntTheIntPCurvePCurveOfGInter* {.importcpp: "Geom2dInt_TheIntPCurvePCurveOfGInter", header: "Geom2dInt_TheIntPCurvePCurveOfGInter.hxx",
                                        bycopy.} = object of IntRes2dIntersection ## !
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


proc constructGeom2dIntTheIntPCurvePCurveOfGInter*(): Geom2dIntTheIntPCurvePCurveOfGInter {.
    constructor, importcpp: "Geom2dInt_TheIntPCurvePCurveOfGInter(@)",
    header: "Geom2dInt_TheIntPCurvePCurveOfGInter.hxx".}
proc perform*(this: var Geom2dIntTheIntPCurvePCurveOfGInter;
             curve1: Adaptor2dCurve2d; domain1: IntRes2dDomain;
             curve2: Adaptor2dCurve2d; domain2: IntRes2dDomain;
             tolConf: StandardReal; tol: StandardReal) {.importcpp: "Perform",
    header: "Geom2dInt_TheIntPCurvePCurveOfGInter.hxx".}
proc perform*(this: var Geom2dIntTheIntPCurvePCurveOfGInter;
             curve1: Adaptor2dCurve2d; domain1: IntRes2dDomain;
             tolConf: StandardReal; tol: StandardReal) {.importcpp: "Perform",
    header: "Geom2dInt_TheIntPCurvePCurveOfGInter.hxx".}
proc setMinNbSamples*(this: var Geom2dIntTheIntPCurvePCurveOfGInter;
                     theMinNbSamples: StandardInteger) {.
    importcpp: "SetMinNbSamples",
    header: "Geom2dInt_TheIntPCurvePCurveOfGInter.hxx".}
proc getMinNbSamples*(this: Geom2dIntTheIntPCurvePCurveOfGInter): StandardInteger {.
    noSideEffect, importcpp: "GetMinNbSamples",
    header: "Geom2dInt_TheIntPCurvePCurveOfGInter.hxx".}

