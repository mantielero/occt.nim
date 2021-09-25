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

##  Computes the wireframe presentation of faces with
##  restrictions by displaying a given number of U and/or
##  V isoparametric curves. The isoparametric curves are
##  drawn with a fixed number of points.
##  The presentation includes the restriction curves.

type
  StdPrsWFRestrictedFace* {.importcpp: "StdPrs_WFRestrictedFace",
                           header: "StdPrs_WFRestrictedFace.hxx", bycopy.} = object of Prs3dRoot


proc add*(thePresentation: Handle[Prs3dPresentation];
         theFace: Handle[BRepAdaptorHSurface]; theDrawUIso: bool; theDrawVIso: bool;
         theNbUIso: int; theNbVIso: int; theDrawer: Handle[Prs3dDrawer];
         theCurves: var Prs3dNListOfSequenceOfPnt) {.
    importcpp: "StdPrs_WFRestrictedFace::Add(@)",
    header: "StdPrs_WFRestrictedFace.hxx".}
proc add*(thePresentation: Handle[Prs3dPresentation];
         theFace: Handle[BRepAdaptorHSurface]; theDrawer: Handle[Prs3dDrawer]) {.
    importcpp: "StdPrs_WFRestrictedFace::Add(@)",
    header: "StdPrs_WFRestrictedFace.hxx".}
proc match*(theX: float; theY: float; theZ: float; theDistance: float;
           theFace: Handle[BRepAdaptorHSurface]; theDrawUIso: bool;
           theDrawVIso: bool; theDeflection: float; theNbUIso: int; theNbVIso: int;
           theDrawer: Handle[Prs3dDrawer]): bool {.
    importcpp: "StdPrs_WFRestrictedFace::Match(@)",
    header: "StdPrs_WFRestrictedFace.hxx".}
proc match*(theX: float; theY: float; theZ: float; theDistance: float;
           theFace: Handle[BRepAdaptorHSurface]; theDrawer: Handle[Prs3dDrawer]): bool {.
    importcpp: "StdPrs_WFRestrictedFace::Match(@)",
    header: "StdPrs_WFRestrictedFace.hxx".}
proc matchUIso*(theX: float; theY: float; theZ: float; theDistance: float;
               theFace: Handle[BRepAdaptorHSurface];
               theDrawer: Handle[Prs3dDrawer]): bool {.
    importcpp: "StdPrs_WFRestrictedFace::MatchUIso(@)",
    header: "StdPrs_WFRestrictedFace.hxx".}
proc matchVIso*(theX: float; theY: float; theZ: float; theDistance: float;
               theFace: Handle[BRepAdaptorHSurface];
               theDrawer: Handle[Prs3dDrawer]): bool {.
    importcpp: "StdPrs_WFRestrictedFace::MatchVIso(@)",
    header: "StdPrs_WFRestrictedFace.hxx".}
proc addUIso*(thePresentation: Handle[Prs3dPresentation];
             theFace: Handle[BRepAdaptorHSurface]; theDrawer: Handle[Prs3dDrawer]) {.
    importcpp: "StdPrs_WFRestrictedFace::AddUIso(@)",
    header: "StdPrs_WFRestrictedFace.hxx".}
proc addVIso*(thePresentation: Handle[Prs3dPresentation];
             theFace: Handle[BRepAdaptorHSurface]; theDrawer: Handle[Prs3dDrawer]) {.
    importcpp: "StdPrs_WFRestrictedFace::AddVIso(@)",
    header: "StdPrs_WFRestrictedFace.hxx".}
