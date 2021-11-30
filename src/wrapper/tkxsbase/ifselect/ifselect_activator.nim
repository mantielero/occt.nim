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

discard "forward decl of Standard_DomainError"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of IFSelect_SessionPilot"
discard "forward decl of IFSelect_Activator"
type
  HandleIFSelectActivator* = Handle[IFSelectActivator]

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
  IFSelectActivator* {.importcpp: "IFSelect_Activator",
                      header: "IFSelect_Activator.hxx", bycopy.} = object of StandardTransient ##
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


proc adding*(actor: Handle[IFSelectActivator]; number: cint; command: cstring;
            mode: cint) {.cdecl, importcpp: "IFSelect_Activator::Adding(@)",
                        header: "IFSelect_Activator.hxx".}
proc add*(this: IFSelectActivator; number: cint; command: cstring) {.noSideEffect,
    cdecl, importcpp: "Add", header: "IFSelect_Activator.hxx".}
proc addSet*(this: IFSelectActivator; number: cint; command: cstring) {.noSideEffect,
    cdecl, importcpp: "AddSet", header: "IFSelect_Activator.hxx".}
proc remove*(command: cstring) {.cdecl, importcpp: "IFSelect_Activator::Remove(@)",
                              header: "IFSelect_Activator.hxx".}
proc select*(command: cstring; number: var cint; actor: var Handle[IFSelectActivator]): bool {.
    cdecl, importcpp: "IFSelect_Activator::Select(@)", header: "IFSelect_Activator.hxx".}
proc mode*(command: cstring): cint {.cdecl, importcpp: "IFSelect_Activator::Mode(@)",
                                 header: "IFSelect_Activator.hxx".}
proc commands*(mode: cint = -1; command: cstring = ""): Handle[
    TColStdHSequenceOfAsciiString] {.cdecl, importcpp: "IFSelect_Activator::Commands(@)",
                                    header: "IFSelect_Activator.hxx".}
proc `do`*(this: var IFSelectActivator; number: cint;
          pilot: Handle[IFSelectSessionPilot]): IFSelectReturnStatus {.cdecl,
    importcpp: "Do", header: "IFSelect_Activator.hxx".}
proc help*(this: IFSelectActivator; number: cint): cstring {.noSideEffect, cdecl,
    importcpp: "Help", header: "IFSelect_Activator.hxx".}
proc group*(this: IFSelectActivator): cstring {.noSideEffect, cdecl,
    importcpp: "Group", header: "IFSelect_Activator.hxx".}
proc file*(this: IFSelectActivator): cstring {.noSideEffect, cdecl, importcpp: "File",
    header: "IFSelect_Activator.hxx".}
proc setForGroup*(this: var IFSelectActivator; group: cstring; file: cstring = "") {.
    cdecl, importcpp: "SetForGroup", header: "IFSelect_Activator.hxx".}