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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../StepBasic/StepBasic_Unit, STEPConstruct_Tool,
  ../Standard/Standard_Boolean, ../Standard/Standard_CString,
  ../Standard/Standard_Real, ../TColStd/TColStd_SequenceOfTransient

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
  STEPConstruct_ValidationProps* {.importcpp: "STEPConstruct_ValidationProps",
                                  header: "STEPConstruct_ValidationProps.hxx",
                                  bycopy.} = object of STEPConstruct_Tool ## ! Creates an empty tool


proc constructSTEPConstruct_ValidationProps*(): STEPConstruct_ValidationProps {.
    constructor, importcpp: "STEPConstruct_ValidationProps(@)",
    header: "STEPConstruct_ValidationProps.hxx".}
proc constructSTEPConstruct_ValidationProps*(WS: handle[XSControl_WorkSession]): STEPConstruct_ValidationProps {.
    constructor, importcpp: "STEPConstruct_ValidationProps(@)",
    header: "STEPConstruct_ValidationProps.hxx".}
proc Init*(this: var STEPConstruct_ValidationProps;
          WS: handle[XSControl_WorkSession]): Standard_Boolean {.importcpp: "Init",
    header: "STEPConstruct_ValidationProps.hxx".}
proc AddProp*(this: var STEPConstruct_ValidationProps; Shape: TopoDS_Shape;
             Prop: handle[StepRepr_RepresentationItem]; Descr: Standard_CString;
             instance: Standard_Boolean = Standard_False): Standard_Boolean {.
    importcpp: "AddProp", header: "STEPConstruct_ValidationProps.hxx".}
proc AddProp*(this: var STEPConstruct_ValidationProps;
             target: StepRepr_CharacterizedDefinition;
             Context: handle[StepRepr_RepresentationContext];
             Prop: handle[StepRepr_RepresentationItem]; Descr: Standard_CString): Standard_Boolean {.
    importcpp: "AddProp", header: "STEPConstruct_ValidationProps.hxx".}
proc AddArea*(this: var STEPConstruct_ValidationProps; Shape: TopoDS_Shape;
             Area: Standard_Real): Standard_Boolean {.importcpp: "AddArea",
    header: "STEPConstruct_ValidationProps.hxx".}
proc AddVolume*(this: var STEPConstruct_ValidationProps; Shape: TopoDS_Shape;
               Vol: Standard_Real): Standard_Boolean {.importcpp: "AddVolume",
    header: "STEPConstruct_ValidationProps.hxx".}
proc AddCentroid*(this: var STEPConstruct_ValidationProps; Shape: TopoDS_Shape;
                 Pnt: gp_Pnt; instance: Standard_Boolean = Standard_False): Standard_Boolean {.
    importcpp: "AddCentroid", header: "STEPConstruct_ValidationProps.hxx".}
proc FindTarget*(this: var STEPConstruct_ValidationProps; S: TopoDS_Shape;
                target: var StepRepr_CharacterizedDefinition;
                Context: var handle[StepRepr_RepresentationContext];
                instance: Standard_Boolean = Standard_False): Standard_Boolean {.
    importcpp: "FindTarget", header: "STEPConstruct_ValidationProps.hxx".}
proc LoadProps*(this: STEPConstruct_ValidationProps;
               seq: var TColStd_SequenceOfTransient): Standard_Boolean {.
    noSideEffect, importcpp: "LoadProps",
    header: "STEPConstruct_ValidationProps.hxx".}
proc GetPropNAUO*(this: STEPConstruct_ValidationProps;
                 PD: handle[StepRepr_PropertyDefinition]): handle[
    StepRepr_NextAssemblyUsageOccurrence] {.noSideEffect,
    importcpp: "GetPropNAUO", header: "STEPConstruct_ValidationProps.hxx".}
proc GetPropPD*(this: STEPConstruct_ValidationProps;
               PD: handle[StepRepr_PropertyDefinition]): handle[
    StepBasic_ProductDefinition] {.noSideEffect, importcpp: "GetPropPD",
                                  header: "STEPConstruct_ValidationProps.hxx".}
proc GetPropShape*(this: STEPConstruct_ValidationProps;
                  ProdDef: handle[StepBasic_ProductDefinition]): TopoDS_Shape {.
    noSideEffect, importcpp: "GetPropShape",
    header: "STEPConstruct_ValidationProps.hxx".}
proc GetPropShape*(this: STEPConstruct_ValidationProps;
                  PD: handle[StepRepr_PropertyDefinition]): TopoDS_Shape {.
    noSideEffect, importcpp: "GetPropShape",
    header: "STEPConstruct_ValidationProps.hxx".}
proc GetPropReal*(this: STEPConstruct_ValidationProps;
                 item: handle[StepRepr_RepresentationItem];
                 Val: var Standard_Real; isArea: var Standard_Boolean): Standard_Boolean {.
    noSideEffect, importcpp: "GetPropReal",
    header: "STEPConstruct_ValidationProps.hxx".}
proc GetPropPnt*(this: STEPConstruct_ValidationProps;
                item: handle[StepRepr_RepresentationItem];
                Context: handle[StepRepr_RepresentationContext]; Pnt: var gp_Pnt): Standard_Boolean {.
    noSideEffect, importcpp: "GetPropPnt",
    header: "STEPConstruct_ValidationProps.hxx".}
proc SetAssemblyShape*(this: var STEPConstruct_ValidationProps; shape: TopoDS_Shape) {.
    importcpp: "SetAssemblyShape", header: "STEPConstruct_ValidationProps.hxx".}