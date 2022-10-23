##  Created on: 1993-03-09
##  Created by: JCV
##  Copyright (c) 1993-1999 Matra Datavision
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

discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_DimensionError"
discard "forward decl of Standard_RangeError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of Geom_Curve"
discard "forward decl of gp_Trsf"
discard "forward decl of Geom_Geometry"
discard "forward decl of Geom_BezierSurface"
type
  HandleGeomBezierSurface* = Handle[GeomBezierSurface]

## ! Describes a rational or non-rational Bezier surface.
## ! - A non-rational Bezier surface is defined by a table
## ! of poles (also known as control points).
## ! - A rational Bezier surface is defined by a table of
## ! poles with varying associated weights.
## ! This data is manipulated using two associative 2D arrays:
## ! - the poles table, which is a 2D array of gp_Pnt, and
## ! - the weights table, which is a 2D array of reals.
## ! The bounds of these arrays are:
## ! - 1 and NbUPoles for the row bounds, where
## ! NbUPoles is the number of poles of the surface
## ! in the u parametric direction, and
## ! - 1 and NbVPoles for the column bounds, where
## ! NbVPoles is the number of poles of the surface
## ! in the v parametric direction.
## ! The poles of the surface, the "control points", are the
## ! points used to shape and reshape the surface. They
## ! comprise a rectangular network of points:
## ! - The points (1, 1), (NbUPoles, 1), (1,
## ! NbVPoles) and (NbUPoles, NbVPoles)
## ! are the four parametric "corners" of the surface.
## ! - The first column of poles and the last column of
## ! poles define two Bezier curves which delimit the
## ! surface in the v parametric direction. These are
## ! the v isoparametric curves corresponding to
## ! values 0 and 1 of the v parameter.
## ! - The first row of poles and the last row of poles
## ! define two Bezier curves which delimit the surface
## ! in the u parametric direction. These are the u
## ! isoparametric curves corresponding to values 0
## ! and 1 of the u parameter.
## ! It is more difficult to define a geometrical significance
## ! for the weights. However they are useful for
## ! representing a quadric surface precisely. Moreover, if
## ! the weights of all the poles are equal, the surface has
## ! a polynomial equation, and hence is a "non-rational surface".
## ! The non-rational surface is a special, but frequently
## ! used, case, where all poles have identical weights.
## ! The weights are defined and used only in the case of
## ! a rational surface. This rational characteristic is
## ! defined in each parametric direction. Hence, a
## ! surface can be rational in the u parametric direction,
## ! and non-rational in the v parametric direction.
## ! Likewise, the degree of a surface is defined in each
## ! parametric direction. The degree of a Bezier surface
## ! in a given parametric direction is equal to the number
## ! of poles of the surface in that parametric direction,
## ! minus 1. This must be greater than or equal to 1.
## ! However, the degree for a Geom_BezierSurface is
## ! limited to a value of (25) which is defined and
## ! controlled by the system. This value is returned by the
## ! function MaxDegree.
## ! The parameter range for a Bezier surface is [ 0, 1 ]
## ! in the two parametric directions.
## ! A Bezier surface can also be closed, or open, in each
## ! parametric direction. If the first row of poles is
## ! identical to the last row of poles, the surface is closed
## ! in the u parametric direction. If the first column of
## ! poles is identical to the last column of poles, the
## ! surface is closed in the v parametric direction.
## ! The continuity of a Bezier surface is infinite in the u
## ! parametric direction and the in v parametric direction.
## ! Note: It is not possible to build a Bezier surface with
## ! negative weights. Any weight value that is less than,
## ! or equal to, gp::Resolution() is considered
## ! to be zero. Two weight values, W1 and W2, are
## ! considered equal if: |W2-W1| <= gp::Resolution()

