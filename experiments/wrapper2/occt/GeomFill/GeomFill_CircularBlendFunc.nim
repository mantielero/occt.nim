##  Created on: 1997-07-11
##  Created by: Philippe MANGIN
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

discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_Pnt"
discard "forward decl of GeomFill_CircularBlendFunc"
discard "forward decl of GeomFill_CircularBlendFunc"
type
  HandleGeomFillCircularBlendFunc* = Handle[GeomFillCircularBlendFunc]

## ! Circular     Blend Function  to    approximate by
## ! SweepApproximation from Approx

type
  GeomFillCircularBlendFunc* {.importcpp: "GeomFill_CircularBlendFunc",
                              header: "GeomFill_CircularBlendFunc.hxx", bycopy.} = object of ApproxSweepFunction ##
                                                                                                          ## !
                                                                                                          ## Create
                                                                                                          ## a
                                                                                                          ## Blend
                                                                                                          ## with
                                                                                                          ## a
                                                                                                          ## constant
                                                                                                          ## radius
                                                                                                          ## with
                                                                                                          ## 2
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## guide-line.
                                                                                                          ## <FShape>
                                                                                                          ## sets
                                                                                                          ## the
                                                                                                          ## type
                                                                                                          ## of
                                                                                                          ## fillet
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## surface.
                                                                                                          ## The
                                                                                                          ## --
                                                                                                          ## default
                                                                                                          ## value
                                                                                                          ## is
                                                                                                          ## Convert_TgtThetaOver2
                                                                                                          ## (classical
                                                                                                          ## --
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## nurbs
                                                                                                          ## --
                                                                                                          ## representation
                                                                                                          ## of
                                                                                                          ## circles).
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## ChFi3d_QuasiAngular
                                                                                                          ## --
                                                                                                          ## corresponds
                                                                                                          ## to
                                                                                                          ## a
                                                                                                          ## nurbs
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## representation
                                                                                                          ## of
                                                                                                          ## circles
                                                                                                          ## --
                                                                                                          ## which
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## parameterisation
                                                                                                          ## matches
                                                                                                          ## the
                                                                                                          ## circle
                                                                                                          ## one.
                                                                                                          ## --
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## ChFi3d_Polynomial
                                                                                                          ## corresponds
                                                                                                          ## to
                                                                                                          ## a
                                                                                                          ## polynomial
                                                                                                          ## --
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## representation
                                                                                                          ## of
                                                                                                          ## circles.


proc constructGeomFillCircularBlendFunc*(path: Handle[Adaptor3dHCurve];
                                        curve1: Handle[Adaptor3dHCurve];
                                        curve2: Handle[Adaptor3dHCurve];
                                        radius: float; polynomial: bool = false): GeomFillCircularBlendFunc {.
    constructor, importcpp: "GeomFill_CircularBlendFunc(@)",
    header: "GeomFill_CircularBlendFunc.hxx".}
proc d0*(this: var GeomFillCircularBlendFunc; param: float; first: float; last: float;
        poles: var TColgpArray1OfPnt; poles2d: var TColgpArray1OfPnt2d;
        weigths: var TColStdArray1OfReal): bool {.importcpp: "D0",
    header: "GeomFill_CircularBlendFunc.hxx".}
proc d1*(this: var GeomFillCircularBlendFunc; param: float; first: float; last: float;
        poles: var TColgpArray1OfPnt; dPoles: var TColgpArray1OfVec;
        poles2d: var TColgpArray1OfPnt2d; dPoles2d: var TColgpArray1OfVec2d;
        weigths: var TColStdArray1OfReal; dWeigths: var TColStdArray1OfReal): bool {.
    importcpp: "D1", header: "GeomFill_CircularBlendFunc.hxx".}
