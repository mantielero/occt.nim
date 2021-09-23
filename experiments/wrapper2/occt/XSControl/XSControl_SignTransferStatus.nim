##  Created on: 1998-07-31
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
  ../Standard/Standard, ../Standard/Standard_Type, ../IFSelect/IFSelect_Signature,
  ../Standard/Standard_CString

discard "forward decl of XSControl_TransferReader"
discard "forward decl of Transfer_TransientProcess"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of XSControl_SignTransferStatus"
discard "forward decl of XSControl_SignTransferStatus"
type
  Handle_XSControl_SignTransferStatus* = handle[XSControl_SignTransferStatus]

## ! This Signatures gives the Transfer Status of an entity, as
## ! recorded in a TransferProcess. It can be :
## ! - Void : not recorded, or recorded as void with no message
## ! (attributes are not taken into account)
## ! - Warning : no result, warning message(s), no fail
## ! - Fail : no result, fail messages (with or without warning)
## ! - Result.. : result, no message (neither warning nor fail)
## ! Result.. i.e. Result:TypeName of the result
## ! - Result../Warning : result, with warning but no fail
## ! - Result../Fail : result, with fail (.e. bad result)
## ! - Fail on run : no result yet recorded, no message, but
## ! an exception occurred while recording the result
## ! (this should not appear and indicates a programming error)

type
  XSControl_SignTransferStatus* {.importcpp: "XSControl_SignTransferStatus",
                                 header: "XSControl_SignTransferStatus.hxx",
                                 bycopy.} = object of IFSelect_Signature ## ! Creates a
                                                                    ## SignTransferStatus, not initialised
                                                                    ## ! it gives nothing (empty string)


proc constructXSControl_SignTransferStatus*(): XSControl_SignTransferStatus {.
    constructor, importcpp: "XSControl_SignTransferStatus(@)",
    header: "XSControl_SignTransferStatus.hxx".}
proc constructXSControl_SignTransferStatus*(TR: handle[XSControl_TransferReader]): XSControl_SignTransferStatus {.
    constructor, importcpp: "XSControl_SignTransferStatus(@)",
    header: "XSControl_SignTransferStatus.hxx".}
proc SetReader*(this: var XSControl_SignTransferStatus;
               TR: handle[XSControl_TransferReader]) {.importcpp: "SetReader",
    header: "XSControl_SignTransferStatus.hxx".}
proc SetMap*(this: var XSControl_SignTransferStatus;
            TP: handle[Transfer_TransientProcess]) {.importcpp: "SetMap",
    header: "XSControl_SignTransferStatus.hxx".}
proc Map*(this: XSControl_SignTransferStatus): handle[Transfer_TransientProcess] {.
    noSideEffect, importcpp: "Map", header: "XSControl_SignTransferStatus.hxx".}
proc Reader*(this: XSControl_SignTransferStatus): handle[XSControl_TransferReader] {.
    noSideEffect, importcpp: "Reader", header: "XSControl_SignTransferStatus.hxx".}
proc Value*(this: XSControl_SignTransferStatus; ent: handle[Standard_Transient];
           model: handle[Interface_InterfaceModel]): Standard_CString {.
    noSideEffect, importcpp: "Value", header: "XSControl_SignTransferStatus.hxx".}
type
  XSControl_SignTransferStatusbase_type* = IFSelect_Signature

proc get_type_name*(): cstring {.importcpp: "XSControl_SignTransferStatus::get_type_name(@)",
                              header: "XSControl_SignTransferStatus.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "XSControl_SignTransferStatus::get_type_descriptor(@)",
    header: "XSControl_SignTransferStatus.hxx".}
proc DynamicType*(this: XSControl_SignTransferStatus): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "XSControl_SignTransferStatus.hxx".}