##  Created on: 1994-10-25
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

discard "forward decl of TopOpeBRepDS_Point"
discard "forward decl of TopOpeBRep_VPointInter"
discard "forward decl of TopOpeBRep_Point2d"
discard "forward decl of TopOpeBRep_FaceEdgeIntersector"
discard "forward decl of TopoDS_Shape"
type
  TopOpeBRepPointGeomTool* {.importcpp: "TopOpeBRep_PointGeomTool",
                            header: "TopOpeBRep_PointGeomTool.hxx", bycopy.} = object


proc `new`*(this: var TopOpeBRepPointGeomTool; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRep_PointGeomTool::operator new",
    header: "TopOpeBRep_PointGeomTool.hxx".}
proc `delete`*(this: var TopOpeBRepPointGeomTool; theAddress: pointer) {.
    importcpp: "TopOpeBRep_PointGeomTool::operator delete",
    header: "TopOpeBRep_PointGeomTool.hxx".}
proc `new[]`*(this: var TopOpeBRepPointGeomTool; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRep_PointGeomTool::operator new[]",
    header: "TopOpeBRep_PointGeomTool.hxx".}
proc `delete[]`*(this: var TopOpeBRepPointGeomTool; theAddress: pointer) {.
    importcpp: "TopOpeBRep_PointGeomTool::operator delete[]",
    header: "TopOpeBRep_PointGeomTool.hxx".}
proc `new`*(this: var TopOpeBRepPointGeomTool; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TopOpeBRep_PointGeomTool::operator new",
    header: "TopOpeBRep_PointGeomTool.hxx".}
proc `delete`*(this: var TopOpeBRepPointGeomTool; a2: pointer; a3: pointer) {.
    importcpp: "TopOpeBRep_PointGeomTool::operator delete",
    header: "TopOpeBRep_PointGeomTool.hxx".}
proc makePoint*(ip: TopOpeBRepVPointInter): TopOpeBRepDS_Point {.
    importcpp: "TopOpeBRep_PointGeomTool::MakePoint(@)",
    header: "TopOpeBRep_PointGeomTool.hxx".}
proc makePoint*(p2d: TopOpeBRepPoint2d): TopOpeBRepDS_Point {.
    importcpp: "TopOpeBRep_PointGeomTool::MakePoint(@)",
    header: "TopOpeBRep_PointGeomTool.hxx".}
proc makePoint*(fei: TopOpeBRepFaceEdgeIntersector): TopOpeBRepDS_Point {.
    importcpp: "TopOpeBRep_PointGeomTool::MakePoint(@)",
    header: "TopOpeBRep_PointGeomTool.hxx".}
proc makePoint*(s: TopoDS_Shape): TopOpeBRepDS_Point {.
    importcpp: "TopOpeBRep_PointGeomTool::MakePoint(@)",
    header: "TopOpeBRep_PointGeomTool.hxx".}
proc isEqual*(dsp1: TopOpeBRepDS_Point; dsp2: TopOpeBRepDS_Point): StandardBoolean {.
    importcpp: "TopOpeBRep_PointGeomTool::IsEqual(@)",
    header: "TopOpeBRep_PointGeomTool.hxx".}