proc d2*(this: var GeomFillCircularBlendFunc; param: float; first: float; last: float;
        poles: var TColgpArray1OfPnt; dPoles: var TColgpArray1OfVec;
        d2Poles: var TColgpArray1OfVec; poles2d: var TColgpArray1OfPnt2d;
        dPoles2d: var TColgpArray1OfVec2d; d2Poles2d: var TColgpArray1OfVec2d;
        weigths: var TColStdArray1OfReal; dWeigths: var TColStdArray1OfReal;
        d2Weigths: var TColStdArray1OfReal): bool {.importcpp: "D2",
    header: "GeomFill_CircularBlendFunc.hxx".}
proc nb2dCurves*(this: GeomFillCircularBlendFunc): int {.noSideEffect,
    importcpp: "Nb2dCurves", header: "GeomFill_CircularBlendFunc.hxx".}
proc sectionShape*(this: GeomFillCircularBlendFunc; nbPoles: var int;
                  nbKnots: var int; degree: var int) {.noSideEffect,
    importcpp: "SectionShape", header: "GeomFill_CircularBlendFunc.hxx".}
proc knots*(this: GeomFillCircularBlendFunc; tKnots: var TColStdArray1OfReal) {.
    noSideEffect, importcpp: "Knots", header: "GeomFill_CircularBlendFunc.hxx".}
proc mults*(this: GeomFillCircularBlendFunc; tMults: var TColStdArray1OfInteger) {.
    noSideEffect, importcpp: "Mults", header: "GeomFill_CircularBlendFunc.hxx".}
proc isRational*(this: GeomFillCircularBlendFunc): bool {.noSideEffect,
    importcpp: "IsRational", header: "GeomFill_CircularBlendFunc.hxx".}
proc nbIntervals*(this: GeomFillCircularBlendFunc; s: GeomAbsShape): int {.
    noSideEffect, importcpp: "NbIntervals",
    header: "GeomFill_CircularBlendFunc.hxx".}
proc intervals*(this: GeomFillCircularBlendFunc; t: var TColStdArray1OfReal;
               s: GeomAbsShape) {.noSideEffect, importcpp: "Intervals",
                                header: "GeomFill_CircularBlendFunc.hxx".}
proc setInterval*(this: var GeomFillCircularBlendFunc; first: float; last: float) {.
    importcpp: "SetInterval", header: "GeomFill_CircularBlendFunc.hxx".}
proc getTolerance*(this: GeomFillCircularBlendFunc; boundTol: float; surfTol: float;
                  angleTol: float; tol3d: var TColStdArray1OfReal) {.noSideEffect,
    importcpp: "GetTolerance", header: "GeomFill_CircularBlendFunc.hxx".}
proc setTolerance*(this: var GeomFillCircularBlendFunc; tol3d: float; tol2d: float) {.
    importcpp: "SetTolerance", header: "GeomFill_CircularBlendFunc.hxx".}
proc barycentreOfSurf*(this: GeomFillCircularBlendFunc): Pnt {.noSideEffect,
    importcpp: "BarycentreOfSurf", header: "GeomFill_CircularBlendFunc.hxx".}
proc maximalSection*(this: GeomFillCircularBlendFunc): float {.noSideEffect,
    importcpp: "MaximalSection", header: "GeomFill_CircularBlendFunc.hxx".}
proc getMinimalWeight*(this: GeomFillCircularBlendFunc;
                      weigths: var TColStdArray1OfReal) {.noSideEffect,
    importcpp: "GetMinimalWeight", header: "GeomFill_CircularBlendFunc.hxx".}
type
  GeomFillCircularBlendFuncbaseType* = ApproxSweepFunction

proc getTypeName*(): cstring {.importcpp: "GeomFill_CircularBlendFunc::get_type_name(@)",
                            header: "GeomFill_CircularBlendFunc.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "GeomFill_CircularBlendFunc::get_type_descriptor(@)",
    header: "GeomFill_CircularBlendFunc.hxx".}
proc dynamicType*(this: GeomFillCircularBlendFunc): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "GeomFill_CircularBlendFunc.hxx".}
