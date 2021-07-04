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
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer, ../Standard/Standard_Real,
  Geom2dInt_TheDistBetweenPCurvesOfTheIntPCurvePCurveOfGInter,
  ../math/math_Vector

discard "forward decl of Adaptor2d_Curve2d"
discard "forward decl of Geom2dInt_Geom2dCurveTool"
discard "forward decl of Geom2dInt_TheProjPCurOfGInter"
discard "forward decl of Geom2dInt_TheIntPCurvePCurveOfGInter"
discard "forward decl of Geom2dInt_ThePolygon2dOfTheIntPCurvePCurveOfGInter"
discard "forward decl of Geom2dInt_TheDistBetweenPCurvesOfTheIntPCurvePCurveOfGInter"
type
  Geom2dInt_ExactIntersectionPointOfTheIntPCurvePCurveOfGInter* {.importcpp: "Geom2dInt_ExactIntersectionPointOfTheIntPCurvePCurveOfGInter", header: "Geom2dInt_ExactIntersectionPointOfTheIntPCurvePCurveOfGInter.hxx",
      bycopy.} = object


proc constructGeom2dInt_ExactIntersectionPointOfTheIntPCurvePCurveOfGInter*(
    C1: Adaptor2d_Curve2d; C2: Adaptor2d_Curve2d; Tol: Standard_Real): Geom2dInt_ExactIntersectionPointOfTheIntPCurvePCurveOfGInter {.
    constructor, importcpp: "Geom2dInt_ExactIntersectionPointOfTheIntPCurvePCurveOfGInter(@)",
    header: "Geom2dInt_ExactIntersectionPointOfTheIntPCurvePCurveOfGInter.hxx".}
proc Perform*(this: var Geom2dInt_ExactIntersectionPointOfTheIntPCurvePCurveOfGInter;
             Poly1: Geom2dInt_ThePolygon2dOfTheIntPCurvePCurveOfGInter;
             Poly2: Geom2dInt_ThePolygon2dOfTheIntPCurvePCurveOfGInter;
             NumSegOn1: var Standard_Integer; NumSegOn2: var Standard_Integer;
             ParamOnSeg1: var Standard_Real; ParamOnSeg2: var Standard_Real) {.
    importcpp: "Perform",
    header: "Geom2dInt_ExactIntersectionPointOfTheIntPCurvePCurveOfGInter.hxx".}
proc Perform*(this: var Geom2dInt_ExactIntersectionPointOfTheIntPCurvePCurveOfGInter;
             Uo: Standard_Real; Vo: Standard_Real; UInf: Standard_Real;
             VInf: Standard_Real; USup: Standard_Real; VSup: Standard_Real) {.
    importcpp: "Perform",
    header: "Geom2dInt_ExactIntersectionPointOfTheIntPCurvePCurveOfGInter.hxx".}
proc NbRoots*(this: Geom2dInt_ExactIntersectionPointOfTheIntPCurvePCurveOfGInter): Standard_Integer {.
    noSideEffect, importcpp: "NbRoots",
    header: "Geom2dInt_ExactIntersectionPointOfTheIntPCurvePCurveOfGInter.hxx".}
proc Roots*(this: var Geom2dInt_ExactIntersectionPointOfTheIntPCurvePCurveOfGInter;
           U: var Standard_Real; V: var Standard_Real) {.importcpp: "Roots",
    header: "Geom2dInt_ExactIntersectionPointOfTheIntPCurvePCurveOfGInter.hxx".}
proc AnErrorOccurred*(this: Geom2dInt_ExactIntersectionPointOfTheIntPCurvePCurveOfGInter): Standard_Boolean {.
    noSideEffect, importcpp: "AnErrorOccurred",
    header: "Geom2dInt_ExactIntersectionPointOfTheIntPCurvePCurveOfGInter.hxx".}