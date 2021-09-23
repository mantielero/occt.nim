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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  ../TCollection/TCollection_AsciiString, ../TColStd/TColStd_SequenceOfTransient,
  ../TColStd/TColStd_HSequenceOfHAsciiString,
  ../TColStd/TColStd_SequenceOfInteger,
  ../Interface/Interface_HArray1OfHAsciiString, ../Standard/Standard_Transient,
  ../NCollection/NCollection_Vector, ../IFSelect/IFSelect_ReturnStatus,
  ../Standard/Standard_Transient, ../NCollection/NCollection_DataMap,
  ../TCollection/TCollection_AsciiString, ../Message/Message_ProgressRange

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
  Handle_XSControl_Controller* = handle[XSControl_Controller]

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
  XSControl_Controller* {.importcpp: "XSControl_Controller",
                         header: "XSControl_Controller.hxx", bycopy.} = object of Standard_Transient ##
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


proc SetNames*(this: var XSControl_Controller; theLongName: Standard_CString;
              theShortName: Standard_CString) {.importcpp: "SetNames",
    header: "XSControl_Controller.hxx".}
proc AutoRecord*(this: XSControl_Controller) {.noSideEffect,
    importcpp: "AutoRecord", header: "XSControl_Controller.hxx".}
proc Record*(this: XSControl_Controller; name: Standard_CString) {.noSideEffect,
    importcpp: "Record", header: "XSControl_Controller.hxx".}
proc Recorded*(name: Standard_CString): handle[XSControl_Controller] {.
    importcpp: "XSControl_Controller::Recorded(@)",
    header: "XSControl_Controller.hxx".}
proc Name*(this: XSControl_Controller; rsc: Standard_Boolean = Standard_False): Standard_CString {.
    noSideEffect, importcpp: "Name", header: "XSControl_Controller.hxx".}
proc Protocol*(this: XSControl_Controller): handle[Interface_Protocol] {.
    noSideEffect, importcpp: "Protocol", header: "XSControl_Controller.hxx".}
proc WorkLibrary*(this: XSControl_Controller): handle[IFSelect_WorkLibrary] {.
    noSideEffect, importcpp: "WorkLibrary", header: "XSControl_Controller.hxx".}
proc NewModel*(this: XSControl_Controller): handle[Interface_InterfaceModel] {.
    noSideEffect, importcpp: "NewModel", header: "XSControl_Controller.hxx".}
proc ActorRead*(this: XSControl_Controller; model: handle[Interface_InterfaceModel]): handle[
    Transfer_ActorOfTransientProcess] {.noSideEffect, importcpp: "ActorRead",
                                       header: "XSControl_Controller.hxx".}
proc ActorWrite*(this: XSControl_Controller): handle[Transfer_ActorOfFinderProcess] {.
    noSideEffect, importcpp: "ActorWrite", header: "XSControl_Controller.hxx".}
proc SetModeWrite*(this: var XSControl_Controller; modemin: Standard_Integer;
                  modemax: Standard_Integer;
                  shape: Standard_Boolean = Standard_True) {.
    importcpp: "SetModeWrite", header: "XSControl_Controller.hxx".}
proc SetModeWriteHelp*(this: var XSControl_Controller; modetrans: Standard_Integer;
                      help: Standard_CString;
                      shape: Standard_Boolean = Standard_True) {.
    importcpp: "SetModeWriteHelp", header: "XSControl_Controller.hxx".}
proc ModeWriteBounds*(this: XSControl_Controller; modemin: var Standard_Integer;
                     modemax: var Standard_Integer;
                     shape: Standard_Boolean = Standard_True): Standard_Boolean {.
    noSideEffect, importcpp: "ModeWriteBounds", header: "XSControl_Controller.hxx".}
proc IsModeWrite*(this: XSControl_Controller; modetrans: Standard_Integer;
                 shape: Standard_Boolean = Standard_True): Standard_Boolean {.
    noSideEffect, importcpp: "IsModeWrite", header: "XSControl_Controller.hxx".}
proc ModeWriteHelp*(this: XSControl_Controller; modetrans: Standard_Integer;
                   shape: Standard_Boolean = Standard_True): Standard_CString {.
    noSideEffect, importcpp: "ModeWriteHelp", header: "XSControl_Controller.hxx".}
proc RecognizeWriteTransient*(this: XSControl_Controller;
                             obj: handle[Standard_Transient];
                             modetrans: Standard_Integer = 0): Standard_Boolean {.
    noSideEffect, importcpp: "RecognizeWriteTransient",
    header: "XSControl_Controller.hxx".}
proc TransferWriteTransient*(this: XSControl_Controller;
                            obj: handle[Standard_Transient];
                            FP: handle[Transfer_FinderProcess];
                            model: handle[Interface_InterfaceModel];
                            modetrans: Standard_Integer = 0; theProgress: Message_ProgressRange = Message_ProgressRange()): IFSelect_ReturnStatus {.
    noSideEffect, importcpp: "TransferWriteTransient",
    header: "XSControl_Controller.hxx".}
proc RecognizeWriteShape*(this: XSControl_Controller; shape: TopoDS_Shape;
                         modetrans: Standard_Integer = 0): Standard_Boolean {.
    noSideEffect, importcpp: "RecognizeWriteShape",
    header: "XSControl_Controller.hxx".}
proc TransferWriteShape*(this: XSControl_Controller; shape: TopoDS_Shape;
                        FP: handle[Transfer_FinderProcess];
                        model: handle[Interface_InterfaceModel];
                        modetrans: Standard_Integer = 0; theProgress: Message_ProgressRange = Message_ProgressRange()): IFSelect_ReturnStatus {.
    noSideEffect, importcpp: "TransferWriteShape",
    header: "XSControl_Controller.hxx".}
proc AddSessionItem*(this: var XSControl_Controller;
                    theItem: handle[Standard_Transient];
                    theName: Standard_CString;
                    toApply: Standard_Boolean = Standard_False) {.
    importcpp: "AddSessionItem", header: "XSControl_Controller.hxx".}
proc SessionItem*(this: XSControl_Controller; theName: Standard_CString): handle[
    Standard_Transient] {.noSideEffect, importcpp: "SessionItem",
                         header: "XSControl_Controller.hxx".}
proc Customise*(this: var XSControl_Controller;
               WS: var handle[XSControl_WorkSession]) {.importcpp: "Customise",
    header: "XSControl_Controller.hxx".}
proc AdaptorSession*(this: XSControl_Controller): NCollection_DataMap[
    TCollection_AsciiString, handle[Standard_Transient]] {.noSideEffect,
    importcpp: "AdaptorSession", header: "XSControl_Controller.hxx".}
type
  XSControl_Controllerbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "XSControl_Controller::get_type_name(@)",
                              header: "XSControl_Controller.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "XSControl_Controller::get_type_descriptor(@)",
    header: "XSControl_Controller.hxx".}
proc DynamicType*(this: XSControl_Controller): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "XSControl_Controller.hxx".}