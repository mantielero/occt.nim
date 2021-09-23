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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../IFSelect/IFSelect_Editor,
  ../Standard/Standard_Boolean, ../Standard/Standard_Integer

discard "forward decl of TCollection_AsciiString"
discard "forward decl of IFSelect_EditForm"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of STEPEdit_EditContext"
discard "forward decl of STEPEdit_EditContext"
type
  Handle_STEPEdit_EditContext* = handle[STEPEdit_EditContext]

## ! EditContext is an Editor fit for
## ! Product Definition Context (one per Model) , i.e. :
## ! - ProductDefinition
## ! - ApplicationProtocolDefinition
## ! - ProductRelatedProductCategory

type
  STEPEdit_EditContext* {.importcpp: "STEPEdit_EditContext",
                         header: "STEPEdit_EditContext.hxx", bycopy.} = object of IFSelect_Editor


proc constructSTEPEdit_EditContext*(): STEPEdit_EditContext {.constructor,
    importcpp: "STEPEdit_EditContext(@)", header: "STEPEdit_EditContext.hxx".}
proc Label*(this: STEPEdit_EditContext): TCollection_AsciiString {.noSideEffect,
    importcpp: "Label", header: "STEPEdit_EditContext.hxx".}
proc Recognize*(this: STEPEdit_EditContext; form: handle[IFSelect_EditForm]): Standard_Boolean {.
    noSideEffect, importcpp: "Recognize", header: "STEPEdit_EditContext.hxx".}
proc StringValue*(this: STEPEdit_EditContext; form: handle[IFSelect_EditForm];
                 num: Standard_Integer): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "StringValue", header: "STEPEdit_EditContext.hxx".}
proc Apply*(this: STEPEdit_EditContext; form: handle[IFSelect_EditForm];
           ent: handle[Standard_Transient];
           model: handle[Interface_InterfaceModel]): Standard_Boolean {.
    noSideEffect, importcpp: "Apply", header: "STEPEdit_EditContext.hxx".}
proc Load*(this: STEPEdit_EditContext; form: handle[IFSelect_EditForm];
          ent: handle[Standard_Transient]; model: handle[Interface_InterfaceModel]): Standard_Boolean {.
    noSideEffect, importcpp: "Load", header: "STEPEdit_EditContext.hxx".}
type
  STEPEdit_EditContextbase_type* = IFSelect_Editor

proc get_type_name*(): cstring {.importcpp: "STEPEdit_EditContext::get_type_name(@)",
                              header: "STEPEdit_EditContext.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "STEPEdit_EditContext::get_type_descriptor(@)",
    header: "STEPEdit_EditContext.hxx".}
proc DynamicType*(this: STEPEdit_EditContext): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "STEPEdit_EditContext.hxx".}