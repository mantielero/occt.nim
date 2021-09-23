##  Created on: 1998-07-07
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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean

discard "forward decl of StepShape_ShapeDefinitionRepresentation"
discard "forward decl of StepShape_ShapeRepresentation"
discard "forward decl of Standard_Transient"
discard "forward decl of StepGeom_Axis2Placement3d"
discard "forward decl of StepRepr_NextAssemblyUsageOccurrence"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of StepShape_ContextDependentShapeRepresentation"
discard "forward decl of Interface_Graph"
type
  STEPConstruct_Assembly* {.importcpp: "STEPConstruct_Assembly",
                           header: "STEPConstruct_Assembly.hxx", bycopy.} = object


proc constructSTEPConstruct_Assembly*(): STEPConstruct_Assembly {.constructor,
    importcpp: "STEPConstruct_Assembly(@)", header: "STEPConstruct_Assembly.hxx".}
proc Init*(this: var STEPConstruct_Assembly;
          aSR: handle[StepShape_ShapeDefinitionRepresentation];
          SDR0: handle[StepShape_ShapeDefinitionRepresentation];
          Ax0: handle[StepGeom_Axis2Placement3d];
          Loc: handle[StepGeom_Axis2Placement3d]) {.importcpp: "Init",
    header: "STEPConstruct_Assembly.hxx".}
proc MakeRelationship*(this: var STEPConstruct_Assembly) {.
    importcpp: "MakeRelationship", header: "STEPConstruct_Assembly.hxx".}
proc ItemValue*(this: STEPConstruct_Assembly): handle[Standard_Transient] {.
    noSideEffect, importcpp: "ItemValue", header: "STEPConstruct_Assembly.hxx".}
proc ItemLocation*(this: STEPConstruct_Assembly): handle[StepGeom_Axis2Placement3d] {.
    noSideEffect, importcpp: "ItemLocation", header: "STEPConstruct_Assembly.hxx".}
proc GetNAUO*(this: STEPConstruct_Assembly): handle[
    StepRepr_NextAssemblyUsageOccurrence] {.noSideEffect, importcpp: "GetNAUO",
    header: "STEPConstruct_Assembly.hxx".}
proc CheckSRRReversesNAUO*(theGraph: Interface_Graph; CDSR: handle[
    StepShape_ContextDependentShapeRepresentation]): Standard_Boolean {.
    importcpp: "STEPConstruct_Assembly::CheckSRRReversesNAUO(@)",
    header: "STEPConstruct_Assembly.hxx".}