type
  GeomBezierSurface* {.importcpp: "Geom_BezierSurface",
                      header: "Geom_BezierSurface.hxx", bycopy.} = object of GeomBoundedSurface ##
                                                                                         ## !
                                                                                         ## Creates
                                                                                         ## a
                                                                                         ## non-rational
                                                                                         ## Bezier
                                                                                         ## surface
                                                                                         ## with
                                                                                         ## a
                                                                                         ## set
                                                                                         ## of
                                                                                         ## poles.
                                                                                         ##
                                                                                         ## !
                                                                                         ## Control
                                                                                         ## points
                                                                                         ## representation
                                                                                         ## :
                                                                                         ##
                                                                                         ## !
                                                                                         ## SPoles(Uorigin,Vorigin)
                                                                                         ## ...................SPoles(Uorigin,Vend)
                                                                                         ##
                                                                                         ## !
                                                                                         ## .
                                                                                         ## .
                                                                                         ##
                                                                                         ## !
                                                                                         ## .
                                                                                         ## .
                                                                                         ##
                                                                                         ## !
                                                                                         ## SPoles(Uend,
                                                                                         ## Vorigin)
                                                                                         ## .....................SPoles(Uend,
                                                                                         ## Vend)
                                                                                         ##
                                                                                         ## !
                                                                                         ## For
                                                                                         ## the
                                                                                         ## double
                                                                                         ## array
                                                                                         ## the
                                                                                         ## row
                                                                                         ## indice
                                                                                         ## corresponds
                                                                                         ## to
                                                                                         ## the
                                                                                         ## parametric
                                                                                         ##
                                                                                         ## !
                                                                                         ## U
                                                                                         ## direction
                                                                                         ## and
                                                                                         ## the
                                                                                         ## columns
                                                                                         ## indice
                                                                                         ## corresponds
                                                                                         ## to
                                                                                         ## the
                                                                                         ## parametric
                                                                                         ##
                                                                                         ## !
                                                                                         ## V
                                                                                         ## direction.
                                                                                         ##
                                                                                         ## !
                                                                                         ## The
                                                                                         ## weights
                                                                                         ## are
                                                                                         ## defaulted
                                                                                         ## to
                                                                                         ## all
                                                                                         ## being
                                                                                         ## 1.
                                                                                         ##
                                                                                         ## !
                                                                                         ##
                                                                                         ## !
                                                                                         ## Raised
                                                                                         ## if
                                                                                         ## the
                                                                                         ## number
                                                                                         ## of
                                                                                         ## poles
                                                                                         ## of
                                                                                         ## the
                                                                                         ## surface
                                                                                         ## is
                                                                                         ## lower
                                                                                         ## than
                                                                                         ## 2
                                                                                         ##
                                                                                         ## !
                                                                                         ## or
                                                                                         ## greater
                                                                                         ## than
                                                                                         ## MaxDegree
                                                                                         ## +
                                                                                         ## 1
                                                                                         ## in
                                                                                         ## one
                                                                                         ## of
                                                                                         ## the
                                                                                         ## two
                                                                                         ## directions
                                                                                         ##
                                                                                         ## !
                                                                                         ## U
                                                                                         ## or
                                                                                         ## V.


proc newGeomBezierSurface*(surfacePoles: TColgpArray2OfPnt): GeomBezierSurface {.
    cdecl, constructor, importcpp: "Geom_BezierSurface(@)", header: "Geom_BezierSurface.hxx".}
proc newGeomBezierSurface*(surfacePoles: TColgpArray2OfPnt;
                          poleWeights: TColStdArray2OfReal): GeomBezierSurface {.
    cdecl, constructor, importcpp: "Geom_BezierSurface(@)", header: "Geom_BezierSurface.hxx".}
proc exchangeUV*(this: var GeomBezierSurface) {.cdecl, importcpp: "ExchangeUV",
    header: "Geom_BezierSurface.hxx".}
proc increase*(this: var GeomBezierSurface; uDeg: cint; vDeg: cint) {.cdecl,
    importcpp: "Increase", header: "Geom_BezierSurface.hxx".}
proc insertPoleColAfter*(this: var GeomBezierSurface; vIndex: cint;
                        cPoles: TColgpArray1OfPnt) {.cdecl,
    importcpp: "InsertPoleColAfter", header: "Geom_BezierSurface.hxx".}
