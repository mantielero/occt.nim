##  Created on: 2000-11-23
##  Created by: Michael KLOKOV
##  Copyright (c) 2000-2014 OPEN CASCADE SAS
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
  ../Standard/Standard_Real, ../GeomAbs/GeomAbs_CurveType

discard "forward decl of Geom_Curve"
discard "forward decl of Geom2d_Curve"
discard "forward decl of gp_Pnt"
type
  IntTools_Curve* {.importcpp: "IntTools_Curve", header: "IntTools_Curve.hxx", bycopy.} = object ##
                                                                                         ## !
                                                                                         ## Empty
                                                                                         ## constructor


proc constructIntTools_Curve*(): IntTools_Curve {.constructor,
    importcpp: "IntTools_Curve(@)", header: "IntTools_Curve.hxx".}
proc constructIntTools_Curve*(the3dCurve3d: handle[Geom_Curve];
                             the2dCurve1: handle[Geom2d_Curve];
                             the2dCurve2: handle[Geom2d_Curve];
                             theTolerance: Standard_Real = 0.0;
                             theTangentialTolerance: Standard_Real = 0.0): IntTools_Curve {.
    constructor, importcpp: "IntTools_Curve(@)", header: "IntTools_Curve.hxx".}
proc SetCurves*(this: var IntTools_Curve; the3dCurve: handle[Geom_Curve];
               the2dCurve1: handle[Geom2d_Curve];
               the2dCurve2: handle[Geom2d_Curve]) {.importcpp: "SetCurves",
    header: "IntTools_Curve.hxx".}
proc SetCurve*(this: var IntTools_Curve; the3dCurve: handle[Geom_Curve]) {.
    importcpp: "SetCurve", header: "IntTools_Curve.hxx".}
proc SetFirstCurve2d*(this: var IntTools_Curve; the2dCurve1: handle[Geom2d_Curve]) {.
    importcpp: "SetFirstCurve2d", header: "IntTools_Curve.hxx".}
proc SetSecondCurve2d*(this: var IntTools_Curve; the2dCurve2: handle[Geom2d_Curve]) {.
    importcpp: "SetSecondCurve2d", header: "IntTools_Curve.hxx".}
proc SetTolerance*(this: var IntTools_Curve; theTolerance: Standard_Real) {.
    importcpp: "SetTolerance", header: "IntTools_Curve.hxx".}
proc SetTangentialTolerance*(this: var IntTools_Curve;
                            theTangentialTolerance: Standard_Real) {.
    importcpp: "SetTangentialTolerance", header: "IntTools_Curve.hxx".}
proc Curve*(this: IntTools_Curve): handle[Geom_Curve] {.noSideEffect,
    importcpp: "Curve", header: "IntTools_Curve.hxx".}
proc FirstCurve2d*(this: IntTools_Curve): handle[Geom2d_Curve] {.noSideEffect,
    importcpp: "FirstCurve2d", header: "IntTools_Curve.hxx".}
proc SecondCurve2d*(this: IntTools_Curve): handle[Geom2d_Curve] {.noSideEffect,
    importcpp: "SecondCurve2d", header: "IntTools_Curve.hxx".}
proc Tolerance*(this: IntTools_Curve): Standard_Real {.noSideEffect,
    importcpp: "Tolerance", header: "IntTools_Curve.hxx".}
proc TangentialTolerance*(this: IntTools_Curve): Standard_Real {.noSideEffect,
    importcpp: "TangentialTolerance", header: "IntTools_Curve.hxx".}
proc HasBounds*(this: IntTools_Curve): Standard_Boolean {.noSideEffect,
    importcpp: "HasBounds", header: "IntTools_Curve.hxx".}
proc Bounds*(this: IntTools_Curve; theFirst: var Standard_Real;
            theLast: var Standard_Real; theFirstPnt: var gp_Pnt;
            theLastPnt: var gp_Pnt): Standard_Boolean {.noSideEffect,
    importcpp: "Bounds", header: "IntTools_Curve.hxx".}
proc D0*(this: IntTools_Curve; thePar: Standard_Real; thePnt: var gp_Pnt): Standard_Boolean {.
    noSideEffect, importcpp: "D0", header: "IntTools_Curve.hxx".}
proc Type*(this: IntTools_Curve): GeomAbs_CurveType {.noSideEffect,
    importcpp: "Type", header: "IntTools_Curve.hxx".}