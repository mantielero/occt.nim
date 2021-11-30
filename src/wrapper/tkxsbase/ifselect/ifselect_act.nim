##  Created on: 1996-03-05
##  Created by: Christian CAILLET
##  Copyright (c) 1996-1999 Matra Datavision
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
discard "forward decl of IFSelect_SessionPilot"
discard "forward decl of IFSelect_Act"
type
  HandleIFSelectAct* = Handle[IFSelectAct]

## ! Act gives a simple way to define and add functions to be ran
## ! from a SessionPilot, as follows :
## !
## ! Define a function as
## ! static IFSelect_RetStatus myfunc
## ! (const Standard_CString name,
## ! const Handle(IFSelect_SessionPilot)& pilot)
## ! { ... }
## ! When ran, it receives the exact name (string) of the called
## ! function, and the SessionPilot which brings other infos
## !
## ! Add it by
## ! IFSelect_Act::AddFunc (name,help,myfunc);
## ! for a normal function, or
## ! IFSelect_Act::AddFSet (name,help,myfunc);
## ! for a function which is intended to create a control item
## ! name and help are given as CString
## !
## ! Then, it is available for run

type
  IFSelectAct* {.importcpp: "IFSelect_Act", header: "IFSelect_Act.hxx", bycopy.} = object of IFSelectActivator ##
                                                                                                     ## !
                                                                                                     ## Creates
                                                                                                     ## an
                                                                                                     ## Act
                                                                                                     ## with
                                                                                                     ## a
                                                                                                     ## name,
                                                                                                     ## help
                                                                                                     ## and
                                                                                                     ## a
                                                                                                     ## function
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## mode
                                                                                                     ## (Add
                                                                                                     ## or
                                                                                                     ## AddSet)
                                                                                                     ## is
                                                                                                     ## given
                                                                                                     ## when
                                                                                                     ## recording


proc newIFSelectAct*(name: cstring; help: cstring; `func`: IFSelectActFunc): IFSelectAct {.
    cdecl, constructor, importcpp: "IFSelect_Act(@)", header: "IFSelect_Act.hxx".}
proc `do`*(this: var IFSelectAct; number: cint; pilot: Handle[IFSelectSessionPilot]): IFSelectReturnStatus {.
    cdecl, importcpp: "Do", header: "IFSelect_Act.hxx".}
proc help*(this: IFSelectAct; number: cint): cstring {.noSideEffect, cdecl,
    importcpp: "Help", header: "IFSelect_Act.hxx".}
proc setGroup*(group: cstring; file: cstring = "") {.cdecl,
    importcpp: "IFSelect_Act::SetGroup(@)", header: "IFSelect_Act.hxx".}
proc addFunc*(name: cstring; help: cstring; `func`: IFSelectActFunc) {.cdecl,
    importcpp: "IFSelect_Act::AddFunc(@)", header: "IFSelect_Act.hxx".}
proc addFSet*(name: cstring; help: cstring; `func`: IFSelectActFunc) {.cdecl,
    importcpp: "IFSelect_Act::AddFSet(@)", header: "IFSelect_Act.hxx".}