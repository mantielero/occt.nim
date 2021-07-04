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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Boolean,
  ../TColgp/TColgp_HArray2OfPnt, ../TColStd/TColStd_HArray2OfReal,
  ../Standard/Standard_Real, ../Standard/Standard_Integer, Geom_BoundedSurface,
  ../TColgp/TColgp_Array2OfPnt, ../TColStd/TColStd_Array2OfReal,
  ../TColgp/TColgp_Array1OfPnt, ../TColStd/TColStd_Array1OfReal,
  ../GeomAbs/GeomAbs_Shape, ../BSplSLib/BSplSLib

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
  Handle_Geom_BezierSurface* = handle[Geom_BezierSurface]

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
  Geom_BezierSurface* {.importcpp: "Geom_BezierSurface",
                       header: "Geom_BezierSurface.hxx", bycopy.} = object of Geom_BoundedSurface ##
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


proc constructGeom_BezierSurface*(SurfacePoles: TColgp_Array2OfPnt): Geom_BezierSurface {.
    constructor, importcpp: "Geom_BezierSurface(@)",
    header: "Geom_BezierSurface.hxx".}
proc constructGeom_BezierSurface*(SurfacePoles: TColgp_Array2OfPnt;
                                 PoleWeights: TColStd_Array2OfReal): Geom_BezierSurface {.
    constructor, importcpp: "Geom_BezierSurface(@)",
    header: "Geom_BezierSurface.hxx".}
proc ExchangeUV*(this: var Geom_BezierSurface) {.importcpp: "ExchangeUV",
    header: "Geom_BezierSurface.hxx".}
proc Increase*(this: var Geom_BezierSurface; UDeg: Standard_Integer;
              VDeg: Standard_Integer) {.importcpp: "Increase",
                                      header: "Geom_BezierSurface.hxx".}
proc InsertPoleColAfter*(this: var Geom_BezierSurface; VIndex: Standard_Integer;
                        CPoles: TColgp_Array1OfPnt) {.
    importcpp: "InsertPoleColAfter", header: "Geom_BezierSurface.hxx".}
proc InsertPoleColAfter*(this: var Geom_BezierSurface; VIndex: Standard_Integer;
                        CPoles: TColgp_Array1OfPnt;
                        CPoleWeights: TColStd_Array1OfReal) {.
    importcpp: "InsertPoleColAfter", header: "Geom_BezierSurface.hxx".}
proc InsertPoleColBefore*(this: var Geom_BezierSurface; VIndex: Standard_Integer;
                         CPoles: TColgp_Array1OfPnt) {.
    importcpp: "InsertPoleColBefore", header: "Geom_BezierSurface.hxx".}
proc InsertPoleColBefore*(this: var Geom_BezierSurface; VIndex: Standard_Integer;
                         CPoles: TColgp_Array1OfPnt;
                         CPoleWeights: TColStd_Array1OfReal) {.
    importcpp: "InsertPoleColBefore", header: "Geom_BezierSurface.hxx".}
proc InsertPoleRowAfter*(this: var Geom_BezierSurface; UIndex: Standard_Integer;
                        CPoles: TColgp_Array1OfPnt) {.
    importcpp: "InsertPoleRowAfter", header: "Geom_BezierSurface.hxx".}
proc InsertPoleRowAfter*(this: var Geom_BezierSurface; UIndex: Standard_Integer;
                        CPoles: TColgp_Array1OfPnt;
                        CPoleWeights: TColStd_Array1OfReal) {.
    importcpp: "InsertPoleRowAfter", header: "Geom_BezierSurface.hxx".}
proc InsertPoleRowBefore*(this: var Geom_BezierSurface; UIndex: Standard_Integer;
                         CPoles: TColgp_Array1OfPnt) {.
    importcpp: "InsertPoleRowBefore", header: "Geom_BezierSurface.hxx".}
proc InsertPoleRowBefore*(this: var Geom_BezierSurface; UIndex: Standard_Integer;
                         CPoles: TColgp_Array1OfPnt;
                         CPoleWeights: TColStd_Array1OfReal) {.
    importcpp: "InsertPoleRowBefore", header: "Geom_BezierSurface.hxx".}
proc RemovePoleCol*(this: var Geom_BezierSurface; VIndex: Standard_Integer) {.
    importcpp: "RemovePoleCol", header: "Geom_BezierSurface.hxx".}
proc RemovePoleRow*(this: var Geom_BezierSurface; UIndex: Standard_Integer) {.
    importcpp: "RemovePoleRow", header: "Geom_BezierSurface.hxx".}
proc Segment*(this: var Geom_BezierSurface; U1: Standard_Real; U2: Standard_Real;
             V1: Standard_Real; V2: Standard_Real) {.importcpp: "Segment",
    header: "Geom_BezierSurface.hxx".}
proc SetPole*(this: var Geom_BezierSurface; UIndex: Standard_Integer;
             VIndex: Standard_Integer; P: gp_Pnt) {.importcpp: "SetPole",
    header: "Geom_BezierSurface.hxx".}
