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

discard "forward decl of TopOpeBRepBuild_GTopo"
type
  TopOpeBRepBuildGTool* {.importcpp: "TopOpeBRepBuild_GTool",
                         header: "TopOpeBRepBuild_GTool.hxx", bycopy.} = object


proc gFusUnsh*(s1: TopAbsShapeEnum; s2: TopAbsShapeEnum): TopOpeBRepBuildGTopo {.
    cdecl, importcpp: "TopOpeBRepBuild_GTool::GFusUnsh(@)", dynlib: tkfillet.}
proc gFusSame*(s1: TopAbsShapeEnum; s2: TopAbsShapeEnum): TopOpeBRepBuildGTopo {.
    cdecl, importcpp: "TopOpeBRepBuild_GTool::GFusSame(@)", dynlib: tkfillet.}
proc gFusDiff*(s1: TopAbsShapeEnum; s2: TopAbsShapeEnum): TopOpeBRepBuildGTopo {.
    cdecl, importcpp: "TopOpeBRepBuild_GTool::GFusDiff(@)", dynlib: tkfillet.}
proc gCutUnsh*(s1: TopAbsShapeEnum; s2: TopAbsShapeEnum): TopOpeBRepBuildGTopo {.
    cdecl, importcpp: "TopOpeBRepBuild_GTool::GCutUnsh(@)", dynlib: tkfillet.}
proc gCutSame*(s1: TopAbsShapeEnum; s2: TopAbsShapeEnum): TopOpeBRepBuildGTopo {.
    cdecl, importcpp: "TopOpeBRepBuild_GTool::GCutSame(@)", dynlib: tkfillet.}
proc gCutDiff*(s1: TopAbsShapeEnum; s2: TopAbsShapeEnum): TopOpeBRepBuildGTopo {.
    cdecl, importcpp: "TopOpeBRepBuild_GTool::GCutDiff(@)", dynlib: tkfillet.}
proc gComUnsh*(s1: TopAbsShapeEnum; s2: TopAbsShapeEnum): TopOpeBRepBuildGTopo {.
    cdecl, importcpp: "TopOpeBRepBuild_GTool::GComUnsh(@)", dynlib: tkfillet.}
proc gComSame*(s1: TopAbsShapeEnum; s2: TopAbsShapeEnum): TopOpeBRepBuildGTopo {.
    cdecl, importcpp: "TopOpeBRepBuild_GTool::GComSame(@)", dynlib: tkfillet.}
proc gComDiff*(s1: TopAbsShapeEnum; s2: TopAbsShapeEnum): TopOpeBRepBuildGTopo {.
    cdecl, importcpp: "TopOpeBRepBuild_GTool::GComDiff(@)", dynlib: tkfillet.}
proc dump*(os: var StandardOStream) {.cdecl,
                                  importcpp: "TopOpeBRepBuild_GTool::Dump(@)",
                                  dynlib: tkfillet.}