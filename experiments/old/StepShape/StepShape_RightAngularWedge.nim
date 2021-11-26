##  Created on: 1995-12-01
##  Created by: EXPRESS->CDL V0.2 Translator
##  Copyright (c) 1995-1999 Matra Datavision
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

discard "forward decl of StepGeom_Axis2Placement3d"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepShape_RightAngularWedge"
discard "forward decl of StepShape_RightAngularWedge"
type
  HandleC1C1* = Handle[StepShapeRightAngularWedge]
  StepShapeRightAngularWedge* {.importcpp: "StepShape_RightAngularWedge",
                               header: "StepShape_RightAngularWedge.hxx", bycopy.} = object of StepGeomGeometricRepresentationItem ##
                                                                                                                            ## !
                                                                                                                            ## Returns
                                                                                                                            ## a
                                                                                                                            ## RightAngularWedge


proc constructStepShapeRightAngularWedge*(): StepShapeRightAngularWedge {.
    constructor, importcpp: "StepShape_RightAngularWedge(@)",
    header: "StepShape_RightAngularWedge.hxx".}
proc init*(this: var StepShapeRightAngularWedge;
          aName: Handle[TCollectionHAsciiString];
          aPosition: Handle[StepGeomAxis2Placement3d]; aX: StandardReal;
          aY: StandardReal; aZ: StandardReal; aLtx: StandardReal) {.importcpp: "Init",
    header: "StepShape_RightAngularWedge.hxx".}
proc setPosition*(this: var StepShapeRightAngularWedge;
                 aPosition: Handle[StepGeomAxis2Placement3d]) {.
    importcpp: "SetPosition", header: "StepShape_RightAngularWedge.hxx".}
proc position*(this: StepShapeRightAngularWedge): Handle[StepGeomAxis2Placement3d] {.
    noSideEffect, importcpp: "Position", header: "StepShape_RightAngularWedge.hxx".}
proc setX*(this: var StepShapeRightAngularWedge; aX: StandardReal) {.
    importcpp: "SetX", header: "StepShape_RightAngularWedge.hxx".}
proc x*(this: StepShapeRightAngularWedge): StandardReal {.noSideEffect,
    importcpp: "X", header: "StepShape_RightAngularWedge.hxx".}
proc setY*(this: var StepShapeRightAngularWedge; aY: StandardReal) {.
    importcpp: "SetY", header: "StepShape_RightAngularWedge.hxx".}
proc y*(this: StepShapeRightAngularWedge): StandardReal {.noSideEffect,
    importcpp: "Y", header: "StepShape_RightAngularWedge.hxx".}
proc setZ*(this: var StepShapeRightAngularWedge; aZ: StandardReal) {.
    importcpp: "SetZ", header: "StepShape_RightAngularWedge.hxx".}
proc z*(this: StepShapeRightAngularWedge): StandardReal {.noSideEffect,
    importcpp: "Z", header: "StepShape_RightAngularWedge.hxx".}
proc setLtx*(this: var StepShapeRightAngularWedge; aLtx: StandardReal) {.
    importcpp: "SetLtx", header: "StepShape_RightAngularWedge.hxx".}
proc ltx*(this: StepShapeRightAngularWedge): StandardReal {.noSideEffect,
    importcpp: "Ltx", header: "StepShape_RightAngularWedge.hxx".}
type
  StepShapeRightAngularWedgebaseType* = StepGeomGeometricRepresentationItem

proc getTypeName*(): cstring {.importcpp: "StepShape_RightAngularWedge::get_type_name(@)",
                            header: "StepShape_RightAngularWedge.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepShape_RightAngularWedge::get_type_descriptor(@)",
    header: "StepShape_RightAngularWedge.hxx".}
proc dynamicType*(this: StepShapeRightAngularWedge): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepShape_RightAngularWedge.hxx".}