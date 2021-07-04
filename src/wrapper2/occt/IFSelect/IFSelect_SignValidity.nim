##  Created on: 1996-01-26
##  Created by: Christian CAILLET
##  Copyright (c) 1996-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, IFSelect_Signature,
  ../Standard/Standard_CString

discard "forward decl of Standard_Transient"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of IFSelect_SignValidity"
discard "forward decl of IFSelect_SignValidity"
type
  Handle_IFSelect_SignValidity* = handle[IFSelect_SignValidity]

## ! This Signature returns the Validity Status of an entity, as
## ! deducted from data in the model : it can be
## ! "OK" "Unknown" "Unloaded" "Syntactic Fail"(but loaded)
## ! "Syntactic Warning" "Semantic Fail" "Semantic Warning"

type
  IFSelect_SignValidity* {.importcpp: "IFSelect_SignValidity",
                          header: "IFSelect_SignValidity.hxx", bycopy.} = object of IFSelect_Signature ##
                                                                                                ## !
                                                                                                ## Returns
                                                                                                ## a
                                                                                                ## SignValidity


proc constructIFSelect_SignValidity*(): IFSelect_SignValidity {.constructor,
    importcpp: "IFSelect_SignValidity(@)", header: "IFSelect_SignValidity.hxx".}
proc CVal*(ent: handle[Standard_Transient]; model: handle[Interface_InterfaceModel]): Standard_CString {.
    importcpp: "IFSelect_SignValidity::CVal(@)",
    header: "IFSelect_SignValidity.hxx".}
proc Value*(this: IFSelect_SignValidity; ent: handle[Standard_Transient];
           model: handle[Interface_InterfaceModel]): Standard_CString {.
    noSideEffect, importcpp: "Value", header: "IFSelect_SignValidity.hxx".}
type
  IFSelect_SignValiditybase_type* = IFSelect_Signature

proc get_type_name*(): cstring {.importcpp: "IFSelect_SignValidity::get_type_name(@)",
                              header: "IFSelect_SignValidity.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IFSelect_SignValidity::get_type_descriptor(@)",
    header: "IFSelect_SignValidity.hxx".}
proc DynamicType*(this: IFSelect_SignValidity): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IFSelect_SignValidity.hxx".}