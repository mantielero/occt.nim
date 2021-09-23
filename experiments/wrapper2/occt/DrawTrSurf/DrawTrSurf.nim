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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Draw/Draw_Interpretor, ../Geom/Geom_Geometry,
  ../Geom/Geom_Surface, ../Geom2d/Geom2d_Curve

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


proc Set*(Name: Standard_CString; G: gp_Pnt) {.importcpp: "DrawTrSurf::Set(@)",
    header: "DrawTrSurf.hxx".}
proc Set*(Name: Standard_CString; G: gp_Pnt2d) {.importcpp: "DrawTrSurf::Set(@)",
    header: "DrawTrSurf.hxx".}
proc Set*(Name: Standard_CString; G: handle[Geom_Geometry];
         isSenseMarker: Standard_Boolean = Standard_True) {.
    importcpp: "DrawTrSurf::Set(@)", header: "DrawTrSurf.hxx".}
## !!!Ignored construct:  template < class T > [end of template] static void Set ( const Standard_CString Name , const opencascade :: handle < T > [end of template] & Arg , typename opencascade :: std :: enable_if < opencascade :: std :: is_base_of < Geom_Geometry , T > :: value > :: type * = 0 ) { Set ( Name , ( const opencascade :: handle < Geom_Geometry > [end of template] & ) Arg ) ; } ! Sets <C> in the variable <Name>.  Overwrite the
## ! variable if already set.
## ! isSenseMarker indicates whether to render the
## ! sense glyph (arrow) for curves or not static void Set ( const Standard_CString Name , const opencascade :: handle < Geom2d_Curve > [end of template] & C , const Standard_Boolean isSenseMarker = Standard_True ) ;
## Error: token expected: ) but got: ::!!!

## !!!Ignored construct:  template < class T > [end of template] static void Set ( const Standard_CString Name , const opencascade :: handle < T > [end of template] & Arg , typename opencascade :: std :: enable_if < opencascade :: std :: is_base_of < Geom2d_Curve , T > :: value > :: type * = 0 ) { Set ( Name , ( const opencascade :: handle < Geom2d_Curve > [end of template] & ) Arg ) ; } ! Sets <T> in the variable <Name>.  Overwrite the
## ! variable if already set. static void Set ( const Standard_CString Name , const opencascade :: handle < Poly_Triangulation > [end of template] & T ) ;
## Error: token expected: ) but got: ::!!!

proc Set*(Name: Standard_CString; P: handle[Poly_Polygon3D]) {.
    importcpp: "DrawTrSurf::Set(@)", header: "DrawTrSurf.hxx".}
proc Set*(Name: Standard_CString; P: handle[Poly_Polygon2D]) {.
    importcpp: "DrawTrSurf::Set(@)", header: "DrawTrSurf.hxx".}
proc Get*(Name: var Standard_CString): handle[Geom_Geometry] {.
    importcpp: "DrawTrSurf::Get(@)", header: "DrawTrSurf.hxx".}
proc GetPoint*(Name: var Standard_CString; P: var gp_Pnt): Standard_Boolean {.
    importcpp: "DrawTrSurf::GetPoint(@)", header: "DrawTrSurf.hxx".}
proc GetPoint2d*(Name: var Standard_CString; P: var gp_Pnt2d): Standard_Boolean {.
    importcpp: "DrawTrSurf::GetPoint2d(@)", header: "DrawTrSurf.hxx".}
proc GetCurve*(Name: var Standard_CString): handle[Geom_Curve] {.
    importcpp: "DrawTrSurf::GetCurve(@)", header: "DrawTrSurf.hxx".}
proc GetBezierCurve*(Name: var Standard_CString): handle[Geom_BezierCurve] {.
    importcpp: "DrawTrSurf::GetBezierCurve(@)", header: "DrawTrSurf.hxx".}
proc GetBSplineCurve*(Name: var Standard_CString): handle[Geom_BSplineCurve] {.
    importcpp: "DrawTrSurf::GetBSplineCurve(@)", header: "DrawTrSurf.hxx".}
proc GetCurve2d*(Name: var Standard_CString): handle[Geom2d_Curve] {.
    importcpp: "DrawTrSurf::GetCurve2d(@)", header: "DrawTrSurf.hxx".}
proc GetBezierCurve2d*(Name: var Standard_CString): handle[Geom2d_BezierCurve] {.
    importcpp: "DrawTrSurf::GetBezierCurve2d(@)", header: "DrawTrSurf.hxx".}
proc GetBSplineCurve2d*(Name: var Standard_CString): handle[Geom2d_BSplineCurve] {.
    importcpp: "DrawTrSurf::GetBSplineCurve2d(@)", header: "DrawTrSurf.hxx".}
proc GetSurface*(Name: var Standard_CString): handle[Geom_Surface] {.
    importcpp: "DrawTrSurf::GetSurface(@)", header: "DrawTrSurf.hxx".}
proc GetBezierSurface*(Name: var Standard_CString): handle[Geom_BezierSurface] {.
    importcpp: "DrawTrSurf::GetBezierSurface(@)", header: "DrawTrSurf.hxx".}
proc GetBSplineSurface*(Name: var Standard_CString): handle[Geom_BSplineSurface] {.
    importcpp: "DrawTrSurf::GetBSplineSurface(@)", header: "DrawTrSurf.hxx".}
proc GetTriangulation*(Name: var Standard_CString): handle[Poly_Triangulation] {.
    importcpp: "DrawTrSurf::GetTriangulation(@)", header: "DrawTrSurf.hxx".}
proc GetPolygon3D*(Name: var Standard_CString): handle[Poly_Polygon3D] {.
    importcpp: "DrawTrSurf::GetPolygon3D(@)", header: "DrawTrSurf.hxx".}
proc GetPolygon2D*(Name: var Standard_CString): handle[Poly_Polygon2D] {.
    importcpp: "DrawTrSurf::GetPolygon2D(@)", header: "DrawTrSurf.hxx".}
proc BasicCommands*(I: var Draw_Interpretor) {.
    importcpp: "DrawTrSurf::BasicCommands(@)", header: "DrawTrSurf.hxx".}