import topopebreptool_types
import ../toptools/toptools_types
import ../topods/topods_types





##  Created on: 1998-11-19
##  Created by: Jean-Michel BOULCOURT
##  Copyright (c) 1998-1999 Matra Datavision
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



proc newTopOpeBRepToolPurgeInternalEdges*(theShape: TopoDS_Shape;
    performNow: bool = true): TopOpeBRepToolPurgeInternalEdges {.cdecl, constructor,
    importcpp: "TopOpeBRepTool_PurgeInternalEdges(@)", header: "TopOpeBRepTool_PurgeInternalEdges.hxx".}
proc faces*(this: var TopOpeBRepToolPurgeInternalEdges;
           theMapFacLstEdg: var TopToolsDataMapOfShapeListOfShape) {.cdecl,
    importcpp: "Faces", header: "TopOpeBRepTool_PurgeInternalEdges.hxx".}
proc shape*(this: var TopOpeBRepToolPurgeInternalEdges): var TopoDS_Shape {.cdecl,
    importcpp: "Shape", header: "TopOpeBRepTool_PurgeInternalEdges.hxx".}
proc nbEdges*(this: TopOpeBRepToolPurgeInternalEdges): cint {.noSideEffect, cdecl,
    importcpp: "NbEdges", header: "TopOpeBRepTool_PurgeInternalEdges.hxx".}
proc isDone*(this: TopOpeBRepToolPurgeInternalEdges): bool {.noSideEffect, cdecl,
    importcpp: "IsDone", header: "TopOpeBRepTool_PurgeInternalEdges.hxx".}
proc perform*(this: var TopOpeBRepToolPurgeInternalEdges) {.cdecl,
    importcpp: "Perform", header: "TopOpeBRepTool_PurgeInternalEdges.hxx".}


