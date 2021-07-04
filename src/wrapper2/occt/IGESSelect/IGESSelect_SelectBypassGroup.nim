##  Created on: 1994-06-01
##  Created by: Christian CAILLET
##  Copyright (c) 1994-1999 Matra Datavision
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
  ../IFSelect/IFSelect_SelectExplore, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean

discard "forward decl of Interface_InterfaceError"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_Graph"
discard "forward decl of Interface_EntityIterator"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of IGESSelect_SelectBypassGroup"
discard "forward decl of IGESSelect_SelectBypassGroup"
type
  Handle_IGESSelect_SelectBypassGroup* = handle[IGESSelect_SelectBypassGroup]

## ! Selects a list built as follows :
## ! Groups are entities type 402, forms 1,7,14,15 (Group,
## ! Ordered or not, "WithoutBackPointer" or not)
## !
## ! Entities which are not GROUP are taken as such
## ! For Groups, their list of Elements is explore
## ! Hence, level 0 (D) recursively explores a Group if some of
## ! its Elements are Groups. level 1 explores just at first level

type
  IGESSelect_SelectBypassGroup* {.importcpp: "IGESSelect_SelectBypassGroup",
                                 header: "IGESSelect_SelectBypassGroup.hxx",
                                 bycopy.} = object of IFSelect_SelectExplore ## ! Creates a
                                                                        ## SelectBypassGroup, by default all level
                                                                        ## ! (level = 1 explores at first level)


proc constructIGESSelect_SelectBypassGroup*(level: Standard_Integer = 0): IGESSelect_SelectBypassGroup {.
    constructor, importcpp: "IGESSelect_SelectBypassGroup(@)",
    header: "IGESSelect_SelectBypassGroup.hxx".}
proc Explore*(this: IGESSelect_SelectBypassGroup; level: Standard_Integer;
             ent: handle[Standard_Transient]; G: Interface_Graph;
             explored: var Interface_EntityIterator): Standard_Boolean {.
    noSideEffect, importcpp: "Explore", header: "IGESSelect_SelectBypassGroup.hxx".}
proc ExploreLabel*(this: IGESSelect_SelectBypassGroup): TCollection_AsciiString {.
    noSideEffect, importcpp: "ExploreLabel",
    header: "IGESSelect_SelectBypassGroup.hxx".}
type
  IGESSelect_SelectBypassGroupbase_type* = IFSelect_SelectExplore

proc get_type_name*(): cstring {.importcpp: "IGESSelect_SelectBypassGroup::get_type_name(@)",
                              header: "IGESSelect_SelectBypassGroup.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESSelect_SelectBypassGroup::get_type_descriptor(@)",
    header: "IGESSelect_SelectBypassGroup.hxx".}
proc DynamicType*(this: IGESSelect_SelectBypassGroup): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESSelect_SelectBypassGroup.hxx".}