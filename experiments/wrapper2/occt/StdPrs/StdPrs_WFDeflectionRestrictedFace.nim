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

discard "forward decl of BRepAdaptor_HSurface"
discard "forward decl of Bnd_Box"
type
  StdPrsWFDeflectionRestrictedFace* {.importcpp: "StdPrs_WFDeflectionRestrictedFace", header: "StdPrs_WFDeflectionRestrictedFace.hxx",
                                     bycopy.} = object of Prs3dRoot ## ! Defines a display featuring U and V isoparameters.
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


proc add*(aPresentation: Handle[Prs3dPresentation];
         aFace: Handle[BRepAdaptorHSurface]; aDrawer: Handle[Prs3dDrawer]) {.
    importcpp: "StdPrs_WFDeflectionRestrictedFace::Add(@)",
    header: "StdPrs_WFDeflectionRestrictedFace.hxx".}
proc addUIso*(aPresentation: Handle[Prs3dPresentation];
             aFace: Handle[BRepAdaptorHSurface]; aDrawer: Handle[Prs3dDrawer]) {.
    importcpp: "StdPrs_WFDeflectionRestrictedFace::AddUIso(@)",
    header: "StdPrs_WFDeflectionRestrictedFace.hxx".}
proc addVIso*(aPresentation: Handle[Prs3dPresentation];
             aFace: Handle[BRepAdaptorHSurface]; aDrawer: Handle[Prs3dDrawer]) {.
    importcpp: "StdPrs_WFDeflectionRestrictedFace::AddVIso(@)",
    header: "StdPrs_WFDeflectionRestrictedFace.hxx".}
proc add*(aPresentation: Handle[Prs3dPresentation];
         aFace: Handle[BRepAdaptorHSurface]; drawUIso: bool; drawVIso: bool;
         deflection: float; nBUiso: int; nBViso: int; aDrawer: Handle[Prs3dDrawer];
         curves: var Prs3dNListOfSequenceOfPnt) {.
    importcpp: "StdPrs_WFDeflectionRestrictedFace::Add(@)",
    header: "StdPrs_WFDeflectionRestrictedFace.hxx".}
proc match*(x: float; y: float; z: float; aDistance: float;
           aFace: Handle[BRepAdaptorHSurface]; aDrawer: Handle[Prs3dDrawer]): bool {.
    importcpp: "StdPrs_WFDeflectionRestrictedFace::Match(@)",
    header: "StdPrs_WFDeflectionRestrictedFace.hxx".}
proc matchUIso*(x: float; y: float; z: float; aDistance: float;
               aFace: Handle[BRepAdaptorHSurface]; aDrawer: Handle[Prs3dDrawer]): bool {.
    importcpp: "StdPrs_WFDeflectionRestrictedFace::MatchUIso(@)",
    header: "StdPrs_WFDeflectionRestrictedFace.hxx".}
proc matchVIso*(x: float; y: float; z: float; aDistance: float;
               aFace: Handle[BRepAdaptorHSurface]; aDrawer: Handle[Prs3dDrawer]): bool {.
    importcpp: "StdPrs_WFDeflectionRestrictedFace::MatchVIso(@)",
    header: "StdPrs_WFDeflectionRestrictedFace.hxx".}
proc match*(x: float; y: float; z: float; aDistance: float;
           aFace: Handle[BRepAdaptorHSurface]; aDrawer: Handle[Prs3dDrawer];
           drawUIso: bool; drawVIso: bool; aDeflection: float; nBUiso: int; nBViso: int): bool {.
    importcpp: "StdPrs_WFDeflectionRestrictedFace::Match(@)",
    header: "StdPrs_WFDeflectionRestrictedFace.hxx".}
