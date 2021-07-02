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

discard "forward decl of Poly_PolygonOnTriangulation"
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


proc constructPolyPolygonOnTriangulation*(theNbNodes: StandardInteger;
    theHasParams: StandardBoolean): PolyPolygonOnTriangulation {.constructor,
    importcpp: "Poly_PolygonOnTriangulation(@)",
    header: "Poly_PolygonOnTriangulation.hxx".}
proc constructPolyPolygonOnTriangulation*(nodes: TColStdArray1OfInteger): PolyPolygonOnTriangulation {.
    constructor, importcpp: "Poly_PolygonOnTriangulation(@)",
    header: "Poly_PolygonOnTriangulation.hxx".}
proc constructPolyPolygonOnTriangulation*(nodes: TColStdArray1OfInteger;
    parameters: TColStdArray1OfReal): PolyPolygonOnTriangulation {.constructor,
    importcpp: "Poly_PolygonOnTriangulation(@)",
    header: "Poly_PolygonOnTriangulation.hxx".}
proc copy*(this: PolyPolygonOnTriangulation): Handle[PolyPolygonOnTriangulation] {.
    noSideEffect, importcpp: "Copy", header: "Poly_PolygonOnTriangulation.hxx".}
proc deflection*(this: PolyPolygonOnTriangulation): StandardReal {.noSideEffect,
    importcpp: "Deflection", header: "Poly_PolygonOnTriangulation.hxx".}
proc deflection*(this: var PolyPolygonOnTriangulation; theDefl: StandardReal) {.
    importcpp: "Deflection", header: "Poly_PolygonOnTriangulation.hxx".}
proc nbNodes*(this: PolyPolygonOnTriangulation): StandardInteger {.noSideEffect,
    importcpp: "NbNodes", header: "Poly_PolygonOnTriangulation.hxx".}
proc nodes*(this: PolyPolygonOnTriangulation): TColStdArray1OfInteger {.
    noSideEffect, importcpp: "Nodes", header: "Poly_PolygonOnTriangulation.hxx".}
proc changeNodes*(this: var PolyPolygonOnTriangulation): var TColStdArray1OfInteger {.
    importcpp: "ChangeNodes", header: "Poly_PolygonOnTriangulation.hxx".}
proc hasParameters*(this: PolyPolygonOnTriangulation): StandardBoolean {.
    noSideEffect, importcpp: "HasParameters",
    header: "Poly_PolygonOnTriangulation.hxx".}
proc parameters*(this: PolyPolygonOnTriangulation): Handle[TColStdHArray1OfReal] {.
    noSideEffect, importcpp: "Parameters",
    header: "Poly_PolygonOnTriangulation.hxx".}
proc changeParameters*(this: var PolyPolygonOnTriangulation): var TColStdArray1OfReal {.
    importcpp: "ChangeParameters", header: "Poly_PolygonOnTriangulation.hxx".}
proc setParameters*(this: var PolyPolygonOnTriangulation;
                   theParameters: Handle[TColStdHArray1OfReal]) {.
    importcpp: "SetParameters", header: "Poly_PolygonOnTriangulation.hxx".}
proc dumpJson*(this: PolyPolygonOnTriangulation; theOStream: var StandardOStream;
              theDepth: StandardInteger = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Poly_PolygonOnTriangulation.hxx".}
type
  PolyPolygonOnTriangulationbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Poly_PolygonOnTriangulation::get_type_name(@)",
                            header: "Poly_PolygonOnTriangulation.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Poly_PolygonOnTriangulation::get_type_descriptor(@)",
    header: "Poly_PolygonOnTriangulation.hxx".}
proc dynamicType*(this: PolyPolygonOnTriangulation): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "Poly_PolygonOnTriangulation.hxx".}

