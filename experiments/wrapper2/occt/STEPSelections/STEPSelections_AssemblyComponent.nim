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

discard "forward decl of StepShape_ShapeDefinitionRepresentation"
discard "forward decl of STEPSelections_AssemblyComponent"
discard "forward decl of STEPSelections_AssemblyComponent"
type
  HandleSTEPSelectionsAssemblyComponent* = Handle[STEPSelectionsAssemblyComponent]
  STEPSelectionsAssemblyComponent* {.importcpp: "STEPSelections_AssemblyComponent", header: "STEPSelections_AssemblyComponent.hxx",
                                    bycopy.} = object of StandardTransient


proc constructSTEPSelectionsAssemblyComponent*(): STEPSelectionsAssemblyComponent {.
    constructor, importcpp: "STEPSelections_AssemblyComponent(@)",
    header: "STEPSelections_AssemblyComponent.hxx".}
proc constructSTEPSelectionsAssemblyComponent*(
    sdr: Handle[StepShapeShapeDefinitionRepresentation];
    list: Handle[STEPSelectionsHSequenceOfAssemblyLink]): STEPSelectionsAssemblyComponent {.
    constructor, importcpp: "STEPSelections_AssemblyComponent(@)",
    header: "STEPSelections_AssemblyComponent.hxx".}
proc getSDR*(this: STEPSelectionsAssemblyComponent): Handle[
    StepShapeShapeDefinitionRepresentation] {.noSideEffect, importcpp: "GetSDR",
    header: "STEPSelections_AssemblyComponent.hxx".}
proc getList*(this: STEPSelectionsAssemblyComponent): Handle[
    STEPSelectionsHSequenceOfAssemblyLink] {.noSideEffect, importcpp: "GetList",
    header: "STEPSelections_AssemblyComponent.hxx".}
proc setSDR*(this: var STEPSelectionsAssemblyComponent;
            sdr: Handle[StepShapeShapeDefinitionRepresentation]) {.
    importcpp: "SetSDR", header: "STEPSelections_AssemblyComponent.hxx".}
proc setList*(this: var STEPSelectionsAssemblyComponent;
             list: Handle[STEPSelectionsHSequenceOfAssemblyLink]) {.
    importcpp: "SetList", header: "STEPSelections_AssemblyComponent.hxx".}
type
  STEPSelectionsAssemblyComponentbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "STEPSelections_AssemblyComponent::get_type_name(@)",
                            header: "STEPSelections_AssemblyComponent.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "STEPSelections_AssemblyComponent::get_type_descriptor(@)",
    header: "STEPSelections_AssemblyComponent.hxx".}
proc dynamicType*(this: STEPSelectionsAssemblyComponent): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "STEPSelections_AssemblyComponent.hxx".}
