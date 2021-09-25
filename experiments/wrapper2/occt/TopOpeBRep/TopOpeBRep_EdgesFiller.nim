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

discard "forward decl of TopOpeBRepDS_HDataStructure"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopOpeBRep_EdgesIntersector"
discard "forward decl of TopOpeBRep_Point2d"
discard "forward decl of TopOpeBRepDS_Transition"
discard "forward decl of TopOpeBRepDS_Interference"
discard "forward decl of TopoDS_Edge"
type
  TopOpeBRepEdgesFiller* {.importcpp: "TopOpeBRep_EdgesFiller",
                          header: "TopOpeBRep_EdgesFiller.hxx", bycopy.} = object


proc constructTopOpeBRepEdgesFiller*(): TopOpeBRepEdgesFiller {.constructor,
    importcpp: "TopOpeBRep_EdgesFiller(@)", header: "TopOpeBRep_EdgesFiller.hxx".}
proc insert*(this: var TopOpeBRepEdgesFiller; e1: TopoDS_Shape; e2: TopoDS_Shape;
            ei: var TopOpeBRepEdgesIntersector;
            hds: Handle[TopOpeBRepDS_HDataStructure]) {.importcpp: "Insert",
    header: "TopOpeBRep_EdgesFiller.hxx".}
proc face*(this: var TopOpeBRepEdgesFiller; i: int; f: TopoDS_Shape) {.
    importcpp: "Face", header: "TopOpeBRep_EdgesFiller.hxx".}
proc face*(this: TopOpeBRepEdgesFiller; i: int): TopoDS_Shape {.noSideEffect,
    importcpp: "Face", header: "TopOpeBRep_EdgesFiller.hxx".}
