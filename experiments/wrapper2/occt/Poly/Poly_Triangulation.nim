##  Created on: 1995-03-06
##  Created by: Laurent PAINNOT
##  Copyright (c) 1995-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_DefineHandle,
  ../Standard/Standard_Real, ../Standard/Standard_Integer,
  ../TColgp/TColgp_Array1OfPnt, ../TColgp/TColgp_HArray1OfPnt2d,
  Poly_Array1OfTriangle, ../TShort/TShort_HArray1OfShortReal,
  ../Standard/Standard_Transient, ../Standard/Standard_Boolean,
  ../TColgp/TColgp_Array1OfPnt2d, ../TShort/TShort_Array1OfShortReal

discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_NullObject"
discard "forward decl of Poly_Triangulation"
discard "forward decl of Poly_Triangulation"
type
  Handle_Poly_Triangulation* = handle[Poly_Triangulation]

## ! Provides a triangulation for a surface, a set of surfaces, or
## ! more generally a shape.
## ! A triangulation consists of an approximate representation
## ! of the actual shape, using a collection of points and
## ! triangles. The points are located on the surface. The
## ! edges of the triangles connect adjacent points with a
## ! straight line that approximates the true curve on the surface.
## ! A triangulation comprises:
## ! -   A table of 3D nodes (3D points on the surface).
## ! -   A table of triangles. Each triangle (Poly_Triangle
## ! object) comprises a triplet of indices in the table of 3D
## ! nodes specific to the triangulation.
## ! -   A table of 2D nodes (2D points), parallel to the table of
## ! 3D nodes. This table is optional. If it exists, the
## ! coordinates of a 2D point are the (u, v) parameters
## ! of the corresponding 3D point on the surface
## ! approximated by the triangulation.
## ! -   A deflection (optional), which maximizes the distance
## ! from a point on the surface to the corresponding point
## ! on its approximate triangulation.
## ! In many cases, algorithms do not need to work with the
## ! exact representation of a surface. A triangular
## ! representation induces simpler and more robust adjusting,
## ! faster performances, and the results are as good.
## ! This is a Transient class.

type
  Poly_Triangulation* {.importcpp: "Poly_Triangulation",
                       header: "Poly_Triangulation.hxx", bycopy.} = object of Standard_Transient

  Poly_Triangulationbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Poly_Triangulation::get_type_name(@)",
                              header: "Poly_Triangulation.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Poly_Triangulation::get_type_descriptor(@)",
    header: "Poly_Triangulation.hxx".}
proc DynamicType*(this: Poly_Triangulation): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Poly_Triangulation.hxx".}
proc constructPoly_Triangulation*(nbNodes: Standard_Integer;
                                 nbTriangles: Standard_Integer;
                                 UVNodes: Standard_Boolean): Poly_Triangulation {.
    constructor, importcpp: "Poly_Triangulation(@)",
    header: "Poly_Triangulation.hxx".}
proc constructPoly_Triangulation*(Nodes: TColgp_Array1OfPnt;
                                 Triangles: Poly_Array1OfTriangle): Poly_Triangulation {.
    constructor, importcpp: "Poly_Triangulation(@)",
    header: "Poly_Triangulation.hxx".}
proc constructPoly_Triangulation*(Nodes: TColgp_Array1OfPnt;
                                 UVNodes: TColgp_Array1OfPnt2d;
                                 Triangles: Poly_Array1OfTriangle): Poly_Triangulation {.
    constructor, importcpp: "Poly_Triangulation(@)",
    header: "Poly_Triangulation.hxx".}
proc Copy*(this: Poly_Triangulation): handle[Poly_Triangulation] {.noSideEffect,
    importcpp: "Copy", header: "Poly_Triangulation.hxx".}
proc constructPoly_Triangulation*(theTriangulation: handle[Poly_Triangulation]): Poly_Triangulation {.
    constructor, importcpp: "Poly_Triangulation(@)",
    header: "Poly_Triangulation.hxx".}
proc Deflection*(this: Poly_Triangulation): Standard_Real {.noSideEffect,
    importcpp: "Deflection", header: "Poly_Triangulation.hxx".}
proc Deflection*(this: var Poly_Triangulation; theDeflection: Standard_Real) {.
    importcpp: "Deflection", header: "Poly_Triangulation.hxx".}
