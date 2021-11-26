##  Created on: 1999-02-26
##  Created by: Christian CAILLET
##  Copyright (c) 1999 Matra Datavision
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
discard "forward decl of IGESSelect_SetLabel"
discard "forward decl of IGESSelect_SetLabel"
type
  HandleC1C1* = Handle[IGESSelectSetLabel]

## ! Sets/Clears Short Label of Entities, those designated by the
## ! Selection. No Selection means all the file
## !
## ! May enforce, else it sets only if no label is yet set
## ! Mode : 0 to clear (always enforced)
## ! 1 to set label to DE number (changes it if already set)

type
  IGESSelectSetLabel* {.importcpp: "IGESSelect_SetLabel",
                       header: "IGESSelect_SetLabel.hxx", bycopy.} = object of IGESSelectModelModifier ##
                                                                                                ## !
                                                                                                ## Creates
                                                                                                ## a
                                                                                                ## SetLabel
                                                                                                ## for
                                                                                                ## IGESEntity
                                                                                                ##
                                                                                                ## !
                                                                                                ## Mode
                                                                                                ## :
                                                                                                ## see
                                                                                                ## Purpose
                                                                                                ## of
                                                                                                ## the
                                                                                                ## class


proc constructIGESSelectSetLabel*(mode: cint; enforce: bool): IGESSelectSetLabel {.
    constructor, importcpp: "IGESSelect_SetLabel(@)",
    header: "IGESSelect_SetLabel.hxx".}
proc performing*(this: IGESSelectSetLabel; ctx: var IFSelectContextModif;
                target: Handle[IGESDataIGESModel]; tc: var InterfaceCopyTool) {.
    noSideEffect, importcpp: "Performing", header: "IGESSelect_SetLabel.hxx".}
proc label*(this: IGESSelectSetLabel): TCollectionAsciiString {.noSideEffect,
    importcpp: "Label", header: "IGESSelect_SetLabel.hxx".}
type
  IGESSelectSetLabelbaseType* = IGESSelectModelModifier

proc getTypeName*(): cstring {.importcpp: "IGESSelect_SetLabel::get_type_name(@)",
                            header: "IGESSelect_SetLabel.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESSelect_SetLabel::get_type_descriptor(@)",
    header: "IGESSelect_SetLabel.hxx".}
proc dynamicType*(this: IGESSelectSetLabel): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESSelect_SetLabel.hxx".}

























