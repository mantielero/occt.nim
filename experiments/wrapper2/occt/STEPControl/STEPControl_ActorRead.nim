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
  HandleSTEPControlActorRead* = Handle[STEPControlActorRead]

## ! This class performs the transfer of an Entity from
## ! AP214 and AP203, either Geometric or Topologic.
## !
## ! I.E. for each type of Entity, it invokes the appropriate Tool
## ! then returns the Binder which contains the Result

type
  STEPControlActorRead* {.importcpp: "STEPControl_ActorRead",
                         header: "STEPControl_ActorRead.hxx", bycopy.} = object of TransferActorOfTransientProcess ##
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


proc constructSTEPControlActorRead*(): STEPControlActorRead {.constructor,
    importcpp: "STEPControl_ActorRead(@)", header: "STEPControl_ActorRead.hxx".}
proc recognize*(this: var STEPControlActorRead; start: Handle[StandardTransient]): bool {.
    importcpp: "Recognize", header: "STEPControl_ActorRead.hxx".}
proc transfer*(this: var STEPControlActorRead; start: Handle[StandardTransient];
              tp: Handle[TransferTransientProcess];
              theProgress: MessageProgressRange = messageProgressRange()): Handle[
    TransferBinder] {.importcpp: "Transfer", header: "STEPControl_ActorRead.hxx".}
proc transferShape*(this: var STEPControlActorRead;
                   start: Handle[StandardTransient];
                   tp: Handle[TransferTransientProcess]; isManifold: bool = true;
                   theUseTrsf: bool = false;
                   theProgress: MessageProgressRange = messageProgressRange()): Handle[
    TransferBinder] {.importcpp: "TransferShape",
                     header: "STEPControl_ActorRead.hxx".}
proc prepareUnits*(this: var STEPControlActorRead;
                  rep: Handle[StepReprRepresentation];
                  tp: Handle[TransferTransientProcess]) {.
    importcpp: "PrepareUnits", header: "STEPControl_ActorRead.hxx".}
proc resetUnits*(this: var STEPControlActorRead) {.importcpp: "ResetUnits",
    header: "STEPControl_ActorRead.hxx".}
proc computeTransformation*(this: var STEPControlActorRead;
                           origin: Handle[StepGeomAxis2Placement3d];
                           target: Handle[StepGeomAxis2Placement3d];
                           origContext: Handle[StepReprRepresentation];
                           targContext: Handle[StepReprRepresentation];
                           tp: Handle[TransferTransientProcess]; trsf: var Trsf): bool {.
    importcpp: "ComputeTransformation", header: "STEPControl_ActorRead.hxx".}
proc computeSRRWT*(this: var STEPControlActorRead;
                  srr: Handle[StepReprRepresentationRelationship];
                  tp: Handle[TransferTransientProcess]; trsf: var Trsf): bool {.
    importcpp: "ComputeSRRWT", header: "STEPControl_ActorRead.hxx".}
type
  STEPControlActorReadbaseType* = TransferActorOfTransientProcess

proc getTypeName*(): cstring {.importcpp: "STEPControl_ActorRead::get_type_name(@)",
                            header: "STEPControl_ActorRead.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "STEPControl_ActorRead::get_type_descriptor(@)",
    header: "STEPControl_ActorRead.hxx".}
proc dynamicType*(this: STEPControlActorRead): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "STEPControl_ActorRead.hxx".}
