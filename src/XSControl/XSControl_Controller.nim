##  Created on: 1995-03-13
##  Created by: Christian CAILLET
##  Copyright (c) 1995-1999 Matra Datavision
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

discard "forward decl of IFSelect_WorkLibrary"
discard "forward decl of Interface_Protocol"
discard "forward decl of IFSelect_Signature"
discard "forward decl of Transfer_ActorOfTransientProcess"
discard "forward decl of Transfer_ActorOfFinderProcess"
discard "forward decl of Standard_DomainError"
discard "forward decl of XSControl_WorkSession"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of Transfer_FinderProcess"
discard "forward decl of TopoDS_Shape"
discard "forward decl of Interface_CheckIterator"
discard "forward decl of XSControl_Controller"
discard "forward decl of XSControl_Controller"
type
  HandleXSControlController* = Handle[XSControlController]

## ! This class allows a general X-STEP engine to run generic
## ! functions on any interface norm, in the same way. It includes
## ! the transfer operations. I.e. it gathers the already available
## ! general modules, the engine has just to know it
## !
## ! The important point is that a given X-STEP Controller is
## ! attached to a given couple made of an Interface Norm (such as
## ! IGES-5.1) and an application data model (CasCade Shapes for
## ! instance).
## !
## ! Finally, Controller can be gathered in a general dictionary then
## ! retreived later by a general call (method Recorded)
## !
## ! It does not manage the produced data, but the Actors make the
## ! link between the norm and the application

type
  XSControlController* {.importcpp: "XSControl_Controller",
                        header: "XSControl_Controller.hxx", bycopy.} = object of StandardTransient ##
                                                                                            ## !
                                                                                            ## Changes
                                                                                            ## names
                                                                                            ##
                                                                                            ## !
                                                                                            ## if
                                                                                            ## a
                                                                                            ## name
                                                                                            ## is
                                                                                            ## empty,
                                                                                            ## the
                                                                                            ## formerly
                                                                                            ## set
                                                                                            ## one
                                                                                            ## remains
                                                                                            ##
                                                                                            ## !
                                                                                            ## Remark
                                                                                            ## :
                                                                                            ## Does
                                                                                            ## not
                                                                                            ## call
                                                                                            ## Record
                                                                                            ## or
                                                                                            ## AutoRecord
                                                                                            ##
                                                                                            ## !
                                                                                            ## Initializing
                                                                                            ## with
                                                                                            ## names
                                                                                            ##
                                                                                            ## !
                                                                                            ## <theLongName>
                                                                                            ## is
                                                                                            ## for
                                                                                            ## the
                                                                                            ## complete,
                                                                                            ## official,
                                                                                            ## long
                                                                                            ## name
                                                                                            ##
                                                                                            ## !
                                                                                            ## <theShortName>
                                                                                            ## is
                                                                                            ## for
                                                                                            ## the
                                                                                            ## short
                                                                                            ## name
                                                                                            ## used
                                                                                            ## for
                                                                                            ## resources
    ## szv:Handle(IFSelect_Signature) mySignType;


proc setNames*(this: var XSControlController; theLongName: StandardCString;
              theShortName: StandardCString) {.importcpp: "SetNames",
    header: "XSControl_Controller.hxx".}
proc autoRecord*(this: XSControlController) {.noSideEffect, importcpp: "AutoRecord",
    header: "XSControl_Controller.hxx".}
proc record*(this: XSControlController; name: StandardCString) {.noSideEffect,
    importcpp: "Record", header: "XSControl_Controller.hxx".}
proc recorded*(name: StandardCString): Handle[XSControlController] {.
    importcpp: "XSControl_Controller::Recorded(@)",
    header: "XSControl_Controller.hxx".}
proc name*(this: XSControlController; rsc: bool = false): StandardCString {.
    noSideEffect, importcpp: "Name", header: "XSControl_Controller.hxx".}
#[ proc protocol*(this: XSControlController): Handle[InterfaceProtocol] {.noSideEffect,
    importcpp: "Protocol", header: "XSControl_Controller.hxx".}
proc workLibrary*(this: XSControlController): Handle[IFSelectWorkLibrary] {.
    noSideEffect, importcpp: "WorkLibrary", header: "XSControl_Controller.hxx".}
