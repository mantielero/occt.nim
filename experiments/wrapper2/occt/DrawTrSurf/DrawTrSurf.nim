##  Created on: 1991-06-24
##  Created by: Christophe MARION
##  Copyright (c) 1991-1999 Matra Datavision
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

discard "forward decl of gp_Pnt"
discard "forward decl of gp_Pnt2d"
discard "forward decl of Poly_Triangulation"
discard "forward decl of Poly_Polygon3D"
discard "forward decl of Poly_Polygon2D"
discard "forward decl of Geom_Curve"
discard "forward decl of Geom_BezierCurve"
discard "forward decl of Geom_BSplineCurve"
discard "forward decl of Geom2d_BezierCurve"
discard "forward decl of Geom2d_BSplineCurve"
discard "forward decl of Geom_BezierSurface"
discard "forward decl of Geom_BSplineSurface"
discard "forward decl of DrawTrSurf_Drawable"
discard "forward decl of DrawTrSurf_Point"
discard "forward decl of DrawTrSurf_Curve"
discard "forward decl of DrawTrSurf_BSplineCurve"
discard "forward decl of DrawTrSurf_BezierCurve"
discard "forward decl of DrawTrSurf_Curve2d"
discard "forward decl of DrawTrSurf_BSplineCurve2d"
discard "forward decl of DrawTrSurf_BezierCurve2d"
discard "forward decl of DrawTrSurf_Triangulation2D"
discard "forward decl of DrawTrSurf_Surface"
discard "forward decl of DrawTrSurf_BSplineSurface"
discard "forward decl of DrawTrSurf_BezierSurface"
discard "forward decl of DrawTrSurf_Triangulation"
discard "forward decl of DrawTrSurf_Polygon3D"
discard "forward decl of DrawTrSurf_Polygon2D"
type
  DrawTrSurf* {.importcpp: "DrawTrSurf", header: "DrawTrSurf.hxx", bycopy.} = object ## !
                                                                             ## Sets <G> in the
                                                                             ## variable
                                                                             ## <Name>.
                                                                             ## Overwrite the
                                                                             ## !
                                                                             ## variable if
                                                                             ## already
                                                                             ## set.


proc set*(name: StandardCString; g: Pnt) {.importcpp: "DrawTrSurf::Set(@)",
                                      header: "DrawTrSurf.hxx".}
proc set*(name: StandardCString; g: Pnt2d) {.importcpp: "DrawTrSurf::Set(@)",
                                        header: "DrawTrSurf.hxx".}
proc set*(name: StandardCString; g: Handle[GeomGeometry]; isSenseMarker: bool = true) {.
    importcpp: "DrawTrSurf::Set(@)", header: "DrawTrSurf.hxx".}
## !!!Ignored construct:  template < class T > [end of template] static void Set ( const Standard_CString Name , const opencascade :: handle < T > [end of template] & Arg , typename opencascade :: std :: enable_if < opencascade :: std :: is_base_of < Geom_Geometry , T > :: value > :: type * = 0 ) { Set ( Name , ( const opencascade :: handle < Geom_Geometry > [end of template] & ) Arg ) ; } ! Sets <C> in the variable <Name>.  Overwrite the
## ! variable if already set.
## ! isSenseMarker indicates whether to render the
## ! sense glyph (arrow) for curves or not static void Set ( const Standard_CString Name , const opencascade :: handle < Geom2d_Curve > [end of template] & C , const Standard_Boolean isSenseMarker = Standard_True ) ;
## Error: token expected: ) but got: ::!!!

## !!!Ignored construct:  template < class T > [end of template] static void Set ( const Standard_CString Name , const opencascade :: handle < T > [end of template] & Arg , typename opencascade :: std :: enable_if < opencascade :: std :: is_base_of < Geom2d_Curve , T > :: value > :: type * = 0 ) { Set ( Name , ( const opencascade :: handle < Geom2d_Curve > [end of template] & ) Arg ) ; } ! Sets <T> in the variable <Name>.  Overwrite the
## ! variable if already set. static void Set ( const Standard_CString Name , const opencascade :: handle < Poly_Triangulation > [end of template] & T ) ;
## Error: token expected: ) but got: ::!!!

