##  Created on: 1994-12-21
##  Created by: Dieter THIEMANN
##  Copyright (c) 1994-1999 Matra Datavision
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
  ../StepToTopoDS/StepToTopoDS_NMTool, ../Standard/Standard_Real,
  ../Transfer/Transfer_ActorOfTransientProcess, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer, ../TopTools/TopTools_ListOfShape,
  ../TopTools/TopTools_IndexedDataMapOfShapeListOfShape,
  ../Message/Message_ProgressRange

discard "forward decl of StepRepr_Representation"
discard "forward decl of Standard_Transient"
discard "forward decl of Transfer_Binder"
discard "forward decl of Transfer_TransientProcess"
discard "forward decl of StepGeom_Axis2Placement3d"
discard "forward decl of gp_Trsf"
discard "forward decl of StepRepr_RepresentationRelationship"
discard "forward decl of TransferBRep_ShapeBinder"
discard "forward decl of StepBasic_ProductDefinition"
discard "forward decl of StepRepr_NextAssemblyUsageOccurrence"
discard "forward decl of StepShape_ShapeRepresentation"
discard "forward decl of StepShape_ContextDependentShapeRepresentation"
discard "forward decl of StepRepr_ShapeRepresentationRelationship"
discard "forward decl of StepGeom_GeometricRepresentationItem"
discard "forward decl of StepRepr_MappedItem"
discard "forward decl of StepShape_FaceSurface"
discard "forward decl of TopoDS_Shell"
discard "forward decl of TopoDS_Compound"
discard "forward decl of StepRepr_ConstructiveGeometryRepresentationRelationship"
discard "forward decl of STEPControl_ActorRead"
discard "forward decl of STEPControl_ActorRead"
type
  Handle_STEPControl_ActorRead* = handle[STEPControl_ActorRead]

## ! This class performs the transfer of an Entity from
## ! AP214 and AP203, either Geometric or Topologic.
## !
## ! I.E. for each type of Entity, it invokes the appropriate Tool
## ! then returns the Binder which contains the Result

type
  STEPControl_ActorRead* {.importcpp: "STEPControl_ActorRead",
                          header: "STEPControl_ActorRead.hxx", bycopy.} = object of Transfer_ActorOfTransientProcess ##
                                                                                                              ## !
                                                                                                              ## Transfers
                                                                                                              ## product
                                                                                                              ## definition
                                                                                                              ## entity
                                                                                                              ##
                                                                                                              ## !
                                                                                                              ## theUseTrsf
                                                                                                              ## -
                                                                                                              ## special
                                                                                                              ## flag
                                                                                                              ## for
                                                                                                              ## using
                                                                                                              ## Axis2Placement
                                                                                                              ## from
                                                                                                              ## ShapeRepresentation
                                                                                                              ## for
                                                                                                              ## transform
                                                                                                              ## root
                                                                                                              ## shape


proc constructSTEPControl_ActorRead*(): STEPControl_ActorRead {.constructor,
    importcpp: "STEPControl_ActorRead(@)", header: "STEPControl_ActorRead.hxx".}
proc Recognize*(this: var STEPControl_ActorRead; start: handle[Standard_Transient]): Standard_Boolean {.
    importcpp: "Recognize", header: "STEPControl_ActorRead.hxx".}
proc Transfer*(this: var STEPControl_ActorRead; start: handle[Standard_Transient];
              TP: handle[Transfer_TransientProcess];
              theProgress: Message_ProgressRange = Message_ProgressRange()): handle[
    Transfer_Binder] {.importcpp: "Transfer", header: "STEPControl_ActorRead.hxx".}
proc TransferShape*(this: var STEPControl_ActorRead;
                   start: handle[Standard_Transient];
                   TP: handle[Transfer_TransientProcess];
                   isManifold: Standard_Boolean = Standard_True;
                   theUseTrsf: Standard_Boolean = Standard_False;
                   theProgress: Message_ProgressRange = Message_ProgressRange()): handle[
    Transfer_Binder] {.importcpp: "TransferShape",
                      header: "STEPControl_ActorRead.hxx".}
proc PrepareUnits*(this: var STEPControl_ActorRead;
                  rep: handle[StepRepr_Representation];
                  TP: handle[Transfer_TransientProcess]) {.
    importcpp: "PrepareUnits", header: "STEPControl_ActorRead.hxx".}
proc ResetUnits*(this: var STEPControl_ActorRead) {.importcpp: "ResetUnits",
    header: "STEPControl_ActorRead.hxx".}
proc ComputeTransformation*(this: var STEPControl_ActorRead;
                           Origin: handle[StepGeom_Axis2Placement3d];
                           Target: handle[StepGeom_Axis2Placement3d];
                           OrigContext: handle[StepRepr_Representation];
                           TargContext: handle[StepRepr_Representation];
                           TP: handle[Transfer_TransientProcess];
                           Trsf: var gp_Trsf): Standard_Boolean {.
    importcpp: "ComputeTransformation", header: "STEPControl_ActorRead.hxx".}
proc ComputeSRRWT*(this: var STEPControl_ActorRead;
                  SRR: handle[StepRepr_RepresentationRelationship];
                  TP: handle[Transfer_TransientProcess]; Trsf: var gp_Trsf): Standard_Boolean {.
    importcpp: "ComputeSRRWT", header: "STEPControl_ActorRead.hxx".}
type
  STEPControl_ActorReadbase_type* = Transfer_ActorOfTransientProcess

proc get_type_name*(): cstring {.importcpp: "STEPControl_ActorRead::get_type_name(@)",
                              header: "STEPControl_ActorRead.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "STEPControl_ActorRead::get_type_descriptor(@)",
    header: "STEPControl_ActorRead.hxx".}
proc DynamicType*(this: STEPControl_ActorRead): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "STEPControl_ActorRead.hxx".}