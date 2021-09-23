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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TopTools/TopTools_ListOfShape

discard "forward decl of TopoDS_Wire"
discard "forward decl of TopoDS_Face"
type
  TopOpeBRepBuild_WireToFace* {.importcpp: "TopOpeBRepBuild_WireToFace",
                               header: "TopOpeBRepBuild_WireToFace.hxx", bycopy.} = object


proc constructTopOpeBRepBuild_WireToFace*(): TopOpeBRepBuild_WireToFace {.
    constructor, importcpp: "TopOpeBRepBuild_WireToFace(@)",
    header: "TopOpeBRepBuild_WireToFace.hxx".}
proc Init*(this: var TopOpeBRepBuild_WireToFace) {.importcpp: "Init",
    header: "TopOpeBRepBuild_WireToFace.hxx".}
proc AddWire*(this: var TopOpeBRepBuild_WireToFace; W: TopoDS_Wire) {.
    importcpp: "AddWire", header: "TopOpeBRepBuild_WireToFace.hxx".}
proc MakeFaces*(this: var TopOpeBRepBuild_WireToFace; F: TopoDS_Face;
               LF: var TopTools_ListOfShape) {.importcpp: "MakeFaces",
    header: "TopOpeBRepBuild_WireToFace.hxx".}