proc set*(name: StandardCString; p: Handle[PolyPolygon3D]) {.
    importcpp: "DrawTrSurf::Set(@)", header: "DrawTrSurf.hxx".}
proc set*(name: StandardCString; p: Handle[PolyPolygon2D]) {.
    importcpp: "DrawTrSurf::Set(@)", header: "DrawTrSurf.hxx".}
proc get*(name: var StandardCString): Handle[GeomGeometry] {.
    importcpp: "DrawTrSurf::Get(@)", header: "DrawTrSurf.hxx".}
proc getPoint*(name: var StandardCString; p: var Pnt): bool {.
    importcpp: "DrawTrSurf::GetPoint(@)", header: "DrawTrSurf.hxx".}
proc getPoint2d*(name: var StandardCString; p: var Pnt2d): bool {.
    importcpp: "DrawTrSurf::GetPoint2d(@)", header: "DrawTrSurf.hxx".}
proc getCurve*(name: var StandardCString): Handle[GeomCurve] {.
    importcpp: "DrawTrSurf::GetCurve(@)", header: "DrawTrSurf.hxx".}
proc getBezierCurve*(name: var StandardCString): Handle[GeomBezierCurve] {.
    importcpp: "DrawTrSurf::GetBezierCurve(@)", header: "DrawTrSurf.hxx".}
proc getBSplineCurve*(name: var StandardCString): Handle[GeomBSplineCurve] {.
    importcpp: "DrawTrSurf::GetBSplineCurve(@)", header: "DrawTrSurf.hxx".}
proc getCurve2d*(name: var StandardCString): Handle[Geom2dCurve] {.
    importcpp: "DrawTrSurf::GetCurve2d(@)", header: "DrawTrSurf.hxx".}
proc getBezierCurve2d*(name: var StandardCString): Handle[Geom2dBezierCurve] {.
    importcpp: "DrawTrSurf::GetBezierCurve2d(@)", header: "DrawTrSurf.hxx".}
proc getBSplineCurve2d*(name: var StandardCString): Handle[Geom2dBSplineCurve] {.
    importcpp: "DrawTrSurf::GetBSplineCurve2d(@)", header: "DrawTrSurf.hxx".}
proc getSurface*(name: var StandardCString): Handle[GeomSurface] {.
    importcpp: "DrawTrSurf::GetSurface(@)", header: "DrawTrSurf.hxx".}
proc getBezierSurface*(name: var StandardCString): Handle[GeomBezierSurface] {.
    importcpp: "DrawTrSurf::GetBezierSurface(@)", header: "DrawTrSurf.hxx".}
proc getBSplineSurface*(name: var StandardCString): Handle[GeomBSplineSurface] {.
    importcpp: "DrawTrSurf::GetBSplineSurface(@)", header: "DrawTrSurf.hxx".}
proc getTriangulation*(name: var StandardCString): Handle[PolyTriangulation] {.
    importcpp: "DrawTrSurf::GetTriangulation(@)", header: "DrawTrSurf.hxx".}
proc getPolygon3D*(name: var StandardCString): Handle[PolyPolygon3D] {.
    importcpp: "DrawTrSurf::GetPolygon3D(@)", header: "DrawTrSurf.hxx".}
proc getPolygon2D*(name: var StandardCString): Handle[PolyPolygon2D] {.
    importcpp: "DrawTrSurf::GetPolygon2D(@)", header: "DrawTrSurf.hxx".}
proc basicCommands*(i: var DrawInterpretor) {.
    importcpp: "DrawTrSurf::BasicCommands(@)", header: "DrawTrSurf.hxx".}
