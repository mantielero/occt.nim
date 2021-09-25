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

discard "forward decl of StepRepr_NextAssemblyUsageOccurrence"
discard "forward decl of Standard_Transient"
discard "forward decl of STEPSelections_AssemblyComponent"
discard "forward decl of STEPSelections_AssemblyLink"
discard "forward decl of STEPSelections_AssemblyLink"
type
  HandleSTEPSelectionsAssemblyLink* = Handle[STEPSelectionsAssemblyLink]
  STEPSelectionsAssemblyLink* {.importcpp: "STEPSelections_AssemblyLink",
                               header: "STEPSelections_AssemblyLink.hxx", bycopy.} = object of StandardTransient


proc constructSTEPSelectionsAssemblyLink*(): STEPSelectionsAssemblyLink {.
    constructor, importcpp: "STEPSelections_AssemblyLink(@)",
    header: "STEPSelections_AssemblyLink.hxx".}
proc constructSTEPSelectionsAssemblyLink*(
    nauo: Handle[StepReprNextAssemblyUsageOccurrence];
    item: Handle[StandardTransient]; part: Handle[STEPSelectionsAssemblyComponent]): STEPSelectionsAssemblyLink {.
    constructor, importcpp: "STEPSelections_AssemblyLink(@)",
    header: "STEPSelections_AssemblyLink.hxx".}
proc getNAUO*(this: STEPSelectionsAssemblyLink): Handle[
    StepReprNextAssemblyUsageOccurrence] {.noSideEffect, importcpp: "GetNAUO",
    header: "STEPSelections_AssemblyLink.hxx".}
proc getItem*(this: STEPSelectionsAssemblyLink): Handle[StandardTransient] {.
    noSideEffect, importcpp: "GetItem", header: "STEPSelections_AssemblyLink.hxx".}
proc getComponent*(this: STEPSelectionsAssemblyLink): Handle[
    STEPSelectionsAssemblyComponent] {.noSideEffect, importcpp: "GetComponent",
                                      header: "STEPSelections_AssemblyLink.hxx".}
proc setNAUO*(this: var STEPSelectionsAssemblyLink;
             nauo: Handle[StepReprNextAssemblyUsageOccurrence]) {.
    importcpp: "SetNAUO", header: "STEPSelections_AssemblyLink.hxx".}
proc setItem*(this: var STEPSelectionsAssemblyLink; item: Handle[StandardTransient]) {.
    importcpp: "SetItem", header: "STEPSelections_AssemblyLink.hxx".}
proc setComponent*(this: var STEPSelectionsAssemblyLink;
                  part: Handle[STEPSelectionsAssemblyComponent]) {.
    importcpp: "SetComponent", header: "STEPSelections_AssemblyLink.hxx".}
type
  STEPSelectionsAssemblyLinkbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "STEPSelections_AssemblyLink::get_type_name(@)",
                            header: "STEPSelections_AssemblyLink.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "STEPSelections_AssemblyLink::get_type_descriptor(@)",
    header: "STEPSelections_AssemblyLink.hxx".}
proc dynamicType*(this: STEPSelectionsAssemblyLink): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "STEPSelections_AssemblyLink.hxx".}
