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

discard "forward decl of Standard_DimensionMismatch"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of IGESGeom_SplineSurface"
discard "forward decl of IGESGeom_SplineSurface"
type
  HandleIGESGeomSplineSurface* = Handle[IGESGeomSplineSurface]

## ! defines IGESSplineSurface, Type <114> Form <0>
## ! in package IGESGeom
## ! A parametric spline surface is a grid of polynomial
## ! patches. Patch could be of the type Linear, Quadratic,
## ! Cubic, Wilson-Fowler, Modified Wilson-Fowler, B-Spline
## ! The M * N grid of patches is defined by the 'u' break
## ! points TU(1), TU(2), ..., TU(M+1) and the 'v' break
## ! points TV(1), TV(2), TV(3) ..., TV(N+1).

type
  IGESGeomSplineSurface* {.importcpp: "IGESGeom_SplineSurface",
                          header: "IGESGeom_SplineSurface.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESGeomSplineSurface*(): IGESGeomSplineSurface {.constructor,
    importcpp: "IGESGeom_SplineSurface(@)", header: "IGESGeom_SplineSurface.hxx".}
proc init*(this: var IGESGeomSplineSurface; aBoundaryType: int; aPatchType: int;
          allUBreakpoints: Handle[TColStdHArray1OfReal];
          allVBreakpoints: Handle[TColStdHArray1OfReal];
          allXCoeffs: Handle[IGESBasicHArray2OfHArray1OfReal];
          allYCoeffs: Handle[IGESBasicHArray2OfHArray1OfReal];
          allZCoeffs: Handle[IGESBasicHArray2OfHArray1OfReal]) {.
    importcpp: "Init", header: "IGESGeom_SplineSurface.hxx".}
proc nbUSegments*(this: IGESGeomSplineSurface): int {.noSideEffect,
    importcpp: "NbUSegments", header: "IGESGeom_SplineSurface.hxx".}
proc nbVSegments*(this: IGESGeomSplineSurface): int {.noSideEffect,
    importcpp: "NbVSegments", header: "IGESGeom_SplineSurface.hxx".}
proc boundaryType*(this: IGESGeomSplineSurface): int {.noSideEffect,
    importcpp: "BoundaryType", header: "IGESGeom_SplineSurface.hxx".}
proc patchType*(this: IGESGeomSplineSurface): int {.noSideEffect,
    importcpp: "PatchType", header: "IGESGeom_SplineSurface.hxx".}
proc uBreakPoint*(this: IGESGeomSplineSurface; anIndex: int): float {.noSideEffect,
    importcpp: "UBreakPoint", header: "IGESGeom_SplineSurface.hxx".}
proc vBreakPoint*(this: IGESGeomSplineSurface; anIndex: int): float {.noSideEffect,
    importcpp: "VBreakPoint", header: "IGESGeom_SplineSurface.hxx".}
proc xPolynomial*(this: IGESGeomSplineSurface; anIndex1: int; anIndex2: int): Handle[
    TColStdHArray1OfReal] {.noSideEffect, importcpp: "XPolynomial",
                           header: "IGESGeom_SplineSurface.hxx".}
proc yPolynomial*(this: IGESGeomSplineSurface; anIndex1: int; anIndex2: int): Handle[
    TColStdHArray1OfReal] {.noSideEffect, importcpp: "YPolynomial",
                           header: "IGESGeom_SplineSurface.hxx".}
proc zPolynomial*(this: IGESGeomSplineSurface; anIndex1: int; anIndex2: int): Handle[
    TColStdHArray1OfReal] {.noSideEffect, importcpp: "ZPolynomial",
                           header: "IGESGeom_SplineSurface.hxx".}
proc polynomials*(this: IGESGeomSplineSurface;
                 xCoef: var Handle[IGESBasicHArray2OfHArray1OfReal];
                 yCoef: var Handle[IGESBasicHArray2OfHArray1OfReal];
                 zCoef: var Handle[IGESBasicHArray2OfHArray1OfReal]) {.
    noSideEffect, importcpp: "Polynomials", header: "IGESGeom_SplineSurface.hxx".}
type
  IGESGeomSplineSurfacebaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESGeom_SplineSurface::get_type_name(@)",
                            header: "IGESGeom_SplineSurface.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESGeom_SplineSurface::get_type_descriptor(@)",
    header: "IGESGeom_SplineSurface.hxx".}
proc dynamicType*(this: IGESGeomSplineSurface): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESGeom_SplineSurface.hxx".}
