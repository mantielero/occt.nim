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

discard "forward decl of SelectMgr_EntityOwner"
discard "forward decl of TopoDS_Edge"
discard "forward decl of AIS_BadEdgeFilter"
discard "forward decl of AIS_BadEdgeFilter"
type
  HandleAIS_BadEdgeFilter* = Handle[AIS_BadEdgeFilter]

## ! A Class

type
  AIS_BadEdgeFilter* {.importcpp: "AIS_BadEdgeFilter",
                      header: "AIS_BadEdgeFilter.hxx", bycopy.} = object of SelectMgrFilter ##
                                                                                     ## !
                                                                                     ## Constructs
                                                                                     ## an
                                                                                     ## empty
                                                                                     ## filter
                                                                                     ## object
                                                                                     ## for
                                                                                     ## bad
                                                                                     ## edges.


proc constructAIS_BadEdgeFilter*(): AIS_BadEdgeFilter {.constructor,
    importcpp: "AIS_BadEdgeFilter(@)", header: "AIS_BadEdgeFilter.hxx".}
proc actsOn*(this: AIS_BadEdgeFilter; aType: TopAbsShapeEnum): bool {.noSideEffect,
    importcpp: "ActsOn", header: "AIS_BadEdgeFilter.hxx".}
proc isOk*(this: AIS_BadEdgeFilter; eo: Handle[SelectMgrEntityOwner]): bool {.
    noSideEffect, importcpp: "IsOk", header: "AIS_BadEdgeFilter.hxx".}
proc setContour*(this: var AIS_BadEdgeFilter; index: int) {.importcpp: "SetContour",
    header: "AIS_BadEdgeFilter.hxx".}
proc addEdge*(this: var AIS_BadEdgeFilter; anEdge: TopoDS_Edge; index: int) {.
    importcpp: "AddEdge", header: "AIS_BadEdgeFilter.hxx".}
proc removeEdges*(this: var AIS_BadEdgeFilter; index: int) {.importcpp: "RemoveEdges",
    header: "AIS_BadEdgeFilter.hxx".}
type
  AIS_BadEdgeFilterbaseType* = SelectMgrFilter

proc getTypeName*(): cstring {.importcpp: "AIS_BadEdgeFilter::get_type_name(@)",
                            header: "AIS_BadEdgeFilter.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "AIS_BadEdgeFilter::get_type_descriptor(@)",
    header: "AIS_BadEdgeFilter.hxx".}
proc dynamicType*(this: AIS_BadEdgeFilter): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "AIS_BadEdgeFilter.hxx".}
