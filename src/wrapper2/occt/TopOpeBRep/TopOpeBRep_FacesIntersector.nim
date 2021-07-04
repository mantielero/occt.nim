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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../IntPatch/IntPatch_Intersection,
  ../Standard/Standard_Boolean, ../Standard/Standard_Real,
  TopOpeBRep_HArray1OfLineInter, TopOpeBRep_LineInter,
  ../Standard/Standard_Integer, ../TopoDS/TopoDS_Face,
  ../GeomAbs/GeomAbs_SurfaceType, ../TopTools/TopTools_IndexedMapOfShape,
  ../TopoDS/TopoDS_Shape, ../TopAbs/TopAbs_ShapeEnum

discard "forward decl of BRepAdaptor_HSurface"
discard "forward decl of BRepTopAdaptor_TopolTool"
discard "forward decl of TopoDS_Shape"
discard "forward decl of Bnd_Box"
discard "forward decl of TopOpeBRep_LineInter"
type
  TopOpeBRep_FacesIntersector* {.importcpp: "TopOpeBRep_FacesIntersector",
                                header: "TopOpeBRep_FacesIntersector.hxx", bycopy.} = object


proc constructTopOpeBRep_FacesIntersector*(): TopOpeBRep_FacesIntersector {.
    constructor, importcpp: "TopOpeBRep_FacesIntersector(@)",
    header: "TopOpeBRep_FacesIntersector.hxx".}
proc Perform*(this: var TopOpeBRep_FacesIntersector; S1: TopoDS_Shape;
             S2: TopoDS_Shape) {.importcpp: "Perform",
                               header: "TopOpeBRep_FacesIntersector.hxx".}
proc Perform*(this: var TopOpeBRep_FacesIntersector; S1: TopoDS_Shape;
             S2: TopoDS_Shape; B1: Bnd_Box; B2: Bnd_Box) {.importcpp: "Perform",
    header: "TopOpeBRep_FacesIntersector.hxx".}
proc IsEmpty*(this: var TopOpeBRep_FacesIntersector): Standard_Boolean {.
    importcpp: "IsEmpty", header: "TopOpeBRep_FacesIntersector.hxx".}
proc IsDone*(this: TopOpeBRep_FacesIntersector): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "TopOpeBRep_FacesIntersector.hxx".}
proc SameDomain*(this: TopOpeBRep_FacesIntersector): Standard_Boolean {.
    noSideEffect, importcpp: "SameDomain",
    header: "TopOpeBRep_FacesIntersector.hxx".}
proc Face*(this: TopOpeBRep_FacesIntersector; Index: Standard_Integer): TopoDS_Shape {.
    noSideEffect, importcpp: "Face", header: "TopOpeBRep_FacesIntersector.hxx".}
proc SurfacesSameOriented*(this: TopOpeBRep_FacesIntersector): Standard_Boolean {.
    noSideEffect, importcpp: "SurfacesSameOriented",
    header: "TopOpeBRep_FacesIntersector.hxx".}
proc IsRestriction*(this: TopOpeBRep_FacesIntersector; E: TopoDS_Shape): Standard_Boolean {.
    noSideEffect, importcpp: "IsRestriction",
    header: "TopOpeBRep_FacesIntersector.hxx".}
proc Restrictions*(this: TopOpeBRep_FacesIntersector): TopTools_IndexedMapOfShape {.
    noSideEffect, importcpp: "Restrictions",
    header: "TopOpeBRep_FacesIntersector.hxx".}
proc PrepareLines*(this: var TopOpeBRep_FacesIntersector) {.
    importcpp: "PrepareLines", header: "TopOpeBRep_FacesIntersector.hxx".}
proc Lines*(this: var TopOpeBRep_FacesIntersector): handle[
    TopOpeBRep_HArray1OfLineInter] {.importcpp: "Lines",
                                    header: "TopOpeBRep_FacesIntersector.hxx".}
proc NbLines*(this: TopOpeBRep_FacesIntersector): Standard_Integer {.noSideEffect,
    importcpp: "NbLines", header: "TopOpeBRep_FacesIntersector.hxx".}
proc InitLine*(this: var TopOpeBRep_FacesIntersector) {.importcpp: "InitLine",
    header: "TopOpeBRep_FacesIntersector.hxx".}
proc MoreLine*(this: TopOpeBRep_FacesIntersector): Standard_Boolean {.noSideEffect,
    importcpp: "MoreLine", header: "TopOpeBRep_FacesIntersector.hxx".}
proc NextLine*(this: var TopOpeBRep_FacesIntersector) {.importcpp: "NextLine",
    header: "TopOpeBRep_FacesIntersector.hxx".}
proc CurrentLine*(this: var TopOpeBRep_FacesIntersector): var TopOpeBRep_LineInter {.
    importcpp: "CurrentLine", header: "TopOpeBRep_FacesIntersector.hxx".}
proc CurrentLineIndex*(this: TopOpeBRep_FacesIntersector): Standard_Integer {.
    noSideEffect, importcpp: "CurrentLineIndex",
    header: "TopOpeBRep_FacesIntersector.hxx".}
proc ChangeLine*(this: var TopOpeBRep_FacesIntersector; IL: Standard_Integer): var TopOpeBRep_LineInter {.
    importcpp: "ChangeLine", header: "TopOpeBRep_FacesIntersector.hxx".}
proc ForceTolerances*(this: var TopOpeBRep_FacesIntersector; tolarc: Standard_Real;
                     toltang: Standard_Real) {.importcpp: "ForceTolerances",
    header: "TopOpeBRep_FacesIntersector.hxx".}
proc GetTolerances*(this: TopOpeBRep_FacesIntersector; tolarc: var Standard_Real;
                   toltang: var Standard_Real) {.noSideEffect,
    importcpp: "GetTolerances", header: "TopOpeBRep_FacesIntersector.hxx".}