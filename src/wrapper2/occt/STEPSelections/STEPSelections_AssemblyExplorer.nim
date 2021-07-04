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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, STEPSelections_SequenceOfAssemblyComponent,
  ../Interface/Interface_Graph,
  ../TColStd/TColStd_IndexedDataMapOfTransientTransient,
  ../Standard/Standard_OStream, ../Standard/Standard_Integer

discard "forward decl of Interface_Graph"
discard "forward decl of StepShape_ShapeDefinitionRepresentation"
discard "forward decl of StepBasic_ProductDefinition"
discard "forward decl of STEPSelections_AssemblyComponent"
discard "forward decl of Standard_Transient"
discard "forward decl of StepRepr_NextAssemblyUsageOccurrence"
type
  STEPSelections_AssemblyExplorer* {.importcpp: "STEPSelections_AssemblyExplorer", header: "STEPSelections_AssemblyExplorer.hxx",
                                    bycopy.} = object


proc constructSTEPSelections_AssemblyExplorer*(G: Interface_Graph): STEPSelections_AssemblyExplorer {.
    constructor, importcpp: "STEPSelections_AssemblyExplorer(@)",
    header: "STEPSelections_AssemblyExplorer.hxx".}
proc Init*(this: var STEPSelections_AssemblyExplorer; G: Interface_Graph) {.
    importcpp: "Init", header: "STEPSelections_AssemblyExplorer.hxx".}
proc Dump*(this: STEPSelections_AssemblyExplorer; os: var Standard_OStream) {.
    noSideEffect, importcpp: "Dump", header: "STEPSelections_AssemblyExplorer.hxx".}
proc FindSDRWithProduct*(this: STEPSelections_AssemblyExplorer;
                        product: handle[StepBasic_ProductDefinition]): handle[
    StepShape_ShapeDefinitionRepresentation] {.noSideEffect,
    importcpp: "FindSDRWithProduct", header: "STEPSelections_AssemblyExplorer.hxx".}
proc FillListWithGraph*(this: var STEPSelections_AssemblyExplorer;
                       cmp: handle[STEPSelections_AssemblyComponent]) {.
    importcpp: "FillListWithGraph", header: "STEPSelections_AssemblyExplorer.hxx".}
proc FindItemWithNAUO*(this: STEPSelections_AssemblyExplorer;
                      nauo: handle[StepRepr_NextAssemblyUsageOccurrence]): handle[
    Standard_Transient] {.noSideEffect, importcpp: "FindItemWithNAUO",
                         header: "STEPSelections_AssemblyExplorer.hxx".}
proc NbAssemblies*(this: STEPSelections_AssemblyExplorer): Standard_Integer {.
    noSideEffect, importcpp: "NbAssemblies",
    header: "STEPSelections_AssemblyExplorer.hxx".}
proc Root*(this: STEPSelections_AssemblyExplorer; rank: Standard_Integer = 1): handle[
    STEPSelections_AssemblyComponent] {.noSideEffect, importcpp: "Root", header: "STEPSelections_AssemblyExplorer.hxx".}