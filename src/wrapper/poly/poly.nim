import poly_types
import ../standard/standard_types
import ../gp/gp_types
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


proc catenate*(lstTri: PolyListOfTriangulation): Handle[PolyTriangulation] {.cdecl,
    importcpp: "Poly::Catenate(@)", header: "Poly.hxx".}
proc write*(t: Handle[PolyTriangulation]; os: var StandardOStream;
           compact: bool = true) {.cdecl, importcpp: "Poly::Write(@)", header: "Poly.hxx".}
proc write*(p: Handle[PolyPolygon3D]; os: var StandardOStream; compact: bool = true) {.
    cdecl, importcpp: "Poly::Write(@)", header: "Poly.hxx".}
proc write*(p: Handle[PolyPolygon2D]; os: var StandardOStream; compact: bool = true) {.
    cdecl, importcpp: "Poly::Write(@)", header: "Poly.hxx".}
proc dump*(t: Handle[PolyTriangulation]; os: var StandardOStream) {.cdecl,
    importcpp: "Poly::Dump(@)", header: "Poly.hxx".}
proc dump*(p: Handle[PolyPolygon3D]; os: var StandardOStream) {.cdecl,
    importcpp: "Poly::Dump(@)", header: "Poly.hxx".}
proc dump*(p: Handle[PolyPolygon2D]; os: var StandardOStream) {.cdecl,
    importcpp: "Poly::Dump(@)", header: "Poly.hxx".}
proc readTriangulation*(`is`: var StandardIStream): Handle[PolyTriangulation] {.
    cdecl, importcpp: "Poly::ReadTriangulation(@)", header: "Poly.hxx".}
proc readPolygon3D*(`is`: var StandardIStream): Handle[PolyPolygon3D] {.cdecl,
    importcpp: "Poly::ReadPolygon3D(@)", header: "Poly.hxx".}
proc readPolygon2D*(`is`: var StandardIStream): Handle[PolyPolygon2D] {.cdecl,
    importcpp: "Poly::ReadPolygon2D(@)", header: "Poly.hxx".}
proc computeNormals*(tri: Handle[PolyTriangulation]) {.cdecl,
    importcpp: "Poly::ComputeNormals(@)", header: "Poly.hxx".}
proc pointOnTriangle*(p1: XyObj; p2: XyObj; p3: XyObj; p: XyObj; uv: var XyObj): cfloat {.cdecl,
    importcpp: "Poly::PointOnTriangle(@)", header: "Poly.hxx".}
proc polygonProperties*[TypeSequencePnts](theSeqPnts: TypeSequencePnts;
    theArea: var cfloat; thePerimeter: var cfloat): bool {.cdecl,
    importcpp: "Poly::PolygonProperties(@)", header: "Poly.hxx".}
