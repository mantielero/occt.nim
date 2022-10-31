import prs3d_types
import ../../tkernel/standard/standard_types



##  Created on: 1994-01-17
##  Created by: Modelistation
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

## ! A framework to define the display of planes.



proc newPrs3dPlaneAspect*(): Prs3dPlaneAspect {.cdecl, constructor,
    importcpp: "Prs3d_PlaneAspect(@)", header: "Prs3d_PlaneAspect.hxx".}
proc edgesAspect*(this: Prs3dPlaneAspect): Handle[Prs3dLineAspect] {.noSideEffect,
    cdecl, importcpp: "EdgesAspect", header: "Prs3d_PlaneAspect.hxx".}
proc isoAspect*(this: Prs3dPlaneAspect): Handle[Prs3dLineAspect] {.noSideEffect,
    cdecl, importcpp: "IsoAspect", header: "Prs3d_PlaneAspect.hxx".}
proc arrowAspect*(this: Prs3dPlaneAspect): Handle[Prs3dLineAspect] {.noSideEffect,
    cdecl, importcpp: "ArrowAspect", header: "Prs3d_PlaneAspect.hxx".}
proc setArrowsLength*(this: var Prs3dPlaneAspect; theLength: cfloat) {.cdecl,
    importcpp: "SetArrowsLength", header: "Prs3d_PlaneAspect.hxx".}
proc arrowsLength*(this: Prs3dPlaneAspect): cfloat {.noSideEffect, cdecl,
    importcpp: "ArrowsLength", header: "Prs3d_PlaneAspect.hxx".}
proc setArrowsSize*(this: var Prs3dPlaneAspect; theSize: cfloat) {.cdecl,
    importcpp: "SetArrowsSize", header: "Prs3d_PlaneAspect.hxx".}
proc arrowsSize*(this: Prs3dPlaneAspect): cfloat {.noSideEffect, cdecl,
    importcpp: "ArrowsSize", header: "Prs3d_PlaneAspect.hxx".}
proc setArrowsAngle*(this: var Prs3dPlaneAspect; theAngle: cfloat) {.cdecl,
    importcpp: "SetArrowsAngle", header: "Prs3d_PlaneAspect.hxx".}
proc arrowsAngle*(this: Prs3dPlaneAspect): cfloat {.noSideEffect, cdecl,
    importcpp: "ArrowsAngle", header: "Prs3d_PlaneAspect.hxx".}
proc setDisplayCenterArrow*(this: var Prs3dPlaneAspect; theToDraw: bool) {.cdecl,
    importcpp: "SetDisplayCenterArrow", header: "Prs3d_PlaneAspect.hxx".}
proc displayCenterArrow*(this: Prs3dPlaneAspect): bool {.noSideEffect, cdecl,
    importcpp: "DisplayCenterArrow", header: "Prs3d_PlaneAspect.hxx".}
proc setDisplayEdgesArrows*(this: var Prs3dPlaneAspect; theToDraw: bool) {.cdecl,
    importcpp: "SetDisplayEdgesArrows", header: "Prs3d_PlaneAspect.hxx".}
proc displayEdgesArrows*(this: Prs3dPlaneAspect): bool {.noSideEffect, cdecl,
    importcpp: "DisplayEdgesArrows", header: "Prs3d_PlaneAspect.hxx".}
proc setDisplayEdges*(this: var Prs3dPlaneAspect; theToDraw: bool) {.cdecl,
    importcpp: "SetDisplayEdges", header: "Prs3d_PlaneAspect.hxx".}
proc displayEdges*(this: Prs3dPlaneAspect): bool {.noSideEffect, cdecl,
    importcpp: "DisplayEdges", header: "Prs3d_PlaneAspect.hxx".}
proc setDisplayIso*(this: var Prs3dPlaneAspect; theToDraw: bool) {.cdecl,
    importcpp: "SetDisplayIso", header: "Prs3d_PlaneAspect.hxx".}
proc displayIso*(this: Prs3dPlaneAspect): bool {.noSideEffect, cdecl,
    importcpp: "DisplayIso", header: "Prs3d_PlaneAspect.hxx".}
proc setPlaneLength*(this: var Prs3dPlaneAspect; theLX: cfloat; theLY: cfloat) {.cdecl,
    importcpp: "SetPlaneLength", header: "Prs3d_PlaneAspect.hxx".}
proc planeXLength*(this: Prs3dPlaneAspect): cfloat {.noSideEffect, cdecl,
    importcpp: "PlaneXLength", header: "Prs3d_PlaneAspect.hxx".}
proc planeYLength*(this: Prs3dPlaneAspect): cfloat {.noSideEffect, cdecl,
    importcpp: "PlaneYLength", header: "Prs3d_PlaneAspect.hxx".}
proc setIsoDistance*(this: var Prs3dPlaneAspect; theL: cfloat) {.cdecl,
    importcpp: "SetIsoDistance", header: "Prs3d_PlaneAspect.hxx".}
proc isoDistance*(this: Prs3dPlaneAspect): cfloat {.noSideEffect, cdecl,
    importcpp: "IsoDistance", header: "Prs3d_PlaneAspect.hxx".}
proc dumpJson*(this: Prs3dPlaneAspect; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "Prs3d_PlaneAspect.hxx".}


