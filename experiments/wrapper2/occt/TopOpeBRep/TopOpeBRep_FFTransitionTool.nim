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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Integer,
  ../TopAbs/TopAbs_Orientation

discard "forward decl of TopOpeBRepDS_Transition"
discard "forward decl of TopOpeBRep_VPointInter"
discard "forward decl of TopOpeBRep_LineInter"
discard "forward decl of TopoDS_Shape"
type
  TopOpeBRep_FFTransitionTool* {.importcpp: "TopOpeBRep_FFTransitionTool",
                                header: "TopOpeBRep_FFTransitionTool.hxx", bycopy.} = object


proc ProcessLineTransition*(P: TopOpeBRep_VPointInter; Index: Standard_Integer;
                           EdgeOrientation: TopAbs_Orientation): TopOpeBRepDS_Transition {.
    importcpp: "TopOpeBRep_FFTransitionTool::ProcessLineTransition(@)",
    header: "TopOpeBRep_FFTransitionTool.hxx".}
proc ProcessLineTransition*(P: TopOpeBRep_VPointInter; L: TopOpeBRep_LineInter): TopOpeBRepDS_Transition {.
    importcpp: "TopOpeBRep_FFTransitionTool::ProcessLineTransition(@)",
    header: "TopOpeBRep_FFTransitionTool.hxx".}
proc ProcessEdgeTransition*(P: TopOpeBRep_VPointInter; Index: Standard_Integer;
                           LineOrientation: TopAbs_Orientation): TopOpeBRepDS_Transition {.
    importcpp: "TopOpeBRep_FFTransitionTool::ProcessEdgeTransition(@)",
    header: "TopOpeBRep_FFTransitionTool.hxx".}
proc ProcessFaceTransition*(L: TopOpeBRep_LineInter; Index: Standard_Integer;
                           FaceOrientation: TopAbs_Orientation): TopOpeBRepDS_Transition {.
    importcpp: "TopOpeBRep_FFTransitionTool::ProcessFaceTransition(@)",
    header: "TopOpeBRep_FFTransitionTool.hxx".}
proc ProcessEdgeONTransition*(VP: TopOpeBRep_VPointInter; Index: Standard_Integer;
                             R: TopoDS_Shape; E: TopoDS_Shape; F: TopoDS_Shape): TopOpeBRepDS_Transition {.
    importcpp: "TopOpeBRep_FFTransitionTool::ProcessEdgeONTransition(@)",
    header: "TopOpeBRep_FFTransitionTool.hxx".}