##  Created on: 1993-04-08
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Transient,
  ../Standard/Standard_Boolean

discard "forward decl of Interface_InterfaceError"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_CopyControl"
discard "forward decl of Interface_CopyControl"
type
  Handle_Interface_CopyControl* = handle[Interface_CopyControl]

## ! This deferred class describes the services required by
## ! CopyTool to work. They are very simple and correspond
## ! basically to the management of an indexed map.
## ! But they can be provided by various classes which can
## ! control a Transfer. Each Starting Entity have at most
## ! one Result (Mapping one-one)

type
  Interface_CopyControl* {.importcpp: "Interface_CopyControl",
                          header: "Interface_CopyControl.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                ## !
                                                                                                ## Clears
                                                                                                ## List
                                                                                                ## of
                                                                                                ## Copy
                                                                                                ## Results.
                                                                                                ## Gets
                                                                                                ## Ready
                                                                                                ## to
                                                                                                ## begin
                                                                                                ## another
                                                                                                ## Copy
                                                                                                ##
                                                                                                ## !
                                                                                                ## Process.


proc Clear*(this: var Interface_CopyControl) {.importcpp: "Clear",
    header: "Interface_CopyControl.hxx".}
proc Bind*(this: var Interface_CopyControl; ent: handle[Standard_Transient];
          res: handle[Standard_Transient]) {.importcpp: "Bind",
    header: "Interface_CopyControl.hxx".}
proc Search*(this: Interface_CopyControl; ent: handle[Standard_Transient];
            res: var handle[Standard_Transient]): Standard_Boolean {.noSideEffect,
    importcpp: "Search", header: "Interface_CopyControl.hxx".}
type
  Interface_CopyControlbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Interface_CopyControl::get_type_name(@)",
                              header: "Interface_CopyControl.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Interface_CopyControl::get_type_descriptor(@)",
    header: "Interface_CopyControl.hxx".}
proc DynamicType*(this: Interface_CopyControl): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "Interface_CopyControl.hxx".}