##  Created on: 1999-06-10
##  Created by: Vladislav ROMASHKO
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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_GUID,
  ../Standard/Standard_Integer, ../TDF/TDF_Attribute,
  ../Standard/Standard_Boolean, ../Standard/Standard_OStream

discard "forward decl of TDF_Label"
discard "forward decl of Standard_GUID"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of TDF_DataSet"
discard "forward decl of TFunction_Function"
discard "forward decl of TFunction_Function"
type
  Handle_TFunction_Function* = handle[TFunction_Function]

## ! Provides the following two services
## ! -   a link to an evaluation driver
## ! -   the means of providing a link between a
## ! function and an evaluation driver.

type
  TFunction_Function* {.importcpp: "TFunction_Function",
                       header: "TFunction_Function.hxx", bycopy.} = object of TDF_Attribute ##
                                                                                     ## !
                                                                                     ## Static
                                                                                     ## methods:
                                                                                     ##
                                                                                     ## !
                                                                                     ## ==============
                                                                                     ##
                                                                                     ## !
                                                                                     ## Finds
                                                                                     ## or
                                                                                     ## Creates
                                                                                     ## a
                                                                                     ## function
                                                                                     ## attribute
                                                                                     ## on
                                                                                     ## the
                                                                                     ## label
                                                                                     ## <L>.
                                                                                     ##
                                                                                     ## !
                                                                                     ## Returns
                                                                                     ## the
                                                                                     ## function
                                                                                     ## attribute.


proc Set*(L: TDF_Label): handle[TFunction_Function] {.
    importcpp: "TFunction_Function::Set(@)", header: "TFunction_Function.hxx".}
proc Set*(L: TDF_Label; DriverID: Standard_GUID): handle[TFunction_Function] {.
    importcpp: "TFunction_Function::Set(@)", header: "TFunction_Function.hxx".}
proc GetID*(): Standard_GUID {.importcpp: "TFunction_Function::GetID(@)",
                            header: "TFunction_Function.hxx".}
proc constructTFunction_Function*(): TFunction_Function {.constructor,
    importcpp: "TFunction_Function(@)", header: "TFunction_Function.hxx".}
proc GetDriverGUID*(this: TFunction_Function): Standard_GUID {.noSideEffect,
    importcpp: "GetDriverGUID", header: "TFunction_Function.hxx".}
proc SetDriverGUID*(this: var TFunction_Function; guid: Standard_GUID) {.
    importcpp: "SetDriverGUID", header: "TFunction_Function.hxx".}
proc Failed*(this: TFunction_Function): Standard_Boolean {.noSideEffect,
    importcpp: "Failed", header: "TFunction_Function.hxx".}
proc SetFailure*(this: var TFunction_Function; mode: Standard_Integer = 0) {.
    importcpp: "SetFailure", header: "TFunction_Function.hxx".}
proc GetFailure*(this: TFunction_Function): Standard_Integer {.noSideEffect,
    importcpp: "GetFailure", header: "TFunction_Function.hxx".}
proc ID*(this: TFunction_Function): Standard_GUID {.noSideEffect, importcpp: "ID",
    header: "TFunction_Function.hxx".}
proc Restore*(this: var TFunction_Function; with: handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TFunction_Function.hxx".}
proc Paste*(this: TFunction_Function; into: handle[TDF_Attribute];
           RT: handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "TFunction_Function.hxx".}
proc NewEmpty*(this: TFunction_Function): handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "TFunction_Function.hxx".}
proc References*(this: TFunction_Function; aDataSet: handle[TDF_DataSet]) {.
    noSideEffect, importcpp: "References", header: "TFunction_Function.hxx".}
proc Dump*(this: TFunction_Function; anOS: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "Dump", header: "TFunction_Function.hxx".}
type
  TFunction_Functionbase_type* = TDF_Attribute

proc get_type_name*(): cstring {.importcpp: "TFunction_Function::get_type_name(@)",
                              header: "TFunction_Function.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TFunction_Function::get_type_descriptor(@)",
    header: "TFunction_Function.hxx".}
proc DynamicType*(this: TFunction_Function): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "TFunction_Function.hxx".}