proc insertPoleColAfter*(this: var GeomBezierSurface; vIndex: cint;
                        cPoles: TColgpArray1OfPnt;
                        cPoleWeights: TColStdArray1OfReal) {.cdecl,
    importcpp: "InsertPoleColAfter", header: "Geom_BezierSurface.hxx".}
proc insertPoleColBefore*(this: var GeomBezierSurface; vIndex: cint;
                         cPoles: TColgpArray1OfPnt) {.cdecl,
    importcpp: "InsertPoleColBefore", header: "Geom_BezierSurface.hxx".}
proc insertPoleColBefore*(this: var GeomBezierSurface; vIndex: cint;
                         cPoles: TColgpArray1OfPnt;
                         cPoleWeights: TColStdArray1OfReal) {.cdecl,
    importcpp: "InsertPoleColBefore", header: "Geom_BezierSurface.hxx".}
proc insertPoleRowAfter*(this: var GeomBezierSurface; uIndex: cint;
                        cPoles: TColgpArray1OfPnt) {.cdecl,
    importcpp: "InsertPoleRowAfter", header: "Geom_BezierSurface.hxx".}
proc insertPoleRowAfter*(this: var GeomBezierSurface; uIndex: cint;
                        cPoles: TColgpArray1OfPnt;
                        cPoleWeights: TColStdArray1OfReal) {.cdecl,
    importcpp: "InsertPoleRowAfter", header: "Geom_BezierSurface.hxx".}
proc insertPoleRowBefore*(this: var GeomBezierSurface; uIndex: cint;
                         cPoles: TColgpArray1OfPnt) {.cdecl,
    importcpp: "InsertPoleRowBefore", header: "Geom_BezierSurface.hxx".}
proc insertPoleRowBefore*(this: var GeomBezierSurface; uIndex: cint;
                         cPoles: TColgpArray1OfPnt;
                         cPoleWeights: TColStdArray1OfReal) {.cdecl,
    importcpp: "InsertPoleRowBefore", header: "Geom_BezierSurface.hxx".}
proc removePoleCol*(this: var GeomBezierSurface; vIndex: cint) {.cdecl,
    importcpp: "RemovePoleCol", header: "Geom_BezierSurface.hxx".}
proc removePoleRow*(this: var GeomBezierSurface; uIndex: cint) {.cdecl,
    importcpp: "RemovePoleRow", header: "Geom_BezierSurface.hxx".}
proc segment*(this: var GeomBezierSurface; u1: cfloat; u2: cfloat; v1: cfloat; v2: cfloat) {.
    cdecl, importcpp: "Segment", header: "Geom_BezierSurface.hxx".}
proc setPole*(this: var GeomBezierSurface; uIndex: cint; vIndex: cint; p: PntObj) {.cdecl,
    importcpp: "SetPole", header: "Geom_BezierSurface.hxx".}
proc setPole*(this: var GeomBezierSurface; uIndex: cint; vIndex: cint; p: PntObj;
             weight: cfloat) {.cdecl, importcpp: "SetPole", header: "Geom_BezierSurface.hxx".}
proc setPoleCol*(this: var GeomBezierSurface; vIndex: cint; cPoles: TColgpArray1OfPnt) {.
    cdecl, importcpp: "SetPoleCol", header: "Geom_BezierSurface.hxx".}
proc setPoleCol*(this: var GeomBezierSurface; vIndex: cint; cPoles: TColgpArray1OfPnt;
                cPoleWeights: TColStdArray1OfReal) {.cdecl,
    importcpp: "SetPoleCol", header: "Geom_BezierSurface.hxx".}
proc setPoleRow*(this: var GeomBezierSurface; uIndex: cint; cPoles: TColgpArray1OfPnt) {.
    cdecl, importcpp: "SetPoleRow", header: "Geom_BezierSurface.hxx".}
