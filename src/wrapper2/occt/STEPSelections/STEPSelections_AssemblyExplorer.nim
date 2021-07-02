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

discard "forward decl of Interface_Graph"
discard "forward decl of StepShape_ShapeDefinitionRepresentation"
discard "forward decl of StepBasic_ProductDefinition"
discard "forward decl of STEPSelections_AssemblyComponent"
discard "forward decl of Standard_Transient"
discard "forward decl of StepRepr_NextAssemblyUsageOccurrence"
type
  STEPSelectionsAssemblyExplorer* {.importcpp: "STEPSelections_AssemblyExplorer", header: "STEPSelections_AssemblyExplorer.hxx",
                                   bycopy.} = object


proc constructSTEPSelectionsAssemblyExplorer*(g: InterfaceGraph): STEPSelectionsAssemblyExplorer {.
    constructor, importcpp: "STEPSelections_AssemblyExplorer(@)",
    header: "STEPSelections_AssemblyExplorer.hxx".}
proc init*(this: var STEPSelectionsAssemblyExplorer; g: InterfaceGraph) {.
    importcpp: "Init", header: "STEPSelections_AssemblyExplorer.hxx".}
proc dump*(this: STEPSelectionsAssemblyExplorer; os: var StandardOStream) {.
    noSideEffect, importcpp: "Dump", header: "STEPSelections_AssemblyExplorer.hxx".}
proc findSDRWithProduct*(this: STEPSelectionsAssemblyExplorer;
                        product: Handle[StepBasicProductDefinition]): Handle[
    StepShapeShapeDefinitionRepresentation] {.noSideEffect,
    importcpp: "FindSDRWithProduct", header: "STEPSelections_AssemblyExplorer.hxx".}
proc fillListWithGraph*(this: var STEPSelectionsAssemblyExplorer;
                       cmp: Handle[STEPSelectionsAssemblyComponent]) {.
    importcpp: "FillListWithGraph", header: "STEPSelections_AssemblyExplorer.hxx".}
proc findItemWithNAUO*(this: STEPSelectionsAssemblyExplorer;
                      nauo: Handle[StepReprNextAssemblyUsageOccurrence]): Handle[
    StandardTransient] {.noSideEffect, importcpp: "FindItemWithNAUO",
                        header: "STEPSelections_AssemblyExplorer.hxx".}
proc nbAssemblies*(this: STEPSelectionsAssemblyExplorer): StandardInteger {.
    noSideEffect, importcpp: "NbAssemblies",
    header: "STEPSelections_AssemblyExplorer.hxx".}
proc root*(this: STEPSelectionsAssemblyExplorer; rank: StandardInteger = 1): Handle[
    STEPSelectionsAssemblyComponent] {.noSideEffect, importcpp: "Root", header: "STEPSelections_AssemblyExplorer.hxx".}

