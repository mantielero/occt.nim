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

discard "forward decl of HLRAlgo_WiresBlock"
discard "forward decl of TopoDS_Face"
discard "forward decl of HLRBRep_Surface"
type
  HLRBRepFaceData* {.importcpp: "HLRBRep_FaceData", header: "HLRBRep_FaceData.hxx",
                    bycopy.} = object


proc constructHLRBRepFaceData*(): HLRBRepFaceData {.constructor,
    importcpp: "HLRBRep_FaceData(@)", header: "HLRBRep_FaceData.hxx".}
proc set*(this: var HLRBRepFaceData; fg: TopoDS_Face; `or`: TopAbsOrientation;
         cl: StandardBoolean; nw: StandardInteger) {.importcpp: "Set",
    header: "HLRBRep_FaceData.hxx".}
proc setWire*(this: var HLRBRepFaceData; wi: StandardInteger; ne: StandardInteger) {.
    importcpp: "SetWire", header: "HLRBRep_FaceData.hxx".}
proc setWEdge*(this: var HLRBRepFaceData; wi: StandardInteger; ewi: StandardInteger;
              ei: StandardInteger; `or`: TopAbsOrientation; outL: StandardBoolean;
              inte: StandardBoolean; dble: StandardBoolean; isoL: StandardBoolean) {.
    importcpp: "SetWEdge", header: "HLRBRep_FaceData.hxx".}
proc selected*(this: HLRBRepFaceData): StandardBoolean {.noSideEffect,
    importcpp: "Selected", header: "HLRBRep_FaceData.hxx".}
proc selected*(this: var HLRBRepFaceData; b: StandardBoolean) {.importcpp: "Selected",
    header: "HLRBRep_FaceData.hxx".}
proc back*(this: HLRBRepFaceData): StandardBoolean {.noSideEffect, importcpp: "Back",
    header: "HLRBRep_FaceData.hxx".}
proc back*(this: var HLRBRepFaceData; b: StandardBoolean) {.importcpp: "Back",
    header: "HLRBRep_FaceData.hxx".}
proc side*(this: HLRBRepFaceData): StandardBoolean {.noSideEffect, importcpp: "Side",
    header: "HLRBRep_FaceData.hxx".}
proc side*(this: var HLRBRepFaceData; b: StandardBoolean) {.importcpp: "Side",
    header: "HLRBRep_FaceData.hxx".}
proc closed*(this: HLRBRepFaceData): StandardBoolean {.noSideEffect,
    importcpp: "Closed", header: "HLRBRep_FaceData.hxx".}
proc closed*(this: var HLRBRepFaceData; b: StandardBoolean) {.importcpp: "Closed",
    header: "HLRBRep_FaceData.hxx".}
proc hiding*(this: HLRBRepFaceData): StandardBoolean {.noSideEffect,
    importcpp: "Hiding", header: "HLRBRep_FaceData.hxx".}
proc hiding*(this: var HLRBRepFaceData; b: StandardBoolean) {.importcpp: "Hiding",
    header: "HLRBRep_FaceData.hxx".}
proc simple*(this: HLRBRepFaceData): StandardBoolean {.noSideEffect,
    importcpp: "Simple", header: "HLRBRep_FaceData.hxx".}
proc simple*(this: var HLRBRepFaceData; b: StandardBoolean) {.importcpp: "Simple",
    header: "HLRBRep_FaceData.hxx".}
proc cut*(this: HLRBRepFaceData): StandardBoolean {.noSideEffect, importcpp: "Cut",
    header: "HLRBRep_FaceData.hxx".}
proc cut*(this: var HLRBRepFaceData; b: StandardBoolean) {.importcpp: "Cut",
    header: "HLRBRep_FaceData.hxx".}
proc withOutL*(this: HLRBRepFaceData): StandardBoolean {.noSideEffect,
    importcpp: "WithOutL", header: "HLRBRep_FaceData.hxx".}
proc withOutL*(this: var HLRBRepFaceData; b: StandardBoolean) {.importcpp: "WithOutL",
    header: "HLRBRep_FaceData.hxx".}
proc plane*(this: HLRBRepFaceData): StandardBoolean {.noSideEffect,
    importcpp: "Plane", header: "HLRBRep_FaceData.hxx".}
proc plane*(this: var HLRBRepFaceData; b: StandardBoolean) {.importcpp: "Plane",
    header: "HLRBRep_FaceData.hxx".}
proc cylinder*(this: HLRBRepFaceData): StandardBoolean {.noSideEffect,
    importcpp: "Cylinder", header: "HLRBRep_FaceData.hxx".}
proc cylinder*(this: var HLRBRepFaceData; b: StandardBoolean) {.importcpp: "Cylinder",
    header: "HLRBRep_FaceData.hxx".}
proc cone*(this: HLRBRepFaceData): StandardBoolean {.noSideEffect, importcpp: "Cone",
    header: "HLRBRep_FaceData.hxx".}
proc cone*(this: var HLRBRepFaceData; b: StandardBoolean) {.importcpp: "Cone",
    header: "HLRBRep_FaceData.hxx".}
proc sphere*(this: HLRBRepFaceData): StandardBoolean {.noSideEffect,
    importcpp: "Sphere", header: "HLRBRep_FaceData.hxx".}
proc sphere*(this: var HLRBRepFaceData; b: StandardBoolean) {.importcpp: "Sphere",
    header: "HLRBRep_FaceData.hxx".}
proc torus*(this: HLRBRepFaceData): StandardBoolean {.noSideEffect,
    importcpp: "Torus", header: "HLRBRep_FaceData.hxx".}
proc torus*(this: var HLRBRepFaceData; b: StandardBoolean) {.importcpp: "Torus",
    header: "HLRBRep_FaceData.hxx".}
proc size*(this: HLRBRepFaceData): StandardReal {.noSideEffect, importcpp: "Size",
    header: "HLRBRep_FaceData.hxx".}
proc size*(this: var HLRBRepFaceData; s: StandardReal) {.importcpp: "Size",
    header: "HLRBRep_FaceData.hxx".}
proc orientation*(this: HLRBRepFaceData): TopAbsOrientation {.noSideEffect,
    importcpp: "Orientation", header: "HLRBRep_FaceData.hxx".}
proc orientation*(this: var HLRBRepFaceData; o: TopAbsOrientation) {.
    importcpp: "Orientation", header: "HLRBRep_FaceData.hxx".}
proc wires*(this: var HLRBRepFaceData): var Handle[HLRAlgoWiresBlock] {.
    importcpp: "Wires", header: "HLRBRep_FaceData.hxx".}
proc geometry*(this: var HLRBRepFaceData): var HLRBRepSurface {.importcpp: "Geometry",
    header: "HLRBRep_FaceData.hxx".}
proc tolerance*(this: HLRBRepFaceData): StandardShortReal {.noSideEffect,
    importcpp: "Tolerance", header: "HLRBRep_FaceData.hxx".}

