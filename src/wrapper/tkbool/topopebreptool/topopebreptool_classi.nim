import topopebreptool_types
import ../../tkbrep/toptools/toptools_types
import ../../tkbrep/topods/topods_types
import ../../tkmath/bnd/bnd_types



##  Created on: 1999-01-13
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



proc newTopOpeBRepToolCLASSI*(): TopOpeBRepToolCLASSI {.cdecl, constructor,
    importcpp: "TopOpeBRepTool_CLASSI(@)", header: "TopOpeBRepTool_CLASSI.hxx".}
proc init2d*(this: var TopOpeBRepToolCLASSI; fref: TopoDS_Face) {.cdecl,
    importcpp: "Init2d", header: "TopOpeBRepTool_CLASSI.hxx".}
proc hasInit2d*(this: TopOpeBRepToolCLASSI): bool {.noSideEffect, cdecl,
    importcpp: "HasInit2d", header: "TopOpeBRepTool_CLASSI.hxx".}
proc add2d*(this: var TopOpeBRepToolCLASSI; s: TopoDS_Shape): bool {.cdecl,
    importcpp: "Add2d", header: "TopOpeBRepTool_CLASSI.hxx".}
proc getBox2d*(this: var TopOpeBRepToolCLASSI; s: TopoDS_Shape; box2d: var BndBox2d): bool {.
    cdecl, importcpp: "GetBox2d", header: "TopOpeBRepTool_CLASSI.hxx".}
proc classiBnd2d*(this: var TopOpeBRepToolCLASSI; s1: TopoDS_Shape; s2: TopoDS_Shape;
                 tol: cfloat; checklarge: bool): cint {.cdecl,
    importcpp: "ClassiBnd2d", header: "TopOpeBRepTool_CLASSI.hxx".}
proc classip2d*(this: var TopOpeBRepToolCLASSI; s1: TopoDS_Shape; s2: TopoDS_Shape;
               stabnd2d12: cint): cint {.cdecl, importcpp: "Classip2d", header: "TopOpeBRepTool_CLASSI.hxx".}
proc getface*(this: TopOpeBRepToolCLASSI; s: TopoDS_Shape; fa: var TopOpeBRepToolFace): bool {.
    noSideEffect, cdecl, importcpp: "Getface", header: "TopOpeBRepTool_CLASSI.hxx".}
proc classilist*(this: var TopOpeBRepToolCLASSI; lS: TopToolsListOfShape;
                mapgreasma: var TopToolsDataMapOfShapeListOfShape): bool {.cdecl,
    importcpp: "Classilist", header: "TopOpeBRepTool_CLASSI.hxx".}

