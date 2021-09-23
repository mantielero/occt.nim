##  Created on: 1995-03-02
##  Created by: Christian CAILLET
##  Copyright (c) 1995-1999 Matra Datavision
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
discard "forward decl of IGESSelect_AddGroup"
discard "forward decl of IGESSelect_AddGroup"
type
  Handle_IGESSelect_AddGroup* = handle[IGESSelect_AddGroup]

## ! Adds a Group to contain the entities designated by the
## ! Selection. If no Selection is given, nothing is done

type
  IGESSelect_AddGroup* {.importcpp: "IGESSelect_AddGroup",
                        header: "IGESSelect_AddGroup.hxx", bycopy.} = object of IGESSelect_ModelModifier ##
                                                                                                  ## !
                                                                                                  ## Creates
                                                                                                  ## an
                                                                                                  ## AddGroup


proc constructIGESSelect_AddGroup*(): IGESSelect_AddGroup {.constructor,
    importcpp: "IGESSelect_AddGroup(@)", header: "IGESSelect_AddGroup.hxx".}
proc Performing*(this: IGESSelect_AddGroup; ctx: var IFSelect_ContextModif;
                target: handle[IGESData_IGESModel]; TC: var Interface_CopyTool) {.
    noSideEffect, importcpp: "Performing", header: "IGESSelect_AddGroup.hxx".}
proc Label*(this: IGESSelect_AddGroup): TCollection_AsciiString {.noSideEffect,
    importcpp: "Label", header: "IGESSelect_AddGroup.hxx".}
type
  IGESSelect_AddGroupbase_type* = IGESSelect_ModelModifier

proc get_type_name*(): cstring {.importcpp: "IGESSelect_AddGroup::get_type_name(@)",
                              header: "IGESSelect_AddGroup.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESSelect_AddGroup::get_type_descriptor(@)",
    header: "IGESSelect_AddGroup.hxx".}
proc DynamicType*(this: IGESSelect_AddGroup): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESSelect_AddGroup.hxx".}