proc setPoleRow*(this: var GeomBezierSurface; uIndex: cint; cPoles: TColgpArray1OfPnt;
                cPoleWeights: TColStdArray1OfReal) {.cdecl,
    importcpp: "SetPoleRow", header: "Geom_BezierSurface.hxx".}
proc setWeight*(this: var GeomBezierSurface; uIndex: cint; vIndex: cint; weight: cfloat) {.
    cdecl, importcpp: "SetWeight", header: "Geom_BezierSurface.hxx".}
proc setWeightCol*(this: var GeomBezierSurface; vIndex: cint;
                  cPoleWeights: TColStdArray1OfReal) {.cdecl,
    importcpp: "SetWeightCol", header: "Geom_BezierSurface.hxx".}
proc setWeightRow*(this: var GeomBezierSurface; uIndex: cint;
                  cPoleWeights: TColStdArray1OfReal) {.cdecl,
    importcpp: "SetWeightRow", header: "Geom_BezierSurface.hxx".}
proc uReverse*(this: var GeomBezierSurface) {.cdecl, importcpp: "UReverse",
    header: "Geom_BezierSurface.hxx".}
proc uReversedParameter*(this: GeomBezierSurface; u: cfloat): cfloat {.noSideEffect,
    cdecl, importcpp: "UReversedParameter", header: "Geom_BezierSurface.hxx".}
proc vReverse*(this: var GeomBezierSurface) {.cdecl, importcpp: "VReverse",
    header: "Geom_BezierSurface.hxx".}
proc vReversedParameter*(this: GeomBezierSurface; v: cfloat): cfloat {.noSideEffect,
    cdecl, importcpp: "VReversedParameter", header: "Geom_BezierSurface.hxx".}
proc bounds*(this: GeomBezierSurface; u1: var cfloat; u2: var cfloat; v1: var cfloat;
            v2: var cfloat) {.noSideEffect, cdecl, importcpp: "Bounds", header: "Geom_BezierSurface.hxx".}
proc continuity*(this: GeomBezierSurface): GeomAbsShape {.noSideEffect, cdecl,
    importcpp: "Continuity", header: "Geom_BezierSurface.hxx".}
proc d0*(this: GeomBezierSurface; u: cfloat; v: cfloat; p: var PntObj) {.noSideEffect, cdecl,
    importcpp: "D0", header: "Geom_BezierSurface.hxx".}
proc d1*(this: GeomBezierSurface; u: cfloat; v: cfloat; p: var PntObj; d1u: var VecObj;
        d1v: var VecObj) {.noSideEffect, cdecl, importcpp: "D1", header: "Geom_BezierSurface.hxx".}
proc d2*(this: GeomBezierSurface; u: cfloat; v: cfloat; p: var PntObj; d1u: var VecObj;
        d1v: var VecObj; d2u: var VecObj; d2v: var VecObj; d2uv: var VecObj) {.noSideEffect, cdecl,
    importcpp: "D2", header: "Geom_BezierSurface.hxx".}
proc d3*(this: GeomBezierSurface; u: cfloat; v: cfloat; p: var PntObj; d1u: var VecObj;
        d1v: var VecObj; d2u: var VecObj; d2v: var VecObj; d2uv: var VecObj; d3u: var VecObj; d3v: var VecObj;
        d3uuv: var VecObj; d3uvv: var VecObj) {.noSideEffect, cdecl, importcpp: "D3",
                                    header: "Geom_BezierSurface.hxx".}
proc dn*(this: GeomBezierSurface; u: cfloat; v: cfloat; nu: cint; nv: cint): VecObj {.
    noSideEffect, cdecl, importcpp: "DN", header: "Geom_BezierSurface.hxx".}
proc nbUPoles*(this: GeomBezierSurface): cint {.noSideEffect, cdecl,
    importcpp: "NbUPoles", header: "Geom_BezierSurface.hxx".}
proc nbVPoles*(this: GeomBezierSurface): cint {.noSideEffect, cdecl,
    importcpp: "NbVPoles", header: "Geom_BezierSurface.hxx".}
