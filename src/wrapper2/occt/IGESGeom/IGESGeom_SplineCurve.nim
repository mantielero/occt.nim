##  Created on: 1993-01-09
##  Created by: CKY / Contract Toubro-Larsen ( Kiran )
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  ../TColStd/TColStd_HArray1OfReal, ../TColStd/TColStd_HArray2OfReal,
  ../IGESData/IGESData_IGESEntity, ../Standard/Standard_Real

discard "forward decl of Standard_DimensionMismatch"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of IGESGeom_SplineCurve"
discard "forward decl of IGESGeom_SplineCurve"
type
  Handle_IGESGeom_SplineCurve* = handle[IGESGeom_SplineCurve]

## ! Defines IGESSplineCurve, Type <112> Form <0>
## ! in package IGESGeom
## ! The parametric spline is a sequence of parametric
## ! polynomial segments. The curve could be of the type
## ! Linear, Quadratic, Cubic, Wilson-Fowler, Modified
## ! Wilson-Fowler, B-Spline. The N polynomial segments
## ! are delimited by the break points  T(1), T(2), T(3),
## ! ..., T(N+1).

type
  IGESGeom_SplineCurve* {.importcpp: "IGESGeom_SplineCurve",
                         header: "IGESGeom_SplineCurve.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESGeom_SplineCurve*(): IGESGeom_SplineCurve {.constructor,
    importcpp: "IGESGeom_SplineCurve(@)", header: "IGESGeom_SplineCurve.hxx".}
proc Init*(this: var IGESGeom_SplineCurve; aType: Standard_Integer;
          aDegree: Standard_Integer; nbDimensions: Standard_Integer;
          allBreakPoints: handle[TColStd_HArray1OfReal];
          allXPolynomials: handle[TColStd_HArray2OfReal];
          allYPolynomials: handle[TColStd_HArray2OfReal];
          allZPolynomials: handle[TColStd_HArray2OfReal];
          allXvalues: handle[TColStd_HArray1OfReal];
          allYvalues: handle[TColStd_HArray1OfReal];
          allZvalues: handle[TColStd_HArray1OfReal]) {.importcpp: "Init",
    header: "IGESGeom_SplineCurve.hxx".}
proc SplineType*(this: IGESGeom_SplineCurve): Standard_Integer {.noSideEffect,
    importcpp: "SplineType", header: "IGESGeom_SplineCurve.hxx".}
proc Degree*(this: IGESGeom_SplineCurve): Standard_Integer {.noSideEffect,
    importcpp: "Degree", header: "IGESGeom_SplineCurve.hxx".}
proc NbDimensions*(this: IGESGeom_SplineCurve): Standard_Integer {.noSideEffect,
    importcpp: "NbDimensions", header: "IGESGeom_SplineCurve.hxx".}
proc NbSegments*(this: IGESGeom_SplineCurve): Standard_Integer {.noSideEffect,
    importcpp: "NbSegments", header: "IGESGeom_SplineCurve.hxx".}
proc BreakPoint*(this: IGESGeom_SplineCurve; Index: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "BreakPoint", header: "IGESGeom_SplineCurve.hxx".}
proc XCoordPolynomial*(this: IGESGeom_SplineCurve; Index: Standard_Integer;
                      AX: var Standard_Real; BX: var Standard_Real;
                      CX: var Standard_Real; DX: var Standard_Real) {.noSideEffect,
    importcpp: "XCoordPolynomial", header: "IGESGeom_SplineCurve.hxx".}
proc YCoordPolynomial*(this: IGESGeom_SplineCurve; Index: Standard_Integer;
                      AY: var Standard_Real; BY: var Standard_Real;
                      CY: var Standard_Real; DY: var Standard_Real) {.noSideEffect,
    importcpp: "YCoordPolynomial", header: "IGESGeom_SplineCurve.hxx".}
proc ZCoordPolynomial*(this: IGESGeom_SplineCurve; Index: Standard_Integer;
                      AZ: var Standard_Real; BZ: var Standard_Real;
                      CZ: var Standard_Real; DZ: var Standard_Real) {.noSideEffect,
    importcpp: "ZCoordPolynomial", header: "IGESGeom_SplineCurve.hxx".}
proc XValues*(this: IGESGeom_SplineCurve; TPX0: var Standard_Real;
             TPX1: var Standard_Real; TPX2: var Standard_Real; TPX3: var Standard_Real) {.
    noSideEffect, importcpp: "XValues", header: "IGESGeom_SplineCurve.hxx".}
proc YValues*(this: IGESGeom_SplineCurve; TPY0: var Standard_Real;
             TPY1: var Standard_Real; TPY2: var Standard_Real; TPY3: var Standard_Real) {.
    noSideEffect, importcpp: "YValues", header: "IGESGeom_SplineCurve.hxx".}
proc ZValues*(this: IGESGeom_SplineCurve; TPZ0: var Standard_Real;
             TPZ1: var Standard_Real; TPZ2: var Standard_Real; TPZ3: var Standard_Real) {.
    noSideEffect, importcpp: "ZValues", header: "IGESGeom_SplineCurve.hxx".}
type
  IGESGeom_SplineCurvebase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESGeom_SplineCurve::get_type_name(@)",
                              header: "IGESGeom_SplineCurve.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESGeom_SplineCurve::get_type_descriptor(@)",
    header: "IGESGeom_SplineCurve.hxx".}
proc DynamicType*(this: IGESGeom_SplineCurve): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESGeom_SplineCurve.hxx".}