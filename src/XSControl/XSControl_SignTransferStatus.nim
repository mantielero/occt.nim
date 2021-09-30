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

discard "forward decl of XSControl_TransferReader"
discard "forward decl of Transfer_TransientProcess"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of XSControl_SignTransferStatus"
discard "forward decl of XSControl_SignTransferStatus"
type
  HandleC1C1* = Handle[XSControlSignTransferStatus]

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
  XSControlSignTransferStatus* {.importcpp: "XSControl_SignTransferStatus",
                                header: "XSControl_SignTransferStatus.hxx", bycopy.} = object of IFSelectSignature ##
                                                                                                            ## !
                                                                                                            ## Creates
                                                                                                            ## a
                                                                                                            ## SignTransferStatus,
                                                                                                            ## not
                                                                                                            ## initialised
                                                                                                            ##
                                                                                                            ## !
                                                                                                            ## it
                                                                                                            ## gives
                                                                                                            ## nothing
                                                                                                            ## (empty
                                                                                                            ## string)


proc constructXSControlSignTransferStatus*(): XSControlSignTransferStatus {.
    constructor, importcpp: "XSControl_SignTransferStatus(@)",
    header: "XSControl_SignTransferStatus.hxx".}
proc constructXSControlSignTransferStatus*(tr: Handle[XSControlTransferReader]): XSControlSignTransferStatus {.
    constructor, importcpp: "XSControl_SignTransferStatus(@)",
    header: "XSControl_SignTransferStatus.hxx".}
proc setReader*(this: var XSControlSignTransferStatus;
               tr: Handle[XSControlTransferReader]) {.importcpp: "SetReader",
    header: "XSControl_SignTransferStatus.hxx".}
proc setMap*(this: var XSControlSignTransferStatus;
            tp: Handle[TransferTransientProcess]) {.importcpp: "SetMap",
    header: "XSControl_SignTransferStatus.hxx".}
proc map*(this: XSControlSignTransferStatus): Handle[TransferTransientProcess] {.
    noSideEffect, importcpp: "Map", header: "XSControl_SignTransferStatus.hxx".}
proc reader*(this: XSControlSignTransferStatus): Handle[XSControlTransferReader] {.
    noSideEffect, importcpp: "Reader", header: "XSControl_SignTransferStatus.hxx".}
proc value*(this: XSControlSignTransferStatus; ent: Handle[StandardTransient];
           model: Handle[InterfaceInterfaceModel]): StandardCString {.noSideEffect,
    importcpp: "Value", header: "XSControl_SignTransferStatus.hxx".}
type
  XSControlSignTransferStatusbaseType* = IFSelectSignature

proc getTypeName*(): cstring {.importcpp: "XSControl_SignTransferStatus::get_type_name(@)",
                            header: "XSControl_SignTransferStatus.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "XSControl_SignTransferStatus::get_type_descriptor(@)",
    header: "XSControl_SignTransferStatus.hxx".}
proc dynamicType*(this: XSControlSignTransferStatus): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "XSControl_SignTransferStatus.hxx".}

























