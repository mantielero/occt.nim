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
discard "forward decl of IGESSelect_RebuildDrawings"
discard "forward decl of IGESSelect_RebuildDrawings"
type
  Handle_IGESSelect_RebuildDrawings* = handle[IGESSelect_RebuildDrawings]

## ! Rebuilds Drawings which were bypassed to produce new models.
## ! If a set of entities, all put into a same IGESModel, were
## ! attached to a same Drawing in the starting Model, this Modifier
## ! rebuilds the original Drawing, but only with the transferred
## ! entities. This includes that all its views are kept too, but
## ! empty; and annotations are not kept. Drawing Name is renewed.
## !
## ! If the Input Selection is present, tries to rebuild Drawings
## ! only for the selected entities. Else, tries to rebuild
## ! Drawings for all the transferred entities.

type
  IGESSelect_RebuildDrawings* {.importcpp: "IGESSelect_RebuildDrawings",
                               header: "IGESSelect_RebuildDrawings.hxx", bycopy.} = object of IGESSelect_ModelModifier ##
                                                                                                                ## !
                                                                                                                ## Creates
                                                                                                                ## an
                                                                                                                ## RebuildDrawings,
                                                                                                                ## which
                                                                                                                ## uses
                                                                                                                ## the
                                                                                                                ## system
                                                                                                                ## Date


proc constructIGESSelect_RebuildDrawings*(): IGESSelect_RebuildDrawings {.
    constructor, importcpp: "IGESSelect_RebuildDrawings(@)",
    header: "IGESSelect_RebuildDrawings.hxx".}
proc Performing*(this: IGESSelect_RebuildDrawings; ctx: var IFSelect_ContextModif;
                target: handle[IGESData_IGESModel]; TC: var Interface_CopyTool) {.
    noSideEffect, importcpp: "Performing", header: "IGESSelect_RebuildDrawings.hxx".}
proc Label*(this: IGESSelect_RebuildDrawings): TCollection_AsciiString {.
    noSideEffect, importcpp: "Label", header: "IGESSelect_RebuildDrawings.hxx".}
type
  IGESSelect_RebuildDrawingsbase_type* = IGESSelect_ModelModifier

proc get_type_name*(): cstring {.importcpp: "IGESSelect_RebuildDrawings::get_type_name(@)",
                              header: "IGESSelect_RebuildDrawings.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESSelect_RebuildDrawings::get_type_descriptor(@)",
    header: "IGESSelect_RebuildDrawings.hxx".}
proc DynamicType*(this: IGESSelect_RebuildDrawings): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESSelect_RebuildDrawings.hxx".}