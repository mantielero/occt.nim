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

discard "forward decl of Transfer_VoidBinder"
discard "forward decl of Transfer_VoidBinder"
type
  HandleTransferVoidBinder* = Handle[TransferVoidBinder]

## ! a VoidBinder is used to bind a starting item with a status,
## ! error or warning messages, but no result
## ! It is interpreted by TransferProcess, which admits a
## ! VoidBinder to be over-written, and copies its check to the
## ! new Binder

type
  TransferVoidBinder* {.importcpp: "Transfer_VoidBinder",
                       header: "Transfer_VoidBinder.hxx", bycopy.} = object of TransferBinder ##
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


proc constructTransferVoidBinder*(): TransferVoidBinder {.constructor,
    importcpp: "Transfer_VoidBinder(@)", header: "Transfer_VoidBinder.hxx".}
#[ proc resultType*(this: TransferVoidBinder): Handle[StandardType] {.noSideEffect,
    importcpp: "ResultType", header: "Transfer_VoidBinder.hxx".}
proc resultTypeName*(this: TransferVoidBinder): StandardCString {.noSideEffect,
    importcpp: "ResultTypeName", header: "Transfer_VoidBinder.hxx".}
type
  TransferVoidBinderbaseType* = TransferBinder

proc getTypeName*(): cstring {.importcpp: "Transfer_VoidBinder::get_type_name(@)",
                            header: "Transfer_VoidBinder.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Transfer_VoidBinder::get_type_descriptor(@)",
    header: "Transfer_VoidBinder.hxx".}
proc dynamicType*(this: TransferVoidBinder): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Transfer_VoidBinder.hxx".} ]#