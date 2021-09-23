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

import
  ../Standard/Standard, ../Standard/Standard_Type, StdSelect_TypeOfEdge,
  ../SelectMgr/SelectMgr_Filter, ../Standard/Standard_Boolean,
  ../TopAbs/TopAbs_ShapeEnum

discard "forward decl of SelectMgr_EntityOwner"
discard "forward decl of StdSelect_EdgeFilter"
discard "forward decl of StdSelect_EdgeFilter"
type
  Handle_StdSelect_EdgeFilter* = handle[StdSelect_EdgeFilter]

## ! A framework to define a filter to select a specific type of edge.
## ! The types available include:
## ! -   any edge
## ! -   a linear edge
## ! -   a circular edge.

type
  StdSelect_EdgeFilter* {.importcpp: "StdSelect_EdgeFilter",
                         header: "StdSelect_EdgeFilter.hxx", bycopy.} = object of SelectMgr_Filter ##
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


proc constructStdSelect_EdgeFilter*(Edge: StdSelect_TypeOfEdge): StdSelect_EdgeFilter {.
    constructor, importcpp: "StdSelect_EdgeFilter(@)",
    header: "StdSelect_EdgeFilter.hxx".}
proc SetType*(this: var StdSelect_EdgeFilter; aNewType: StdSelect_TypeOfEdge) {.
    importcpp: "SetType", header: "StdSelect_EdgeFilter.hxx".}
proc Type*(this: StdSelect_EdgeFilter): StdSelect_TypeOfEdge {.noSideEffect,
    importcpp: "Type", header: "StdSelect_EdgeFilter.hxx".}
proc IsOk*(this: StdSelect_EdgeFilter; anobj: handle[SelectMgr_EntityOwner]): Standard_Boolean {.
    noSideEffect, importcpp: "IsOk", header: "StdSelect_EdgeFilter.hxx".}
proc ActsOn*(this: StdSelect_EdgeFilter; aStandardMode: TopAbs_ShapeEnum): Standard_Boolean {.
    noSideEffect, importcpp: "ActsOn", header: "StdSelect_EdgeFilter.hxx".}
type
  StdSelect_EdgeFilterbase_type* = SelectMgr_Filter

proc get_type_name*(): cstring {.importcpp: "StdSelect_EdgeFilter::get_type_name(@)",
                              header: "StdSelect_EdgeFilter.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StdSelect_EdgeFilter::get_type_descriptor(@)",
    header: "StdSelect_EdgeFilter.hxx".}
proc DynamicType*(this: StdSelect_EdgeFilter): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "StdSelect_EdgeFilter.hxx".}