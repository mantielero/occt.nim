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

discard "forward decl of TDF_Label"
discard "forward decl of Standard_GUID"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of TDF_DataSet"
discard "forward decl of TFunction_Function"
discard "forward decl of TFunction_Function"
type
  HandleTFunctionFunction* = Handle[TFunctionFunction]

## ! Provides the following two services
## ! -   a link to an evaluation driver
## ! -   the means of providing a link between a
## ! function and an evaluation driver.

type
  TFunctionFunction* {.importcpp: "TFunction_Function",
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


proc set*(L: TDF_Label): Handle[TFunctionFunction] {.
    importcpp: "TFunction_Function::Set(@)", header: "TFunction_Function.hxx".}
proc set*(L: TDF_Label; driverID: StandardGUID): Handle[TFunctionFunction] {.
    importcpp: "TFunction_Function::Set(@)", header: "TFunction_Function.hxx".}
proc getID*(): StandardGUID {.importcpp: "TFunction_Function::GetID(@)",
                           header: "TFunction_Function.hxx".}
proc constructTFunctionFunction*(): TFunctionFunction {.constructor,
    importcpp: "TFunction_Function(@)", header: "TFunction_Function.hxx".}
proc getDriverGUID*(this: TFunctionFunction): StandardGUID {.noSideEffect,
    importcpp: "GetDriverGUID", header: "TFunction_Function.hxx".}
proc setDriverGUID*(this: var TFunctionFunction; guid: StandardGUID) {.
    importcpp: "SetDriverGUID", header: "TFunction_Function.hxx".}
proc failed*(this: TFunctionFunction): bool {.noSideEffect, importcpp: "Failed",
    header: "TFunction_Function.hxx".}
proc setFailure*(this: var TFunctionFunction; mode: int = 0) {.importcpp: "SetFailure",
    header: "TFunction_Function.hxx".}
proc getFailure*(this: TFunctionFunction): int {.noSideEffect,
    importcpp: "GetFailure", header: "TFunction_Function.hxx".}
proc id*(this: TFunctionFunction): StandardGUID {.noSideEffect, importcpp: "ID",
    header: "TFunction_Function.hxx".}
proc restore*(this: var TFunctionFunction; with: Handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TFunction_Function.hxx".}
proc paste*(this: TFunctionFunction; into: Handle[TDF_Attribute];
           rt: Handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "TFunction_Function.hxx".}
proc newEmpty*(this: TFunctionFunction): Handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "TFunction_Function.hxx".}
proc references*(this: TFunctionFunction; aDataSet: Handle[TDF_DataSet]) {.
    noSideEffect, importcpp: "References", header: "TFunction_Function.hxx".}
proc dump*(this: TFunctionFunction; anOS: var StandardOStream): var StandardOStream {.
    noSideEffect, importcpp: "Dump", header: "TFunction_Function.hxx".}
type
  TFunctionFunctionbaseType* = TDF_Attribute

proc getTypeName*(): cstring {.importcpp: "TFunction_Function::get_type_name(@)",
                            header: "TFunction_Function.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TFunction_Function::get_type_descriptor(@)",
    header: "TFunction_Function.hxx".}
proc dynamicType*(this: TFunctionFunction): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "TFunction_Function.hxx".}
