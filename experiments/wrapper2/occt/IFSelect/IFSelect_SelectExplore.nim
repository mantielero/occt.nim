##  Created on: 1996-09-25
##  Created by: Christian CAILLET
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  IFSelect_SelectDeduct, ../Standard/Standard_Boolean

discard "forward decl of Interface_EntityIterator"
discard "forward decl of Interface_Graph"
discard "forward decl of Standard_Transient"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of IFSelect_SelectExplore"
discard "forward decl of IFSelect_SelectExplore"
type
  Handle_IFSelect_SelectExplore* = handle[IFSelect_SelectExplore]

## ! A SelectExplore determines from an input list of Entities,
## ! a list obtained by a way of exploration. This implies the
## ! possibility of recursive exploration : the output list is
## ! itself reused as input, etc...
## ! Examples : Shared Entities, can be considered at one level
## ! (immediate shared) or more, or max level
## !
## ! Then, for each input entity, if it is not rejected, it can be
## ! either taken itself, or explored : it then produces a list.
## ! According to a level, either the produced lists or taken
## ! entities give the result (level one), or lists are themselves
## ! considered and for each item, is it taken or explored.
## !
## ! Remark that rejection is just a safety : normally, an input
## ! entity is, either taken itself, or explored
## ! A maximum level can be specified. Else, the process continues
## ! until all entities have been either taken or rejected

type
  IFSelect_SelectExplore* {.importcpp: "IFSelect_SelectExplore",
                           header: "IFSelect_SelectExplore.hxx", bycopy.} = object of IFSelect_SelectDeduct ##
                                                                                                     ## !
                                                                                                     ## Returns
                                                                                                     ## the
                                                                                                     ## required
                                                                                                     ## exploring
                                                                                                     ## level
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## Initializes
                                                                                                     ## a
                                                                                                     ## SelectExplore
                                                                                                     ## :
                                                                                                     ## the
                                                                                                     ## level
                                                                                                     ## must
                                                                                                     ## be
                                                                                                     ## specified
                                                                                                     ## on
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## starting.
                                                                                                     ## 0
                                                                                                     ## means
                                                                                                     ## all
                                                                                                     ## levels,
                                                                                                     ## 1
                                                                                                     ## means
                                                                                                     ## level
                                                                                                     ## one
                                                                                                     ## only,
                                                                                                     ## etc...


proc Level*(this: IFSelect_SelectExplore): Standard_Integer {.noSideEffect,
    importcpp: "Level", header: "IFSelect_SelectExplore.hxx".}
proc RootResult*(this: IFSelect_SelectExplore; G: Interface_Graph): Interface_EntityIterator {.
    noSideEffect, importcpp: "RootResult", header: "IFSelect_SelectExplore.hxx".}
proc Explore*(this: IFSelect_SelectExplore; level: Standard_Integer;
             ent: handle[Standard_Transient]; G: Interface_Graph;
             explored: var Interface_EntityIterator): Standard_Boolean {.
    noSideEffect, importcpp: "Explore", header: "IFSelect_SelectExplore.hxx".}
proc Label*(this: IFSelect_SelectExplore): TCollection_AsciiString {.noSideEffect,
    importcpp: "Label", header: "IFSelect_SelectExplore.hxx".}
proc ExploreLabel*(this: IFSelect_SelectExplore): TCollection_AsciiString {.
    noSideEffect, importcpp: "ExploreLabel", header: "IFSelect_SelectExplore.hxx".}
type
  IFSelect_SelectExplorebase_type* = IFSelect_SelectDeduct

proc get_type_name*(): cstring {.importcpp: "IFSelect_SelectExplore::get_type_name(@)",
                              header: "IFSelect_SelectExplore.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IFSelect_SelectExplore::get_type_descriptor(@)",
    header: "IFSelect_SelectExplore.hxx".}
proc DynamicType*(this: IFSelect_SelectExplore): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IFSelect_SelectExplore.hxx".}