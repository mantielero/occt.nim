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


proc constructGeomBezierSurface*(surfacePoles: TColgpArray2OfPnt): GeomBezierSurface {.
    constructor, importcpp: "Geom_BezierSurface(@)",
    header: "Geom_BezierSurface.hxx".}
proc constructGeomBezierSurface*(surfacePoles: TColgpArray2OfPnt;
                                poleWeights: TColStdArray2OfReal): GeomBezierSurface {.
    constructor, importcpp: "Geom_BezierSurface(@)",
    header: "Geom_BezierSurface.hxx".}
proc exchangeUV*(this: var GeomBezierSurface) {.importcpp: "ExchangeUV",
    header: "Geom_BezierSurface.hxx".}
proc increase*(this: var GeomBezierSurface; uDeg: StandardInteger;
              vDeg: StandardInteger) {.importcpp: "Increase",
                                     header: "Geom_BezierSurface.hxx".}
proc insertPoleColAfter*(this: var GeomBezierSurface; vIndex: StandardInteger;
                        cPoles: TColgpArray1OfPnt) {.
    importcpp: "InsertPoleColAfter", header: "Geom_BezierSurface.hxx".}
proc insertPoleColAfter*(this: var GeomBezierSurface; vIndex: StandardInteger;
                        cPoles: TColgpArray1OfPnt;
                        cPoleWeights: TColStdArray1OfReal) {.
    importcpp: "InsertPoleColAfter", header: "Geom_BezierSurface.hxx".}
proc insertPoleColBefore*(this: var GeomBezierSurface; vIndex: StandardInteger;
                         cPoles: TColgpArray1OfPnt) {.
    importcpp: "InsertPoleColBefore", header: "Geom_BezierSurface.hxx".}
proc insertPoleColBefore*(this: var GeomBezierSurface; vIndex: StandardInteger;
                         cPoles: TColgpArray1OfPnt;
                         cPoleWeights: TColStdArray1OfReal) {.
    importcpp: "InsertPoleColBefore", header: "Geom_BezierSurface.hxx".}
proc insertPoleRowAfter*(this: var GeomBezierSurface; uIndex: StandardInteger;
                        cPoles: TColgpArray1OfPnt) {.
    importcpp: "InsertPoleRowAfter", header: "Geom_BezierSurface.hxx".}
proc insertPoleRowAfter*(this: var GeomBezierSurface; uIndex: StandardInteger;
                        cPoles: TColgpArray1OfPnt;
                        cPoleWeights: TColStdArray1OfReal) {.
    importcpp: "InsertPoleRowAfter", header: "Geom_BezierSurface.hxx".}
proc insertPoleRowBefore*(this: var GeomBezierSurface; uIndex: StandardInteger;
                         cPoles: TColgpArray1OfPnt) {.
    importcpp: "InsertPoleRowBefore", header: "Geom_BezierSurface.hxx".}
proc insertPoleRowBefore*(this: var GeomBezierSurface; uIndex: StandardInteger;
                         cPoles: TColgpArray1OfPnt;
                         cPoleWeights: TColStdArray1OfReal) {.
    importcpp: "InsertPoleRowBefore", header: "Geom_BezierSurface.hxx".}
proc removePoleCol*(this: var GeomBezierSurface; vIndex: StandardInteger) {.
    importcpp: "RemovePoleCol", header: "Geom_BezierSurface.hxx".}
proc removePoleRow*(this: var GeomBezierSurface; uIndex: StandardInteger) {.
    importcpp: "RemovePoleRow", header: "Geom_BezierSurface.hxx".}
proc segment*(this: var GeomBezierSurface; u1: StandardReal; u2: StandardReal;
             v1: StandardReal; v2: StandardReal) {.importcpp: "Segment",
    header: "Geom_BezierSurface.hxx".}
proc setPole*(this: var GeomBezierSurface; uIndex: StandardInteger;
             vIndex: StandardInteger; p: GpPnt) {.importcpp: "SetPole",
    header: "Geom_BezierSurface.hxx".}
proc setPole*(this: var GeomBezierSurface; uIndex: StandardInteger;
             vIndex: StandardInteger; p: GpPnt; weight: StandardReal) {.
    importcpp: "SetPole", header: "Geom_BezierSurface.hxx".}
proc setPoleCol*(this: var GeomBezierSurface; vIndex: StandardInteger;
                cPoles: TColgpArray1OfPnt) {.importcpp: "SetPoleCol",
    header: "Geom_BezierSurface.hxx".}
