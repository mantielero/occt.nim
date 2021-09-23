##  Created on: 1998-09-07
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
  ../Standard/Standard, ../Standard/Standard_Type,
  ../Transfer/Transfer_ActorOfFinderProcess, ../Standard/Standard_Boolean

discard "forward decl of Transfer_Finder"
discard "forward decl of Transfer_Binder"
discard "forward decl of Transfer_FinderProcess"
discard "forward decl of IGESControl_ActorWrite"
discard "forward decl of IGESControl_ActorWrite"
type
  Handle_IGESControl_ActorWrite* = handle[IGESControl_ActorWrite]

## ! Actor to write Shape to IGES

type
  IGESControl_ActorWrite* {.importcpp: "IGESControl_ActorWrite",
                           header: "IGESControl_ActorWrite.hxx", bycopy.} = object of Transfer_ActorOfFinderProcess


proc constructIGESControl_ActorWrite*(): IGESControl_ActorWrite {.constructor,
    importcpp: "IGESControl_ActorWrite(@)", header: "IGESControl_ActorWrite.hxx".}
proc Recognize*(this: var IGESControl_ActorWrite; start: handle[Transfer_Finder]): Standard_Boolean {.
    importcpp: "Recognize", header: "IGESControl_ActorWrite.hxx".}
proc Transfer*(this: var IGESControl_ActorWrite; start: handle[Transfer_Finder];
              FP: handle[Transfer_FinderProcess];
              theProgress: Message_ProgressRange = Message_ProgressRange()): handle[
    Transfer_Binder] {.importcpp: "Transfer", header: "IGESControl_ActorWrite.hxx".}
type
  IGESControl_ActorWritebase_type* = Transfer_ActorOfFinderProcess

proc get_type_name*(): cstring {.importcpp: "IGESControl_ActorWrite::get_type_name(@)",
                              header: "IGESControl_ActorWrite.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESControl_ActorWrite::get_type_descriptor(@)",
    header: "IGESControl_ActorWrite.hxx".}
proc DynamicType*(this: IGESControl_ActorWrite): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESControl_ActorWrite.hxx".}