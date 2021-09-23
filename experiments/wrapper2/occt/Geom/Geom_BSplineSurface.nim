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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Precision/Precision,
  ../Standard/Standard_Boolean, ../GeomAbs/GeomAbs_BSplKnotDistribution,
  ../GeomAbs/GeomAbs_Shape, ../Standard/Standard_Integer,
  ../TColgp/TColgp_HArray2OfPnt, ../TColStd/TColStd_HArray2OfReal,
  ../TColStd/TColStd_HArray1OfReal, ../TColStd/TColStd_HArray1OfInteger,
  ../Standard/Standard_Real, Geom_BoundedSurface, ../TColgp/TColgp_Array2OfPnt,
  ../TColStd/TColStd_Array1OfReal, ../TColStd/TColStd_Array1OfInteger,
  ../TColStd/TColStd_Array2OfReal, ../TColgp/TColgp_Array1OfPnt

discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_DimensionError"
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_RangeError"
discard "forward decl of Geom_UndefinedDerivative"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of Geom_Curve"
discard "forward decl of gp_Trsf"
discard "forward decl of Geom_Geometry"
discard "forward decl of Geom_BSplineSurface"
discard "forward decl of Geom_BSplineSurface"
type
  Handle_Geom_BSplineSurface* = handle[Geom_BSplineSurface]

## ! Describes a BSpline surface.
## ! In each parametric direction, a BSpline surface can be:
## ! - uniform or non-uniform,
## ! - rational or non-rational,
## ! - periodic or non-periodic.
## ! A BSpline surface is defined by:
## ! - its degrees, in the u and v parametric directions,
## ! - its periodic characteristic, in the u and v parametric directions,
## ! - a table of poles, also called control points (together
## ! with the associated weights if the surface is rational), and
## ! - a table of knots, together with the associated multiplicities.
## ! The degree of a Geom_BSplineSurface is limited to
## ! a value (25) which is defined and controlled by the
## ! system. This value is returned by the function MaxDegree.
## ! Poles and Weights
## ! Poles and Weights are manipulated using two associative double arrays:
## ! - the poles table, which is a double array of gp_Pnt points, and
## ! - the weights table, which is a double array of reals.
## ! The bounds of the poles and weights arrays are:
## ! - 1 and NbUPoles for the row bounds (provided
## ! that the BSpline surface is not periodic in the u
## ! parametric direction), where NbUPoles is the
## ! number of poles of the surface in the u parametric direction, and
## ! - 1 and NbVPoles for the column bounds (provided
## ! that the BSpline surface is not periodic in the v
## ! parametric direction), where NbVPoles is the
## ! number of poles of the surface in the v parametric direction.
## ! The poles of the surface are the points used to shape
## ! and reshape the surface. They comprise a rectangular network.
## ! If the surface is not periodic:
## ! - The points (1, 1), (NbUPoles, 1), (1,
## ! NbVPoles), and (NbUPoles, NbVPoles)
## ! are the four parametric "corners" of the surface.
## ! - The first column of poles and the last column of
## ! poles define two BSpline curves which delimit the
## ! surface in the v parametric direction. These are the
## ! v isoparametric curves corresponding to the two
## ! bounds of the v parameter.
## ! - The first row of poles and the last row of poles
## ! define two BSpline curves which delimit the surface
## ! in the u parametric direction. These are the u
## ! isoparametric curves corresponding to the two bounds of the u parameter.
## ! If the surface is periodic, these geometric properties are not verified.
## ! It is more difficult to define a geometrical significance
## ! for the weights. However they are useful for
## ! representing a quadric surface precisely. Moreover, if
## ! the weights of all the poles are equal, the surface has
## ! a polynomial equation, and hence is a "non-rational surface".
## ! The non-rational surface is a special, but frequently
## ! used, case, where all poles have identical weights.
## ! The weights are defined and used only in the case of
## ! a rational surface. The rational characteristic is
## ! defined in each parametric direction. A surface can be
## ! rational in the u parametric direction, and
## ! non-rational in the v parametric direction.
## ! Knots and Multiplicities
## ! For a Geom_BSplineSurface the table of knots is
## ! made up of two increasing sequences of reals, without
## ! repetition, one for each parametric direction. The
## ! multiplicities define the repetition of the knots.
## ! A BSpline surface comprises multiple contiguous
## ! patches, which are themselves polynomial or rational
## ! surfaces. The knots are the parameters of the
## ! isoparametric curves which limit these contiguous
## ! patches. The multiplicity of a knot on a BSpline
## ! surface (in a given parametric direction) is related to
## ! the degree of continuity of the surface at that knot in
## ! that parametric direction:
## ! Degree of continuity at knot(i) = Degree - Multi(i) where:
## ! - Degree is the degree of the BSpline surface in
## ! the given parametric direction, and
## ! - Multi(i) is the multiplicity of knot number i in
## ! the given parametric direction.
## ! There are some special cases, where the knots are
## ! regularly spaced in one parametric direction (i.e. the
## ! difference between two consecutive knots is a constant).
## ! - "Uniform": all the multiplicities are equal to 1.
## ! - "Quasi-uniform": all the multiplicities are equal to 1,
## ! except for the first and last knots in this parametric
## ! direction, and these are equal to Degree + 1.
## ! - "Piecewise Bezier": all the multiplicities are equal to
## ! Degree except for the first and last knots, which
## ! are equal to Degree + 1. This surface is a
## ! concatenation of Bezier patches in the given
## ! parametric direction.
## ! If the BSpline surface is not periodic in a given
## ! parametric direction, the bounds of the knots and
## ! multiplicities tables are 1 and NbKnots, where
## ! NbKnots is the number of knots of the BSpline
## ! surface in that parametric direction.
## ! If the BSpline surface is periodic in a given parametric
## ! direction, and there are k periodic knots and p
## ! periodic poles in that parametric direction:
## ! - the period is such that:
## ! period = Knot(k+1) - Knot(1), and
## ! - the poles and knots tables in that parametric
## ! direction can be considered as infinite tables, such that:
## ! Knot(i+k) = Knot(i) + period, and
## ! Pole(i+p) = Pole(i)
## ! Note: The data structure tables for a periodic BSpline
## ! surface are more complex than those of a non-periodic one.
## ! References :
## ! . A survey of curve and surface methods in CADG Wolfgang BOHM
## ! CAGD 1 (1984)
## ! . On de Boor-like algorithms and blossoming Wolfgang BOEHM
## ! cagd 5 (1988)
## ! . Blossoming and knot insertion algorithms for B-spline curves
## ! Ronald N. GOLDMAN
## ! . Modelisation des surfaces en CAO, Henri GIAUME Peugeot SA
## ! . Curves and Surfaces for Computer Aided Geometric Design,
## ! a practical guide Gerald Farin

