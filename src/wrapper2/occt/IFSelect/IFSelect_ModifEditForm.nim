##  Created on: 1998-02-27
##  Created by: Christian CAILLET
##  Copyright (c) 1998-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, IFSelect_Modifier

discard "forward decl of IFSelect_EditForm"
discard "forward decl of IFSelect_ContextModif"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of Interface_Protocol"
discard "forward decl of Interface_CopyTool"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of IFSelect_ModifEditForm"
discard "forward decl of IFSelect_ModifEditForm"
type
  Handle_IFSelect_ModifEditForm* = handle[IFSelect_ModifEditForm]

## ! This modifier applies an EditForm on the entities selected

type
  IFSelect_ModifEditForm* {.importcpp: "IFSelect_ModifEditForm",
                           header: "IFSelect_ModifEditForm.hxx", bycopy.} = object of IFSelect_Modifier ##
                                                                                                 ## !
                                                                                                 ## Creates
                                                                                                 ## a
                                                                                                 ## ModifEditForm.
                                                                                                 ## It
                                                                                                 ## may
                                                                                                 ## not
                                                                                                 ## change
                                                                                                 ## the
                                                                                                 ## graph


proc constructIFSelect_ModifEditForm*(editform: handle[IFSelect_EditForm]): IFSelect_ModifEditForm {.
    constructor, importcpp: "IFSelect_ModifEditForm(@)",
    header: "IFSelect_ModifEditForm.hxx".}
proc EditForm*(this: IFSelect_ModifEditForm): handle[IFSelect_EditForm] {.
    noSideEffect, importcpp: "EditForm", header: "IFSelect_ModifEditForm.hxx".}
proc Perform*(this: IFSelect_ModifEditForm; ctx: var IFSelect_ContextModif;
             target: handle[Interface_InterfaceModel];
             protocol: handle[Interface_Protocol]; TC: var Interface_CopyTool) {.
    noSideEffect, importcpp: "Perform", header: "IFSelect_ModifEditForm.hxx".}
proc Label*(this: IFSelect_ModifEditForm): TCollection_AsciiString {.noSideEffect,
    importcpp: "Label", header: "IFSelect_ModifEditForm.hxx".}
type
  IFSelect_ModifEditFormbase_type* = IFSelect_Modifier

proc get_type_name*(): cstring {.importcpp: "IFSelect_ModifEditForm::get_type_name(@)",
                              header: "IFSelect_ModifEditForm.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IFSelect_ModifEditForm::get_type_descriptor(@)",
    header: "IFSelect_ModifEditForm.hxx".}
proc DynamicType*(this: IFSelect_ModifEditForm): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IFSelect_ModifEditForm.hxx".}