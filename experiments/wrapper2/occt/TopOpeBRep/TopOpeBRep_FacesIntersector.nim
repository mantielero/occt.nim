##  Created on: 1994-10-11
##  Created by: Jean Yves LEBEY
##  Copyright (c) 1994-1999 Matra Datavision
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
discard "forward decl of BRepTopAdaptor_TopolTool"
discard "forward decl of TopoDS_Shape"
discard "forward decl of Bnd_Box"
discard "forward decl of TopOpeBRep_LineInter"
type
  TopOpeBRepFacesIntersector* {.importcpp: "TopOpeBRep_FacesIntersector",
                               header: "TopOpeBRep_FacesIntersector.hxx", bycopy.} = object


proc constructTopOpeBRepFacesIntersector*(): TopOpeBRepFacesIntersector {.
    constructor, importcpp: "TopOpeBRep_FacesIntersector(@)",
    header: "TopOpeBRep_FacesIntersector.hxx".}
proc perform*(this: var TopOpeBRepFacesIntersector; s1: TopoDS_Shape; s2: TopoDS_Shape) {.
    importcpp: "Perform", header: "TopOpeBRep_FacesIntersector.hxx".}
proc perform*(this: var TopOpeBRepFacesIntersector; s1: TopoDS_Shape;
             s2: TopoDS_Shape; b1: BndBox; b2: BndBox) {.importcpp: "Perform",
    header: "TopOpeBRep_FacesIntersector.hxx".}
proc isEmpty*(this: var TopOpeBRepFacesIntersector): bool {.importcpp: "IsEmpty",
    header: "TopOpeBRep_FacesIntersector.hxx".}
proc isDone*(this: TopOpeBRepFacesIntersector): bool {.noSideEffect,
    importcpp: "IsDone", header: "TopOpeBRep_FacesIntersector.hxx".}
proc sameDomain*(this: TopOpeBRepFacesIntersector): bool {.noSideEffect,
    importcpp: "SameDomain", header: "TopOpeBRep_FacesIntersector.hxx".}
proc face*(this: TopOpeBRepFacesIntersector; index: int): TopoDS_Shape {.noSideEffect,
    importcpp: "Face", header: "TopOpeBRep_FacesIntersector.hxx".}
proc surfacesSameOriented*(this: TopOpeBRepFacesIntersector): bool {.noSideEffect,
    importcpp: "SurfacesSameOriented", header: "TopOpeBRep_FacesIntersector.hxx".}
proc isRestriction*(this: TopOpeBRepFacesIntersector; e: TopoDS_Shape): bool {.
    noSideEffect, importcpp: "IsRestriction",
    header: "TopOpeBRep_FacesIntersector.hxx".}
proc restrictions*(this: TopOpeBRepFacesIntersector): TopToolsIndexedMapOfShape {.
    noSideEffect, importcpp: "Restrictions",
    header: "TopOpeBRep_FacesIntersector.hxx".}
proc prepareLines*(this: var TopOpeBRepFacesIntersector) {.
    importcpp: "PrepareLines", header: "TopOpeBRep_FacesIntersector.hxx".}
proc lines*(this: var TopOpeBRepFacesIntersector): Handle[
    TopOpeBRepHArray1OfLineInter] {.importcpp: "Lines",
                                   header: "TopOpeBRep_FacesIntersector.hxx".}
proc nbLines*(this: TopOpeBRepFacesIntersector): int {.noSideEffect,
    importcpp: "NbLines", header: "TopOpeBRep_FacesIntersector.hxx".}
proc initLine*(this: var TopOpeBRepFacesIntersector) {.importcpp: "InitLine",
    header: "TopOpeBRep_FacesIntersector.hxx".}
proc moreLine*(this: TopOpeBRepFacesIntersector): bool {.noSideEffect,
    importcpp: "MoreLine", header: "TopOpeBRep_FacesIntersector.hxx".}
proc nextLine*(this: var TopOpeBRepFacesIntersector) {.importcpp: "NextLine",
    header: "TopOpeBRep_FacesIntersector.hxx".}
proc currentLine*(this: var TopOpeBRepFacesIntersector): var TopOpeBRepLineInter {.
    importcpp: "CurrentLine", header: "TopOpeBRep_FacesIntersector.hxx".}
proc currentLineIndex*(this: TopOpeBRepFacesIntersector): int {.noSideEffect,
    importcpp: "CurrentLineIndex", header: "TopOpeBRep_FacesIntersector.hxx".}
proc changeLine*(this: var TopOpeBRepFacesIntersector; il: int): var TopOpeBRepLineInter {.
    importcpp: "ChangeLine", header: "TopOpeBRep_FacesIntersector.hxx".}
proc forceTolerances*(this: var TopOpeBRepFacesIntersector; tolarc: float;
                     toltang: float) {.importcpp: "ForceTolerances",
                                     header: "TopOpeBRep_FacesIntersector.hxx".}
proc getTolerances*(this: TopOpeBRepFacesIntersector; tolarc: var float;
                   toltang: var float) {.noSideEffect, importcpp: "GetTolerances",
                                      header: "TopOpeBRep_FacesIntersector.hxx".}
