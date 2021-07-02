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

discard "forward decl of Geom_Curve"
discard "forward decl of Geom2d_Curve"
discard "forward decl of gp_Pnt"
type
  IntToolsCurve* {.importcpp: "IntTools_Curve", header: "IntTools_Curve.hxx", bycopy.} = object ##
                                                                                        ## !
                                                                                        ## Empty
                                                                                        ## constructor


proc constructIntToolsCurve*(): IntToolsCurve {.constructor,
    importcpp: "IntTools_Curve(@)", header: "IntTools_Curve.hxx".}
proc constructIntToolsCurve*(the3dCurve3d: Handle[GeomCurve];
                            the2dCurve1: Handle[Geom2dCurve];
                            the2dCurve2: Handle[Geom2dCurve];
                            theTolerance: StandardReal = 0.0;
                            theTangentialTolerance: StandardReal = 0.0): IntToolsCurve {.
    constructor, importcpp: "IntTools_Curve(@)", header: "IntTools_Curve.hxx".}
proc setCurves*(this: var IntToolsCurve; the3dCurve: Handle[GeomCurve];
               the2dCurve1: Handle[Geom2dCurve]; the2dCurve2: Handle[Geom2dCurve]) {.
    importcpp: "SetCurves", header: "IntTools_Curve.hxx".}
proc setCurve*(this: var IntToolsCurve; the3dCurve: Handle[GeomCurve]) {.
    importcpp: "SetCurve", header: "IntTools_Curve.hxx".}
proc setFirstCurve2d*(this: var IntToolsCurve; the2dCurve1: Handle[Geom2dCurve]) {.
    importcpp: "SetFirstCurve2d", header: "IntTools_Curve.hxx".}
proc setSecondCurve2d*(this: var IntToolsCurve; the2dCurve2: Handle[Geom2dCurve]) {.
    importcpp: "SetSecondCurve2d", header: "IntTools_Curve.hxx".}
proc setTolerance*(this: var IntToolsCurve; theTolerance: StandardReal) {.
    importcpp: "SetTolerance", header: "IntTools_Curve.hxx".}
proc setTangentialTolerance*(this: var IntToolsCurve;
                            theTangentialTolerance: StandardReal) {.
    importcpp: "SetTangentialTolerance", header: "IntTools_Curve.hxx".}
proc curve*(this: IntToolsCurve): Handle[GeomCurve] {.noSideEffect,
    importcpp: "Curve", header: "IntTools_Curve.hxx".}
proc firstCurve2d*(this: IntToolsCurve): Handle[Geom2dCurve] {.noSideEffect,
    importcpp: "FirstCurve2d", header: "IntTools_Curve.hxx".}
proc secondCurve2d*(this: IntToolsCurve): Handle[Geom2dCurve] {.noSideEffect,
    importcpp: "SecondCurve2d", header: "IntTools_Curve.hxx".}
proc tolerance*(this: IntToolsCurve): StandardReal {.noSideEffect,
    importcpp: "Tolerance", header: "IntTools_Curve.hxx".}
proc tangentialTolerance*(this: IntToolsCurve): StandardReal {.noSideEffect,
    importcpp: "TangentialTolerance", header: "IntTools_Curve.hxx".}
proc hasBounds*(this: IntToolsCurve): StandardBoolean {.noSideEffect,
    importcpp: "HasBounds", header: "IntTools_Curve.hxx".}
proc bounds*(this: IntToolsCurve; theFirst: var StandardReal;
            theLast: var StandardReal; theFirstPnt: var GpPnt; theLastPnt: var GpPnt): StandardBoolean {.
    noSideEffect, importcpp: "Bounds", header: "IntTools_Curve.hxx".}
proc d0*(this: IntToolsCurve; thePar: StandardReal; thePnt: var GpPnt): StandardBoolean {.
    noSideEffect, importcpp: "D0", header: "IntTools_Curve.hxx".}
proc `type`*(this: IntToolsCurve): GeomAbsCurveType {.noSideEffect,
    importcpp: "Type", header: "IntTools_Curve.hxx".}

