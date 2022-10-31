import ../../tkg3d/topabs/topabs_types
import ../../tkernel/standard/standard_types
import ais_types
import ../../tkbrep/topods/topods_types
import ../tkv3d/selectmgr/selectmgr_types



##  Created on: 1998-03-04
##  Created by: Julia Gerasimova
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





proc newAIS_BadEdgeFilter*(): AIS_BadEdgeFilter {.cdecl, constructor,
    importcpp: "AIS_BadEdgeFilter(@)", header: "AIS_BadEdgeFilter.hxx".}
proc actsOn*(this: AIS_BadEdgeFilter; aType: TopAbsShapeEnum): bool {.noSideEffect,
    cdecl, importcpp: "ActsOn", header: "AIS_BadEdgeFilter.hxx".}
proc isOk*(this: AIS_BadEdgeFilter; eo: Handle[SelectMgrEntityOwner]): bool {.
    noSideEffect, cdecl, importcpp: "IsOk", header: "AIS_BadEdgeFilter.hxx".}
proc setContour*(this: var AIS_BadEdgeFilter; index: cint) {.cdecl,
    importcpp: "SetContour", header: "AIS_BadEdgeFilter.hxx".}
proc addEdge*(this: var AIS_BadEdgeFilter; anEdge: TopoDS_Edge; index: cint) {.cdecl,
    importcpp: "AddEdge", header: "AIS_BadEdgeFilter.hxx".}
proc removeEdges*(this: var AIS_BadEdgeFilter; index: cint) {.cdecl,
    importcpp: "RemoveEdges", header: "AIS_BadEdgeFilter.hxx".}

