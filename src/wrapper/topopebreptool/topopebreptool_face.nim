import topopebreptool_types
import ../topods/topods_types





##  Created on: 1999-01-14
##  Created by: Xuan PHAM PHU
##  Copyright (c) 1999 Matra Datavision
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



proc newTopOpeBRepToolFace*(): TopOpeBRepToolFace {.cdecl, constructor,
    importcpp: "TopOpeBRepTool_face(@)", header: "TopOpeBRepTool_face.hxx".}
proc init*(this: var TopOpeBRepToolFace; w: TopoDS_Wire; fref: TopoDS_Face): bool {.
    cdecl, importcpp: "Init", header: "TopOpeBRepTool_face.hxx".}
proc w*(this: TopOpeBRepToolFace): TopoDS_Wire {.noSideEffect, cdecl, importcpp: "W",
    header: "TopOpeBRepTool_face.hxx".}
proc isDone*(this: TopOpeBRepToolFace): bool {.noSideEffect, cdecl,
    importcpp: "IsDone", header: "TopOpeBRepTool_face.hxx".}
proc finite*(this: TopOpeBRepToolFace): bool {.noSideEffect, cdecl,
    importcpp: "Finite", header: "TopOpeBRepTool_face.hxx".}
proc ffinite*(this: TopOpeBRepToolFace): TopoDS_Face {.noSideEffect, cdecl,
    importcpp: "Ffinite", header: "TopOpeBRepTool_face.hxx".}
proc realF*(this: TopOpeBRepToolFace): TopoDS_Face {.noSideEffect, cdecl,
    importcpp: "RealF", header: "TopOpeBRepTool_face.hxx".}


