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


proc newGeomFillCircularBlendFunc*(path: Handle[Adaptor3dHCurve];
                                  curve1: Handle[Adaptor3dHCurve];
                                  curve2: Handle[Adaptor3dHCurve]; radius: cfloat;
                                  polynomial: bool = false): GeomFillCircularBlendFunc {.
    cdecl, constructor, importcpp: "GeomFill_CircularBlendFunc(@)",
    dynlib: tkgeomalgo.}
proc d0*(this: var GeomFillCircularBlendFunc; param: cfloat; first: cfloat;
        last: cfloat; poles: var TColgpArray1OfPnt; poles2d: var TColgpArray1OfPnt2d;
        weigths: var TColStdArray1OfReal): bool {.cdecl, importcpp: "D0",
    dynlib: tkgeomalgo.}
proc d1*(this: var GeomFillCircularBlendFunc; param: cfloat; first: cfloat;
        last: cfloat; poles: var TColgpArray1OfPnt; dPoles: var TColgpArray1OfVec;
        poles2d: var TColgpArray1OfPnt2d; dPoles2d: var TColgpArray1OfVec2d;
        weigths: var TColStdArray1OfReal; dWeigths: var TColStdArray1OfReal): bool {.
    cdecl, importcpp: "D1", dynlib: tkgeomalgo.}
proc d2*(this: var GeomFillCircularBlendFunc; param: cfloat; first: cfloat;
        last: cfloat; poles: var TColgpArray1OfPnt; dPoles: var TColgpArray1OfVec;
        d2Poles: var TColgpArray1OfVec; poles2d: var TColgpArray1OfPnt2d;
        dPoles2d: var TColgpArray1OfVec2d; d2Poles2d: var TColgpArray1OfVec2d;
        weigths: var TColStdArray1OfReal; dWeigths: var TColStdArray1OfReal;
        d2Weigths: var TColStdArray1OfReal): bool {.cdecl, importcpp: "D2",
    dynlib: tkgeomalgo.}
proc nb2dCurves*(this: GeomFillCircularBlendFunc): cint {.noSideEffect, cdecl,
    importcpp: "Nb2dCurves", dynlib: tkgeomalgo.}
proc sectionShape*(this: GeomFillCircularBlendFunc; nbPoles: var cint;
                  nbKnots: var cint; degree: var cint) {.noSideEffect, cdecl,
    importcpp: "SectionShape", dynlib: tkgeomalgo.}
proc knots*(this: GeomFillCircularBlendFunc; tKnots: var TColStdArray1OfReal) {.
    noSideEffect, cdecl, importcpp: "Knots", dynlib: tkgeomalgo.}
proc mults*(this: GeomFillCircularBlendFunc; tMults: var TColStdArray1OfInteger) {.
    noSideEffect, cdecl, importcpp: "Mults", dynlib: tkgeomalgo.}
proc isRational*(this: GeomFillCircularBlendFunc): bool {.noSideEffect, cdecl,
    importcpp: "IsRational", dynlib: tkgeomalgo.}
proc nbIntervals*(this: GeomFillCircularBlendFunc; s: GeomAbsShape): cint {.
    noSideEffect, cdecl, importcpp: "NbIntervals", dynlib: tkgeomalgo.}
proc intervals*(this: GeomFillCircularBlendFunc; t: var TColStdArray1OfReal;
               s: GeomAbsShape) {.noSideEffect, cdecl, importcpp: "Intervals",
                                dynlib: tkgeomalgo.}
proc setInterval*(this: var GeomFillCircularBlendFunc; first: cfloat; last: cfloat) {.
    cdecl, importcpp: "SetInterval", dynlib: tkgeomalgo.}
proc getTolerance*(this: GeomFillCircularBlendFunc; boundTol: cfloat;
                  surfTol: cfloat; angleTol: cfloat; tol3d: var TColStdArray1OfReal) {.
    noSideEffect, cdecl, importcpp: "GetTolerance", dynlib: tkgeomalgo.}
proc setTolerance*(this: var GeomFillCircularBlendFunc; tol3d: cfloat; tol2d: cfloat) {.
    cdecl, importcpp: "SetTolerance", dynlib: tkgeomalgo.}
proc barycentreOfSurf*(this: GeomFillCircularBlendFunc): Pnt {.noSideEffect, cdecl,
    importcpp: "BarycentreOfSurf", dynlib: tkgeomalgo.}
proc maximalSection*(this: GeomFillCircularBlendFunc): cfloat {.noSideEffect, cdecl,
    importcpp: "MaximalSection", dynlib: tkgeomalgo.}
proc getMinimalWeight*(this: GeomFillCircularBlendFunc;
                      weigths: var TColStdArray1OfReal) {.noSideEffect, cdecl,
    importcpp: "GetMinimalWeight", dynlib: tkgeomalgo.}