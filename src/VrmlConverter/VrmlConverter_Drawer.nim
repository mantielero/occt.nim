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

discard "forward decl of VrmlConverter_IsoAspect"
discard "forward decl of VrmlConverter_LineAspect"
discard "forward decl of VrmlConverter_ShadingAspect"
discard "forward decl of VrmlConverter_PointAspect"
discard "forward decl of VrmlConverter_Drawer"
discard "forward decl of VrmlConverter_Drawer"
type
  HandleC1C1* = Handle[VrmlConverterDrawer]

## ! qualifies the aspect properties for
## ! the VRML conversation of a specific kind of object.
## ! This includes for example color, maximal chordial deviation, etc...

type
  VrmlConverterDrawer* {.importcpp: "VrmlConverter_Drawer",
                        header: "VrmlConverter_Drawer.hxx", bycopy.} = object of StandardTransient


proc constructVrmlConverterDrawer*(): VrmlConverterDrawer {.constructor,
    importcpp: "VrmlConverter_Drawer(@)", header: "VrmlConverter_Drawer.hxx".}
proc setTypeOfDeflection*(this: var VrmlConverterDrawer;
                         aTypeOfDeflection: AspectTypeOfDeflection) {.
    importcpp: "SetTypeOfDeflection", header: "VrmlConverter_Drawer.hxx".}
proc typeOfDeflection*(this: VrmlConverterDrawer): AspectTypeOfDeflection {.
    noSideEffect, importcpp: "TypeOfDeflection", header: "VrmlConverter_Drawer.hxx".}
proc setMaximalChordialDeviation*(this: var VrmlConverterDrawer;
                                 aChordialDeviation: cfloat) {.
    importcpp: "SetMaximalChordialDeviation", header: "VrmlConverter_Drawer.hxx".}
proc maximalChordialDeviation*(this: VrmlConverterDrawer): cfloat {.noSideEffect,
    importcpp: "MaximalChordialDeviation", header: "VrmlConverter_Drawer.hxx".}
proc setDeviationCoefficient*(this: var VrmlConverterDrawer; aCoefficient: cfloat) {.
    importcpp: "SetDeviationCoefficient", header: "VrmlConverter_Drawer.hxx".}
proc deviationCoefficient*(this: VrmlConverterDrawer): cfloat {.noSideEffect,
    importcpp: "DeviationCoefficient", header: "VrmlConverter_Drawer.hxx".}
proc setDiscretisation*(this: var VrmlConverterDrawer; d: cint) {.
    importcpp: "SetDiscretisation", header: "VrmlConverter_Drawer.hxx".}
proc discretisation*(this: VrmlConverterDrawer): cint {.noSideEffect,
    importcpp: "Discretisation", header: "VrmlConverter_Drawer.hxx".}
proc setMaximalParameterValue*(this: var VrmlConverterDrawer; value: cfloat) {.
    importcpp: "SetMaximalParameterValue", header: "VrmlConverter_Drawer.hxx".}
proc maximalParameterValue*(this: VrmlConverterDrawer): cfloat {.noSideEffect,
    importcpp: "MaximalParameterValue", header: "VrmlConverter_Drawer.hxx".}
proc setIsoOnPlane*(this: var VrmlConverterDrawer; onOff: bool) {.
    importcpp: "SetIsoOnPlane", header: "VrmlConverter_Drawer.hxx".}
proc isoOnPlane*(this: VrmlConverterDrawer): bool {.noSideEffect,
    importcpp: "IsoOnPlane", header: "VrmlConverter_Drawer.hxx".}
proc uIsoAspect*(this: var VrmlConverterDrawer): Handle[VrmlConverterIsoAspect] {.
    importcpp: "UIsoAspect", header: "VrmlConverter_Drawer.hxx".}
proc setUIsoAspect*(this: var VrmlConverterDrawer;
                   anAspect: Handle[VrmlConverterIsoAspect]) {.
    importcpp: "SetUIsoAspect", header: "VrmlConverter_Drawer.hxx".}
proc vIsoAspect*(this: var VrmlConverterDrawer): Handle[VrmlConverterIsoAspect] {.
    importcpp: "VIsoAspect", header: "VrmlConverter_Drawer.hxx".}
proc setVIsoAspect*(this: var VrmlConverterDrawer;
                   anAspect: Handle[VrmlConverterIsoAspect]) {.
    importcpp: "SetVIsoAspect", header: "VrmlConverter_Drawer.hxx".}
proc freeBoundaryAspect*(this: var VrmlConverterDrawer): Handle[
    VrmlConverterLineAspect] {.importcpp: "FreeBoundaryAspect",
                              header: "VrmlConverter_Drawer.hxx".}
proc setFreeBoundaryAspect*(this: var VrmlConverterDrawer;
                           anAspect: Handle[VrmlConverterLineAspect]) {.
    importcpp: "SetFreeBoundaryAspect", header: "VrmlConverter_Drawer.hxx".}
proc setFreeBoundaryDraw*(this: var VrmlConverterDrawer; onOff: bool) {.
    importcpp: "SetFreeBoundaryDraw", header: "VrmlConverter_Drawer.hxx".}
