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
## !!!Ignored construct:  ! Sets <G> in the variable <Name>.  Overwrite the
## ! variable if already set.
## ! isSenseMarker indicates whether to render the
## ! sense glyph (arrow) for curves or not static void Set ( const Standard_CString Name , const Handle ( Geom_Geometry ) & G , const Standard_Boolean isSenseMarker = Standard_True ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  template < class T > [end of template] static void Set ( const Standard_CString Name , const Handle ( T ) & Arg , typename opencascade :: std :: enable_if < opencascade :: std :: is_base_of < Geom_Geometry , T > :: value > :: type * = 0 ) { Set ( Name , ( const Handle ( Geom_Geometry ) & ) Arg ) ; } ! Sets <C> in the variable <Name>.  Overwrite the
## ! variable if already set.
## ! isSenseMarker indicates whether to render the
## ! sense glyph (arrow) for curves or not static void Set ( const Standard_CString Name , const Handle ( Geom2d_Curve ) & C , const Standard_Boolean isSenseMarker = Standard_True ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  template < class T > [end of template] static void Set ( const Standard_CString Name , const Handle ( T ) & Arg , typename opencascade :: std :: enable_if < opencascade :: std :: is_base_of < Geom2d_Curve , T > :: value > :: type * = 0 ) { Set ( Name , ( const Handle ( Geom2d_Curve ) & ) Arg ) ; } ! Sets <T> in the variable <Name>.  Overwrite the
## ! variable if already set. static void Set ( const Standard_CString Name , const Handle ( Poly_Triangulation ) & T ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Sets <P> in the variable <Name>.  Overwrite the
## ! variable if already set. static void Set ( const Standard_CString Name , const Handle ( Poly_Polygon3D ) & P ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Sets <P> in the variable <Name>.  Overwrite the
## ! variable if already set. static void Set ( const Standard_CString Name , const Handle ( Poly_Polygon2D ) & P ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  Get ( Standard_CString & Name ) ;
## Error: token expected: ) but got: &!!!

proc getPoint*(name: var StandardCString; p: var Pnt): bool {.
    importcpp: "DrawTrSurf::GetPoint(@)", header: "DrawTrSurf.hxx".}
proc getPoint2d*(name: var StandardCString; p: var Pnt2d): bool {.
    importcpp: "DrawTrSurf::GetPoint2d(@)", header: "DrawTrSurf.hxx".}
## !!!Ignored construct:  GetCurve ( Standard_CString & Name ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  GetBezierCurve ( Standard_CString & Name ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  GetBSplineCurve ( Standard_CString & Name ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  GetCurve2d ( Standard_CString & Name ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  GetBezierCurve2d ( Standard_CString & Name ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  GetBSplineCurve2d ( Standard_CString & Name ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  GetSurface ( Standard_CString & Name ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  GetBezierSurface ( Standard_CString & Name ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  GetBSplineSurface ( Standard_CString & Name ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  GetTriangulation ( Standard_CString & Name ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  GetPolygon3D ( Standard_CString & Name ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  GetPolygon2D ( Standard_CString & Name ) ;
## Error: token expected: ) but got: &!!!

proc basicCommands*(i: var DrawInterpretor) {.
    importcpp: "DrawTrSurf::BasicCommands(@)", header: "DrawTrSurf.hxx".}













































