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

discard "forward decl of IFSelect_EditForm"
discard "forward decl of IFSelect_ContextModif"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of Interface_Protocol"
discard "forward decl of Interface_CopyTool"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of IFSelect_ModifEditForm"
discard "forward decl of IFSelect_ModifEditForm"
type
  HandleC1C1* = Handle[IFSelectModifEditForm]

## ! This modifier applies an EditForm on the entities selected

type
  IFSelectModifEditForm* {.importcpp: "IFSelect_ModifEditForm",
                          header: "IFSelect_ModifEditForm.hxx", bycopy.} = object of IFSelectModifier ##
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


proc constructIFSelectModifEditForm*(editform: Handle[IFSelectEditForm]): IFSelectModifEditForm {.
    constructor, importcpp: "IFSelect_ModifEditForm(@)",
    header: "IFSelect_ModifEditForm.hxx".}
proc editForm*(this: IFSelectModifEditForm): Handle[IFSelectEditForm] {.
    noSideEffect, importcpp: "EditForm", header: "IFSelect_ModifEditForm.hxx".}
proc perform*(this: IFSelectModifEditForm; ctx: var IFSelectContextModif;
             target: Handle[InterfaceInterfaceModel];
             protocol: Handle[InterfaceProtocol]; tc: var InterfaceCopyTool) {.
    noSideEffect, importcpp: "Perform", header: "IFSelect_ModifEditForm.hxx".}
proc label*(this: IFSelectModifEditForm): TCollectionAsciiString {.noSideEffect,
    importcpp: "Label", header: "IFSelect_ModifEditForm.hxx".}
type
  IFSelectModifEditFormbaseType* = IFSelectModifier

proc getTypeName*(): cstring {.importcpp: "IFSelect_ModifEditForm::get_type_name(@)",
                            header: "IFSelect_ModifEditForm.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IFSelect_ModifEditForm::get_type_descriptor(@)",
    header: "IFSelect_ModifEditForm.hxx".}
proc dynamicType*(this: IFSelectModifEditForm): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IFSelect_ModifEditForm.hxx".}

























