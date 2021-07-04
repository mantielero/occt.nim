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
  ../Standard/Standard, ../Standard/Standard_Type, IGESSelect_ModelModifier

discard "forward decl of IFSelect_ContextModif"
discard "forward decl of IGESData_IGESModel"
discard "forward decl of Interface_CopyTool"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of IGESSelect_RebuildGroups"
discard "forward decl of IGESSelect_RebuildGroups"
type
  Handle_IGESSelect_RebuildGroups* = handle[IGESSelect_RebuildGroups]

## ! Rebuilds Groups which were bypassed to produce new models.
## ! If a set of entities, all put into a same IGESModel, were
## ! part of a same Group in the starting Model, this Modifier
## ! rebuilds the original group, but only with the transferred
## ! entities. The distinctions (Ordered or not, "WhithoutBackP"
## ! or not) are renewed, also the name of the group.
## !
## ! If the Input Selection is present, tries to rebuild groups
## ! only for the selected entities. Else, tries to rebuild
## ! groups for all the transferred entities.

type
  IGESSelect_RebuildGroups* {.importcpp: "IGESSelect_RebuildGroups",
                             header: "IGESSelect_RebuildGroups.hxx", bycopy.} = object of IGESSelect_ModelModifier ##
                                                                                                            ## !
                                                                                                            ## Creates
                                                                                                            ## an
                                                                                                            ## RebuildGroups,
                                                                                                            ## which
                                                                                                            ## uses
                                                                                                            ## the
                                                                                                            ## system
                                                                                                            ## Date


proc constructIGESSelect_RebuildGroups*(): IGESSelect_RebuildGroups {.constructor,
    importcpp: "IGESSelect_RebuildGroups(@)",
    header: "IGESSelect_RebuildGroups.hxx".}
proc Performing*(this: IGESSelect_RebuildGroups; ctx: var IFSelect_ContextModif;
                target: handle[IGESData_IGESModel]; TC: var Interface_CopyTool) {.
    noSideEffect, importcpp: "Performing", header: "IGESSelect_RebuildGroups.hxx".}
proc Label*(this: IGESSelect_RebuildGroups): TCollection_AsciiString {.noSideEffect,
    importcpp: "Label", header: "IGESSelect_RebuildGroups.hxx".}
type
  IGESSelect_RebuildGroupsbase_type* = IGESSelect_ModelModifier

proc get_type_name*(): cstring {.importcpp: "IGESSelect_RebuildGroups::get_type_name(@)",
                              header: "IGESSelect_RebuildGroups.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESSelect_RebuildGroups::get_type_descriptor(@)",
    header: "IGESSelect_RebuildGroups.hxx".}
proc DynamicType*(this: IGESSelect_RebuildGroups): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESSelect_RebuildGroups.hxx".}