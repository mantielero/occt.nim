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

discard "forward decl of Transfer_Finder"
discard "forward decl of Transfer_Binder"
discard "forward decl of Transfer_FinderProcess"
discard "forward decl of IGESControl_ActorWrite"
discard "forward decl of IGESControl_ActorWrite"
type
  HandleIGESControlActorWrite* = Handle[IGESControlActorWrite]

## ! Actor to write Shape to IGES

type
  IGESControlActorWrite* {.importcpp: "IGESControl_ActorWrite",
                          header: "IGESControl_ActorWrite.hxx", bycopy.} = object of TransferActorOfFinderProcess


proc constructIGESControlActorWrite*(): IGESControlActorWrite {.constructor,
    importcpp: "IGESControl_ActorWrite(@)", header: "IGESControl_ActorWrite.hxx".}
proc recognize*(this: var IGESControlActorWrite; start: Handle[TransferFinder]): StandardBoolean {.
    importcpp: "Recognize", header: "IGESControl_ActorWrite.hxx".}
proc transfer*(this: var IGESControlActorWrite; start: Handle[TransferFinder];
              fp: Handle[TransferFinderProcess];
              theProgress: MessageProgressRange = messageProgressRange()): Handle[
    TransferBinder] {.importcpp: "Transfer", header: "IGESControl_ActorWrite.hxx".}
type
  IGESControlActorWritebaseType* = TransferActorOfFinderProcess

proc getTypeName*(): cstring {.importcpp: "IGESControl_ActorWrite::get_type_name(@)",
                            header: "IGESControl_ActorWrite.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESControl_ActorWrite::get_type_descriptor(@)",
    header: "IGESControl_ActorWrite.hxx".}
proc dynamicType*(this: IGESControlActorWrite): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESControl_ActorWrite.hxx".}

