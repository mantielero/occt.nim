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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Interface/Interface_CopyTool,
  ../Standard/Standard_Boolean

discard "forward decl of Interface_InterfaceError"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of Interface_GeneralLib"
discard "forward decl of Interface_Protocol"
discard "forward decl of Transfer_TransientProcess"
discard "forward decl of Standard_Transient"
type
  Transfer_TransferDispatch* {.importcpp: "Transfer_TransferDispatch",
                              header: "Transfer_TransferDispatch.hxx", bycopy.} = object of Interface_CopyTool ##
                                                                                                        ## !
                                                                                                        ## Creates
                                                                                                        ## a
                                                                                                        ## TransferDispatch
                                                                                                        ## from
                                                                                                        ## a
                                                                                                        ## Model.
                                                                                                        ## Works
                                                                                                        ## with
                                                                                                        ## a
                                                                                                        ## General
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## Service
                                                                                                        ## Library,
                                                                                                        ## given
                                                                                                        ## as
                                                                                                        ## an
                                                                                                        ## Argument
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## A
                                                                                                        ## TransferDispatch
                                                                                                        ## is
                                                                                                        ## created
                                                                                                        ## as
                                                                                                        ## a
                                                                                                        ## CopyTool
                                                                                                        ## in
                                                                                                        ## which
                                                                                                        ## the
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## Control
                                                                                                        ## is
                                                                                                        ## set
                                                                                                        ## to
                                                                                                        ## TransientProcess


proc constructTransfer_TransferDispatch*(amodel: handle[Interface_InterfaceModel];
                                        lib: Interface_GeneralLib): Transfer_TransferDispatch {.
    constructor, importcpp: "Transfer_TransferDispatch(@)",
    header: "Transfer_TransferDispatch.hxx".}
proc constructTransfer_TransferDispatch*(amodel: handle[Interface_InterfaceModel];
                                        protocol: handle[Interface_Protocol]): Transfer_TransferDispatch {.
    constructor, importcpp: "Transfer_TransferDispatch(@)",
    header: "Transfer_TransferDispatch.hxx".}
proc constructTransfer_TransferDispatch*(amodel: handle[Interface_InterfaceModel]): Transfer_TransferDispatch {.
    constructor, importcpp: "Transfer_TransferDispatch(@)",
    header: "Transfer_TransferDispatch.hxx".}
proc TransientProcess*(this: Transfer_TransferDispatch): handle[
    Transfer_TransientProcess] {.noSideEffect, importcpp: "TransientProcess",
                                header: "Transfer_TransferDispatch.hxx".}
proc Copy*(this: var Transfer_TransferDispatch; entfrom: handle[Standard_Transient];
          entto: var handle[Standard_Transient]; mapped: Standard_Boolean;
          errstat: Standard_Boolean): Standard_Boolean {.importcpp: "Copy",
    header: "Transfer_TransferDispatch.hxx".}