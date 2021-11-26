##  Created on: 1992-02-07
##  Created by: Christian CAILLET
##  Copyright (c) 1992-1999 Matra Datavision
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

discard "forward decl of Interface_InterfaceError"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of Interface_GeneralLib"
discard "forward decl of Interface_Protocol"
discard "forward decl of Transfer_TransientProcess"
discard "forward decl of Standard_Transient"
type
  TransferTransferDispatch* {.importcpp: "Transfer_TransferDispatch",
                             header: "Transfer_TransferDispatch.hxx", bycopy.} = object of RootObj#of InterfaceCopyTool


proc `new`*(this: var TransferTransferDispatch; theSize: csize_t): pointer {.
    importcpp: "Transfer_TransferDispatch::operator new",
    header: "Transfer_TransferDispatch.hxx".}
proc `delete`*(this: var TransferTransferDispatch; theAddress: pointer) {.
    importcpp: "Transfer_TransferDispatch::operator delete",
    header: "Transfer_TransferDispatch.hxx".}
proc `new[]`*(this: var TransferTransferDispatch; theSize: csize_t): pointer {.
    importcpp: "Transfer_TransferDispatch::operator new[]",
    header: "Transfer_TransferDispatch.hxx".}
proc `delete[]`*(this: var TransferTransferDispatch; theAddress: pointer) {.
    importcpp: "Transfer_TransferDispatch::operator delete[]",
    header: "Transfer_TransferDispatch.hxx".}
proc `new`*(this: var TransferTransferDispatch; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "Transfer_TransferDispatch::operator new",
    header: "Transfer_TransferDispatch.hxx".}
proc `delete`*(this: var TransferTransferDispatch; a2: pointer; a3: pointer) {.
    importcpp: "Transfer_TransferDispatch::operator delete",
    header: "Transfer_TransferDispatch.hxx".}
#[ proc constructTransferTransferDispatch*(amodel: Handle[InterfaceInterfaceModel];
                                       lib: InterfaceGeneralLib): TransferTransferDispatch {.
    constructor, importcpp: "Transfer_TransferDispatch(@)",
    header: "Transfer_TransferDispatch.hxx".}
proc constructTransferTransferDispatch*(amodel: Handle[InterfaceInterfaceModel];
                                       protocol: Handle[InterfaceProtocol]): TransferTransferDispatch {.
    constructor, importcpp: "Transfer_TransferDispatch(@)",
    header: "Transfer_TransferDispatch.hxx".}
proc constructTransferTransferDispatch*(amodel: Handle[InterfaceInterfaceModel]): TransferTransferDispatch {.
    constructor, importcpp: "Transfer_TransferDispatch(@)",
    header: "Transfer_TransferDispatch.hxx".}
proc transientProcess*(this: TransferTransferDispatch): Handle[
    TransferTransientProcess] {.noSideEffect, importcpp: "TransientProcess",
                               header: "Transfer_TransferDispatch.hxx".}
proc copy*(this: var TransferTransferDispatch; entfrom: Handle[StandardTransient];
          entto: var Handle[StandardTransient]; mapped: StandardBoolean;
          errstat: StandardBoolean): StandardBoolean {.importcpp: "Copy",
    header: "Transfer_TransferDispatch.hxx".} ]#