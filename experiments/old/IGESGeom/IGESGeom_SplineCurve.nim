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
discard "forward decl of IGESGeom_SplineCurve"
discard "forward decl of IGESGeom_SplineCurve"
type
  HandleC1C1* = Handle[IGESGeomSplineCurve]

## ! Defines IGESSplineCurve, Type <112> Form <0>
## ! in package IGESGeom
## ! The parametric spline is a sequence of parametric
## ! polynomial segments. The curve could be of the type
## ! Linear, Quadratic, Cubic, Wilson-Fowler, Modified
## ! Wilson-Fowler, B-Spline. The N polynomial segments
## ! are delimited by the break points  T(1), T(2), T(3),
## ! ..., T(N+1).

type
  IGESGeomSplineCurve* {.importcpp: "IGESGeom_SplineCurve",
                        header: "IGESGeom_SplineCurve.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESGeomSplineCurve*(): IGESGeomSplineCurve {.constructor,
    importcpp: "IGESGeom_SplineCurve(@)", header: "IGESGeom_SplineCurve.hxx".}
proc init*(this: var IGESGeomSplineCurve; aType: cint; aDegree: cint;
          nbDimensions: cint; allBreakPoints: Handle[TColStdHArray1OfReal];
          allXPolynomials: Handle[TColStdHArray2OfReal];
          allYPolynomials: Handle[TColStdHArray2OfReal];
          allZPolynomials: Handle[TColStdHArray2OfReal];
          allXvalues: Handle[TColStdHArray1OfReal];
          allYvalues: Handle[TColStdHArray1OfReal];
          allZvalues: Handle[TColStdHArray1OfReal]) {.importcpp: "Init",
    header: "IGESGeom_SplineCurve.hxx".}
proc splineType*(this: IGESGeomSplineCurve): cint {.noSideEffect,
    importcpp: "SplineType", header: "IGESGeom_SplineCurve.hxx".}
proc degree*(this: IGESGeomSplineCurve): cint {.noSideEffect, importcpp: "Degree",
    header: "IGESGeom_SplineCurve.hxx".}
proc nbDimensions*(this: IGESGeomSplineCurve): cint {.noSideEffect,
    importcpp: "NbDimensions", header: "IGESGeom_SplineCurve.hxx".}
proc nbSegments*(this: IGESGeomSplineCurve): cint {.noSideEffect,
    importcpp: "NbSegments", header: "IGESGeom_SplineCurve.hxx".}
proc breakPoint*(this: IGESGeomSplineCurve; index: cint): cfloat {.noSideEffect,
    importcpp: "BreakPoint", header: "IGESGeom_SplineCurve.hxx".}
proc xCoordPolynomial*(this: IGESGeomSplineCurve; index: cint; ax: var cfloat;
                      bx: var cfloat; cx: var cfloat; dx: var cfloat) {.noSideEffect,
    importcpp: "XCoordPolynomial", header: "IGESGeom_SplineCurve.hxx".}
proc yCoordPolynomial*(this: IGESGeomSplineCurve; index: cint; ay: var cfloat;
                      by: var cfloat; cy: var cfloat; dy: var cfloat) {.noSideEffect,
    importcpp: "YCoordPolynomial", header: "IGESGeom_SplineCurve.hxx".}
proc zCoordPolynomial*(this: IGESGeomSplineCurve; index: cint; az: var cfloat;
                      bz: var cfloat; cz: var cfloat; dz: var cfloat) {.noSideEffect,
    importcpp: "ZCoordPolynomial", header: "IGESGeom_SplineCurve.hxx".}
proc xValues*(this: IGESGeomSplineCurve; tpx0: var cfloat; tpx1: var cfloat;
             tpx2: var cfloat; tpx3: var cfloat) {.noSideEffect, importcpp: "XValues",
    header: "IGESGeom_SplineCurve.hxx".}
proc yValues*(this: IGESGeomSplineCurve; tpy0: var cfloat; tpy1: var cfloat;
             tpy2: var cfloat; tpy3: var cfloat) {.noSideEffect, importcpp: "YValues",
    header: "IGESGeom_SplineCurve.hxx".}
proc zValues*(this: IGESGeomSplineCurve; tpz0: var cfloat; tpz1: var cfloat;
             tpz2: var cfloat; tpz3: var cfloat) {.noSideEffect, importcpp: "ZValues",
    header: "IGESGeom_SplineCurve.hxx".}
type
  IGESGeomSplineCurvebaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESGeom_SplineCurve::get_type_name(@)",
                            header: "IGESGeom_SplineCurve.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESGeom_SplineCurve::get_type_descriptor(@)",
    header: "IGESGeom_SplineCurve.hxx".}
proc dynamicType*(this: IGESGeomSplineCurve): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESGeom_SplineCurve.hxx".}

























