##  Created on: 1997-04-17
##  Created by: Christophe MARION
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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean, HLRBRep_Surface,
  ../Standard/Standard_Real, ../Standard/Standard_ShortReal,
  ../TopAbs/TopAbs_Orientation, ../Standard/Standard_Integer

discard "forward decl of HLRAlgo_WiresBlock"
discard "forward decl of TopoDS_Face"
discard "forward decl of HLRBRep_Surface"
type
  HLRBRep_FaceData* {.importcpp: "HLRBRep_FaceData",
                     header: "HLRBRep_FaceData.hxx", bycopy.} = object


proc constructHLRBRep_FaceData*(): HLRBRep_FaceData {.constructor,
    importcpp: "HLRBRep_FaceData(@)", header: "HLRBRep_FaceData.hxx".}
proc Set*(this: var HLRBRep_FaceData; FG: TopoDS_Face; Or: TopAbs_Orientation;
         Cl: Standard_Boolean; NW: Standard_Integer) {.importcpp: "Set",
    header: "HLRBRep_FaceData.hxx".}
proc SetWire*(this: var HLRBRep_FaceData; WI: Standard_Integer; NE: Standard_Integer) {.
    importcpp: "SetWire", header: "HLRBRep_FaceData.hxx".}
proc SetWEdge*(this: var HLRBRep_FaceData; WI: Standard_Integer;
              EWI: Standard_Integer; EI: Standard_Integer; Or: TopAbs_Orientation;
              OutL: Standard_Boolean; Inte: Standard_Boolean;
              Dble: Standard_Boolean; IsoL: Standard_Boolean) {.
    importcpp: "SetWEdge", header: "HLRBRep_FaceData.hxx".}
proc Selected*(this: HLRBRep_FaceData): Standard_Boolean {.noSideEffect,
    importcpp: "Selected", header: "HLRBRep_FaceData.hxx".}
proc Selected*(this: var HLRBRep_FaceData; B: Standard_Boolean) {.
    importcpp: "Selected", header: "HLRBRep_FaceData.hxx".}
proc Back*(this: HLRBRep_FaceData): Standard_Boolean {.noSideEffect,
    importcpp: "Back", header: "HLRBRep_FaceData.hxx".}
proc Back*(this: var HLRBRep_FaceData; B: Standard_Boolean) {.importcpp: "Back",
    header: "HLRBRep_FaceData.hxx".}
proc Side*(this: HLRBRep_FaceData): Standard_Boolean {.noSideEffect,
    importcpp: "Side", header: "HLRBRep_FaceData.hxx".}
proc Side*(this: var HLRBRep_FaceData; B: Standard_Boolean) {.importcpp: "Side",
    header: "HLRBRep_FaceData.hxx".}
proc Closed*(this: HLRBRep_FaceData): Standard_Boolean {.noSideEffect,
    importcpp: "Closed", header: "HLRBRep_FaceData.hxx".}
proc Closed*(this: var HLRBRep_FaceData; B: Standard_Boolean) {.importcpp: "Closed",
    header: "HLRBRep_FaceData.hxx".}
proc Hiding*(this: HLRBRep_FaceData): Standard_Boolean {.noSideEffect,
    importcpp: "Hiding", header: "HLRBRep_FaceData.hxx".}
proc Hiding*(this: var HLRBRep_FaceData; B: Standard_Boolean) {.importcpp: "Hiding",
    header: "HLRBRep_FaceData.hxx".}
proc Simple*(this: HLRBRep_FaceData): Standard_Boolean {.noSideEffect,
    importcpp: "Simple", header: "HLRBRep_FaceData.hxx".}
proc Simple*(this: var HLRBRep_FaceData; B: Standard_Boolean) {.importcpp: "Simple",
    header: "HLRBRep_FaceData.hxx".}
proc Cut*(this: HLRBRep_FaceData): Standard_Boolean {.noSideEffect, importcpp: "Cut",
    header: "HLRBRep_FaceData.hxx".}
proc Cut*(this: var HLRBRep_FaceData; B: Standard_Boolean) {.importcpp: "Cut",
    header: "HLRBRep_FaceData.hxx".}
proc WithOutL*(this: HLRBRep_FaceData): Standard_Boolean {.noSideEffect,
    importcpp: "WithOutL", header: "HLRBRep_FaceData.hxx".}
proc WithOutL*(this: var HLRBRep_FaceData; B: Standard_Boolean) {.
    importcpp: "WithOutL", header: "HLRBRep_FaceData.hxx".}
proc Plane*(this: HLRBRep_FaceData): Standard_Boolean {.noSideEffect,
    importcpp: "Plane", header: "HLRBRep_FaceData.hxx".}
proc Plane*(this: var HLRBRep_FaceData; B: Standard_Boolean) {.importcpp: "Plane",
    header: "HLRBRep_FaceData.hxx".}
proc Cylinder*(this: HLRBRep_FaceData): Standard_Boolean {.noSideEffect,
    importcpp: "Cylinder", header: "HLRBRep_FaceData.hxx".}
proc Cylinder*(this: var HLRBRep_FaceData; B: Standard_Boolean) {.
    importcpp: "Cylinder", header: "HLRBRep_FaceData.hxx".}
proc Cone*(this: HLRBRep_FaceData): Standard_Boolean {.noSideEffect,
    importcpp: "Cone", header: "HLRBRep_FaceData.hxx".}
proc Cone*(this: var HLRBRep_FaceData; B: Standard_Boolean) {.importcpp: "Cone",
    header: "HLRBRep_FaceData.hxx".}
proc Sphere*(this: HLRBRep_FaceData): Standard_Boolean {.noSideEffect,
    importcpp: "Sphere", header: "HLRBRep_FaceData.hxx".}
proc Sphere*(this: var HLRBRep_FaceData; B: Standard_Boolean) {.importcpp: "Sphere",
    header: "HLRBRep_FaceData.hxx".}
proc Torus*(this: HLRBRep_FaceData): Standard_Boolean {.noSideEffect,
    importcpp: "Torus", header: "HLRBRep_FaceData.hxx".}
proc Torus*(this: var HLRBRep_FaceData; B: Standard_Boolean) {.importcpp: "Torus",
    header: "HLRBRep_FaceData.hxx".}
proc Size*(this: HLRBRep_FaceData): Standard_Real {.noSideEffect, importcpp: "Size",
    header: "HLRBRep_FaceData.hxx".}
proc Size*(this: var HLRBRep_FaceData; S: Standard_Real) {.importcpp: "Size",
    header: "HLRBRep_FaceData.hxx".}
proc Orientation*(this: HLRBRep_FaceData): TopAbs_Orientation {.noSideEffect,
    importcpp: "Orientation", header: "HLRBRep_FaceData.hxx".}
proc Orientation*(this: var HLRBRep_FaceData; O: TopAbs_Orientation) {.
    importcpp: "Orientation", header: "HLRBRep_FaceData.hxx".}
proc Wires*(this: var HLRBRep_FaceData): var handle[HLRAlgo_WiresBlock] {.
    importcpp: "Wires", header: "HLRBRep_FaceData.hxx".}
proc Geometry*(this: var HLRBRep_FaceData): var HLRBRep_Surface {.
    importcpp: "Geometry", header: "HLRBRep_FaceData.hxx".}
proc Tolerance*(this: HLRBRep_FaceData): Standard_ShortReal {.noSideEffect,
    importcpp: "Tolerance", header: "HLRBRep_FaceData.hxx".}