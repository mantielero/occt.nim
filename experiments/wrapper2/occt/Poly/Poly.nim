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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, Poly_ListOfTriangulation,
  ../Standard/Standard_OStream, ../Standard/Standard_Boolean,
  ../Standard/Standard_IStream, ../Standard/Standard_Real,
  ../TColgp/TColgp_SequenceOfPnt2d

discard "forward decl of Poly_Triangulation"
discard "forward decl of Poly_Polygon3D"
discard "forward decl of Poly_Polygon2D"
discard "forward decl of gp_XY"
discard "forward decl of Poly_Triangle"
discard "forward decl of Poly_Triangulation"
discard "forward decl of Poly_Polygon3D"
discard "forward decl of Poly_Polygon2D"
discard "forward decl of Poly_PolygonOnTriangulation"
discard "forward decl of Poly_Connect"
type
  Poly* {.importcpp: "Poly", header: "Poly.hxx", bycopy.} = object ## ! Computes and  stores  the    link from   nodes  to
                                                           ## ! triangles     and from triangles to   neighbouring
                                                           ## ! triangles.
                                                           ## ! This tool is obsolete, replaced by
                                                           ## Poly_CoherentTriangulation
                                                           ## ! Algorithm to make minimal loops in a graph
                                                           ## ! Join several triangulations to one new triangulation object.
                                                           ## ! The new triangulation is just a mechanical sum of input
                                                           ## ! triangulations, without node sharing. UV coordinates are
                                                           ## ! dropped in the result.


proc Catenate*(lstTri: Poly_ListOfTriangulation): handle[Poly_Triangulation] {.
    importcpp: "Poly::Catenate(@)", header: "Poly.hxx".}
proc Write*(T: handle[Poly_Triangulation]; OS: var Standard_OStream;
           Compact: Standard_Boolean = Standard_True) {.importcpp: "Poly::Write(@)",
    header: "Poly.hxx".}
proc Write*(P: handle[Poly_Polygon3D]; OS: var Standard_OStream;
           Compact: Standard_Boolean = Standard_True) {.importcpp: "Poly::Write(@)",
    header: "Poly.hxx".}
proc Write*(P: handle[Poly_Polygon2D]; OS: var Standard_OStream;
           Compact: Standard_Boolean = Standard_True) {.importcpp: "Poly::Write(@)",
    header: "Poly.hxx".}
proc Dump*(T: handle[Poly_Triangulation]; OS: var Standard_OStream) {.
    importcpp: "Poly::Dump(@)", header: "Poly.hxx".}
proc Dump*(P: handle[Poly_Polygon3D]; OS: var Standard_OStream) {.
    importcpp: "Poly::Dump(@)", header: "Poly.hxx".}
proc Dump*(P: handle[Poly_Polygon2D]; OS: var Standard_OStream) {.
    importcpp: "Poly::Dump(@)", header: "Poly.hxx".}
proc ReadTriangulation*(IS: var Standard_IStream): handle[Poly_Triangulation] {.
    importcpp: "Poly::ReadTriangulation(@)", header: "Poly.hxx".}
proc ReadPolygon3D*(IS: var Standard_IStream): handle[Poly_Polygon3D] {.
    importcpp: "Poly::ReadPolygon3D(@)", header: "Poly.hxx".}
proc ReadPolygon2D*(IS: var Standard_IStream): handle[Poly_Polygon2D] {.
    importcpp: "Poly::ReadPolygon2D(@)", header: "Poly.hxx".}
proc ComputeNormals*(Tri: handle[Poly_Triangulation]) {.
    importcpp: "Poly::ComputeNormals(@)", header: "Poly.hxx".}
proc PointOnTriangle*(P1: gp_XY; P2: gp_XY; P3: gp_XY; P: gp_XY; UV: var gp_XY): Standard_Real {.
    importcpp: "Poly::PointOnTriangle(@)", header: "Poly.hxx".}
proc PolygonProperties*[TypeSequencePnts](theSeqPnts: TypeSequencePnts;
    theArea: var Standard_Real; thePerimeter: var Standard_Real): Standard_Boolean {.
    importcpp: "Poly::PolygonProperties(@)", header: "Poly.hxx".}