proc setPoleCol*(this: var GeomBezierSurface; vIndex: StandardInteger;
                cPoles: TColgpArray1OfPnt; cPoleWeights: TColStdArray1OfReal) {.
    importcpp: "SetPoleCol", header: "Geom_BezierSurface.hxx".}
proc setPoleRow*(this: var GeomBezierSurface; uIndex: StandardInteger;
                cPoles: TColgpArray1OfPnt) {.importcpp: "SetPoleRow",
    header: "Geom_BezierSurface.hxx".}
proc setPoleRow*(this: var GeomBezierSurface; uIndex: StandardInteger;
                cPoles: TColgpArray1OfPnt; cPoleWeights: TColStdArray1OfReal) {.
    importcpp: "SetPoleRow", header: "Geom_BezierSurface.hxx".}
proc setWeight*(this: var GeomBezierSurface; uIndex: StandardInteger;
               vIndex: StandardInteger; weight: StandardReal) {.
    importcpp: "SetWeight", header: "Geom_BezierSurface.hxx".}
proc setWeightCol*(this: var GeomBezierSurface; vIndex: StandardInteger;
                  cPoleWeights: TColStdArray1OfReal) {.importcpp: "SetWeightCol",
    header: "Geom_BezierSurface.hxx".}
proc setWeightRow*(this: var GeomBezierSurface; uIndex: StandardInteger;
                  cPoleWeights: TColStdArray1OfReal) {.importcpp: "SetWeightRow",
    header: "Geom_BezierSurface.hxx".}
proc uReverse*(this: var GeomBezierSurface) {.importcpp: "UReverse",
    header: "Geom_BezierSurface.hxx".}
proc uReversedParameter*(this: GeomBezierSurface; u: StandardReal): StandardReal {.
    noSideEffect, importcpp: "UReversedParameter", header: "Geom_BezierSurface.hxx".}
proc vReverse*(this: var GeomBezierSurface) {.importcpp: "VReverse",
    header: "Geom_BezierSurface.hxx".}
proc vReversedParameter*(this: GeomBezierSurface; v: StandardReal): StandardReal {.
    noSideEffect, importcpp: "VReversedParameter", header: "Geom_BezierSurface.hxx".}
proc bounds*(this: GeomBezierSurface; u1: var StandardReal; u2: var StandardReal;
            v1: var StandardReal; v2: var StandardReal) {.noSideEffect,
    importcpp: "Bounds", header: "Geom_BezierSurface.hxx".}
proc continuity*(this: GeomBezierSurface): GeomAbsShape {.noSideEffect,
    importcpp: "Continuity", header: "Geom_BezierSurface.hxx".}
proc d0*(this: GeomBezierSurface; u: StandardReal; v: StandardReal; p: var GpPnt) {.
    noSideEffect, importcpp: "D0", header: "Geom_BezierSurface.hxx".}
proc d1*(this: GeomBezierSurface; u: StandardReal; v: StandardReal; p: var GpPnt;
        d1u: var GpVec; d1v: var GpVec) {.noSideEffect, importcpp: "D1",
                                    header: "Geom_BezierSurface.hxx".}
proc d2*(this: GeomBezierSurface; u: StandardReal; v: StandardReal; p: var GpPnt;
        d1u: var GpVec; d1v: var GpVec; d2u: var GpVec; d2v: var GpVec; d2uv: var GpVec) {.
    noSideEffect, importcpp: "D2", header: "Geom_BezierSurface.hxx".}
proc d3*(this: GeomBezierSurface; u: StandardReal; v: StandardReal; p: var GpPnt;
        d1u: var GpVec; d1v: var GpVec; d2u: var GpVec; d2v: var GpVec; d2uv: var GpVec;
        d3u: var GpVec; d3v: var GpVec; d3uuv: var GpVec; d3uvv: var GpVec) {.noSideEffect,
    importcpp: "D3", header: "Geom_BezierSurface.hxx".}
proc dn*(this: GeomBezierSurface; u: StandardReal; v: StandardReal;
        nu: StandardInteger; nv: StandardInteger): GpVec {.noSideEffect,
    importcpp: "DN", header: "Geom_BezierSurface.hxx".}
proc nbUPoles*(this: GeomBezierSurface): StandardInteger {.noSideEffect,
    importcpp: "NbUPoles", header: "Geom_BezierSurface.hxx".}
proc nbVPoles*(this: GeomBezierSurface): StandardInteger {.noSideEffect,
    importcpp: "NbVPoles", header: "Geom_BezierSurface.hxx".}
proc pole*(this: GeomBezierSurface; uIndex: StandardInteger; vIndex: StandardInteger): GpPnt {.
    noSideEffect, importcpp: "Pole", header: "Geom_BezierSurface.hxx".}