type
  Geom_BSplineSurface* {.importcpp: "Geom_BSplineSurface",
                        header: "Geom_BSplineSurface.hxx", bycopy.} = object of Geom_BoundedSurface ##
                                                                                             ## !
                                                                                             ## Creates
                                                                                             ## a
                                                                                             ## non-rational
                                                                                             ## b-spline
                                                                                             ## surface
                                                                                             ## (weights
                                                                                             ##
                                                                                             ## !
                                                                                             ## default
                                                                                             ## value
                                                                                             ## is
                                                                                             ## 1.).
                                                                                             ##
                                                                                             ## !
                                                                                             ## The
                                                                                             ## following
                                                                                             ## conditions
                                                                                             ## must
                                                                                             ## be
                                                                                             ## verified.
                                                                                             ##
                                                                                             ## !
                                                                                             ## 0
                                                                                             ## <
                                                                                             ## UDegree
                                                                                             ## <=
                                                                                             ## MaxDegree.
                                                                                             ##
                                                                                             ## !
                                                                                             ## UKnots.Length()
                                                                                             ## ==
                                                                                             ## UMults.Length()
                                                                                             ## >=
                                                                                             ## 2
                                                                                             ##
                                                                                             ## !
                                                                                             ## UKnots(i)
                                                                                             ## <
                                                                                             ## UKnots(i+1)
                                                                                             ## (Knots
                                                                                             ## are
                                                                                             ## increasing)
                                                                                             ##
                                                                                             ## !
                                                                                             ## 1
                                                                                             ## <=
                                                                                             ## UMults(i)
                                                                                             ## <=
                                                                                             ## UDegree
                                                                                             ##
                                                                                             ## !
                                                                                             ## On
                                                                                             ## a
                                                                                             ## non
                                                                                             ## uperiodic
                                                                                             ## surface
                                                                                             ## the
                                                                                             ## first
                                                                                             ## and
                                                                                             ## last
                                                                                             ##
                                                                                             ## !
                                                                                             ## umultiplicities
                                                                                             ## may
                                                                                             ## be
                                                                                             ## UDegree+1
                                                                                             ## (this
                                                                                             ## is
                                                                                             ## even
                                                                                             ##
                                                                                             ## !
                                                                                             ## recommanded
                                                                                             ## if
                                                                                             ## you
                                                                                             ## want
                                                                                             ## the
                                                                                             ## curve
                                                                                             ## to
                                                                                             ## start
                                                                                             ## and
                                                                                             ## finish
                                                                                             ## on
                                                                                             ##
                                                                                             ## !
                                                                                             ## the
                                                                                             ## first
                                                                                             ## and
                                                                                             ## last
                                                                                             ## pole).
                                                                                             ##
                                                                                             ## !
                                                                                             ## On
                                                                                             ## a
                                                                                             ## uperiodic
                                                                                             ## surface
                                                                                             ## the
                                                                                             ## first
                                                                                             ## and
                                                                                             ## the
                                                                                             ## last
                                                                                             ##
                                                                                             ## !
                                                                                             ## umultiplicities
                                                                                             ## must
                                                                                             ## be
                                                                                             ## the
                                                                                             ## same.
                                                                                             ##
                                                                                             ## !
                                                                                             ## on
                                                                                             ## non-uperiodic
                                                                                             ## surfaces
                                                                                             ##
                                                                                             ## !
                                                                                             ## Poles.ColLength()
                                                                                             ## ==
                                                                                             ## Sum(UMults(i))
                                                                                             ## -
                                                                                             ## UDegree
                                                                                             ## -
                                                                                             ## 1
                                                                                             ## >=
                                                                                             ## 2
                                                                                             ##
                                                                                             ## !
                                                                                             ## on
                                                                                             ## uperiodic
                                                                                             ## surfaces
                                                                                             ##
                                                                                             ## !
                                                                                             ## Poles.ColLength()
                                                                                             ## ==
                                                                                             ## Sum(UMults(i))
                                                                                             ## except
                                                                                             ## the
                                                                                             ## first
                                                                                             ## or
                                                                                             ## last
                                                                                             ##
                                                                                             ## !
                                                                                             ## The
                                                                                             ## previous
                                                                                             ## conditions
                                                                                             ## for
                                                                                             ## U
                                                                                             ## holds
                                                                                             ## also
                                                                                             ## for
                                                                                             ## V,
                                                                                             ## with
                                                                                             ## the
                                                                                             ##
                                                                                             ## !
                                                                                             ## RowLength
                                                                                             ## of
                                                                                             ## the
                                                                                             ## poles.
                                                                                             ##
                                                                                             ## !
                                                                                             ## Segments
                                                                                             ## the
                                                                                             ## surface
                                                                                             ## between
                                                                                             ## U1
                                                                                             ## and
                                                                                             ## U2
                                                                                             ## in
                                                                                             ## the
                                                                                             ## U-Direction.
                                                                                             ##
                                                                                             ## !
                                                                                             ## between
                                                                                             ## V1
                                                                                             ## and
                                                                                             ## V2
                                                                                             ## in
                                                                                             ## the
                                                                                             ## V-Direction.
                                                                                             ##
                                                                                             ## !
                                                                                             ## The
                                                                                             ## control
                                                                                             ## points
                                                                                             ## are
                                                                                             ## modified,
                                                                                             ## the
                                                                                             ## first
                                                                                             ## and
                                                                                             ## the
                                                                                             ## last
                                                                                             ## point
                                                                                             ##
                                                                                             ## !
                                                                                             ## are
                                                                                             ## not
                                                                                             ## the
                                                                                             ## same.
                                                                                             ##
                                                                                             ## !
                                                                                             ##
                                                                                             ## !
                                                                                             ## Parameters
                                                                                             ## EpsU,
                                                                                             ## EpsV
                                                                                             ## define
                                                                                             ## the
                                                                                             ## proximity
                                                                                             ## along
                                                                                             ## U-Direction
                                                                                             ## and
                                                                                             ## V-Direction
                                                                                             ## respectively.
                                                                                             ##
                                                                                             ## !
                                                                                             ## Recompute
                                                                                             ## the
                                                                                             ## flatknots,
                                                                                             ## the
                                                                                             ## knotsdistribution,
                                                                                             ## the
                                                                                             ##
                                                                                             ## !
                                                                                             ## continuity
                                                                                             ## for
                                                                                             ## U.