proc newModel*(this: XSControlController): Handle[InterfaceInterfaceModel] {.
    noSideEffect, importcpp: "NewModel", header: "XSControl_Controller.hxx".}
proc actorRead*(this: XSControlController; model: Handle[InterfaceInterfaceModel]): Handle[
    TransferActorOfTransientProcess] {.noSideEffect, importcpp: "ActorRead",
                                      header: "XSControl_Controller.hxx".}
proc actorWrite*(this: XSControlController): Handle[TransferActorOfFinderProcess] {.
    noSideEffect, importcpp: "ActorWrite", header: "XSControl_Controller.hxx".}
proc setModeWrite*(this: var XSControlController; modemin: cint; modemax: cint;
                  shape: bool = true) {.importcpp: "SetModeWrite",
                                    header: "XSControl_Controller.hxx".}
proc setModeWriteHelp*(this: var XSControlController; modetrans: cint;
                      help: StandardCString; shape: bool = true) {.
    importcpp: "SetModeWriteHelp", header: "XSControl_Controller.hxx".}
proc modeWriteBounds*(this: XSControlController; modemin: var cint; modemax: var cint;
                     shape: bool = true): bool {.noSideEffect,
    importcpp: "ModeWriteBounds", header: "XSControl_Controller.hxx".}
proc isModeWrite*(this: XSControlController; modetrans: cint; shape: bool = true): bool {.
    noSideEffect, importcpp: "IsModeWrite", header: "XSControl_Controller.hxx".}
proc modeWriteHelp*(this: XSControlController; modetrans: cint; shape: bool = true): StandardCString {.
    noSideEffect, importcpp: "ModeWriteHelp", header: "XSControl_Controller.hxx".}
proc recognizeWriteTransient*(this: XSControlController;
                             obj: Handle[StandardTransient]; modetrans: cint = 0): bool {.
    noSideEffect, importcpp: "RecognizeWriteTransient",
    header: "XSControl_Controller.hxx".}
proc transferWriteTransient*(this: XSControlController;
                            obj: Handle[StandardTransient];
                            fp: Handle[TransferFinderProcess];
                            model: Handle[InterfaceInterfaceModel];
                            modetrans: cint = 0; theProgress: MessageProgressRange = messageProgressRange()): IFSelectReturnStatus {.
    noSideEffect, importcpp: "TransferWriteTransient",
    header: "XSControl_Controller.hxx".}
proc recognizeWriteShape*(this: XSControlController; shape: TopoDS_Shape;
                         modetrans: cint = 0): bool {.noSideEffect,
    importcpp: "RecognizeWriteShape", header: "XSControl_Controller.hxx".}
proc transferWriteShape*(this: XSControlController; shape: TopoDS_Shape;
                        fp: Handle[TransferFinderProcess];
                        model: Handle[InterfaceInterfaceModel];
                        modetrans: cint = 0; theProgress: MessageProgressRange = messageProgressRange()): IFSelectReturnStatus {.
    noSideEffect, importcpp: "TransferWriteShape",
    header: "XSControl_Controller.hxx".}
proc addSessionItem*(this: var XSControlController;
                    theItem: Handle[StandardTransient]; theName: StandardCString;
                    toApply: bool = false) {.importcpp: "AddSessionItem",
    header: "XSControl_Controller.hxx".}
proc sessionItem*(this: XSControlController; theName: StandardCString): Handle[
    StandardTransient] {.noSideEffect, importcpp: "SessionItem",
                        header: "XSControl_Controller.hxx".}
proc customise*(this: var XSControlController; ws: var Handle[XSControlWorkSession]) {.
    importcpp: "Customise", header: "XSControl_Controller.hxx".}
proc adaptorSession*(this: XSControlController): NCollectionDataMap[
    TCollectionAsciiString, Handle[StandardTransient]] {.noSideEffect,
    importcpp: "AdaptorSession", header: "XSControl_Controller.hxx".}
type
  XSControlControllerbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "XSControl_Controller::get_type_name(@)",
                            header: "XSControl_Controller.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "XSControl_Controller::get_type_descriptor(@)",
    header: "XSControl_Controller.hxx".}
proc dynamicType*(this: XSControlController): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "XSControl_Controller.hxx".}

























 ]#