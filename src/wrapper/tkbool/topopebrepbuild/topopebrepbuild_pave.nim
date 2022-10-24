import topopebrepbuild_types

##  Created on: 1994-11-14
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

discard "forward decl of TopoDS_Shape"
discard "forward decl of TopOpeBRepBuild_Pave"


proc newTopOpeBRepBuildPave*(v: TopoDS_Shape; p: cfloat; bound: bool): TopOpeBRepBuildPave {.
    cdecl, constructor, importcpp: "TopOpeBRepBuild_Pave(@)", header: "TopOpeBRepBuild_Pave.hxx".}
proc hasSameDomain*(this: var TopOpeBRepBuildPave; b: bool) {.cdecl,
    importcpp: "HasSameDomain", header: "TopOpeBRepBuild_Pave.hxx".}
proc sameDomain*(this: var TopOpeBRepBuildPave; vsd: TopoDS_Shape) {.cdecl,
    importcpp: "SameDomain", header: "TopOpeBRepBuild_Pave.hxx".}
proc hasSameDomain*(this: TopOpeBRepBuildPave): bool {.noSideEffect, cdecl,
    importcpp: "HasSameDomain", header: "TopOpeBRepBuild_Pave.hxx".}
proc sameDomain*(this: TopOpeBRepBuildPave): TopoDS_Shape {.noSideEffect, cdecl,
    importcpp: "SameDomain", header: "TopOpeBRepBuild_Pave.hxx".}
proc vertex*(this: TopOpeBRepBuildPave): TopoDS_Shape {.noSideEffect, cdecl,
    importcpp: "Vertex", header: "TopOpeBRepBuild_Pave.hxx".}
proc changeVertex*(this: var TopOpeBRepBuildPave): var TopoDS_Shape {.cdecl,
    importcpp: "ChangeVertex", header: "TopOpeBRepBuild_Pave.hxx".}
proc parameter*(this: TopOpeBRepBuildPave): cfloat {.noSideEffect, cdecl,
    importcpp: "Parameter", header: "TopOpeBRepBuild_Pave.hxx".}
proc parameter*(this: var TopOpeBRepBuildPave; par: cfloat) {.cdecl,
    importcpp: "Parameter", header: "TopOpeBRepBuild_Pave.hxx".}
proc interferenceType*(this: var TopOpeBRepBuildPave): var TopOpeBRepDS_Kind {.cdecl,
    importcpp: "InterferenceType", header: "TopOpeBRepBuild_Pave.hxx".}
proc isShape*(this: TopOpeBRepBuildPave): bool {.noSideEffect, cdecl,
    importcpp: "IsShape", header: "TopOpeBRepBuild_Pave.hxx".}
proc shape*(this: TopOpeBRepBuildPave): TopoDS_Shape {.noSideEffect, cdecl,
    importcpp: "Shape", header: "TopOpeBRepBuild_Pave.hxx".}
proc dump*(this: TopOpeBRepBuildPave) {.noSideEffect, cdecl, importcpp: "Dump",
                                     header: "TopOpeBRepBuild_Pave.hxx".}
