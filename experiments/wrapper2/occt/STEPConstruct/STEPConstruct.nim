##  Created on: 1999-11-17
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
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean

discard "forward decl of StepRepr_RepresentationItem"
discard "forward decl of Transfer_FinderProcess"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopLoc_Location"
discard "forward decl of Transfer_TransientProcess"
discard "forward decl of Transfer_Binder"
discard "forward decl of StepShape_ShapeDefinitionRepresentation"
discard "forward decl of StepShape_ContextDependentShapeRepresentation"
discard "forward decl of STEPConstruct_Tool"
discard "forward decl of STEPConstruct_UnitContext"
discard "forward decl of STEPConstruct_Part"
discard "forward decl of STEPConstruct_Assembly"
discard "forward decl of STEPConstruct_Styles"
discard "forward decl of STEPConstruct_ValidationProps"
discard "forward decl of STEPConstruct_ExternRefs"
discard "forward decl of STEPConstruct_AP203Context"
discard "forward decl of STEPConstruct_ContextTool"
discard "forward decl of STEPConstruct_PointHasher"
type
  STEPConstruct* {.importcpp: "STEPConstruct", header: "STEPConstruct.hxx", bycopy.} = object ##
                                                                                      ## !
                                                                                      ## Returns
                                                                                      ## STEP
                                                                                      ## entity
                                                                                      ## of
                                                                                      ## the
                                                                                      ## (sub)type
                                                                                      ## of
                                                                                      ## RepresentationItem
                                                                                      ##
                                                                                      ## !
                                                                                      ## which
                                                                                      ## is
                                                                                      ## a
                                                                                      ## result
                                                                                      ## of
                                                                                      ## the
                                                                                      ## tranalation
                                                                                      ## of
                                                                                      ## the
                                                                                      ## Shape,
                                                                                      ## or
                                                                                      ## Null
                                                                                      ## if
                                                                                      ##
                                                                                      ## !
                                                                                      ## no
                                                                                      ## result
                                                                                      ## is
                                                                                      ## recorded


proc FindEntity*(FinderProcess: handle[Transfer_FinderProcess]; Shape: TopoDS_Shape): handle[
    StepRepr_RepresentationItem] {.importcpp: "STEPConstruct::FindEntity(@)",
                                  header: "STEPConstruct.hxx".}
proc FindEntity*(FinderProcess: handle[Transfer_FinderProcess];
                Shape: TopoDS_Shape; Loc: var TopLoc_Location): handle[
    StepRepr_RepresentationItem] {.importcpp: "STEPConstruct::FindEntity(@)",
                                  header: "STEPConstruct.hxx".}
proc FindShape*(TransientProcess: handle[Transfer_TransientProcess];
               item: handle[StepRepr_RepresentationItem]): TopoDS_Shape {.
    importcpp: "STEPConstruct::FindShape(@)", header: "STEPConstruct.hxx".}
proc FindCDSR*(ComponentBinder: handle[Transfer_Binder];
              AssemblySDR: handle[StepShape_ShapeDefinitionRepresentation];
    ComponentCDSR: var handle[StepShape_ContextDependentShapeRepresentation]): Standard_Boolean {.
    importcpp: "STEPConstruct::FindCDSR(@)", header: "STEPConstruct.hxx".}