proc constructGeom_BSplineSurface*(Poles: TColgp_Array2OfPnt;
                                  UKnots: TColStd_Array1OfReal;
                                  VKnots: TColStd_Array1OfReal;
                                  UMults: TColStd_Array1OfInteger;
                                  VMults: TColStd_Array1OfInteger;
                                  UDegree: Standard_Integer;
                                  VDegree: Standard_Integer;
                                  UPeriodic: Standard_Boolean = Standard_False;
                                  VPeriodic: Standard_Boolean = Standard_False): Geom_BSplineSurface {.
    constructor, importcpp: "Geom_BSplineSurface(@)",
    header: "Geom_BSplineSurface.hxx".}
proc constructGeom_BSplineSurface*(Poles: TColgp_Array2OfPnt;
                                  Weights: TColStd_Array2OfReal;
                                  UKnots: TColStd_Array1OfReal;
                                  VKnots: TColStd_Array1OfReal;
                                  UMults: TColStd_Array1OfInteger;
                                  VMults: TColStd_Array1OfInteger;
                                  UDegree: Standard_Integer;
                                  VDegree: Standard_Integer;
                                  UPeriodic: Standard_Boolean = Standard_False;
                                  VPeriodic: Standard_Boolean = Standard_False): Geom_BSplineSurface {.
    constructor, importcpp: "Geom_BSplineSurface(@)",
    header: "Geom_BSplineSurface.hxx".}
proc ExchangeUV*(this: var Geom_BSplineSurface) {.importcpp: "ExchangeUV",
    header: "Geom_BSplineSurface.hxx".}
proc SetUPeriodic*(this: var Geom_BSplineSurface) {.importcpp: "SetUPeriodic",
    header: "Geom_BSplineSurface.hxx".}
proc SetVPeriodic*(this: var Geom_BSplineSurface) {.importcpp: "SetVPeriodic",
    header: "Geom_BSplineSurface.hxx".}
proc PeriodicNormalization*(this: Geom_BSplineSurface; U: var Standard_Real;
                           V: var Standard_Real) {.noSideEffect,
    importcpp: "PeriodicNormalization", header: "Geom_BSplineSurface.hxx".}
proc SetUOrigin*(this: var Geom_BSplineSurface; Index: Standard_Integer) {.
    importcpp: "SetUOrigin", header: "Geom_BSplineSurface.hxx".}
proc SetVOrigin*(this: var Geom_BSplineSurface; Index: Standard_Integer) {.
    importcpp: "SetVOrigin", header: "Geom_BSplineSurface.hxx".}
