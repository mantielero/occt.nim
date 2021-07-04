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

import
  ../Standard/Standard_Type, ../Standard/Standard_Transient,
  ../TColStd/TColStd_Array1OfInteger, ../TColStd/TColStd_Array1OfReal,
  ../TColStd/TColStd_HArray1OfReal

discard "forward decl of Poly_PolygonOnTriangulation"
type
  Handle_Poly_PolygonOnTriangulation* = handle[Poly_PolygonOnTriangulation]

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
  Poly_PolygonOnTriangulation* {.importcpp: "Poly_PolygonOnTriangulation",
                                header: "Poly_PolygonOnTriangulation.hxx", bycopy.} = object of Standard_Transient ##
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


proc constructPoly_PolygonOnTriangulation*(theNbNodes: Standard_Integer;
    theHasParams: Standard_Boolean): Poly_PolygonOnTriangulation {.constructor,
    importcpp: "Poly_PolygonOnTriangulation(@)",
    header: "Poly_PolygonOnTriangulation.hxx".}
proc constructPoly_PolygonOnTriangulation*(Nodes: TColStd_Array1OfInteger): Poly_PolygonOnTriangulation {.
    constructor, importcpp: "Poly_PolygonOnTriangulation(@)",
    header: "Poly_PolygonOnTriangulation.hxx".}
proc constructPoly_PolygonOnTriangulation*(Nodes: TColStd_Array1OfInteger;
    Parameters: TColStd_Array1OfReal): Poly_PolygonOnTriangulation {.constructor,
    importcpp: "Poly_PolygonOnTriangulation(@)",
    header: "Poly_PolygonOnTriangulation.hxx".}
proc Copy*(this: Poly_PolygonOnTriangulation): handle[Poly_PolygonOnTriangulation] {.
    noSideEffect, importcpp: "Copy", header: "Poly_PolygonOnTriangulation.hxx".}
proc Deflection*(this: Poly_PolygonOnTriangulation): Standard_Real {.noSideEffect,
    importcpp: "Deflection", header: "Poly_PolygonOnTriangulation.hxx".}
proc Deflection*(this: var Poly_PolygonOnTriangulation; theDefl: Standard_Real) {.
    importcpp: "Deflection", header: "Poly_PolygonOnTriangulation.hxx".}
proc NbNodes*(this: Poly_PolygonOnTriangulation): Standard_Integer {.noSideEffect,
    importcpp: "NbNodes", header: "Poly_PolygonOnTriangulation.hxx".}
proc Nodes*(this: Poly_PolygonOnTriangulation): TColStd_Array1OfInteger {.
    noSideEffect, importcpp: "Nodes", header: "Poly_PolygonOnTriangulation.hxx".}
proc ChangeNodes*(this: var Poly_PolygonOnTriangulation): var TColStd_Array1OfInteger {.
    importcpp: "ChangeNodes", header: "Poly_PolygonOnTriangulation.hxx".}
proc HasParameters*(this: Poly_PolygonOnTriangulation): Standard_Boolean {.
    noSideEffect, importcpp: "HasParameters",
    header: "Poly_PolygonOnTriangulation.hxx".}
proc Parameters*(this: Poly_PolygonOnTriangulation): handle[TColStd_HArray1OfReal] {.
    noSideEffect, importcpp: "Parameters",
    header: "Poly_PolygonOnTriangulation.hxx".}
proc ChangeParameters*(this: var Poly_PolygonOnTriangulation): var TColStd_Array1OfReal {.
    importcpp: "ChangeParameters", header: "Poly_PolygonOnTriangulation.hxx".}
proc SetParameters*(this: var Poly_PolygonOnTriangulation;
                   theParameters: handle[TColStd_HArray1OfReal]) {.
    importcpp: "SetParameters", header: "Poly_PolygonOnTriangulation.hxx".}
proc DumpJson*(this: Poly_PolygonOnTriangulation; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Poly_PolygonOnTriangulation.hxx".}
type
  Poly_PolygonOnTriangulationbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Poly_PolygonOnTriangulation::get_type_name(@)",
                              header: "Poly_PolygonOnTriangulation.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Poly_PolygonOnTriangulation::get_type_descriptor(@)",
    header: "Poly_PolygonOnTriangulation.hxx".}
proc DynamicType*(this: Poly_PolygonOnTriangulation): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "Poly_PolygonOnTriangulation.hxx".}