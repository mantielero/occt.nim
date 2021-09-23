##  Created on: 1994-06-27
##  Created by: Design
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
  ../Standard/Standard, ../Standard/Standard_Type, Transfer_Binder,
  ../Standard/Standard_Type, ../Standard/Standard_CString

discard "forward decl of Transfer_VoidBinder"
discard "forward decl of Transfer_VoidBinder"
type
  Handle_Transfer_VoidBinder* = handle[Transfer_VoidBinder]

## ! a VoidBinder is used to bind a starting item with a status,
## ! error or warning messages, but no result
## ! It is interpreted by TransferProcess, which admits a
## ! VoidBinder to be over-written, and copies its check to the
## ! new Binder

type
  Transfer_VoidBinder* {.importcpp: "Transfer_VoidBinder",
                        header: "Transfer_VoidBinder.hxx", bycopy.} = object of Transfer_Binder ##
                                                                                         ## !
                                                                                         ## a
                                                                                         ## VoidBinder
                                                                                         ## is
                                                                                         ## not
                                                                                         ## Multiple
                                                                                         ## (Remark
                                                                                         ## :
                                                                                         ## it
                                                                                         ## is
                                                                                         ## not
                                                                                         ## Simple
                                                                                         ## too)
                                                                                         ##
                                                                                         ## !
                                                                                         ## But
                                                                                         ## it
                                                                                         ## can
                                                                                         ## bring
                                                                                         ## next
                                                                                         ## results
                                                                                         ## ...


proc constructTransfer_VoidBinder*(): Transfer_VoidBinder {.constructor,
    importcpp: "Transfer_VoidBinder(@)", header: "Transfer_VoidBinder.hxx".}
proc ResultType*(this: Transfer_VoidBinder): handle[Standard_Type] {.noSideEffect,
    importcpp: "ResultType", header: "Transfer_VoidBinder.hxx".}
proc ResultTypeName*(this: Transfer_VoidBinder): Standard_CString {.noSideEffect,
    importcpp: "ResultTypeName", header: "Transfer_VoidBinder.hxx".}
type
  Transfer_VoidBinderbase_type* = Transfer_Binder

proc get_type_name*(): cstring {.importcpp: "Transfer_VoidBinder::get_type_name(@)",
                              header: "Transfer_VoidBinder.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Transfer_VoidBinder::get_type_descriptor(@)",
    header: "Transfer_VoidBinder.hxx".}
proc DynamicType*(this: Transfer_VoidBinder): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Transfer_VoidBinder.hxx".}