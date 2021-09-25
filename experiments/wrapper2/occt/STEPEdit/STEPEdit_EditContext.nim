##  Created on: 1998-07-29
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

discard "forward decl of TCollection_AsciiString"
discard "forward decl of IFSelect_EditForm"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of STEPEdit_EditContext"
discard "forward decl of STEPEdit_EditContext"
type
  HandleSTEPEditEditContext* = Handle[STEPEditEditContext]

## ! EditContext is an Editor fit for
## ! Product Definition Context (one per Model) , i.e. :
## ! - ProductDefinition
## ! - ApplicationProtocolDefinition
## ! - ProductRelatedProductCategory

type
  STEPEditEditContext* {.importcpp: "STEPEdit_EditContext",
                        header: "STEPEdit_EditContext.hxx", bycopy.} = object of IFSelectEditor


proc constructSTEPEditEditContext*(): STEPEditEditContext {.constructor,
    importcpp: "STEPEdit_EditContext(@)", header: "STEPEdit_EditContext.hxx".}
proc label*(this: STEPEditEditContext): TCollectionAsciiString {.noSideEffect,
    importcpp: "Label", header: "STEPEdit_EditContext.hxx".}
proc recognize*(this: STEPEditEditContext; form: Handle[IFSelectEditForm]): bool {.
    noSideEffect, importcpp: "Recognize", header: "STEPEdit_EditContext.hxx".}
proc stringValue*(this: STEPEditEditContext; form: Handle[IFSelectEditForm]; num: int): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "StringValue",
                              header: "STEPEdit_EditContext.hxx".}
proc apply*(this: STEPEditEditContext; form: Handle[IFSelectEditForm];
           ent: Handle[StandardTransient]; model: Handle[InterfaceInterfaceModel]): bool {.
    noSideEffect, importcpp: "Apply", header: "STEPEdit_EditContext.hxx".}
proc load*(this: STEPEditEditContext; form: Handle[IFSelectEditForm];
          ent: Handle[StandardTransient]; model: Handle[InterfaceInterfaceModel]): bool {.
    noSideEffect, importcpp: "Load", header: "STEPEdit_EditContext.hxx".}
type
  STEPEditEditContextbaseType* = IFSelectEditor

proc getTypeName*(): cstring {.importcpp: "STEPEdit_EditContext::get_type_name(@)",
                            header: "STEPEdit_EditContext.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "STEPEdit_EditContext::get_type_descriptor(@)",
    header: "STEPEdit_EditContext.hxx".}
proc dynamicType*(this: STEPEditEditContext): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "STEPEdit_EditContext.hxx".}
