##  Created on: 1994-10-27
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

discard "forward decl of TopOpeBRepDS_Transition"
discard "forward decl of TopOpeBRep_VPointInter"
discard "forward decl of TopOpeBRep_LineInter"
discard "forward decl of TopoDS_Shape"
type
  TopOpeBRepFFTransitionTool* {.importcpp: "TopOpeBRep_FFTransitionTool",
                               header: "TopOpeBRep_FFTransitionTool.hxx", bycopy.} = object


proc processLineTransition*(p: TopOpeBRepVPointInter; index: cint;
                           edgeOrientation: TopAbsOrientation): TopOpeBRepDS_Transition {.
    importcpp: "TopOpeBRep_FFTransitionTool::ProcessLineTransition(@)",
    header: "TopOpeBRep_FFTransitionTool.hxx".}
proc processLineTransition*(p: TopOpeBRepVPointInter; L: TopOpeBRepLineInter): TopOpeBRepDS_Transition {.
    importcpp: "TopOpeBRep_FFTransitionTool::ProcessLineTransition(@)",
    header: "TopOpeBRep_FFTransitionTool.hxx".}
proc processEdgeTransition*(p: TopOpeBRepVPointInter; index: cint;
                           lineOrientation: TopAbsOrientation): TopOpeBRepDS_Transition {.
    importcpp: "TopOpeBRep_FFTransitionTool::ProcessEdgeTransition(@)",
    header: "TopOpeBRep_FFTransitionTool.hxx".}
proc processFaceTransition*(L: TopOpeBRepLineInter; index: cint;
                           faceOrientation: TopAbsOrientation): TopOpeBRepDS_Transition {.
    importcpp: "TopOpeBRep_FFTransitionTool::ProcessFaceTransition(@)",
    header: "TopOpeBRep_FFTransitionTool.hxx".}
proc processEdgeONTransition*(vp: TopOpeBRepVPointInter; index: cint;
                             r: TopoDS_Shape; e: TopoDS_Shape; f: TopoDS_Shape): TopOpeBRepDS_Transition {.
    importcpp: "TopOpeBRep_FFTransitionTool::ProcessEdgeONTransition(@)",
    header: "TopOpeBRep_FFTransitionTool.hxx".}

























