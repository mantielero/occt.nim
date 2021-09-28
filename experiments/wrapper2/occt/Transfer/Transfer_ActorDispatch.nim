##  Created on: 1994-05-24
##  Created by: Christian CAILLET
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

discard "forward decl of Interface_InterfaceError"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of Interface_GeneralLib"
discard "forward decl of Interface_Protocol"
discard "forward decl of Transfer_ActorOfTransientProcess"
discard "forward decl of Transfer_TransferDispatch"
discard "forward decl of Transfer_Binder"
discard "forward decl of Standard_Transient"
discard "forward decl of Transfer_TransientProcess"
discard "forward decl of Transfer_ActorDispatch"
discard "forward decl of Transfer_ActorDispatch"
type
  HandleC1C1* = Handle[TransferActorDispatch]

## ! This class allows to work with a TransferDispatch, i.e. to
## ! transfer entities from a data set to another one defined by
## ! the same interface norm, with the following features :
## ! - ActorDispatch itself acts as a default actor, i.e. it copies
## ! entities with the general service Copy, as CopyTool does
## ! - it allows to add other actors for specific ways of transfer,
## ! which may include data modifications, conversions ...
## ! - and other features from TransferDispatch (such as mapping
## ! other than one-one)

type
  TransferActorDispatch* {.importcpp: "Transfer_ActorDispatch",
                          header: "Transfer_ActorDispatch.hxx", bycopy.} = object of TransferActorOfTransientProcess ##
                                                                                                              ## !
                                                                                                              ## Creates
                                                                                                              ## an
                                                                                                              ## ActorDispatch
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
                                                                                                              ## This
                                                                                                              ## causes
                                                                                                              ## TransferDispatch
                                                                                                              ## and
                                                                                                              ## its
                                                                                                              ## TransientProcess
                                                                                                              ## to
                                                                                                              ## be
                                                                                                              ##
                                                                                                              ## !
                                                                                                              ## created,
                                                                                                              ## with
                                                                                                              ## default
                                                                                                              ## actor
                                                                                                              ## <me>


proc constructTransferActorDispatch*(amodel: Handle[InterfaceInterfaceModel];
                                    lib: InterfaceGeneralLib): TransferActorDispatch {.
    constructor, importcpp: "Transfer_ActorDispatch(@)",
    header: "Transfer_ActorDispatch.hxx".}
proc constructTransferActorDispatch*(amodel: Handle[InterfaceInterfaceModel];
                                    protocol: Handle[InterfaceProtocol]): TransferActorDispatch {.
    constructor, importcpp: "Transfer_ActorDispatch(@)",
    header: "Transfer_ActorDispatch.hxx".}
proc constructTransferActorDispatch*(amodel: Handle[InterfaceInterfaceModel]): TransferActorDispatch {.
    constructor, importcpp: "Transfer_ActorDispatch(@)",
    header: "Transfer_ActorDispatch.hxx".}
proc addActor*(this: var TransferActorDispatch;
              actor: Handle[TransferActorOfTransientProcess]) {.
    importcpp: "AddActor", header: "Transfer_ActorDispatch.hxx".}
proc transferDispatch*(this: var TransferActorDispatch): var TransferTransferDispatch {.
    importcpp: "TransferDispatch", header: "Transfer_ActorDispatch.hxx".}
proc transfer*(this: var TransferActorDispatch; start: Handle[StandardTransient];
              tp: Handle[TransferTransientProcess];
              theProgress: MessageProgressRange = messageProgressRange()): Handle[
    TransferBinder] {.importcpp: "Transfer", header: "Transfer_ActorDispatch.hxx".}
type
  TransferActorDispatchbaseType* = TransferActorOfTransientProcess

proc getTypeName*(): cstring {.importcpp: "Transfer_ActorDispatch::get_type_name(@)",
                            header: "Transfer_ActorDispatch.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Transfer_ActorDispatch::get_type_descriptor(@)",
    header: "Transfer_ActorDispatch.hxx".}
proc dynamicType*(this: TransferActorDispatch): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Transfer_ActorDispatch.hxx".}

























