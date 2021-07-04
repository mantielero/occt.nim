##  Created on: 1996-02-13
##  Created by: Jean Yves LEBEY
##  Copyright (c) 1996-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../TopAbs/TopAbs_ShapeEnum,
  ../Standard/Standard_OStream

discard "forward decl of TopOpeBRepBuild_GTopo"
type
  TopOpeBRepBuild_GTool* {.importcpp: "TopOpeBRepBuild_GTool",
                          header: "TopOpeBRepBuild_GTool.hxx", bycopy.} = object


proc GFusUnsh*(s1: TopAbs_ShapeEnum; s2: TopAbs_ShapeEnum): TopOpeBRepBuild_GTopo {.
    importcpp: "TopOpeBRepBuild_GTool::GFusUnsh(@)",
    header: "TopOpeBRepBuild_GTool.hxx".}
proc GFusSame*(s1: TopAbs_ShapeEnum; s2: TopAbs_ShapeEnum): TopOpeBRepBuild_GTopo {.
    importcpp: "TopOpeBRepBuild_GTool::GFusSame(@)",
    header: "TopOpeBRepBuild_GTool.hxx".}
proc GFusDiff*(s1: TopAbs_ShapeEnum; s2: TopAbs_ShapeEnum): TopOpeBRepBuild_GTopo {.
    importcpp: "TopOpeBRepBuild_GTool::GFusDiff(@)",
    header: "TopOpeBRepBuild_GTool.hxx".}
proc GCutUnsh*(s1: TopAbs_ShapeEnum; s2: TopAbs_ShapeEnum): TopOpeBRepBuild_GTopo {.
    importcpp: "TopOpeBRepBuild_GTool::GCutUnsh(@)",
    header: "TopOpeBRepBuild_GTool.hxx".}
proc GCutSame*(s1: TopAbs_ShapeEnum; s2: TopAbs_ShapeEnum): TopOpeBRepBuild_GTopo {.
    importcpp: "TopOpeBRepBuild_GTool::GCutSame(@)",
    header: "TopOpeBRepBuild_GTool.hxx".}
proc GCutDiff*(s1: TopAbs_ShapeEnum; s2: TopAbs_ShapeEnum): TopOpeBRepBuild_GTopo {.
    importcpp: "TopOpeBRepBuild_GTool::GCutDiff(@)",
    header: "TopOpeBRepBuild_GTool.hxx".}
proc GComUnsh*(s1: TopAbs_ShapeEnum; s2: TopAbs_ShapeEnum): TopOpeBRepBuild_GTopo {.
    importcpp: "TopOpeBRepBuild_GTool::GComUnsh(@)",
    header: "TopOpeBRepBuild_GTool.hxx".}
proc GComSame*(s1: TopAbs_ShapeEnum; s2: TopAbs_ShapeEnum): TopOpeBRepBuild_GTopo {.
    importcpp: "TopOpeBRepBuild_GTool::GComSame(@)",
    header: "TopOpeBRepBuild_GTool.hxx".}
proc GComDiff*(s1: TopAbs_ShapeEnum; s2: TopAbs_ShapeEnum): TopOpeBRepBuild_GTopo {.
    importcpp: "TopOpeBRepBuild_GTool::GComDiff(@)",
    header: "TopOpeBRepBuild_GTool.hxx".}
proc Dump*(OS: var Standard_OStream) {.importcpp: "TopOpeBRepBuild_GTool::Dump(@)",
                                   header: "TopOpeBRepBuild_GTool.hxx".}