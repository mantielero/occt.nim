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
discard "forward decl of IGESSelect_UpdateLastChange"
discard "forward decl of IGESSelect_UpdateLastChange"
type
  Handle_IGESSelect_UpdateLastChange* = handle[IGESSelect_UpdateLastChange]

## ! Allows to Change the Last Change Date indication in the Header
## ! (Global Section) of IGES File. It is taken from the operating
## ! system (time of application of the Modifier).
## ! The Selection of the Modifier is not used : it simply acts as
## ! a criterium to select IGES Files to touch up.
## ! Remark : IGES Models noted as version before IGES 5.1 are in
## ! addition changed to 5.1

type
  IGESSelect_UpdateLastChange* {.importcpp: "IGESSelect_UpdateLastChange",
                                header: "IGESSelect_UpdateLastChange.hxx", bycopy.} = object of IGESSelect_ModelModifier ##
                                                                                                                  ## !
                                                                                                                  ## Creates
                                                                                                                  ## an
                                                                                                                  ## UpdateLastChange,
                                                                                                                  ## which
                                                                                                                  ## uses
                                                                                                                  ## the
                                                                                                                  ## system
                                                                                                                  ## Date


proc constructIGESSelect_UpdateLastChange*(): IGESSelect_UpdateLastChange {.
    constructor, importcpp: "IGESSelect_UpdateLastChange(@)",
    header: "IGESSelect_UpdateLastChange.hxx".}
proc Performing*(this: IGESSelect_UpdateLastChange; ctx: var IFSelect_ContextModif;
                target: handle[IGESData_IGESModel]; TC: var Interface_CopyTool) {.
    noSideEffect, importcpp: "Performing",
    header: "IGESSelect_UpdateLastChange.hxx".}
proc Label*(this: IGESSelect_UpdateLastChange): TCollection_AsciiString {.
    noSideEffect, importcpp: "Label", header: "IGESSelect_UpdateLastChange.hxx".}
type
  IGESSelect_UpdateLastChangebase_type* = IGESSelect_ModelModifier

proc get_type_name*(): cstring {.importcpp: "IGESSelect_UpdateLastChange::get_type_name(@)",
                              header: "IGESSelect_UpdateLastChange.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESSelect_UpdateLastChange::get_type_descriptor(@)",
    header: "IGESSelect_UpdateLastChange.hxx".}
proc DynamicType*(this: IGESSelect_UpdateLastChange): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESSelect_UpdateLastChange.hxx".}