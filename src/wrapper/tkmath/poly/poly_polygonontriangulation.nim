##  Created on: 1996-02-21
##  Created by: Laurent PAINNOT
##  Copyright (c) 1996-1999 Matra Datavision
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

type
  HandlePolyPolygonOnTriangulation* = Handle[PolyPolygonOnTriangulation]

## ! This class provides a polygon in 3D space, based on the triangulation
## ! of a surface. It may be the approximate representation of a
## ! curve on the surface, or more generally the shape.
## ! A PolygonOnTriangulation is defined by a table of
## ! nodes. Each node is an index in the table of nodes specific
## ! to a triangulation, and represents a point on the surface. If
## ! the polygon is closed, the index of the point of closure is
## ! repeated at the end of the table of nodes.
## ! If the polygon is an approximate representation of a curve
## ! on a surface, you can associate with each of its nodes the
## ! value of the parameter of the corresponding point on the
## ! curve.represents a 3d Polygon

type
  PolyPolygonOnTriangulation* {.importcpp: "Poly_PolygonOnTriangulation",
                               header: "Poly_PolygonOnTriangulation.hxx", bycopy.} = object of StandardTransient ##
                                                                                                          ## !
                                                                                                          ## Constructs
                                                                                                          ## a
                                                                                                          ## 3D
                                                                                                          ## polygon
                                                                                                          ## on
                                                                                                          ## the
                                                                                                          ## triangulation
                                                                                                          ## of
                                                                                                          ## a
                                                                                                          ## shape
                                                                                                          ## with
                                                                                                          ## specified
                                                                                                          ## size
                                                                                                          ## of
                                                                                                          ## nodes.


proc newPolyPolygonOnTriangulation*(theNbNodes: cint; theHasParams: bool): PolyPolygonOnTriangulation {.
    cdecl, constructor, importcpp: "Poly_PolygonOnTriangulation(@)", dynlib: tkmath.}
proc newPolyPolygonOnTriangulation*(nodes: TColStdArray1OfInteger): PolyPolygonOnTriangulation {.
    cdecl, constructor, importcpp: "Poly_PolygonOnTriangulation(@)", dynlib: tkmath.}
proc newPolyPolygonOnTriangulation*(nodes: TColStdArray1OfInteger;
                                   parameters: TColStdArray1OfReal): PolyPolygonOnTriangulation {.
    cdecl, constructor, importcpp: "Poly_PolygonOnTriangulation(@)", dynlib: tkmath.}
proc copy*(this: PolyPolygonOnTriangulation): Handle[PolyPolygonOnTriangulation] {.
    noSideEffect, cdecl, importcpp: "Copy", dynlib: tkmath.}
proc deflection*(this: PolyPolygonOnTriangulation): cfloat {.noSideEffect, cdecl,
    importcpp: "Deflection", dynlib: tkmath.}
proc deflection*(this: var PolyPolygonOnTriangulation; theDefl: cfloat) {.cdecl,
    importcpp: "Deflection", dynlib: tkmath.}
proc nbNodes*(this: PolyPolygonOnTriangulation): cint {.noSideEffect, cdecl,
    importcpp: "NbNodes", dynlib: tkmath.}
proc nodes*(this: PolyPolygonOnTriangulation): TColStdArray1OfInteger {.
    noSideEffect, cdecl, importcpp: "Nodes", dynlib: tkmath.}
proc changeNodes*(this: var PolyPolygonOnTriangulation): var TColStdArray1OfInteger {.
    cdecl, importcpp: "ChangeNodes", dynlib: tkmath.}
proc hasParameters*(this: PolyPolygonOnTriangulation): bool {.noSideEffect, cdecl,
    importcpp: "HasParameters", dynlib: tkmath.}
proc parameters*(this: PolyPolygonOnTriangulation): Handle[TColStdHArray1OfReal] {.
    noSideEffect, cdecl, importcpp: "Parameters", dynlib: tkmath.}
proc changeParameters*(this: var PolyPolygonOnTriangulation): var TColStdArray1OfReal {.
    cdecl, importcpp: "ChangeParameters", dynlib: tkmath.}
proc setParameters*(this: var PolyPolygonOnTriangulation;
                   theParameters: Handle[TColStdHArray1OfReal]) {.cdecl,
    importcpp: "SetParameters", dynlib: tkmath.}
proc dumpJson*(this: PolyPolygonOnTriangulation; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 dynlib: tkmath.}