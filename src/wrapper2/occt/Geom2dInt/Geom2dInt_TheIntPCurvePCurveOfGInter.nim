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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../IntRes2d/IntRes2d_Domain,
  ../IntRes2d/IntRes2d_Intersection, ../Standard/Standard_Real,
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean

discard "forward decl of Adaptor2d_Curve2d"
discard "forward decl of Geom2dInt_Geom2dCurveTool"
discard "forward decl of Geom2dInt_TheProjPCurOfGInter"
discard "forward decl of Geom2dInt_ThePolygon2dOfTheIntPCurvePCurveOfGInter"
discard "forward decl of Geom2dInt_TheDistBetweenPCurvesOfTheIntPCurvePCurveOfGInter"
discard "forward decl of Geom2dInt_ExactIntersectionPointOfTheIntPCurvePCurveOfGInter"
discard "forward decl of IntRes2d_Domain"
type
  Geom2dInt_TheIntPCurvePCurveOfGInter* {.
      importcpp: "Geom2dInt_TheIntPCurvePCurveOfGInter",
      header: "Geom2dInt_TheIntPCurvePCurveOfGInter.hxx", bycopy.} = object of IntRes2d_Intersection ##
                                                                                              ## !
                                                                                              ## Method
                                                                                              ## to
                                                                                              ## find
                                                                                              ## intersection
                                                                                              ## between
                                                                                              ## two
                                                                                              ## curves
                                                                                              ##
                                                                                              ## !
                                                                                              ## :
                                                                                              ## returns
                                                                                              ## false
                                                                                              ## for
                                                                                              ## case
                                                                                              ## when
                                                                                              ## some
                                                                                              ## points
                                                                                              ## of
                                                                                              ## polygon
                                                                                              ##
                                                                                              ## !
                                                                                              ## :
                                                                                              ## were
                                                                                              ## replaced
                                                                                              ## on
                                                                                              ## line
                                                                                              ## and
                                                                                              ## exact
                                                                                              ## point
                                                                                              ## of
                                                                                              ## intersection
                                                                                              ## was
                                                                                              ## not
                                                                                              ## found
                                                                                              ##
                                                                                              ## !
                                                                                              ## :
                                                                                              ## for
                                                                                              ## case
                                                                                              ## when
                                                                                              ## point
                                                                                              ## of
                                                                                              ## intersection
                                                                                              ## was
                                                                                              ## found
                                                                                              ##
                                                                                              ## !
                                                                                              ## :
                                                                                              ## during
                                                                                              ## prelimanary
                                                                                              ## search
                                                                                              ## for
                                                                                              ## line
                                                                                              ## (case
                                                                                              ## of
                                                                                              ## bad
                                                                                              ## paramerization
                                                                                              ## of
                                                                                              ## Bspline
                                                                                              ## for
                                                                                              ## example).
    ## ! Minimal number of sample points


proc constructGeom2dInt_TheIntPCurvePCurveOfGInter*(): Geom2dInt_TheIntPCurvePCurveOfGInter {.
    constructor, importcpp: "Geom2dInt_TheIntPCurvePCurveOfGInter(@)",
    header: "Geom2dInt_TheIntPCurvePCurveOfGInter.hxx".}
proc Perform*(this: var Geom2dInt_TheIntPCurvePCurveOfGInter;
             Curve1: Adaptor2d_Curve2d; Domain1: IntRes2d_Domain;
             Curve2: Adaptor2d_Curve2d; Domain2: IntRes2d_Domain;
             TolConf: Standard_Real; Tol: Standard_Real) {.importcpp: "Perform",
    header: "Geom2dInt_TheIntPCurvePCurveOfGInter.hxx".}
proc Perform*(this: var Geom2dInt_TheIntPCurvePCurveOfGInter;
             Curve1: Adaptor2d_Curve2d; Domain1: IntRes2d_Domain;
             TolConf: Standard_Real; Tol: Standard_Real) {.importcpp: "Perform",
    header: "Geom2dInt_TheIntPCurvePCurveOfGInter.hxx".}
proc SetMinNbSamples*(this: var Geom2dInt_TheIntPCurvePCurveOfGInter;
                     theMinNbSamples: Standard_Integer) {.
    importcpp: "SetMinNbSamples",
    header: "Geom2dInt_TheIntPCurvePCurveOfGInter.hxx".}
proc GetMinNbSamples*(this: Geom2dInt_TheIntPCurvePCurveOfGInter): Standard_Integer {.
    noSideEffect, importcpp: "GetMinNbSamples",
    header: "Geom2dInt_TheIntPCurvePCurveOfGInter.hxx".}