##  Created on: 1995-08-07
##  Created by: Modelistation
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
  ../Prs3d/Prs3d_Root, ../Prs3d/Prs3d_Drawer, ../Prs3d/Prs3d_NListOfSequenceOfPnt

discard "forward decl of BRepAdaptor_HSurface"
discard "forward decl of Bnd_Box"
type
  StdPrs_WFDeflectionRestrictedFace* {.importcpp: "StdPrs_WFDeflectionRestrictedFace", header: "StdPrs_WFDeflectionRestrictedFace.hxx",
                                      bycopy.} = object of Prs3d_Root ## ! Defines a display featuring U and V isoparameters.
                                                                 ## ! Adds the surface aFace to the
                                                                 ## !
                                                                 ## StdPrs_WFRestrictedFace algorithm. This face is
                                                                 ## ! found in a shape in the presentation object
                                                                 ## ! aPresentation, and its display attributes - in
                                                                 ## ! particular, the number of U and V isoparameters - are
                                                                 ## ! set in the attribute manager aDrawer.
                                                                 ## ! aFace is
                                                                 ## BRepAdaptor_HSurface surface created
                                                                 ## ! from a face in a topological shape.   which is passed
                                                                 ## ! as an argument through the
                                                                 ## !
                                                                 ## BRepAdaptor_HSurface surface created from it.
                                                                 ## ! This is what allows the topological face to be treated
                                                                 ## ! as a geometric surface.


proc Add*(aPresentation: handle[Prs3d_Presentation];
         aFace: handle[BRepAdaptor_HSurface]; aDrawer: handle[Prs3d_Drawer]) {.
    importcpp: "StdPrs_WFDeflectionRestrictedFace::Add(@)",
    header: "StdPrs_WFDeflectionRestrictedFace.hxx".}
proc AddUIso*(aPresentation: handle[Prs3d_Presentation];
             aFace: handle[BRepAdaptor_HSurface]; aDrawer: handle[Prs3d_Drawer]) {.
    importcpp: "StdPrs_WFDeflectionRestrictedFace::AddUIso(@)",
    header: "StdPrs_WFDeflectionRestrictedFace.hxx".}
proc AddVIso*(aPresentation: handle[Prs3d_Presentation];
             aFace: handle[BRepAdaptor_HSurface]; aDrawer: handle[Prs3d_Drawer]) {.
    importcpp: "StdPrs_WFDeflectionRestrictedFace::AddVIso(@)",
    header: "StdPrs_WFDeflectionRestrictedFace.hxx".}
proc Add*(aPresentation: handle[Prs3d_Presentation];
         aFace: handle[BRepAdaptor_HSurface]; DrawUIso: Standard_Boolean;
         DrawVIso: Standard_Boolean; Deflection: Standard_Real;
         NBUiso: Standard_Integer; NBViso: Standard_Integer;
         aDrawer: handle[Prs3d_Drawer]; Curves: var Prs3d_NListOfSequenceOfPnt) {.
    importcpp: "StdPrs_WFDeflectionRestrictedFace::Add(@)",
    header: "StdPrs_WFDeflectionRestrictedFace.hxx".}
proc Match*(X: Standard_Real; Y: Standard_Real; Z: Standard_Real;
           aDistance: Standard_Real; aFace: handle[BRepAdaptor_HSurface];
           aDrawer: handle[Prs3d_Drawer]): Standard_Boolean {.
    importcpp: "StdPrs_WFDeflectionRestrictedFace::Match(@)",
    header: "StdPrs_WFDeflectionRestrictedFace.hxx".}
proc MatchUIso*(X: Standard_Real; Y: Standard_Real; Z: Standard_Real;
               aDistance: Standard_Real; aFace: handle[BRepAdaptor_HSurface];
               aDrawer: handle[Prs3d_Drawer]): Standard_Boolean {.
    importcpp: "StdPrs_WFDeflectionRestrictedFace::MatchUIso(@)",
    header: "StdPrs_WFDeflectionRestrictedFace.hxx".}
proc MatchVIso*(X: Standard_Real; Y: Standard_Real; Z: Standard_Real;
               aDistance: Standard_Real; aFace: handle[BRepAdaptor_HSurface];
               aDrawer: handle[Prs3d_Drawer]): Standard_Boolean {.
    importcpp: "StdPrs_WFDeflectionRestrictedFace::MatchVIso(@)",
    header: "StdPrs_WFDeflectionRestrictedFace.hxx".}
proc Match*(X: Standard_Real; Y: Standard_Real; Z: Standard_Real;
           aDistance: Standard_Real; aFace: handle[BRepAdaptor_HSurface];
           aDrawer: handle[Prs3d_Drawer]; DrawUIso: Standard_Boolean;
           DrawVIso: Standard_Boolean; aDeflection: Standard_Real;
           NBUiso: Standard_Integer; NBViso: Standard_Integer): Standard_Boolean {.
    importcpp: "StdPrs_WFDeflectionRestrictedFace::Match(@)",
    header: "StdPrs_WFDeflectionRestrictedFace.hxx".}