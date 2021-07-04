##  Created on: 1997-02-21
##  Created by: Alexander BRIVIN
##  Copyright (c) 1997-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean, ../Aspect/Aspect_TypeOfDeflection,
  ../Standard/Standard_Real, ../Standard/Standard_Transient

discard "forward decl of VrmlConverter_IsoAspect"
discard "forward decl of VrmlConverter_LineAspect"
discard "forward decl of VrmlConverter_ShadingAspect"
discard "forward decl of VrmlConverter_PointAspect"
discard "forward decl of VrmlConverter_Drawer"
discard "forward decl of VrmlConverter_Drawer"
type
  Handle_VrmlConverter_Drawer* = handle[VrmlConverter_Drawer]

## ! qualifies the aspect properties for
## ! the VRML conversation of a specific kind of object.
## ! This includes for example color, maximal chordial deviation, etc...

type
  VrmlConverter_Drawer* {.importcpp: "VrmlConverter_Drawer",
                         header: "VrmlConverter_Drawer.hxx", bycopy.} = object of Standard_Transient


proc constructVrmlConverter_Drawer*(): VrmlConverter_Drawer {.constructor,
    importcpp: "VrmlConverter_Drawer(@)", header: "VrmlConverter_Drawer.hxx".}
proc SetTypeOfDeflection*(this: var VrmlConverter_Drawer;
                         aTypeOfDeflection: Aspect_TypeOfDeflection) {.
    importcpp: "SetTypeOfDeflection", header: "VrmlConverter_Drawer.hxx".}
proc TypeOfDeflection*(this: VrmlConverter_Drawer): Aspect_TypeOfDeflection {.
    noSideEffect, importcpp: "TypeOfDeflection", header: "VrmlConverter_Drawer.hxx".}
proc SetMaximalChordialDeviation*(this: var VrmlConverter_Drawer;
                                 aChordialDeviation: Standard_Real) {.
    importcpp: "SetMaximalChordialDeviation", header: "VrmlConverter_Drawer.hxx".}
proc MaximalChordialDeviation*(this: VrmlConverter_Drawer): Standard_Real {.
    noSideEffect, importcpp: "MaximalChordialDeviation",
    header: "VrmlConverter_Drawer.hxx".}
proc SetDeviationCoefficient*(this: var VrmlConverter_Drawer;
                             aCoefficient: Standard_Real) {.
    importcpp: "SetDeviationCoefficient", header: "VrmlConverter_Drawer.hxx".}
proc DeviationCoefficient*(this: VrmlConverter_Drawer): Standard_Real {.
    noSideEffect, importcpp: "DeviationCoefficient",
    header: "VrmlConverter_Drawer.hxx".}
proc SetDiscretisation*(this: var VrmlConverter_Drawer; d: Standard_Integer) {.
    importcpp: "SetDiscretisation", header: "VrmlConverter_Drawer.hxx".}
proc Discretisation*(this: VrmlConverter_Drawer): Standard_Integer {.noSideEffect,
    importcpp: "Discretisation", header: "VrmlConverter_Drawer.hxx".}
proc SetMaximalParameterValue*(this: var VrmlConverter_Drawer; Value: Standard_Real) {.
    importcpp: "SetMaximalParameterValue", header: "VrmlConverter_Drawer.hxx".}
proc MaximalParameterValue*(this: VrmlConverter_Drawer): Standard_Real {.
    noSideEffect, importcpp: "MaximalParameterValue",
    header: "VrmlConverter_Drawer.hxx".}
proc SetIsoOnPlane*(this: var VrmlConverter_Drawer; OnOff: Standard_Boolean) {.
    importcpp: "SetIsoOnPlane", header: "VrmlConverter_Drawer.hxx".}
proc IsoOnPlane*(this: VrmlConverter_Drawer): Standard_Boolean {.noSideEffect,
    importcpp: "IsoOnPlane", header: "VrmlConverter_Drawer.hxx".}
proc UIsoAspect*(this: var VrmlConverter_Drawer): handle[VrmlConverter_IsoAspect] {.
    importcpp: "UIsoAspect", header: "VrmlConverter_Drawer.hxx".}
proc SetUIsoAspect*(this: var VrmlConverter_Drawer;
                   anAspect: handle[VrmlConverter_IsoAspect]) {.
    importcpp: "SetUIsoAspect", header: "VrmlConverter_Drawer.hxx".}
proc VIsoAspect*(this: var VrmlConverter_Drawer): handle[VrmlConverter_IsoAspect] {.
    importcpp: "VIsoAspect", header: "VrmlConverter_Drawer.hxx".}
proc SetVIsoAspect*(this: var VrmlConverter_Drawer;
                   anAspect: handle[VrmlConverter_IsoAspect]) {.
    importcpp: "SetVIsoAspect", header: "VrmlConverter_Drawer.hxx".}
proc FreeBoundaryAspect*(this: var VrmlConverter_Drawer): handle[
    VrmlConverter_LineAspect] {.importcpp: "FreeBoundaryAspect",
                               header: "VrmlConverter_Drawer.hxx".}
proc SetFreeBoundaryAspect*(this: var VrmlConverter_Drawer;
                           anAspect: handle[VrmlConverter_LineAspect]) {.
    importcpp: "SetFreeBoundaryAspect", header: "VrmlConverter_Drawer.hxx".}
