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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  ../TopTools/TopTools_DataMapOfIntegerListOfShape, ../Standard/Standard_Integer,
  ../SelectMgr/SelectMgr_Filter, ../Standard/Standard_Boolean,
  ../TopAbs/TopAbs_ShapeEnum

discard "forward decl of SelectMgr_EntityOwner"
discard "forward decl of TopoDS_Edge"
discard "forward decl of AIS_BadEdgeFilter"
discard "forward decl of AIS_BadEdgeFilter"
type
  Handle_AIS_BadEdgeFilter* = handle[AIS_BadEdgeFilter]

## ! A Class

type
  AIS_BadEdgeFilter* {.importcpp: "AIS_BadEdgeFilter",
                      header: "AIS_BadEdgeFilter.hxx", bycopy.} = object of SelectMgr_Filter ##
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
proc ActsOn*(this: AIS_BadEdgeFilter; aType: TopAbs_ShapeEnum): Standard_Boolean {.
    noSideEffect, importcpp: "ActsOn", header: "AIS_BadEdgeFilter.hxx".}
proc IsOk*(this: AIS_BadEdgeFilter; EO: handle[SelectMgr_EntityOwner]): Standard_Boolean {.
    noSideEffect, importcpp: "IsOk", header: "AIS_BadEdgeFilter.hxx".}
proc SetContour*(this: var AIS_BadEdgeFilter; Index: Standard_Integer) {.
    importcpp: "SetContour", header: "AIS_BadEdgeFilter.hxx".}
proc AddEdge*(this: var AIS_BadEdgeFilter; anEdge: TopoDS_Edge;
             Index: Standard_Integer) {.importcpp: "AddEdge",
                                      header: "AIS_BadEdgeFilter.hxx".}
proc RemoveEdges*(this: var AIS_BadEdgeFilter; Index: Standard_Integer) {.
    importcpp: "RemoveEdges", header: "AIS_BadEdgeFilter.hxx".}
type
  AIS_BadEdgeFilterbase_type* = SelectMgr_Filter

proc get_type_name*(): cstring {.importcpp: "AIS_BadEdgeFilter::get_type_name(@)",
                              header: "AIS_BadEdgeFilter.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "AIS_BadEdgeFilter::get_type_descriptor(@)",
    header: "AIS_BadEdgeFilter.hxx".}
proc DynamicType*(this: AIS_BadEdgeFilter): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "AIS_BadEdgeFilter.hxx".}