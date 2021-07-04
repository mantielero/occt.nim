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
  ../TColStd/TColStd_HArray1OfReal,
  ../IGESBasic/IGESBasic_HArray2OfHArray1OfReal, ../IGESData/IGESData_IGESEntity,
  ../Standard/Standard_Real

discard "forward decl of Standard_DimensionMismatch"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of IGESGeom_SplineSurface"
discard "forward decl of IGESGeom_SplineSurface"
type
  Handle_IGESGeom_SplineSurface* = handle[IGESGeom_SplineSurface]

## ! defines IGESSplineSurface, Type <114> Form <0>
## ! in package IGESGeom
## ! A parametric spline surface is a grid of polynomial
## ! patches. Patch could be of the type Linear, Quadratic,
## ! Cubic, Wilson-Fowler, Modified Wilson-Fowler, B-Spline
## ! The M * N grid of patches is defined by the 'u' break
## ! points TU(1), TU(2), ..., TU(M+1) and the 'v' break
## ! points TV(1), TV(2), TV(3) ..., TV(N+1).

type
  IGESGeom_SplineSurface* {.importcpp: "IGESGeom_SplineSurface",
                           header: "IGESGeom_SplineSurface.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESGeom_SplineSurface*(): IGESGeom_SplineSurface {.constructor,
    importcpp: "IGESGeom_SplineSurface(@)", header: "IGESGeom_SplineSurface.hxx".}
proc Init*(this: var IGESGeom_SplineSurface; aBoundaryType: Standard_Integer;
          aPatchType: Standard_Integer;
          allUBreakpoints: handle[TColStd_HArray1OfReal];
          allVBreakpoints: handle[TColStd_HArray1OfReal];
          allXCoeffs: handle[IGESBasic_HArray2OfHArray1OfReal];
          allYCoeffs: handle[IGESBasic_HArray2OfHArray1OfReal];
          allZCoeffs: handle[IGESBasic_HArray2OfHArray1OfReal]) {.
    importcpp: "Init", header: "IGESGeom_SplineSurface.hxx".}
proc NbUSegments*(this: IGESGeom_SplineSurface): Standard_Integer {.noSideEffect,
    importcpp: "NbUSegments", header: "IGESGeom_SplineSurface.hxx".}
proc NbVSegments*(this: IGESGeom_SplineSurface): Standard_Integer {.noSideEffect,
    importcpp: "NbVSegments", header: "IGESGeom_SplineSurface.hxx".}
proc BoundaryType*(this: IGESGeom_SplineSurface): Standard_Integer {.noSideEffect,
    importcpp: "BoundaryType", header: "IGESGeom_SplineSurface.hxx".}
proc PatchType*(this: IGESGeom_SplineSurface): Standard_Integer {.noSideEffect,
    importcpp: "PatchType", header: "IGESGeom_SplineSurface.hxx".}
proc UBreakPoint*(this: IGESGeom_SplineSurface; anIndex: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "UBreakPoint", header: "IGESGeom_SplineSurface.hxx".}
proc VBreakPoint*(this: IGESGeom_SplineSurface; anIndex: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "VBreakPoint", header: "IGESGeom_SplineSurface.hxx".}
proc XPolynomial*(this: IGESGeom_SplineSurface; anIndex1: Standard_Integer;
                 anIndex2: Standard_Integer): handle[TColStd_HArray1OfReal] {.
    noSideEffect, importcpp: "XPolynomial", header: "IGESGeom_SplineSurface.hxx".}
proc YPolynomial*(this: IGESGeom_SplineSurface; anIndex1: Standard_Integer;
                 anIndex2: Standard_Integer): handle[TColStd_HArray1OfReal] {.
    noSideEffect, importcpp: "YPolynomial", header: "IGESGeom_SplineSurface.hxx".}
proc ZPolynomial*(this: IGESGeom_SplineSurface; anIndex1: Standard_Integer;
                 anIndex2: Standard_Integer): handle[TColStd_HArray1OfReal] {.
    noSideEffect, importcpp: "ZPolynomial", header: "IGESGeom_SplineSurface.hxx".}
proc Polynomials*(this: IGESGeom_SplineSurface;
                 XCoef: var handle[IGESBasic_HArray2OfHArray1OfReal];
                 YCoef: var handle[IGESBasic_HArray2OfHArray1OfReal];
                 ZCoef: var handle[IGESBasic_HArray2OfHArray1OfReal]) {.
    noSideEffect, importcpp: "Polynomials", header: "IGESGeom_SplineSurface.hxx".}
type
  IGESGeom_SplineSurfacebase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESGeom_SplineSurface::get_type_name(@)",
                              header: "IGESGeom_SplineSurface.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESGeom_SplineSurface::get_type_descriptor(@)",
    header: "IGESGeom_SplineSurface.hxx".}
proc DynamicType*(this: IGESGeom_SplineSurface): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESGeom_SplineSurface.hxx".}