proc SetPole*(this: var Geom_BezierSurface; UIndex: Standard_Integer;
             VIndex: Standard_Integer; P: gp_Pnt; Weight: Standard_Real) {.
    importcpp: "SetPole", header: "Geom_BezierSurface.hxx".}
proc SetPoleCol*(this: var Geom_BezierSurface; VIndex: Standard_Integer;
                CPoles: TColgp_Array1OfPnt) {.importcpp: "SetPoleCol",
    header: "Geom_BezierSurface.hxx".}
proc SetPoleCol*(this: var Geom_BezierSurface; VIndex: Standard_Integer;
                CPoles: TColgp_Array1OfPnt; CPoleWeights: TColStd_Array1OfReal) {.
    importcpp: "SetPoleCol", header: "Geom_BezierSurface.hxx".}
proc SetPoleRow*(this: var Geom_BezierSurface; UIndex: Standard_Integer;
                CPoles: TColgp_Array1OfPnt) {.importcpp: "SetPoleRow",
    header: "Geom_BezierSurface.hxx".}
proc SetPoleRow*(this: var Geom_BezierSurface; UIndex: Standard_Integer;
                CPoles: TColgp_Array1OfPnt; CPoleWeights: TColStd_Array1OfReal) {.
    importcpp: "SetPoleRow", header: "Geom_BezierSurface.hxx".}
proc SetWeight*(this: var Geom_BezierSurface; UIndex: Standard_Integer;
               VIndex: Standard_Integer; Weight: Standard_Real) {.
    importcpp: "SetWeight", header: "Geom_BezierSurface.hxx".}
proc SetWeightCol*(this: var Geom_BezierSurface; VIndex: Standard_Integer;
                  CPoleWeights: TColStd_Array1OfReal) {.importcpp: "SetWeightCol",
    header: "Geom_BezierSurface.hxx".}
proc SetWeightRow*(this: var Geom_BezierSurface; UIndex: Standard_Integer;
                  CPoleWeights: TColStd_Array1OfReal) {.importcpp: "SetWeightRow",
    header: "Geom_BezierSurface.hxx".}
proc UReverse*(this: var Geom_BezierSurface) {.importcpp: "UReverse",
    header: "Geom_BezierSurface.hxx".}
proc UReversedParameter*(this: Geom_BezierSurface; U: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "UReversedParameter", header: "Geom_BezierSurface.hxx".}
proc VReverse*(this: var Geom_BezierSurface) {.importcpp: "VReverse",
    header: "Geom_BezierSurface.hxx".}
proc VReversedParameter*(this: Geom_BezierSurface; V: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "VReversedParameter", header: "Geom_BezierSurface.hxx".}
proc Bounds*(this: Geom_BezierSurface; U1: var Standard_Real; U2: var Standard_Real;
            V1: var Standard_Real; V2: var Standard_Real) {.noSideEffect,
    importcpp: "Bounds", header: "Geom_BezierSurface.hxx".}
proc Continuity*(this: Geom_BezierSurface): GeomAbs_Shape {.noSideEffect,
    importcpp: "Continuity", header: "Geom_BezierSurface.hxx".}
proc D0*(this: Geom_BezierSurface; U: Standard_Real; V: Standard_Real; P: var gp_Pnt) {.
    noSideEffect, importcpp: "D0", header: "Geom_BezierSurface.hxx".}
proc D1*(this: Geom_BezierSurface; U: Standard_Real; V: Standard_Real; P: var gp_Pnt;
        D1U: var gp_Vec; D1V: var gp_Vec) {.noSideEffect, importcpp: "D1",
                                      header: "Geom_BezierSurface.hxx".}
proc D2*(this: Geom_BezierSurface; U: Standard_Real; V: Standard_Real; P: var gp_Pnt;
        D1U: var gp_Vec; D1V: var gp_Vec; D2U: var gp_Vec; D2V: var gp_Vec; D2UV: var gp_Vec) {.
    noSideEffect, importcpp: "D2", header: "Geom_BezierSurface.hxx".}
proc D3*(this: Geom_BezierSurface; U: Standard_Real; V: Standard_Real; P: var gp_Pnt;
        D1U: var gp_Vec; D1V: var gp_Vec; D2U: var gp_Vec; D2V: var gp_Vec;
        D2UV: var gp_Vec; D3U: var gp_Vec; D3V: var gp_Vec; D3UUV: var gp_Vec;
        D3UVV: var gp_Vec) {.noSideEffect, importcpp: "D3",
                          header: "Geom_BezierSurface.hxx".}
proc DN*(this: Geom_BezierSurface; U: Standard_Real; V: Standard_Real;
        Nu: Standard_Integer; Nv: Standard_Integer): gp_Vec {.noSideEffect,
    importcpp: "DN", header: "Geom_BezierSurface.hxx".}
proc NbUPoles*(this: Geom_BezierSurface): Standard_Integer {.noSideEffect,
    importcpp: "NbUPoles", header: "Geom_BezierSurface.hxx".}
