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

discard "forward decl of StepShape_ShapeDefinitionRepresentation"
discard "forward decl of StepShape_ShapeRepresentation"
discard "forward decl of Standard_Transient"
discard "forward decl of StepGeom_Axis2Placement3d"
discard "forward decl of StepRepr_NextAssemblyUsageOccurrence"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of StepShape_ContextDependentShapeRepresentation"
discard "forward decl of Interface_Graph"
type
  STEPConstructAssembly* {.importcpp: "STEPConstruct_Assembly",
                          header: "STEPConstruct_Assembly.hxx", bycopy.} = object


proc constructSTEPConstructAssembly*(): STEPConstructAssembly {.constructor,
    importcpp: "STEPConstruct_Assembly(@)", header: "STEPConstruct_Assembly.hxx".}
proc init*(this: var STEPConstructAssembly;
          aSR: Handle[StepShapeShapeDefinitionRepresentation];
          sdr0: Handle[StepShapeShapeDefinitionRepresentation];
          ax0: Handle[StepGeomAxis2Placement3d];
          loc: Handle[StepGeomAxis2Placement3d]) {.importcpp: "Init",
    header: "STEPConstruct_Assembly.hxx".}
proc makeRelationship*(this: var STEPConstructAssembly) {.
    importcpp: "MakeRelationship", header: "STEPConstruct_Assembly.hxx".}
proc itemValue*(this: STEPConstructAssembly): Handle[StandardTransient] {.
    noSideEffect, importcpp: "ItemValue", header: "STEPConstruct_Assembly.hxx".}
proc itemLocation*(this: STEPConstructAssembly): Handle[StepGeomAxis2Placement3d] {.
    noSideEffect, importcpp: "ItemLocation", header: "STEPConstruct_Assembly.hxx".}
proc getNAUO*(this: STEPConstructAssembly): Handle[
    StepReprNextAssemblyUsageOccurrence] {.noSideEffect, importcpp: "GetNAUO",
    header: "STEPConstruct_Assembly.hxx".}
proc checkSRRReversesNAUO*(theGraph: InterfaceGraph; cdsr: Handle[
    StepShapeContextDependentShapeRepresentation]): StandardBoolean {.
    importcpp: "STEPConstruct_Assembly::CheckSRRReversesNAUO(@)",
    header: "STEPConstruct_Assembly.hxx".}

