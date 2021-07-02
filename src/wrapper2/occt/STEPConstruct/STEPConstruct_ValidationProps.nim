##  Created on: 1999-09-08
##  Created by: Andrey BETENEV
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

discard "forward decl of StepBasic_ProductDefinition"
discard "forward decl of XSControl_WorkSession"
discard "forward decl of TopoDS_Shape"
discard "forward decl of StepRepr_RepresentationItem"
discard "forward decl of StepRepr_CharacterizedDefinition"
discard "forward decl of StepRepr_RepresentationContext"
discard "forward decl of gp_Pnt"
discard "forward decl of StepRepr_NextAssemblyUsageOccurrence"
discard "forward decl of StepRepr_PropertyDefinition"
type
  STEPConstructValidationProps* {.importcpp: "STEPConstruct_ValidationProps",
                                 header: "STEPConstruct_ValidationProps.hxx",
                                 bycopy.} = object of STEPConstructTool ## ! Creates an empty tool


proc constructSTEPConstructValidationProps*(): STEPConstructValidationProps {.
    constructor, importcpp: "STEPConstruct_ValidationProps(@)",
    header: "STEPConstruct_ValidationProps.hxx".}
proc constructSTEPConstructValidationProps*(ws: Handle[XSControlWorkSession]): STEPConstructValidationProps {.
    constructor, importcpp: "STEPConstruct_ValidationProps(@)",
    header: "STEPConstruct_ValidationProps.hxx".}
proc init*(this: var STEPConstructValidationProps; ws: Handle[XSControlWorkSession]): StandardBoolean {.
    importcpp: "Init", header: "STEPConstruct_ValidationProps.hxx".}
proc addProp*(this: var STEPConstructValidationProps; shape: TopoDS_Shape;
             prop: Handle[StepReprRepresentationItem]; descr: StandardCString;
             instance: StandardBoolean = standardFalse): StandardBoolean {.
    importcpp: "AddProp", header: "STEPConstruct_ValidationProps.hxx".}
proc addProp*(this: var STEPConstructValidationProps;
             target: StepReprCharacterizedDefinition;
             context: Handle[StepReprRepresentationContext];
             prop: Handle[StepReprRepresentationItem]; descr: StandardCString): StandardBoolean {.
    importcpp: "AddProp", header: "STEPConstruct_ValidationProps.hxx".}
proc addArea*(this: var STEPConstructValidationProps; shape: TopoDS_Shape;
             area: StandardReal): StandardBoolean {.importcpp: "AddArea",
    header: "STEPConstruct_ValidationProps.hxx".}
proc addVolume*(this: var STEPConstructValidationProps; shape: TopoDS_Shape;
               vol: StandardReal): StandardBoolean {.importcpp: "AddVolume",
    header: "STEPConstruct_ValidationProps.hxx".}
proc addCentroid*(this: var STEPConstructValidationProps; shape: TopoDS_Shape;
                 pnt: GpPnt; instance: StandardBoolean = standardFalse): StandardBoolean {.
    importcpp: "AddCentroid", header: "STEPConstruct_ValidationProps.hxx".}
proc findTarget*(this: var STEPConstructValidationProps; s: TopoDS_Shape;
                target: var StepReprCharacterizedDefinition;
                context: var Handle[StepReprRepresentationContext];
                instance: StandardBoolean = standardFalse): StandardBoolean {.
    importcpp: "FindTarget", header: "STEPConstruct_ValidationProps.hxx".}
proc loadProps*(this: STEPConstructValidationProps;
               seq: var TColStdSequenceOfTransient): StandardBoolean {.noSideEffect,
    importcpp: "LoadProps", header: "STEPConstruct_ValidationProps.hxx".}
proc getPropNAUO*(this: STEPConstructValidationProps;
                 pd: Handle[StepReprPropertyDefinition]): Handle[
    StepReprNextAssemblyUsageOccurrence] {.noSideEffect, importcpp: "GetPropNAUO",
    header: "STEPConstruct_ValidationProps.hxx".}
proc getPropPD*(this: STEPConstructValidationProps;
               pd: Handle[StepReprPropertyDefinition]): Handle[
    StepBasicProductDefinition] {.noSideEffect, importcpp: "GetPropPD",
                                 header: "STEPConstruct_ValidationProps.hxx".}
proc getPropShape*(this: STEPConstructValidationProps;
                  prodDef: Handle[StepBasicProductDefinition]): TopoDS_Shape {.
    noSideEffect, importcpp: "GetPropShape",
    header: "STEPConstruct_ValidationProps.hxx".}
proc getPropShape*(this: STEPConstructValidationProps;
                  pd: Handle[StepReprPropertyDefinition]): TopoDS_Shape {.
    noSideEffect, importcpp: "GetPropShape",
    header: "STEPConstruct_ValidationProps.hxx".}
proc getPropReal*(this: STEPConstructValidationProps;
                 item: Handle[StepReprRepresentationItem]; val: var StandardReal;
                 isArea: var StandardBoolean): StandardBoolean {.noSideEffect,
    importcpp: "GetPropReal", header: "STEPConstruct_ValidationProps.hxx".}
proc getPropPnt*(this: STEPConstructValidationProps;
                item: Handle[StepReprRepresentationItem];
                context: Handle[StepReprRepresentationContext]; pnt: var GpPnt): StandardBoolean {.
    noSideEffect, importcpp: "GetPropPnt",
    header: "STEPConstruct_ValidationProps.hxx".}
proc setAssemblyShape*(this: var STEPConstructValidationProps; shape: TopoDS_Shape) {.
    importcpp: "SetAssemblyShape", header: "STEPConstruct_ValidationProps.hxx".}

