##  Created on: 1994-10-12
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
  ../Standard/Standard_Handle, ../TopoDS/TopoDS_Edge, ../TopoDS/TopoDS_Face,
  ../TopOpeBRepDS/TopOpeBRepDS_PDataStructure, TopOpeBRep_PEdgesIntersector,
  ../TopOpeBRepDS/TopOpeBRepDS_ListOfInterference, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean,
  ../TopOpeBRepDS/TopOpeBRepDS_ListIteratorOfListOfInterference,
  ../TopOpeBRepDS/TopOpeBRepDS_Kind, ../Standard/Standard_Real,
  ../TopOpeBRepDS/TopOpeBRepDS_Config

discard "forward decl of TopOpeBRepDS_HDataStructure"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopOpeBRep_EdgesIntersector"
discard "forward decl of TopOpeBRep_Point2d"
discard "forward decl of TopOpeBRepDS_Transition"
discard "forward decl of TopOpeBRepDS_Interference"
discard "forward decl of TopoDS_Edge"
type
  TopOpeBRep_EdgesFiller* {.importcpp: "TopOpeBRep_EdgesFiller",
                           header: "TopOpeBRep_EdgesFiller.hxx", bycopy.} = object


proc constructTopOpeBRep_EdgesFiller*(): TopOpeBRep_EdgesFiller {.constructor,
    importcpp: "TopOpeBRep_EdgesFiller(@)", header: "TopOpeBRep_EdgesFiller.hxx".}
proc Insert*(this: var TopOpeBRep_EdgesFiller; E1: TopoDS_Shape; E2: TopoDS_Shape;
            EI: var TopOpeBRep_EdgesIntersector;
            HDS: handle[TopOpeBRepDS_HDataStructure]) {.importcpp: "Insert",
    header: "TopOpeBRep_EdgesFiller.hxx".}
proc Face*(this: var TopOpeBRep_EdgesFiller; I: Standard_Integer; F: TopoDS_Shape) {.
    importcpp: "Face", header: "TopOpeBRep_EdgesFiller.hxx".}
proc Face*(this: TopOpeBRep_EdgesFiller; I: Standard_Integer): TopoDS_Shape {.
    noSideEffect, importcpp: "Face", header: "TopOpeBRep_EdgesFiller.hxx".}