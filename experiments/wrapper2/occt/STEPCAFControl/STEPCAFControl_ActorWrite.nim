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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Boolean,
  ../TopTools/TopTools_MapOfShape, ../STEPControl/STEPControl_ActorWrite

discard "forward decl of TopoDS_Shape"
discard "forward decl of STEPCAFControl_ActorWrite"
discard "forward decl of STEPCAFControl_ActorWrite"
type
  Handle_STEPCAFControl_ActorWrite* = handle[STEPCAFControl_ActorWrite]

## ! Extends ActorWrite from STEPControl by analysis of
## ! whether shape is assembly (based on information from DECAF)

type
  STEPCAFControl_ActorWrite* {.importcpp: "STEPCAFControl_ActorWrite",
                              header: "STEPCAFControl_ActorWrite.hxx", bycopy.} = object of STEPControl_ActorWrite


proc constructSTEPCAFControl_ActorWrite*(): STEPCAFControl_ActorWrite {.
    constructor, importcpp: "STEPCAFControl_ActorWrite(@)",
    header: "STEPCAFControl_ActorWrite.hxx".}
proc IsAssembly*(this: STEPCAFControl_ActorWrite; S: var TopoDS_Shape): Standard_Boolean {.
    noSideEffect, importcpp: "IsAssembly", header: "STEPCAFControl_ActorWrite.hxx".}
proc SetStdMode*(this: var STEPCAFControl_ActorWrite;
                stdmode: Standard_Boolean = Standard_True) {.
    importcpp: "SetStdMode", header: "STEPCAFControl_ActorWrite.hxx".}
proc ClearMap*(this: var STEPCAFControl_ActorWrite) {.importcpp: "ClearMap",
    header: "STEPCAFControl_ActorWrite.hxx".}
proc RegisterAssembly*(this: var STEPCAFControl_ActorWrite; S: TopoDS_Shape) {.
    importcpp: "RegisterAssembly", header: "STEPCAFControl_ActorWrite.hxx".}
type
  STEPCAFControl_ActorWritebase_type* = STEPControl_ActorWrite

proc get_type_name*(): cstring {.importcpp: "STEPCAFControl_ActorWrite::get_type_name(@)",
                              header: "STEPCAFControl_ActorWrite.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "STEPCAFControl_ActorWrite::get_type_descriptor(@)",
    header: "STEPCAFControl_ActorWrite.hxx".}
proc DynamicType*(this: STEPCAFControl_ActorWrite): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "STEPCAFControl_ActorWrite.hxx".}