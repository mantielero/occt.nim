##  Copyright (c) 2013-2014 OPEN CASCADE SAS
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
  ../BRepAdaptor/BRepAdaptor_HSurface, ../Prs3d/Prs3d_Drawer,
  ../Prs3d/Prs3d_Presentation, ../Prs3d/Prs3d_Root,
  ../Prs3d/Prs3d_NListOfSequenceOfPnt

##  Computes the wireframe presentation of faces with
##  restrictions by displaying a given number of U and/or
##  V isoparametric curves. The isoparametric curves are
##  drawn with a fixed number of points.
##  The presentation includes the restriction curves.

type
  StdPrs_WFRestrictedFace* {.importcpp: "StdPrs_WFRestrictedFace",
                            header: "StdPrs_WFRestrictedFace.hxx", bycopy.} = object of Prs3d_Root


proc Add*(thePresentation: handle[Prs3d_Presentation];
         theFace: handle[BRepAdaptor_HSurface]; theDrawUIso: Standard_Boolean;
         theDrawVIso: Standard_Boolean; theNbUIso: Standard_Integer;
         theNbVIso: Standard_Integer; theDrawer: handle[Prs3d_Drawer];
         theCurves: var Prs3d_NListOfSequenceOfPnt) {.
    importcpp: "StdPrs_WFRestrictedFace::Add(@)",
    header: "StdPrs_WFRestrictedFace.hxx".}
proc Add*(thePresentation: handle[Prs3d_Presentation];
         theFace: handle[BRepAdaptor_HSurface]; theDrawer: handle[Prs3d_Drawer]) {.
    importcpp: "StdPrs_WFRestrictedFace::Add(@)",
    header: "StdPrs_WFRestrictedFace.hxx".}
proc Match*(theX: Standard_Real; theY: Standard_Real; theZ: Standard_Real;
           theDistance: Standard_Real; theFace: handle[BRepAdaptor_HSurface];
           theDrawUIso: Standard_Boolean; theDrawVIso: Standard_Boolean;
           theDeflection: Standard_Real; theNbUIso: Standard_Integer;
           theNbVIso: Standard_Integer; theDrawer: handle[Prs3d_Drawer]): Standard_Boolean {.
    importcpp: "StdPrs_WFRestrictedFace::Match(@)",
    header: "StdPrs_WFRestrictedFace.hxx".}
proc Match*(theX: Standard_Real; theY: Standard_Real; theZ: Standard_Real;
           theDistance: Standard_Real; theFace: handle[BRepAdaptor_HSurface];
           theDrawer: handle[Prs3d_Drawer]): Standard_Boolean {.
    importcpp: "StdPrs_WFRestrictedFace::Match(@)",
    header: "StdPrs_WFRestrictedFace.hxx".}
proc MatchUIso*(theX: Standard_Real; theY: Standard_Real; theZ: Standard_Real;
               theDistance: Standard_Real; theFace: handle[BRepAdaptor_HSurface];
               theDrawer: handle[Prs3d_Drawer]): Standard_Boolean {.
    importcpp: "StdPrs_WFRestrictedFace::MatchUIso(@)",
    header: "StdPrs_WFRestrictedFace.hxx".}
proc MatchVIso*(theX: Standard_Real; theY: Standard_Real; theZ: Standard_Real;
               theDistance: Standard_Real; theFace: handle[BRepAdaptor_HSurface];
               theDrawer: handle[Prs3d_Drawer]): Standard_Boolean {.
    importcpp: "StdPrs_WFRestrictedFace::MatchVIso(@)",
    header: "StdPrs_WFRestrictedFace.hxx".}
proc AddUIso*(thePresentation: handle[Prs3d_Presentation];
             theFace: handle[BRepAdaptor_HSurface];
             theDrawer: handle[Prs3d_Drawer]) {.
    importcpp: "StdPrs_WFRestrictedFace::AddUIso(@)",
    header: "StdPrs_WFRestrictedFace.hxx".}
proc AddVIso*(thePresentation: handle[Prs3d_Presentation];
             theFace: handle[BRepAdaptor_HSurface];
             theDrawer: handle[Prs3d_Drawer]) {.
    importcpp: "StdPrs_WFRestrictedFace::AddVIso(@)",
    header: "StdPrs_WFRestrictedFace.hxx".}