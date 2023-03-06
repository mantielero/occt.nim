import ../../tkbrep/topods/topods_types
import topopebrepbuild_types





##  Created on: 1995-12-19
##  Created by: Jean Yves LEBEY
##  Copyright (c) 1995-1999 Matra Datavision
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





proc newTopOpeBRepBuildLoop*(s: TopoDS_Shape): TopOpeBRepBuildLoop {.cdecl,
    constructor, importcpp: "TopOpeBRepBuild_Loop(@)", header: "TopOpeBRepBuild_Loop.hxx".}
proc newTopOpeBRepBuildLoop*(bi: TopOpeBRepBuildBlockIterator): TopOpeBRepBuildLoop {.
    cdecl, constructor, importcpp: "TopOpeBRepBuild_Loop(@)", header: "TopOpeBRepBuild_Loop.hxx".}
proc isShape*(this: TopOpeBRepBuildLoop): bool {.noSideEffect, cdecl,
    importcpp: "IsShape", header: "TopOpeBRepBuild_Loop.hxx".}
proc shape*(this: TopOpeBRepBuildLoop): TopoDS_Shape {.noSideEffect, cdecl,
    importcpp: "Shape", header: "TopOpeBRepBuild_Loop.hxx".}
proc blockIterator*(this: TopOpeBRepBuildLoop): TopOpeBRepBuildBlockIterator {.
    noSideEffect, cdecl, importcpp: "BlockIterator", header: "TopOpeBRepBuild_Loop.hxx".}
proc dump*(this: TopOpeBRepBuildLoop) {.noSideEffect, cdecl, importcpp: "Dump",
                                     header: "TopOpeBRepBuild_Loop.hxx".}


