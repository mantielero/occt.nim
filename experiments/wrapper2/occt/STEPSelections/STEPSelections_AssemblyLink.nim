##  Created on: 1999-03-24
##  Created by: data exchange team
##  Copyright (c) 1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Transient

discard "forward decl of StepRepr_NextAssemblyUsageOccurrence"
discard "forward decl of Standard_Transient"
discard "forward decl of STEPSelections_AssemblyComponent"
discard "forward decl of STEPSelections_AssemblyLink"
discard "forward decl of STEPSelections_AssemblyLink"
type
  Handle_STEPSelections_AssemblyLink* = handle[STEPSelections_AssemblyLink]
  STEPSelections_AssemblyLink* {.importcpp: "STEPSelections_AssemblyLink",
                                header: "STEPSelections_AssemblyLink.hxx", bycopy.} = object of Standard_Transient


proc constructSTEPSelections_AssemblyLink*(): STEPSelections_AssemblyLink {.
    constructor, importcpp: "STEPSelections_AssemblyLink(@)",
    header: "STEPSelections_AssemblyLink.hxx".}
proc constructSTEPSelections_AssemblyLink*(
    nauo: handle[StepRepr_NextAssemblyUsageOccurrence];
    item: handle[Standard_Transient];
    part: handle[STEPSelections_AssemblyComponent]): STEPSelections_AssemblyLink {.
    constructor, importcpp: "STEPSelections_AssemblyLink(@)",
    header: "STEPSelections_AssemblyLink.hxx".}
proc GetNAUO*(this: STEPSelections_AssemblyLink): handle[
    StepRepr_NextAssemblyUsageOccurrence] {.noSideEffect, importcpp: "GetNAUO",
    header: "STEPSelections_AssemblyLink.hxx".}
proc GetItem*(this: STEPSelections_AssemblyLink): handle[Standard_Transient] {.
    noSideEffect, importcpp: "GetItem", header: "STEPSelections_AssemblyLink.hxx".}
proc GetComponent*(this: STEPSelections_AssemblyLink): handle[
    STEPSelections_AssemblyComponent] {.noSideEffect, importcpp: "GetComponent", header: "STEPSelections_AssemblyLink.hxx".}
proc SetNAUO*(this: var STEPSelections_AssemblyLink;
             nauo: handle[StepRepr_NextAssemblyUsageOccurrence]) {.
    importcpp: "SetNAUO", header: "STEPSelections_AssemblyLink.hxx".}
proc SetItem*(this: var STEPSelections_AssemblyLink;
             item: handle[Standard_Transient]) {.importcpp: "SetItem",
    header: "STEPSelections_AssemblyLink.hxx".}
proc SetComponent*(this: var STEPSelections_AssemblyLink;
                  part: handle[STEPSelections_AssemblyComponent]) {.
    importcpp: "SetComponent", header: "STEPSelections_AssemblyLink.hxx".}
type
  STEPSelections_AssemblyLinkbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "STEPSelections_AssemblyLink::get_type_name(@)",
                              header: "STEPSelections_AssemblyLink.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "STEPSelections_AssemblyLink::get_type_descriptor(@)",
    header: "STEPSelections_AssemblyLink.hxx".}
proc DynamicType*(this: STEPSelections_AssemblyLink): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "STEPSelections_AssemblyLink.hxx".}