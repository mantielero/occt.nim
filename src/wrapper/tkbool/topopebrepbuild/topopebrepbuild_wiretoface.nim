import ../../tkbrep/toptools/toptools_types
import ../../tkbrep/topods/topods_types
import topopebrepbuild_types



##  Created on: 1996-01-29
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



proc newTopOpeBRepBuildWireToFace*(): TopOpeBRepBuildWireToFace {.cdecl,
    constructor, importcpp: "TopOpeBRepBuild_WireToFace(@)", header: "TopOpeBRepBuild_WireToFace.hxx".}
proc init*(this: var TopOpeBRepBuildWireToFace) {.cdecl, importcpp: "Init",
    header: "TopOpeBRepBuild_WireToFace.hxx".}
proc addWire*(this: var TopOpeBRepBuildWireToFace; w: TopoDS_Wire) {.cdecl,
    importcpp: "AddWire", header: "TopOpeBRepBuild_WireToFace.hxx".}
proc makeFaces*(this: var TopOpeBRepBuildWireToFace; f: TopoDS_Face;
               lf: var TopToolsListOfShape) {.cdecl, importcpp: "MakeFaces",
    header: "TopOpeBRepBuild_WireToFace.hxx".}

