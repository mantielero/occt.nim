##  Created on: 1996-03-11
##  Created by: Robert COUBLANC
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

discard "forward decl of SelectMgr_EntityOwner"
discard "forward decl of StdSelect_EdgeFilter"
discard "forward decl of StdSelect_EdgeFilter"
type
  HandleC1C1* = Handle[StdSelectEdgeFilter]

## ! A framework to define a filter to select a specific type of edge.
## ! The types available include:
## ! -   any edge
## ! -   a linear edge
## ! -   a circular edge.

type
  StdSelectEdgeFilter* {.importcpp: "StdSelect_EdgeFilter",
                        header: "StdSelect_EdgeFilter.hxx", bycopy.} = object of SelectMgrFilter ##
                                                                                          ## !
                                                                                          ## Constructs
                                                                                          ## an
                                                                                          ## edge
                                                                                          ## filter
                                                                                          ## object
                                                                                          ## defined
                                                                                          ## by
                                                                                          ## the
                                                                                          ## type
                                                                                          ## of
                                                                                          ## edge
                                                                                          ## Edge.


proc constructStdSelectEdgeFilter*(edge: StdSelectTypeOfEdge): StdSelectEdgeFilter {.
    constructor, importcpp: "StdSelect_EdgeFilter(@)",
    header: "StdSelect_EdgeFilter.hxx".}
proc setType*(this: var StdSelectEdgeFilter; aNewType: StdSelectTypeOfEdge) {.
    importcpp: "SetType", header: "StdSelect_EdgeFilter.hxx".}
proc `type`*(this: StdSelectEdgeFilter): StdSelectTypeOfEdge {.noSideEffect,
    importcpp: "Type", header: "StdSelect_EdgeFilter.hxx".}
proc isOk*(this: StdSelectEdgeFilter; anobj: Handle[SelectMgrEntityOwner]): bool {.
    noSideEffect, importcpp: "IsOk", header: "StdSelect_EdgeFilter.hxx".}
proc actsOn*(this: StdSelectEdgeFilter; aStandardMode: TopAbsShapeEnum): bool {.
    noSideEffect, importcpp: "ActsOn", header: "StdSelect_EdgeFilter.hxx".}
type
  StdSelectEdgeFilterbaseType* = SelectMgrFilter

proc getTypeName*(): cstring {.importcpp: "StdSelect_EdgeFilter::get_type_name(@)",
                            header: "StdSelect_EdgeFilter.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StdSelect_EdgeFilter::get_type_descriptor(@)",
    header: "StdSelect_EdgeFilter.hxx".}
proc dynamicType*(this: StdSelectEdgeFilter): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StdSelect_EdgeFilter.hxx".}

