proc SetUNotPeriodic*(this: var Geom_BSplineSurface) {.importcpp: "SetUNotPeriodic",
    header: "Geom_BSplineSurface.hxx".}
proc SetVNotPeriodic*(this: var Geom_BSplineSurface) {.importcpp: "SetVNotPeriodic",
    header: "Geom_BSplineSurface.hxx".}
proc UReverse*(this: var Geom_BSplineSurface) {.importcpp: "UReverse",
    header: "Geom_BSplineSurface.hxx".}
proc VReverse*(this: var Geom_BSplineSurface) {.importcpp: "VReverse",
    header: "Geom_BSplineSurface.hxx".}
proc UReversedParameter*(this: Geom_BSplineSurface; U: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "UReversedParameter",
    header: "Geom_BSplineSurface.hxx".}
proc VReversedParameter*(this: Geom_BSplineSurface; V: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "VReversedParameter",
    header: "Geom_BSplineSurface.hxx".}
proc IncreaseDegree*(this: var Geom_BSplineSurface; UDegree: Standard_Integer;
                    VDegree: Standard_Integer) {.importcpp: "IncreaseDegree",
    header: "Geom_BSplineSurface.hxx".}
proc InsertUKnots*(this: var Geom_BSplineSurface; Knots: TColStd_Array1OfReal;
                  Mults: TColStd_Array1OfInteger;
                  ParametricTolerance: Standard_Real = 0.0;
                  Add: Standard_Boolean = Standard_True) {.
    importcpp: "InsertUKnots", header: "Geom_BSplineSurface.hxx".}
proc InsertVKnots*(this: var Geom_BSplineSurface; Knots: TColStd_Array1OfReal;
                  Mults: TColStd_Array1OfInteger;
                  ParametricTolerance: Standard_Real = 0.0;
                  Add: Standard_Boolean = Standard_True) {.
    importcpp: "InsertVKnots", header: "Geom_BSplineSurface.hxx".}
proc RemoveUKnot*(this: var Geom_BSplineSurface; Index: Standard_Integer;
                 M: Standard_Integer; Tolerance: Standard_Real): Standard_Boolean {.
    importcpp: "RemoveUKnot", header: "Geom_BSplineSurface.hxx".}
proc RemoveVKnot*(this: var Geom_BSplineSurface; Index: Standard_Integer;
                 M: Standard_Integer; Tolerance: Standard_Real): Standard_Boolean {.
    importcpp: "RemoveVKnot", header: "Geom_BSplineSurface.hxx".}
proc IncreaseUMultiplicity*(this: var Geom_BSplineSurface; UIndex: Standard_Integer;
                           M: Standard_Integer) {.
    importcpp: "IncreaseUMultiplicity", header: "Geom_BSplineSurface.hxx".}
proc IncreaseUMultiplicity*(this: var Geom_BSplineSurface; FromI1: Standard_Integer;
                           ToI2: Standard_Integer; M: Standard_Integer) {.
    importcpp: "IncreaseUMultiplicity", header: "Geom_BSplineSurface.hxx".}
proc IncrementUMultiplicity*(this: var Geom_BSplineSurface;
                            FromI1: Standard_Integer; ToI2: Standard_Integer;
                            Step: Standard_Integer) {.
    importcpp: "IncrementUMultiplicity", header: "Geom_BSplineSurface.hxx".}
proc IncreaseVMultiplicity*(this: var Geom_BSplineSurface; VIndex: Standard_Integer;
                           M: Standard_Integer) {.
    importcpp: "IncreaseVMultiplicity", header: "Geom_BSplineSurface.hxx".}
proc IncreaseVMultiplicity*(this: var Geom_BSplineSurface; FromI1: Standard_Integer;
                           ToI2: Standard_Integer; M: Standard_Integer) {.
    importcpp: "IncreaseVMultiplicity", header: "Geom_BSplineSurface.hxx".}
proc IncrementVMultiplicity*(this: var Geom_BSplineSurface;
                            FromI1: Standard_Integer; ToI2: Standard_Integer;
                            Step: Standard_Integer) {.
    importcpp: "IncrementVMultiplicity", header: "Geom_BSplineSurface.hxx".}
proc InsertUKnot*(this: var Geom_BSplineSurface; U: Standard_Real;
                 M: Standard_Integer; ParametricTolerance: Standard_Real;
                 Add: Standard_Boolean = Standard_True) {.importcpp: "InsertUKnot",
    header: "Geom_BSplineSurface.hxx".}
proc InsertVKnot*(this: var Geom_BSplineSurface; V: Standard_Real;
                 M: Standard_Integer; ParametricTolerance: Standard_Real;
                 Add: Standard_Boolean = Standard_True) {.importcpp: "InsertVKnot",
    header: "Geom_BSplineSurface.hxx".}
proc Segment*(this: var Geom_BSplineSurface; U1: Standard_Real; U2: Standard_Real;
             V1: Standard_Real; V2: Standard_Real;
             theUTolerance: Standard_Real = PConfusion();
             theVTolerance: Standard_Real = PConfusion()) {.importcpp: "Segment",
    header: "Geom_BSplineSurface.hxx".}