proc freeBoundaryDraw*(this: VrmlConverterDrawer): bool {.noSideEffect,
    importcpp: "FreeBoundaryDraw", header: "VrmlConverter_Drawer.hxx".}
proc wireAspect*(this: var VrmlConverterDrawer): Handle[VrmlConverterLineAspect] {.
    importcpp: "WireAspect", header: "VrmlConverter_Drawer.hxx".}
proc setWireAspect*(this: var VrmlConverterDrawer;
                   anAspect: Handle[VrmlConverterLineAspect]) {.
    importcpp: "SetWireAspect", header: "VrmlConverter_Drawer.hxx".}
proc setWireDraw*(this: var VrmlConverterDrawer; onOff: bool) {.
    importcpp: "SetWireDraw", header: "VrmlConverter_Drawer.hxx".}
proc wireDraw*(this: VrmlConverterDrawer): bool {.noSideEffect,
    importcpp: "WireDraw", header: "VrmlConverter_Drawer.hxx".}
proc unFreeBoundaryAspect*(this: var VrmlConverterDrawer): Handle[
    VrmlConverterLineAspect] {.importcpp: "UnFreeBoundaryAspect",
                              header: "VrmlConverter_Drawer.hxx".}
proc setUnFreeBoundaryAspect*(this: var VrmlConverterDrawer;
                             anAspect: Handle[VrmlConverterLineAspect]) {.
    importcpp: "SetUnFreeBoundaryAspect", header: "VrmlConverter_Drawer.hxx".}
proc setUnFreeBoundaryDraw*(this: var VrmlConverterDrawer; onOff: bool) {.
    importcpp: "SetUnFreeBoundaryDraw", header: "VrmlConverter_Drawer.hxx".}
proc unFreeBoundaryDraw*(this: VrmlConverterDrawer): bool {.noSideEffect,
    importcpp: "UnFreeBoundaryDraw", header: "VrmlConverter_Drawer.hxx".}
proc lineAspect*(this: var VrmlConverterDrawer): Handle[VrmlConverterLineAspect] {.
    importcpp: "LineAspect", header: "VrmlConverter_Drawer.hxx".}
proc setLineAspect*(this: var VrmlConverterDrawer;
                   anAspect: Handle[VrmlConverterLineAspect]) {.
    importcpp: "SetLineAspect", header: "VrmlConverter_Drawer.hxx".}
proc pointAspect*(this: var VrmlConverterDrawer): Handle[VrmlConverterPointAspect] {.
    importcpp: "PointAspect", header: "VrmlConverter_Drawer.hxx".}
proc setPointAspect*(this: var VrmlConverterDrawer;
                    anAspect: Handle[VrmlConverterPointAspect]) {.
    importcpp: "SetPointAspect", header: "VrmlConverter_Drawer.hxx".}
proc shadingAspect*(this: var VrmlConverterDrawer): Handle[
    VrmlConverterShadingAspect] {.importcpp: "ShadingAspect",
                                 header: "VrmlConverter_Drawer.hxx".}
proc setShadingAspect*(this: var VrmlConverterDrawer;
                      anAspect: Handle[VrmlConverterShadingAspect]) {.
    importcpp: "SetShadingAspect", header: "VrmlConverter_Drawer.hxx".}
proc drawHiddenLine*(this: VrmlConverterDrawer): bool {.noSideEffect,
    importcpp: "DrawHiddenLine", header: "VrmlConverter_Drawer.hxx".}
proc enableDrawHiddenLine*(this: var VrmlConverterDrawer) {.
    importcpp: "EnableDrawHiddenLine", header: "VrmlConverter_Drawer.hxx".}
proc disableDrawHiddenLine*(this: var VrmlConverterDrawer) {.
    importcpp: "DisableDrawHiddenLine", header: "VrmlConverter_Drawer.hxx".}
proc hiddenLineAspect*(this: var VrmlConverterDrawer): Handle[
    VrmlConverterLineAspect] {.importcpp: "HiddenLineAspect",
                              header: "VrmlConverter_Drawer.hxx".}
proc setHiddenLineAspect*(this: var VrmlConverterDrawer;
                         anAspect: Handle[VrmlConverterLineAspect]) {.
    importcpp: "SetHiddenLineAspect", header: "VrmlConverter_Drawer.hxx".}
proc seenLineAspect*(this: var VrmlConverterDrawer): Handle[VrmlConverterLineAspect] {.
    importcpp: "SeenLineAspect", header: "VrmlConverter_Drawer.hxx".}
proc setSeenLineAspect*(this: var VrmlConverterDrawer;
                       anAspect: Handle[VrmlConverterLineAspect]) {.
    importcpp: "SetSeenLineAspect", header: "VrmlConverter_Drawer.hxx".}
type
  VrmlConverterDrawerbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "VrmlConverter_Drawer::get_type_name(@)",
                            header: "VrmlConverter_Drawer.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "VrmlConverter_Drawer::get_type_descriptor(@)",
    header: "VrmlConverter_Drawer.hxx".}
proc dynamicType*(this: VrmlConverterDrawer): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "VrmlConverter_Drawer.hxx".}

