proc RemoveUVNodes*(this: var Poly_Triangulation) {.importcpp: "RemoveUVNodes",
    header: "Poly_Triangulation.hxx".}
proc NbNodes*(this: Poly_Triangulation): Standard_Integer {.noSideEffect,
    importcpp: "NbNodes", header: "Poly_Triangulation.hxx".}
proc NbTriangles*(this: Poly_Triangulation): Standard_Integer {.noSideEffect,
    importcpp: "NbTriangles", header: "Poly_Triangulation.hxx".}
proc HasUVNodes*(this: Poly_Triangulation): Standard_Boolean {.noSideEffect,
    importcpp: "HasUVNodes", header: "Poly_Triangulation.hxx".}
proc Nodes*(this: Poly_Triangulation): TColgp_Array1OfPnt {.noSideEffect,
    importcpp: "Nodes", header: "Poly_Triangulation.hxx".}
proc ChangeNodes*(this: var Poly_Triangulation): var TColgp_Array1OfPnt {.
    importcpp: "ChangeNodes", header: "Poly_Triangulation.hxx".}
proc Node*(this: Poly_Triangulation; theIndex: Standard_Integer): gp_Pnt {.
    noSideEffect, importcpp: "Node", header: "Poly_Triangulation.hxx".}
proc ChangeNode*(this: var Poly_Triangulation; theIndex: Standard_Integer): var gp_Pnt {.
    importcpp: "ChangeNode", header: "Poly_Triangulation.hxx".}
proc UVNodes*(this: Poly_Triangulation): TColgp_Array1OfPnt2d {.noSideEffect,
    importcpp: "UVNodes", header: "Poly_Triangulation.hxx".}
proc ChangeUVNodes*(this: var Poly_Triangulation): var TColgp_Array1OfPnt2d {.
    importcpp: "ChangeUVNodes", header: "Poly_Triangulation.hxx".}
proc UVNode*(this: Poly_Triangulation; theIndex: Standard_Integer): gp_Pnt2d {.
    noSideEffect, importcpp: "UVNode", header: "Poly_Triangulation.hxx".}
proc ChangeUVNode*(this: var Poly_Triangulation; theIndex: Standard_Integer): var gp_Pnt2d {.
    importcpp: "ChangeUVNode", header: "Poly_Triangulation.hxx".}
proc Triangles*(this: Poly_Triangulation): Poly_Array1OfTriangle {.noSideEffect,
    importcpp: "Triangles", header: "Poly_Triangulation.hxx".}
proc ChangeTriangles*(this: var Poly_Triangulation): var Poly_Array1OfTriangle {.
    importcpp: "ChangeTriangles", header: "Poly_Triangulation.hxx".}
proc Triangle*(this: Poly_Triangulation; theIndex: Standard_Integer): Poly_Triangle {.
    noSideEffect, importcpp: "Triangle", header: "Poly_Triangulation.hxx".}
proc ChangeTriangle*(this: var Poly_Triangulation; theIndex: Standard_Integer): var Poly_Triangle {.
    importcpp: "ChangeTriangle", header: "Poly_Triangulation.hxx".}
proc SetNormals*(this: var Poly_Triangulation;
                theNormals: handle[TShort_HArray1OfShortReal]) {.
    importcpp: "SetNormals", header: "Poly_Triangulation.hxx".}
proc Normals*(this: Poly_Triangulation): TShort_Array1OfShortReal {.noSideEffect,
    importcpp: "Normals", header: "Poly_Triangulation.hxx".}
proc ChangeNormals*(this: var Poly_Triangulation): var TShort_Array1OfShortReal {.
    importcpp: "ChangeNormals", header: "Poly_Triangulation.hxx".}
proc HasNormals*(this: Poly_Triangulation): Standard_Boolean {.noSideEffect,
    importcpp: "HasNormals", header: "Poly_Triangulation.hxx".}
proc Normal*(this: Poly_Triangulation; theIndex: Standard_Integer): gp_Dir {.
    noSideEffect, importcpp: "Normal", header: "Poly_Triangulation.hxx".}
proc SetNormal*(this: var Poly_Triangulation; theIndex: Standard_Integer;
               theNormal: gp_Dir) {.importcpp: "SetNormal",
                                  header: "Poly_Triangulation.hxx".}
proc DumpJson*(this: Poly_Triangulation; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Poly_Triangulation.hxx".}