proc CheckAndSegment*(this: var Geom_BSplineSurface; U1: Standard_Real;
                     U2: Standard_Real; V1: Standard_Real; V2: Standard_Real;
                     theUTolerance: Standard_Real = PConfusion();
                     theVTolerance: Standard_Real = PConfusion()) {.
    importcpp: "CheckAndSegment", header: "Geom_BSplineSurface.hxx".}
proc SetUKnot*(this: var Geom_BSplineSurface; UIndex: Standard_Integer;
              K: Standard_Real) {.importcpp: "SetUKnot",
                                header: "Geom_BSplineSurface.hxx".}
proc SetUKnots*(this: var Geom_BSplineSurface; UK: TColStd_Array1OfReal) {.
    importcpp: "SetUKnots", header: "Geom_BSplineSurface.hxx".}
proc SetUKnot*(this: var Geom_BSplineSurface; UIndex: Standard_Integer;
              K: Standard_Real; M: Standard_Integer) {.importcpp: "SetUKnot",
    header: "Geom_BSplineSurface.hxx".}
proc SetVKnot*(this: var Geom_BSplineSurface; VIndex: Standard_Integer;
              K: Standard_Real) {.importcpp: "SetVKnot",
                                header: "Geom_BSplineSurface.hxx".}
proc SetVKnots*(this: var Geom_BSplineSurface; VK: TColStd_Array1OfReal) {.
    importcpp: "SetVKnots", header: "Geom_BSplineSurface.hxx".}
proc SetVKnot*(this: var Geom_BSplineSurface; VIndex: Standard_Integer;
              K: Standard_Real; M: Standard_Integer) {.importcpp: "SetVKnot",
    header: "Geom_BSplineSurface.hxx".}
proc LocateU*(this: Geom_BSplineSurface; U: Standard_Real;
             ParametricTolerance: Standard_Real; I1: var Standard_Integer;
             I2: var Standard_Integer;
             WithKnotRepetition: Standard_Boolean = Standard_False) {.noSideEffect,
    importcpp: "LocateU", header: "Geom_BSplineSurface.hxx".}
proc LocateV*(this: Geom_BSplineSurface; V: Standard_Real;
             ParametricTolerance: Standard_Real; I1: var Standard_Integer;
             I2: var Standard_Integer;
             WithKnotRepetition: Standard_Boolean = Standard_False) {.noSideEffect,
    importcpp: "LocateV", header: "Geom_BSplineSurface.hxx".}
proc SetPole*(this: var Geom_BSplineSurface; UIndex: Standard_Integer;
             VIndex: Standard_Integer; P: gp_Pnt) {.importcpp: "SetPole",
    header: "Geom_BSplineSurface.hxx".}
proc SetPole*(this: var Geom_BSplineSurface; UIndex: Standard_Integer;
             VIndex: Standard_Integer; P: gp_Pnt; Weight: Standard_Real) {.
    importcpp: "SetPole", header: "Geom_BSplineSurface.hxx".}
proc SetPoleCol*(this: var Geom_BSplineSurface; VIndex: Standard_Integer;
                CPoles: TColgp_Array1OfPnt) {.importcpp: "SetPoleCol",
    header: "Geom_BSplineSurface.hxx".}
proc SetPoleCol*(this: var Geom_BSplineSurface; VIndex: Standard_Integer;
                CPoles: TColgp_Array1OfPnt; CPoleWeights: TColStd_Array1OfReal) {.
    importcpp: "SetPoleCol", header: "Geom_BSplineSurface.hxx".}
proc SetPoleRow*(this: var Geom_BSplineSurface; UIndex: Standard_Integer;
                CPoles: TColgp_Array1OfPnt; CPoleWeights: TColStd_Array1OfReal) {.
    importcpp: "SetPoleRow", header: "Geom_BSplineSurface.hxx".}
proc SetPoleRow*(this: var Geom_BSplineSurface; UIndex: Standard_Integer;
                CPoles: TColgp_Array1OfPnt) {.importcpp: "SetPoleRow",
    header: "Geom_BSplineSurface.hxx".}
proc SetWeight*(this: var Geom_BSplineSurface; UIndex: Standard_Integer;
               VIndex: Standard_Integer; Weight: Standard_Real) {.
    importcpp: "SetWeight", header: "Geom_BSplineSurface.hxx".}
proc SetWeightCol*(this: var Geom_BSplineSurface; VIndex: Standard_Integer;
                  CPoleWeights: TColStd_Array1OfReal) {.importcpp: "SetWeightCol",
    header: "Geom_BSplineSurface.hxx".}
proc SetWeightRow*(this: var Geom_BSplineSurface; UIndex: Standard_Integer;
                  CPoleWeights: TColStd_Array1OfReal) {.importcpp: "SetWeightRow",
    header: "Geom_BSplineSurface.hxx".}
proc MovePoint*(this: var Geom_BSplineSurface; U: Standard_Real; V: Standard_Real;
               P: gp_Pnt; UIndex1: Standard_Integer; UIndex2: Standard_Integer;
               VIndex1: Standard_Integer; VIndex2: Standard_Integer;
               UFirstIndex: var Standard_Integer; ULastIndex: var Standard_Integer;
               VFirstIndex: var Standard_Integer; VLastIndex: var Standard_Integer) {.
    importcpp: "MovePoint", header: "Geom_BSplineSurface.hxx".}
