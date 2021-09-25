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

discard "forward decl of IFSelect_ContextModif"
discard "forward decl of IGESData_IGESModel"
discard "forward decl of Interface_CopyTool"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of IGESSelect_RebuildGroups"
discard "forward decl of IGESSelect_RebuildGroups"
type
  HandleIGESSelectRebuildGroups* = Handle[IGESSelectRebuildGroups]

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
  IGESSelectRebuildGroups* {.importcpp: "IGESSelect_RebuildGroups",
                            header: "IGESSelect_RebuildGroups.hxx", bycopy.} = object of IGESSelectModelModifier ##
                                                                                                          ## !
                                                                                                          ## Creates
                                                                                                          ## an
                                                                                                          ## RebuildGroups,
                                                                                                          ## which
                                                                                                          ## uses
                                                                                                          ## the
                                                                                                          ## system
                                                                                                          ## Date


proc constructIGESSelectRebuildGroups*(): IGESSelectRebuildGroups {.constructor,
    importcpp: "IGESSelect_RebuildGroups(@)",
    header: "IGESSelect_RebuildGroups.hxx".}
proc performing*(this: IGESSelectRebuildGroups; ctx: var IFSelectContextModif;
                target: Handle[IGESDataIGESModel]; tc: var InterfaceCopyTool) {.
    noSideEffect, importcpp: "Performing", header: "IGESSelect_RebuildGroups.hxx".}
proc label*(this: IGESSelectRebuildGroups): TCollectionAsciiString {.noSideEffect,
    importcpp: "Label", header: "IGESSelect_RebuildGroups.hxx".}
type
  IGESSelectRebuildGroupsbaseType* = IGESSelectModelModifier

proc getTypeName*(): cstring {.importcpp: "IGESSelect_RebuildGroups::get_type_name(@)",
                            header: "IGESSelect_RebuildGroups.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESSelect_RebuildGroups::get_type_descriptor(@)",
    header: "IGESSelect_RebuildGroups.hxx".}
proc dynamicType*(this: IGESSelectRebuildGroups): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESSelect_RebuildGroups.hxx".}
