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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  ../TCollection/TCollection_AsciiString, IFSelect_ActFunc, IFSelect_Activator,
  ../Standard/Standard_CString, IFSelect_ReturnStatus,
  ../Standard/Standard_Integer

discard "forward decl of Standard_DomainError"
discard "forward decl of IFSelect_SessionPilot"
discard "forward decl of IFSelect_Act"
discard "forward decl of IFSelect_Act"
type
  Handle_IFSelect_Act* = handle[IFSelect_Act]

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
  IFSelect_Act* {.importcpp: "IFSelect_Act", header: "IFSelect_Act.hxx", bycopy.} = object of IFSelect_Activator ##
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


proc constructIFSelect_Act*(name: Standard_CString; help: Standard_CString;
                           `func`: IFSelect_ActFunc): IFSelect_Act {.constructor,
    importcpp: "IFSelect_Act(@)", header: "IFSelect_Act.hxx".}
proc Do*(this: var IFSelect_Act; number: Standard_Integer;
        pilot: handle[IFSelect_SessionPilot]): IFSelect_ReturnStatus {.
    importcpp: "Do", header: "IFSelect_Act.hxx".}
proc Help*(this: IFSelect_Act; number: Standard_Integer): Standard_CString {.
    noSideEffect, importcpp: "Help", header: "IFSelect_Act.hxx".}
proc SetGroup*(group: Standard_CString; file: Standard_CString = "") {.
    importcpp: "IFSelect_Act::SetGroup(@)", header: "IFSelect_Act.hxx".}
proc AddFunc*(name: Standard_CString; help: Standard_CString;
             `func`: IFSelect_ActFunc) {.importcpp: "IFSelect_Act::AddFunc(@)",
                                       header: "IFSelect_Act.hxx".}
proc AddFSet*(name: Standard_CString; help: Standard_CString;
             `func`: IFSelect_ActFunc) {.importcpp: "IFSelect_Act::AddFSet(@)",
                                       header: "IFSelect_Act.hxx".}
type
  IFSelect_Actbase_type* = IFSelect_Activator

proc get_type_name*(): cstring {.importcpp: "IFSelect_Act::get_type_name(@)",
                              header: "IFSelect_Act.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IFSelect_Act::get_type_descriptor(@)", header: "IFSelect_Act.hxx".}
proc DynamicType*(this: IFSelect_Act): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IFSelect_Act.hxx".}