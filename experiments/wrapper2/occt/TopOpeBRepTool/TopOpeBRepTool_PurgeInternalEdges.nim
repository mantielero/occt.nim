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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TopoDS/TopoDS_Shape,
  ../Standard/Standard_Boolean, ../TopTools/TopTools_DataMapOfShapeListOfShape,
  ../TopTools/TopTools_IndexedDataMapOfShapeListOfShape,
  ../Standard/Standard_Integer

discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_NullObject"
discard "forward decl of TopoDS_Shape"
type
  TopOpeBRepTool_PurgeInternalEdges* {.importcpp: "TopOpeBRepTool_PurgeInternalEdges", header: "TopOpeBRepTool_PurgeInternalEdges.hxx",
                                      bycopy.} = object ## ! Initialize   members and  begin  exploration   of  shape
                                                     ## ! depending of the value of PerformNow
                                                     ## ! Do the main job. Explore all the  edges of myShape and
                                                     ## ! build a map with  faces as a key  and list of internal
                                                     ## ! edges(without connected faces) as value.


proc constructTopOpeBRepTool_PurgeInternalEdges*(theShape: TopoDS_Shape;
    PerformNow: Standard_Boolean = Standard_True): TopOpeBRepTool_PurgeInternalEdges {.
    constructor, importcpp: "TopOpeBRepTool_PurgeInternalEdges(@)",
    header: "TopOpeBRepTool_PurgeInternalEdges.hxx".}
proc Faces*(this: var TopOpeBRepTool_PurgeInternalEdges;
           theMapFacLstEdg: var TopTools_DataMapOfShapeListOfShape) {.
    importcpp: "Faces", header: "TopOpeBRepTool_PurgeInternalEdges.hxx".}
proc Shape*(this: var TopOpeBRepTool_PurgeInternalEdges): var TopoDS_Shape {.
    importcpp: "Shape", header: "TopOpeBRepTool_PurgeInternalEdges.hxx".}
proc NbEdges*(this: TopOpeBRepTool_PurgeInternalEdges): Standard_Integer {.
    noSideEffect, importcpp: "NbEdges",
    header: "TopOpeBRepTool_PurgeInternalEdges.hxx".}
proc IsDone*(this: TopOpeBRepTool_PurgeInternalEdges): Standard_Boolean {.
    noSideEffect, importcpp: "IsDone",
    header: "TopOpeBRepTool_PurgeInternalEdges.hxx".}
proc Perform*(this: var TopOpeBRepTool_PurgeInternalEdges) {.importcpp: "Perform",
    header: "TopOpeBRepTool_PurgeInternalEdges.hxx".}