proc NbVPoles*(this: Geom_BezierSurface): Standard_Integer {.noSideEffect,
    importcpp: "NbVPoles", header: "Geom_BezierSurface.hxx".}
proc Pole*(this: Geom_BezierSurface; UIndex: Standard_Integer;
          VIndex: Standard_Integer): gp_Pnt {.noSideEffect, importcpp: "Pole",
    header: "Geom_BezierSurface.hxx".}
proc Poles*(this: Geom_BezierSurface; P: var TColgp_Array2OfPnt) {.noSideEffect,
    importcpp: "Poles", header: "Geom_BezierSurface.hxx".}
proc Poles*(this: Geom_BezierSurface): TColgp_Array2OfPnt {.noSideEffect,
    importcpp: "Poles", header: "Geom_BezierSurface.hxx".}
proc UDegree*(this: Geom_BezierSurface): Standard_Integer {.noSideEffect,
    importcpp: "UDegree", header: "Geom_BezierSurface.hxx".}
proc UIso*(this: Geom_BezierSurface; U: Standard_Real): handle[Geom_Curve] {.
    noSideEffect, importcpp: "UIso", header: "Geom_BezierSurface.hxx".}
proc VDegree*(this: Geom_BezierSurface): Standard_Integer {.noSideEffect,
    importcpp: "VDegree", header: "Geom_BezierSurface.hxx".}
proc VIso*(this: Geom_BezierSurface; V: Standard_Real): handle[Geom_Curve] {.
    noSideEffect, importcpp: "VIso", header: "Geom_BezierSurface.hxx".}
proc Weight*(this: Geom_BezierSurface; UIndex: Standard_Integer;
            VIndex: Standard_Integer): Standard_Real {.noSideEffect,
    importcpp: "Weight", header: "Geom_BezierSurface.hxx".}
proc Weights*(this: Geom_BezierSurface; W: var TColStd_Array2OfReal) {.noSideEffect,
    importcpp: "Weights", header: "Geom_BezierSurface.hxx".}
proc Weights*(this: Geom_BezierSurface): ptr TColStd_Array2OfReal {.noSideEffect,
    importcpp: "Weights", header: "Geom_BezierSurface.hxx".}
proc IsUClosed*(this: Geom_BezierSurface): Standard_Boolean {.noSideEffect,
    importcpp: "IsUClosed", header: "Geom_BezierSurface.hxx".}
proc IsVClosed*(this: Geom_BezierSurface): Standard_Boolean {.noSideEffect,
    importcpp: "IsVClosed", header: "Geom_BezierSurface.hxx".}
proc IsCNu*(this: Geom_BezierSurface; N: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsCNu", header: "Geom_BezierSurface.hxx".}
proc IsCNv*(this: Geom_BezierSurface; N: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsCNv", header: "Geom_BezierSurface.hxx".}
proc IsUPeriodic*(this: Geom_BezierSurface): Standard_Boolean {.noSideEffect,
    importcpp: "IsUPeriodic", header: "Geom_BezierSurface.hxx".}
proc IsVPeriodic*(this: Geom_BezierSurface): Standard_Boolean {.noSideEffect,
    importcpp: "IsVPeriodic", header: "Geom_BezierSurface.hxx".}
proc IsURational*(this: Geom_BezierSurface): Standard_Boolean {.noSideEffect,
    importcpp: "IsURational", header: "Geom_BezierSurface.hxx".}
proc IsVRational*(this: Geom_BezierSurface): Standard_Boolean {.noSideEffect,
    importcpp: "IsVRational", header: "Geom_BezierSurface.hxx".}
proc Transform*(this: var Geom_BezierSurface; T: gp_Trsf) {.importcpp: "Transform",
    header: "Geom_BezierSurface.hxx".}
proc MaxDegree*(): Standard_Integer {.importcpp: "Geom_BezierSurface::MaxDegree(@)",
                                   header: "Geom_BezierSurface.hxx".}
proc Resolution*(this: var Geom_BezierSurface; Tolerance3D: Standard_Real;
                UTolerance: var Standard_Real; VTolerance: var Standard_Real) {.
    importcpp: "Resolution", header: "Geom_BezierSurface.hxx".}
proc Copy*(this: Geom_BezierSurface): handle[Geom_Geometry] {.noSideEffect,
    importcpp: "Copy", header: "Geom_BezierSurface.hxx".}
proc DumpJson*(this: Geom_BezierSurface; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Geom_BezierSurface.hxx".}
type
  Geom_BezierSurfacebase_type* = Geom_BoundedSurface

proc get_type_name*(): cstring {.importcpp: "Geom_BezierSurface::get_type_name(@)",
                              header: "Geom_BezierSurface.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Geom_BezierSurface::get_type_descriptor(@)",
    header: "Geom_BezierSurface.hxx".}
proc DynamicType*(this: Geom_BezierSurface): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Geom_BezierSurface.hxx".}