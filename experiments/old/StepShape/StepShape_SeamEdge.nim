##  Created on: 2002-01-04
##  Created by: data exchange team
##  Copyright (c) 2002-2014 OPEN CASCADE SAS
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

discard "forward decl of StepGeom_Pcurve"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepShape_Edge"
discard "forward decl of StepShape_SeamEdge"
discard "forward decl of StepShape_SeamEdge"
type
  HandleC1C1* = Handle[StepShapeSeamEdge]

## ! Representation of STEP entity SeamEdge

type
  StepShapeSeamEdge* {.importcpp: "StepShape_SeamEdge",
                      header: "StepShape_SeamEdge.hxx", bycopy.} = object of StepShapeOrientedEdge ##
                                                                                            ## !
                                                                                            ## Empty
                                                                                            ## constructor


proc constructStepShapeSeamEdge*(): StepShapeSeamEdge {.constructor,
    importcpp: "StepShape_SeamEdge(@)", header: "StepShape_SeamEdge.hxx".}
proc init*(this: var StepShapeSeamEdge;
          aRepresentationItemName: Handle[TCollectionHAsciiString];
          aOrientedEdgeEdgeElement: Handle[StepShapeEdge];
          aOrientedEdgeOrientation: StandardBoolean;
          aPcurveReference: Handle[StepGeomPcurve]) {.importcpp: "Init",
    header: "StepShape_SeamEdge.hxx".}
proc pcurveReference*(this: StepShapeSeamEdge): Handle[StepGeomPcurve] {.
    noSideEffect, importcpp: "PcurveReference", header: "StepShape_SeamEdge.hxx".}
proc setPcurveReference*(this: var StepShapeSeamEdge;
                        pcurveReference: Handle[StepGeomPcurve]) {.
    importcpp: "SetPcurveReference", header: "StepShape_SeamEdge.hxx".}
type
  StepShapeSeamEdgebaseType* = StepShapeOrientedEdge

proc getTypeName*(): cstring {.importcpp: "StepShape_SeamEdge::get_type_name(@)",
                            header: "StepShape_SeamEdge.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepShape_SeamEdge::get_type_descriptor(@)",
    header: "StepShape_SeamEdge.hxx".}
proc dynamicType*(this: StepShapeSeamEdge): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepShape_SeamEdge.hxx".}