proc poles*(this: GeomBezierSurface; p: var TColgpArray2OfPnt) {.noSideEffect,
    importcpp: "Poles", header: "Geom_BezierSurface.hxx".}
proc poles*(this: GeomBezierSurface): TColgpArray2OfPnt {.noSideEffect,
    importcpp: "Poles", header: "Geom_BezierSurface.hxx".}
proc uDegree*(this: GeomBezierSurface): StandardInteger {.noSideEffect,
    importcpp: "UDegree", header: "Geom_BezierSurface.hxx".}
proc uIso*(this: GeomBezierSurface; u: StandardReal): Handle[GeomCurve] {.
    noSideEffect, importcpp: "UIso", header: "Geom_BezierSurface.hxx".}
proc vDegree*(this: GeomBezierSurface): StandardInteger {.noSideEffect,
    importcpp: "VDegree", header: "Geom_BezierSurface.hxx".}
proc vIso*(this: GeomBezierSurface; v: StandardReal): Handle[GeomCurve] {.
    noSideEffect, importcpp: "VIso", header: "Geom_BezierSurface.hxx".}
proc weight*(this: GeomBezierSurface; uIndex: StandardInteger;
            vIndex: StandardInteger): StandardReal {.noSideEffect,
    importcpp: "Weight", header: "Geom_BezierSurface.hxx".}
proc weights*(this: GeomBezierSurface; w: var TColStdArray2OfReal) {.noSideEffect,
    importcpp: "Weights", header: "Geom_BezierSurface.hxx".}
proc weights*(this: GeomBezierSurface): ptr TColStdArray2OfReal {.noSideEffect,
    importcpp: "Weights", header: "Geom_BezierSurface.hxx".}
proc isUClosed*(this: GeomBezierSurface): StandardBoolean {.noSideEffect,
    importcpp: "IsUClosed", header: "Geom_BezierSurface.hxx".}
proc isVClosed*(this: GeomBezierSurface): StandardBoolean {.noSideEffect,
    importcpp: "IsVClosed", header: "Geom_BezierSurface.hxx".}
proc isCNu*(this: GeomBezierSurface; n: StandardInteger): StandardBoolean {.
    noSideEffect, importcpp: "IsCNu", header: "Geom_BezierSurface.hxx".}
proc isCNv*(this: GeomBezierSurface; n: StandardInteger): StandardBoolean {.
    noSideEffect, importcpp: "IsCNv", header: "Geom_BezierSurface.hxx".}
proc isUPeriodic*(this: GeomBezierSurface): StandardBoolean {.noSideEffect,
    importcpp: "IsUPeriodic", header: "Geom_BezierSurface.hxx".}
proc isVPeriodic*(this: GeomBezierSurface): StandardBoolean {.noSideEffect,
    importcpp: "IsVPeriodic", header: "Geom_BezierSurface.hxx".}
proc isURational*(this: GeomBezierSurface): StandardBoolean {.noSideEffect,
    importcpp: "IsURational", header: "Geom_BezierSurface.hxx".}
proc isVRational*(this: GeomBezierSurface): StandardBoolean {.noSideEffect,
    importcpp: "IsVRational", header: "Geom_BezierSurface.hxx".}
proc transform*(this: var GeomBezierSurface; t: GpTrsf) {.importcpp: "Transform",
    header: "Geom_BezierSurface.hxx".}
proc maxDegree*(): StandardInteger {.importcpp: "Geom_BezierSurface::MaxDegree(@)",
                                  header: "Geom_BezierSurface.hxx".}
proc resolution*(this: var GeomBezierSurface; tolerance3D: StandardReal;
                uTolerance: var StandardReal; vTolerance: var StandardReal) {.
    importcpp: "Resolution", header: "Geom_BezierSurface.hxx".}
proc copy*(this: GeomBezierSurface): Handle[GeomGeometry] {.noSideEffect,
    importcpp: "Copy", header: "Geom_BezierSurface.hxx".}
proc dumpJson*(this: GeomBezierSurface; theOStream: var StandardOStream;
              theDepth: StandardInteger = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Geom_BezierSurface.hxx".}
type
  GeomBezierSurfacebaseType* = GeomBoundedSurface

proc getTypeName*(): cstring {.importcpp: "Geom_BezierSurface::get_type_name(@)",
                            header: "Geom_BezierSurface.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Geom_BezierSurface::get_type_descriptor(@)",
    header: "Geom_BezierSurface.hxx".}
proc dynamicType*(this: GeomBezierSurface): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Geom_BezierSurface.hxx".}