proc SetFreeBoundaryDraw*(this: var VrmlConverter_Drawer; OnOff: Standard_Boolean) {.
    importcpp: "SetFreeBoundaryDraw", header: "VrmlConverter_Drawer.hxx".}
proc FreeBoundaryDraw*(this: VrmlConverter_Drawer): Standard_Boolean {.noSideEffect,
    importcpp: "FreeBoundaryDraw", header: "VrmlConverter_Drawer.hxx".}
proc WireAspect*(this: var VrmlConverter_Drawer): handle[VrmlConverter_LineAspect] {.
    importcpp: "WireAspect", header: "VrmlConverter_Drawer.hxx".}
proc SetWireAspect*(this: var VrmlConverter_Drawer;
                   anAspect: handle[VrmlConverter_LineAspect]) {.
    importcpp: "SetWireAspect", header: "VrmlConverter_Drawer.hxx".}
proc SetWireDraw*(this: var VrmlConverter_Drawer; OnOff: Standard_Boolean) {.
    importcpp: "SetWireDraw", header: "VrmlConverter_Drawer.hxx".}
proc WireDraw*(this: VrmlConverter_Drawer): Standard_Boolean {.noSideEffect,
    importcpp: "WireDraw", header: "VrmlConverter_Drawer.hxx".}
proc UnFreeBoundaryAspect*(this: var VrmlConverter_Drawer): handle[
    VrmlConverter_LineAspect] {.importcpp: "UnFreeBoundaryAspect",
                               header: "VrmlConverter_Drawer.hxx".}
proc SetUnFreeBoundaryAspect*(this: var VrmlConverter_Drawer;
                             anAspect: handle[VrmlConverter_LineAspect]) {.
    importcpp: "SetUnFreeBoundaryAspect", header: "VrmlConverter_Drawer.hxx".}
proc SetUnFreeBoundaryDraw*(this: var VrmlConverter_Drawer; OnOff: Standard_Boolean) {.
    importcpp: "SetUnFreeBoundaryDraw", header: "VrmlConverter_Drawer.hxx".}
proc UnFreeBoundaryDraw*(this: VrmlConverter_Drawer): Standard_Boolean {.
    noSideEffect, importcpp: "UnFreeBoundaryDraw",
    header: "VrmlConverter_Drawer.hxx".}
proc LineAspect*(this: var VrmlConverter_Drawer): handle[VrmlConverter_LineAspect] {.
    importcpp: "LineAspect", header: "VrmlConverter_Drawer.hxx".}
proc SetLineAspect*(this: var VrmlConverter_Drawer;
                   anAspect: handle[VrmlConverter_LineAspect]) {.
    importcpp: "SetLineAspect", header: "VrmlConverter_Drawer.hxx".}
proc PointAspect*(this: var VrmlConverter_Drawer): handle[VrmlConverter_PointAspect] {.
    importcpp: "PointAspect", header: "VrmlConverter_Drawer.hxx".}
proc SetPointAspect*(this: var VrmlConverter_Drawer;
                    anAspect: handle[VrmlConverter_PointAspect]) {.
    importcpp: "SetPointAspect", header: "VrmlConverter_Drawer.hxx".}
proc ShadingAspect*(this: var VrmlConverter_Drawer): handle[
    VrmlConverter_ShadingAspect] {.importcpp: "ShadingAspect",
                                  header: "VrmlConverter_Drawer.hxx".}
proc SetShadingAspect*(this: var VrmlConverter_Drawer;
                      anAspect: handle[VrmlConverter_ShadingAspect]) {.
    importcpp: "SetShadingAspect", header: "VrmlConverter_Drawer.hxx".}
proc DrawHiddenLine*(this: VrmlConverter_Drawer): Standard_Boolean {.noSideEffect,
    importcpp: "DrawHiddenLine", header: "VrmlConverter_Drawer.hxx".}
proc EnableDrawHiddenLine*(this: var VrmlConverter_Drawer) {.
    importcpp: "EnableDrawHiddenLine", header: "VrmlConverter_Drawer.hxx".}
proc DisableDrawHiddenLine*(this: var VrmlConverter_Drawer) {.
    importcpp: "DisableDrawHiddenLine", header: "VrmlConverter_Drawer.hxx".}
proc HiddenLineAspect*(this: var VrmlConverter_Drawer): handle[
    VrmlConverter_LineAspect] {.importcpp: "HiddenLineAspect",
                               header: "VrmlConverter_Drawer.hxx".}
proc SetHiddenLineAspect*(this: var VrmlConverter_Drawer;
                         anAspect: handle[VrmlConverter_LineAspect]) {.
    importcpp: "SetHiddenLineAspect", header: "VrmlConverter_Drawer.hxx".}
proc SeenLineAspect*(this: var VrmlConverter_Drawer): handle[
    VrmlConverter_LineAspect] {.importcpp: "SeenLineAspect",
                               header: "VrmlConverter_Drawer.hxx".}
proc SetSeenLineAspect*(this: var VrmlConverter_Drawer;
                       anAspect: handle[VrmlConverter_LineAspect]) {.
    importcpp: "SetSeenLineAspect", header: "VrmlConverter_Drawer.hxx".}
type
  VrmlConverter_Drawerbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "VrmlConverter_Drawer::get_type_name(@)",
                              header: "VrmlConverter_Drawer.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "VrmlConverter_Drawer::get_type_descriptor(@)",
    header: "VrmlConverter_Drawer.hxx".}
proc DynamicType*(this: VrmlConverter_Drawer): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "VrmlConverter_Drawer.hxx".}