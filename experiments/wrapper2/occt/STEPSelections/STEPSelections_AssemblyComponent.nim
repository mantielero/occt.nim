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
  ../Standard/Standard, ../Standard/Standard_Type,
  STEPSelections_HSequenceOfAssemblyLink, ../Standard/Standard_Transient

discard "forward decl of StepShape_ShapeDefinitionRepresentation"
discard "forward decl of STEPSelections_AssemblyComponent"
discard "forward decl of STEPSelections_AssemblyComponent"
type
  Handle_STEPSelections_AssemblyComponent* = handle[
      STEPSelections_AssemblyComponent]
  STEPSelections_AssemblyComponent* {.importcpp: "STEPSelections_AssemblyComponent", header: "STEPSelections_AssemblyComponent.hxx",
                                     bycopy.} = object of Standard_Transient


proc constructSTEPSelections_AssemblyComponent*(): STEPSelections_AssemblyComponent {.
    constructor, importcpp: "STEPSelections_AssemblyComponent(@)",
    header: "STEPSelections_AssemblyComponent.hxx".}
proc constructSTEPSelections_AssemblyComponent*(
    sdr: handle[StepShape_ShapeDefinitionRepresentation];
    list: handle[STEPSelections_HSequenceOfAssemblyLink]): STEPSelections_AssemblyComponent {.
    constructor, importcpp: "STEPSelections_AssemblyComponent(@)",
    header: "STEPSelections_AssemblyComponent.hxx".}
proc GetSDR*(this: STEPSelections_AssemblyComponent): handle[
    StepShape_ShapeDefinitionRepresentation] {.noSideEffect, importcpp: "GetSDR",
    header: "STEPSelections_AssemblyComponent.hxx".}
proc GetList*(this: STEPSelections_AssemblyComponent): handle[
    STEPSelections_HSequenceOfAssemblyLink] {.noSideEffect, importcpp: "GetList",
    header: "STEPSelections_AssemblyComponent.hxx".}
proc SetSDR*(this: var STEPSelections_AssemblyComponent;
            sdr: handle[StepShape_ShapeDefinitionRepresentation]) {.
    importcpp: "SetSDR", header: "STEPSelections_AssemblyComponent.hxx".}
proc SetList*(this: var STEPSelections_AssemblyComponent;
             list: handle[STEPSelections_HSequenceOfAssemblyLink]) {.
    importcpp: "SetList", header: "STEPSelections_AssemblyComponent.hxx".}
type
  STEPSelections_AssemblyComponentbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "STEPSelections_AssemblyComponent::get_type_name(@)",
                              header: "STEPSelections_AssemblyComponent.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "STEPSelections_AssemblyComponent::get_type_descriptor(@)",
    header: "STEPSelections_AssemblyComponent.hxx".}
proc DynamicType*(this: STEPSelections_AssemblyComponent): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "STEPSelections_AssemblyComponent.hxx".}