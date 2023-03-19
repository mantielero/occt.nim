import stepcafcontrol_types
import ../topods/topods_types
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

proc newSTEPCAFControl_ActorWrite*(): STEPCAFControl_ActorWrite {.cdecl,
    constructor, importcpp: "STEPCAFControl_ActorWrite(@)",
    header: "STEPCAFControl_ActorWrite.hxx".}
proc isAssembly*(this: STEPCAFControl_ActorWrite; S: var TopoDS_Shape): bool {.
    noSideEffect, cdecl, importcpp: "IsAssembly",
    header: "STEPCAFControl_ActorWrite.hxx".}
proc setStdMode*(this: var STEPCAFControl_ActorWrite; stdmode: bool = true) {.cdecl,
    importcpp: "SetStdMode", header: "STEPCAFControl_ActorWrite.hxx".}
proc clearMap*(this: var STEPCAFControl_ActorWrite) {.cdecl, importcpp: "ClearMap",
    header: "STEPCAFControl_ActorWrite.hxx".}
proc registerAssembly*(this: var STEPCAFControl_ActorWrite; S: TopoDS_Shape) {.cdecl,
    importcpp: "RegisterAssembly", header: "STEPCAFControl_ActorWrite.hxx".}