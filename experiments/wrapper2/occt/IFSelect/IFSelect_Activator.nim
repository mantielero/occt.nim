##  Created on: 1993-07-27
##  Created by: Christian CAILLET
##  Copyright (c) 1993-1999 Matra Datavision
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
  ../TCollection/TCollection_AsciiString, ../Standard/Standard_Transient,
  ../Standard/Standard_Integer, ../Standard/Standard_CString,
  ../Standard/Standard_Boolean, ../TColStd/TColStd_HSequenceOfAsciiString,
  IFSelect_ReturnStatus

discard "forward decl of Standard_DomainError"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of IFSelect_SessionPilot"
discard "forward decl of IFSelect_Activator"
discard "forward decl of IFSelect_Activator"
type
  Handle_IFSelect_Activator* = handle[IFSelect_Activator]

## ! Defines the general frame for working with a SessionPilot.
## ! Each Activator treats a set of Commands. Commands are given as
## ! alphanumeric strings. They can be of two main forms :
## ! - classic, to list, evaluate, enrich the session (by itself) :
## ! no specific remark, its complete execution must be described
## ! - creation of a new item : instead of creatinf it plus adding
## ! it to the session (which is a classic way), it is possible
## ! to create it and make it recorded by the SessionPilot :
## ! then, the Pilot will add it to the session; this way allows
## ! the Pilot to manage itself named items
## !
## ! In order to make easier the use of Activator, this class
## ! provides a simple way to Select an Actor for a Command :
## ! each sub-class of SectionActor defines the command titles it
## ! recognizes, plus attaches a Number, unique for this sub-class,
## ! to each distinct command title.
## !
## ! Each time an action is required, the corresponding Number
## ! can then be given to help the selection of the action to do.
## !
## ! The result of an Execution must indicate if it is worth to be
## ! recorded or not : see method Do

type
  IFSelect_Activator* {.importcpp: "IFSelect_Activator",
                       header: "IFSelect_Activator.hxx", bycopy.} = object of Standard_Transient ##
                                                                                          ## !
                                                                                          ## Records,
                                                                                          ## in
                                                                                          ## a
                                                                                          ## Dictionary
                                                                                          ## available
                                                                                          ## for
                                                                                          ## all
                                                                                          ## the
                                                                                          ## Activators,
                                                                                          ##
                                                                                          ## !
                                                                                          ## the
                                                                                          ## command
                                                                                          ## title
                                                                                          ## an
                                                                                          ## Activator
                                                                                          ## can
                                                                                          ## process,
                                                                                          ## attached
                                                                                          ## with
                                                                                          ##
                                                                                          ## !
                                                                                          ## its
                                                                                          ## number,
                                                                                          ## proper
                                                                                          ## for
                                                                                          ## this
                                                                                          ## Activator
                                                                                          ##
                                                                                          ## !
                                                                                          ## <mode>
                                                                                          ## allows
                                                                                          ## to
                                                                                          ## distinguish
                                                                                          ## various
                                                                                          ## execution
                                                                                          ## modes
                                                                                          ##
                                                                                          ## !
                                                                                          ## 0:
                                                                                          ## default
                                                                                          ## mode;
                                                                                          ## 1
                                                                                          ## :
                                                                                          ## for
                                                                                          ## xset
                                                                                          ##
                                                                                          ## !
                                                                                          ## Sets
                                                                                          ## the
                                                                                          ## default
                                                                                          ## values


proc Adding*(actor: handle[IFSelect_Activator]; number: Standard_Integer;
            command: Standard_CString; mode: Standard_Integer) {.
    importcpp: "IFSelect_Activator::Adding(@)", header: "IFSelect_Activator.hxx".}
proc Add*(this: IFSelect_Activator; number: Standard_Integer;
         command: Standard_CString) {.noSideEffect, importcpp: "Add",
                                    header: "IFSelect_Activator.hxx".}
proc AddSet*(this: IFSelect_Activator; number: Standard_Integer;
            command: Standard_CString) {.noSideEffect, importcpp: "AddSet",
                                       header: "IFSelect_Activator.hxx".}
proc Remove*(command: Standard_CString) {.importcpp: "IFSelect_Activator::Remove(@)",
                                       header: "IFSelect_Activator.hxx".}
proc Select*(command: Standard_CString; number: var Standard_Integer;
            actor: var handle[IFSelect_Activator]): Standard_Boolean {.
    importcpp: "IFSelect_Activator::Select(@)", header: "IFSelect_Activator.hxx".}
proc Mode*(command: Standard_CString): Standard_Integer {.
    importcpp: "IFSelect_Activator::Mode(@)", header: "IFSelect_Activator.hxx".}
proc Commands*(mode: Standard_Integer = -1; command: Standard_CString = ""): handle[
    TColStd_HSequenceOfAsciiString] {.importcpp: "IFSelect_Activator::Commands(@)",
                                     header: "IFSelect_Activator.hxx".}
proc Do*(this: var IFSelect_Activator; number: Standard_Integer;
        pilot: handle[IFSelect_SessionPilot]): IFSelect_ReturnStatus {.
    importcpp: "Do", header: "IFSelect_Activator.hxx".}
proc Help*(this: IFSelect_Activator; number: Standard_Integer): Standard_CString {.
    noSideEffect, importcpp: "Help", header: "IFSelect_Activator.hxx".}
proc Group*(this: IFSelect_Activator): Standard_CString {.noSideEffect,
    importcpp: "Group", header: "IFSelect_Activator.hxx".}
proc File*(this: IFSelect_Activator): Standard_CString {.noSideEffect,
    importcpp: "File", header: "IFSelect_Activator.hxx".}
proc SetForGroup*(this: var IFSelect_Activator; group: Standard_CString;
                 file: Standard_CString = "") {.importcpp: "SetForGroup",
    header: "IFSelect_Activator.hxx".}
type
  IFSelect_Activatorbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "IFSelect_Activator::get_type_name(@)",
                              header: "IFSelect_Activator.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IFSelect_Activator::get_type_descriptor(@)",
    header: "IFSelect_Activator.hxx".}
proc DynamicType*(this: IFSelect_Activator): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IFSelect_Activator.hxx".}