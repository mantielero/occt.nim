##  Created on: 2000-10-05
##  Created by: Andrey BETENEV
##  Copyright (c) 2000-2014 OPEN CASCADE SAS
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

discard "forward decl of TopoDS_Shape"
discard "forward decl of STEPCAFControl_ActorWrite"
discard "forward decl of STEPCAFControl_ActorWrite"
type
  HandleSTEPCAFControlActorWrite* = Handle[STEPCAFControlActorWrite]

## ! Extends ActorWrite from STEPControl by analysis of
## ! whether shape is assembly (based on information from DECAF)

type
  STEPCAFControlActorWrite* {.importcpp: "STEPCAFControl_ActorWrite",
                             header: "STEPCAFControl_ActorWrite.hxx", bycopy.} = object of STEPControlActorWrite


proc constructSTEPCAFControlActorWrite*(): STEPCAFControlActorWrite {.constructor,
    importcpp: "STEPCAFControl_ActorWrite(@)",
    header: "STEPCAFControl_ActorWrite.hxx".}
proc isAssembly*(this: STEPCAFControlActorWrite; s: var TopoDS_Shape): StandardBoolean {.
    noSideEffect, importcpp: "IsAssembly", header: "STEPCAFControl_ActorWrite.hxx".}
proc setStdMode*(this: var STEPCAFControlActorWrite;
                stdmode: StandardBoolean = standardTrue) {.importcpp: "SetStdMode",
    header: "STEPCAFControl_ActorWrite.hxx".}
proc clearMap*(this: var STEPCAFControlActorWrite) {.importcpp: "ClearMap",
    header: "STEPCAFControl_ActorWrite.hxx".}
proc registerAssembly*(this: var STEPCAFControlActorWrite; s: TopoDS_Shape) {.
    importcpp: "RegisterAssembly", header: "STEPCAFControl_ActorWrite.hxx".}
type
  STEPCAFControlActorWritebaseType* = STEPControlActorWrite

proc getTypeName*(): cstring {.importcpp: "STEPCAFControl_ActorWrite::get_type_name(@)",
                            header: "STEPCAFControl_ActorWrite.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "STEPCAFControl_ActorWrite::get_type_descriptor(@)",
    header: "STEPCAFControl_ActorWrite.hxx".}
proc dynamicType*(this: STEPCAFControlActorWrite): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "STEPCAFControl_ActorWrite.hxx".}