proc IsUClosed*(this: Geom_BSplineSurface): Standard_Boolean {.noSideEffect,
    importcpp: "IsUClosed", header: "Geom_BSplineSurface.hxx".}
proc IsVClosed*(this: Geom_BSplineSurface): Standard_Boolean {.noSideEffect,
    importcpp: "IsVClosed", header: "Geom_BSplineSurface.hxx".}
proc IsCNu*(this: Geom_BSplineSurface; N: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsCNu", header: "Geom_BSplineSurface.hxx".}
proc IsCNv*(this: Geom_BSplineSurface; N: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsCNv", header: "Geom_BSplineSurface.hxx".}
proc IsUPeriodic*(this: Geom_BSplineSurface): Standard_Boolean {.noSideEffect,
    importcpp: "IsUPeriodic", header: "Geom_BSplineSurface.hxx".}
proc IsURational*(this: Geom_BSplineSurface): Standard_Boolean {.noSideEffect,
    importcpp: "IsURational", header: "Geom_BSplineSurface.hxx".}
proc IsVPeriodic*(this: Geom_BSplineSurface): Standard_Boolean {.noSideEffect,
    importcpp: "IsVPeriodic", header: "Geom_BSplineSurface.hxx".}
proc IsVRational*(this: Geom_BSplineSurface): Standard_Boolean {.noSideEffect,
    importcpp: "IsVRational", header: "Geom_BSplineSurface.hxx".}
proc Bounds*(this: Geom_BSplineSurface; U1: var Standard_Real; U2: var Standard_Real;
            V1: var Standard_Real; V2: var Standard_Real) {.noSideEffect,
    importcpp: "Bounds", header: "Geom_BSplineSurface.hxx".}
proc Continuity*(this: Geom_BSplineSurface): GeomAbs_Shape {.noSideEffect,
    importcpp: "Continuity", header: "Geom_BSplineSurface.hxx".}
proc FirstUKnotIndex*(this: Geom_BSplineSurface): Standard_Integer {.noSideEffect,
    importcpp: "FirstUKnotIndex", header: "Geom_BSplineSurface.hxx".}
proc FirstVKnotIndex*(this: Geom_BSplineSurface): Standard_Integer {.noSideEffect,
    importcpp: "FirstVKnotIndex", header: "Geom_BSplineSurface.hxx".}
proc LastUKnotIndex*(this: Geom_BSplineSurface): Standard_Integer {.noSideEffect,
    importcpp: "LastUKnotIndex", header: "Geom_BSplineSurface.hxx".}
proc LastVKnotIndex*(this: Geom_BSplineSurface): Standard_Integer {.noSideEffect,
    importcpp: "LastVKnotIndex", header: "Geom_BSplineSurface.hxx".}
proc NbUKnots*(this: Geom_BSplineSurface): Standard_Integer {.noSideEffect,
    importcpp: "NbUKnots", header: "Geom_BSplineSurface.hxx".}
proc NbUPoles*(this: Geom_BSplineSurface): Standard_Integer {.noSideEffect,
    importcpp: "NbUPoles", header: "Geom_BSplineSurface.hxx".}
proc NbVKnots*(this: Geom_BSplineSurface): Standard_Integer {.noSideEffect,
    importcpp: "NbVKnots", header: "Geom_BSplineSurface.hxx".}
proc NbVPoles*(this: Geom_BSplineSurface): Standard_Integer {.noSideEffect,
    importcpp: "NbVPoles", header: "Geom_BSplineSurface.hxx".}
proc Pole*(this: Geom_BSplineSurface; UIndex: Standard_Integer;
          VIndex: Standard_Integer): gp_Pnt {.noSideEffect, importcpp: "Pole",
    header: "Geom_BSplineSurface.hxx".}
proc Poles*(this: Geom_BSplineSurface; P: var TColgp_Array2OfPnt) {.noSideEffect,
    importcpp: "Poles", header: "Geom_BSplineSurface.hxx".}
proc Poles*(this: Geom_BSplineSurface): TColgp_Array2OfPnt {.noSideEffect,
    importcpp: "Poles", header: "Geom_BSplineSurface.hxx".}
proc UDegree*(this: Geom_BSplineSurface): Standard_Integer {.noSideEffect,
    importcpp: "UDegree", header: "Geom_BSplineSurface.hxx".}
proc UKnot*(this: Geom_BSplineSurface; UIndex: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "UKnot", header: "Geom_BSplineSurface.hxx".}
proc UKnotDistribution*(this: Geom_BSplineSurface): GeomAbs_BSplKnotDistribution {.
    noSideEffect, importcpp: "UKnotDistribution", header: "Geom_BSplineSurface.hxx".}
proc UKnots*(this: Geom_BSplineSurface; Ku: var TColStd_Array1OfReal) {.noSideEffect,
    importcpp: "UKnots", header: "Geom_BSplineSurface.hxx".}
proc UKnots*(this: Geom_BSplineSurface): TColStd_Array1OfReal {.noSideEffect,
    importcpp: "UKnots", header: "Geom_BSplineSurface.hxx".}
proc UKnotSequence*(this: Geom_BSplineSurface; Ku: var TColStd_Array1OfReal) {.
    noSideEffect, importcpp: "UKnotSequence", header: "Geom_BSplineSurface.hxx".}
proc UKnotSequence*(this: Geom_BSplineSurface): TColStd_Array1OfReal {.noSideEffect,
    importcpp: "UKnotSequence", header: "Geom_BSplineSurface.hxx".}
proc UMultiplicity*(this: Geom_BSplineSurface; UIndex: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "UMultiplicity", header: "Geom_BSplineSurface.hxx".}
proc UMultiplicities*(this: Geom_BSplineSurface; Mu: var TColStd_Array1OfInteger) {.
    noSideEffect, importcpp: "UMultiplicities", header: "Geom_BSplineSurface.hxx".}
proc UMultiplicities*(this: Geom_BSplineSurface): TColStd_Array1OfInteger {.
    noSideEffect, importcpp: "UMultiplicities", header: "Geom_BSplineSurface.hxx".}
proc VDegree*(this: Geom_BSplineSurface): Standard_Integer {.noSideEffect,
    importcpp: "VDegree", header: "Geom_BSplineSurface.hxx".}
proc VKnot*(this: Geom_BSplineSurface; VIndex: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "VKnot", header: "Geom_BSplineSurface.hxx".}
proc VKnotDistribution*(this: Geom_BSplineSurface): GeomAbs_BSplKnotDistribution {.
    noSideEffect, importcpp: "VKnotDistribution", header: "Geom_BSplineSurface.hxx".}
proc VKnots*(this: Geom_BSplineSurface; Kv: var TColStd_Array1OfReal) {.noSideEffect,
    importcpp: "VKnots", header: "Geom_BSplineSurface.hxx".}
proc VKnots*(this: Geom_BSplineSurface): TColStd_Array1OfReal {.noSideEffect,
    importcpp: "VKnots", header: "Geom_BSplineSurface.hxx".}
proc VKnotSequence*(this: Geom_BSplineSurface; Kv: var TColStd_Array1OfReal) {.
    noSideEffect, importcpp: "VKnotSequence", header: "Geom_BSplineSurface.hxx".}
proc VKnotSequence*(this: Geom_BSplineSurface): TColStd_Array1OfReal {.noSideEffect,
    importcpp: "VKnotSequence", header: "Geom_BSplineSurface.hxx".}
proc VMultiplicity*(this: Geom_BSplineSurface; VIndex: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "VMultiplicity", header: "Geom_BSplineSurface.hxx".}
proc VMultiplicities*(this: Geom_BSplineSurface; Mv: var TColStd_Array1OfInteger) {.
    noSideEffect, importcpp: "VMultiplicities", header: "Geom_BSplineSurface.hxx".}
proc VMultiplicities*(this: Geom_BSplineSurface): TColStd_Array1OfInteger {.
    noSideEffect, importcpp: "VMultiplicities", header: "Geom_BSplineSurface.hxx".}
proc Weight*(this: Geom_BSplineSurface; UIndex: Standard_Integer;
            VIndex: Standard_Integer): Standard_Real {.noSideEffect,
    importcpp: "Weight", header: "Geom_BSplineSurface.hxx".}
proc Weights*(this: Geom_BSplineSurface; W: var TColStd_Array2OfReal) {.noSideEffect,
    importcpp: "Weights", header: "Geom_BSplineSurface.hxx".}
proc Weights*(this: Geom_BSplineSurface): ptr TColStd_Array2OfReal {.noSideEffect,
    importcpp: "Weights", header: "Geom_BSplineSurface.hxx".}
proc D0*(this: Geom_BSplineSurface; U: Standard_Real; V: Standard_Real; P: var gp_Pnt) {.
    noSideEffect, importcpp: "D0", header: "Geom_BSplineSurface.hxx".}
proc D1*(this: Geom_BSplineSurface; U: Standard_Real; V: Standard_Real; P: var gp_Pnt;
        D1U: var gp_Vec; D1V: var gp_Vec) {.noSideEffect, importcpp: "D1",
                                      header: "Geom_BSplineSurface.hxx".}
proc D2*(this: Geom_BSplineSurface; U: Standard_Real; V: Standard_Real; P: var gp_Pnt;
        D1U: var gp_Vec; D1V: var gp_Vec; D2U: var gp_Vec; D2V: var gp_Vec; D2UV: var gp_Vec) {.
    noSideEffect, importcpp: "D2", header: "Geom_BSplineSurface.hxx".}
proc D3*(this: Geom_BSplineSurface; U: Standard_Real; V: Standard_Real; P: var gp_Pnt;
        D1U: var gp_Vec; D1V: var gp_Vec; D2U: var gp_Vec; D2V: var gp_Vec;
        D2UV: var gp_Vec; D3U: var gp_Vec; D3V: var gp_Vec; D3UUV: var gp_Vec;
        D3UVV: var gp_Vec) {.noSideEffect, importcpp: "D3",
                          header: "Geom_BSplineSurface.hxx".}
proc DN*(this: Geom_BSplineSurface; U: Standard_Real; V: Standard_Real;
        Nu: Standard_Integer; Nv: Standard_Integer): gp_Vec {.noSideEffect,
    importcpp: "DN", header: "Geom_BSplineSurface.hxx".}
proc LocalD0*(this: Geom_BSplineSurface; U: Standard_Real; V: Standard_Real;
             FromUK1: Standard_Integer; ToUK2: Standard_Integer;
             FromVK1: Standard_Integer; ToVK2: Standard_Integer; P: var gp_Pnt) {.
    noSideEffect, importcpp: "LocalD0", header: "Geom_BSplineSurface.hxx".}
proc LocalD1*(this: Geom_BSplineSurface; U: Standard_Real; V: Standard_Real;
             FromUK1: Standard_Integer; ToUK2: Standard_Integer;
             FromVK1: Standard_Integer; ToVK2: Standard_Integer; P: var gp_Pnt;
             D1U: var gp_Vec; D1V: var gp_Vec) {.noSideEffect, importcpp: "LocalD1",
    header: "Geom_BSplineSurface.hxx".}
proc LocalD2*(this: Geom_BSplineSurface; U: Standard_Real; V: Standard_Real;
             FromUK1: Standard_Integer; ToUK2: Standard_Integer;
             FromVK1: Standard_Integer; ToVK2: Standard_Integer; P: var gp_Pnt;
             D1U: var gp_Vec; D1V: var gp_Vec; D2U: var gp_Vec; D2V: var gp_Vec;
             D2UV: var gp_Vec) {.noSideEffect, importcpp: "LocalD2",
                              header: "Geom_BSplineSurface.hxx".}
proc LocalD3*(this: Geom_BSplineSurface; U: Standard_Real; V: Standard_Real;
             FromUK1: Standard_Integer; ToUK2: Standard_Integer;
             FromVK1: Standard_Integer; ToVK2: Standard_Integer; P: var gp_Pnt;
             D1U: var gp_Vec; D1V: var gp_Vec; D2U: var gp_Vec; D2V: var gp_Vec;
             D2UV: var gp_Vec; D3U: var gp_Vec; D3V: var gp_Vec; D3UUV: var gp_Vec;
             D3UVV: var gp_Vec) {.noSideEffect, importcpp: "LocalD3",
                               header: "Geom_BSplineSurface.hxx".}
proc LocalDN*(this: Geom_BSplineSurface; U: Standard_Real; V: Standard_Real;
             FromUK1: Standard_Integer; ToUK2: Standard_Integer;
             FromVK1: Standard_Integer; ToVK2: Standard_Integer;
             Nu: Standard_Integer; Nv: Standard_Integer): gp_Vec {.noSideEffect,
    importcpp: "LocalDN", header: "Geom_BSplineSurface.hxx".}
proc LocalValue*(this: Geom_BSplineSurface; U: Standard_Real; V: Standard_Real;
                FromUK1: Standard_Integer; ToUK2: Standard_Integer;
                FromVK1: Standard_Integer; ToVK2: Standard_Integer): gp_Pnt {.
    noSideEffect, importcpp: "LocalValue", header: "Geom_BSplineSurface.hxx".}
proc UIso*(this: Geom_BSplineSurface; U: Standard_Real): handle[Geom_Curve] {.
    noSideEffect, importcpp: "UIso", header: "Geom_BSplineSurface.hxx".}
proc VIso*(this: Geom_BSplineSurface; V: Standard_Real): handle[Geom_Curve] {.
    noSideEffect, importcpp: "VIso", header: "Geom_BSplineSurface.hxx".}
proc UIso*(this: Geom_BSplineSurface; U: Standard_Real;
          CheckRational: Standard_Boolean): handle[Geom_Curve] {.noSideEffect,
    importcpp: "UIso", header: "Geom_BSplineSurface.hxx".}
proc VIso*(this: Geom_BSplineSurface; V: Standard_Real;
          CheckRational: Standard_Boolean): handle[Geom_Curve] {.noSideEffect,
    importcpp: "VIso", header: "Geom_BSplineSurface.hxx".}
proc Transform*(this: var Geom_BSplineSurface; T: gp_Trsf) {.importcpp: "Transform",
    header: "Geom_BSplineSurface.hxx".}
proc MaxDegree*(): Standard_Integer {.importcpp: "Geom_BSplineSurface::MaxDegree(@)",
                                   header: "Geom_BSplineSurface.hxx".}
proc Resolution*(this: var Geom_BSplineSurface; Tolerance3D: Standard_Real;
                UTolerance: var Standard_Real; VTolerance: var Standard_Real) {.
    importcpp: "Resolution", header: "Geom_BSplineSurface.hxx".}
proc Copy*(this: Geom_BSplineSurface): handle[Geom_Geometry] {.noSideEffect,
    importcpp: "Copy", header: "Geom_BSplineSurface.hxx".}
proc DumpJson*(this: Geom_BSplineSurface; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Geom_BSplineSurface.hxx".}
type
  Geom_BSplineSurfacebase_type* = Geom_BoundedSurface

proc get_type_name*(): cstring {.importcpp: "Geom_BSplineSurface::get_type_name(@)",
                              header: "Geom_BSplineSurface.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Geom_BSplineSurface::get_type_descriptor(@)",
    header: "Geom_BSplineSurface.hxx".}
proc DynamicType*(this: Geom_BSplineSurface): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Geom_BSplineSurface.hxx".}