proc pole*(this: GeomBezierSurface; uIndex: cint; vIndex: cint): PntObj {.noSideEffect,
    cdecl, importcpp: "Pole", header: "Geom_BezierSurface.hxx".}
proc poles*(this: GeomBezierSurface; p: var TColgpArray2OfPnt) {.noSideEffect, cdecl,
    importcpp: "Poles", header: "Geom_BezierSurface.hxx".}
proc poles*(this: GeomBezierSurface): TColgpArray2OfPnt {.noSideEffect, cdecl,
    importcpp: "Poles", header: "Geom_BezierSurface.hxx".}
proc uDegree*(this: GeomBezierSurface): cint {.noSideEffect, cdecl,
    importcpp: "UDegree", header: "Geom_BezierSurface.hxx".}
proc uIso*(this: GeomBezierSurface; u: cfloat): Handle[GeomCurve] {.noSideEffect,
    cdecl, importcpp: "UIso", header: "Geom_BezierSurface.hxx".}
proc vDegree*(this: GeomBezierSurface): cint {.noSideEffect, cdecl,
    importcpp: "VDegree", header: "Geom_BezierSurface.hxx".}
proc vIso*(this: GeomBezierSurface; v: cfloat): Handle[GeomCurve] {.noSideEffect,
    cdecl, importcpp: "VIso", header: "Geom_BezierSurface.hxx".}
proc weight*(this: GeomBezierSurface; uIndex: cint; vIndex: cint): cfloat {.
    noSideEffect, cdecl, importcpp: "Weight", header: "Geom_BezierSurface.hxx".}
proc weights*(this: GeomBezierSurface; w: var TColStdArray2OfReal) {.noSideEffect,
    cdecl, importcpp: "Weights", header: "Geom_BezierSurface.hxx".}
proc weights*(this: GeomBezierSurface): ptr TColStdArray2OfReal {.noSideEffect, cdecl,
    importcpp: "Weights", header: "Geom_BezierSurface.hxx".}
proc isUClosed*(this: GeomBezierSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsUClosed", header: "Geom_BezierSurface.hxx".}
proc isVClosed*(this: GeomBezierSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsVClosed", header: "Geom_BezierSurface.hxx".}
proc isCNu*(this: GeomBezierSurface; n: cint): bool {.noSideEffect, cdecl,
    importcpp: "IsCNu", header: "Geom_BezierSurface.hxx".}
proc isCNv*(this: GeomBezierSurface; n: cint): bool {.noSideEffect, cdecl,
    importcpp: "IsCNv", header: "Geom_BezierSurface.hxx".}
proc isUPeriodic*(this: GeomBezierSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsUPeriodic", header: "Geom_BezierSurface.hxx".}
proc isVPeriodic*(this: GeomBezierSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsVPeriodic", header: "Geom_BezierSurface.hxx".}
proc isURational*(this: GeomBezierSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsURational", header: "Geom_BezierSurface.hxx".}
proc isVRational*(this: GeomBezierSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsVRational", header: "Geom_BezierSurface.hxx".}
proc transform*(this: var GeomBezierSurface; t: TrsfObj) {.cdecl, importcpp: "Transform",
    header: "Geom_BezierSurface.hxx".}
proc maxDegreeBezierSurface*(): cint {.cdecl, importcpp: "Geom_BezierSurface::MaxDegree(@)",
                       header: "Geom_BezierSurface.hxx".}
proc resolution*(this: var GeomBezierSurface; tolerance3D: cfloat;
                uTolerance: var cfloat; vTolerance: var cfloat) {.cdecl,
    importcpp: "Resolution", header: "Geom_BezierSurface.hxx".}
proc copy*(this: GeomBezierSurface): Handle[GeomGeometry] {.noSideEffect, cdecl,
    importcpp: "Copy", header: "Geom_BezierSurface.hxx".}
proc dumpJson*(this: GeomBezierSurface; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "Geom_BezierSurface.hxx".}