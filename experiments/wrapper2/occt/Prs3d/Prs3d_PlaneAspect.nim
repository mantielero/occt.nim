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

type
  Prs3dPlaneAspect* {.importcpp: "Prs3d_PlaneAspect",
                     header: "Prs3d_PlaneAspect.hxx", bycopy.} = object of Prs3dBasicAspect ##
                                                                                     ## !
                                                                                     ## Constructs
                                                                                     ## an
                                                                                     ## empty
                                                                                     ## framework
                                                                                     ## for
                                                                                     ## the
                                                                                     ## display
                                                                                     ## of
                                                                                     ## planes.

  Prs3dPlaneAspectbaseType* = Prs3dBasicAspect

proc getTypeName*(): cstring {.importcpp: "Prs3d_PlaneAspect::get_type_name(@)",
                            header: "Prs3d_PlaneAspect.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Prs3d_PlaneAspect::get_type_descriptor(@)",
    header: "Prs3d_PlaneAspect.hxx".}
proc dynamicType*(this: Prs3dPlaneAspect): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Prs3d_PlaneAspect.hxx".}
proc constructPrs3dPlaneAspect*(): Prs3dPlaneAspect {.constructor,
    importcpp: "Prs3d_PlaneAspect(@)", header: "Prs3d_PlaneAspect.hxx".}
proc edgesAspect*(this: Prs3dPlaneAspect): Handle[Prs3dLineAspect] {.noSideEffect,
    importcpp: "EdgesAspect", header: "Prs3d_PlaneAspect.hxx".}
proc isoAspect*(this: Prs3dPlaneAspect): Handle[Prs3dLineAspect] {.noSideEffect,
    importcpp: "IsoAspect", header: "Prs3d_PlaneAspect.hxx".}
proc arrowAspect*(this: Prs3dPlaneAspect): Handle[Prs3dLineAspect] {.noSideEffect,
    importcpp: "ArrowAspect", header: "Prs3d_PlaneAspect.hxx".}
proc setArrowsLength*(this: var Prs3dPlaneAspect; theLength: float) {.
    importcpp: "SetArrowsLength", header: "Prs3d_PlaneAspect.hxx".}
proc arrowsLength*(this: Prs3dPlaneAspect): float {.noSideEffect,
    importcpp: "ArrowsLength", header: "Prs3d_PlaneAspect.hxx".}
proc setArrowsSize*(this: var Prs3dPlaneAspect; theSize: float) {.
    importcpp: "SetArrowsSize", header: "Prs3d_PlaneAspect.hxx".}
proc arrowsSize*(this: Prs3dPlaneAspect): float {.noSideEffect,
    importcpp: "ArrowsSize", header: "Prs3d_PlaneAspect.hxx".}
proc setArrowsAngle*(this: var Prs3dPlaneAspect; theAngle: float) {.
    importcpp: "SetArrowsAngle", header: "Prs3d_PlaneAspect.hxx".}
proc arrowsAngle*(this: Prs3dPlaneAspect): float {.noSideEffect,
    importcpp: "ArrowsAngle", header: "Prs3d_PlaneAspect.hxx".}
proc setDisplayCenterArrow*(this: var Prs3dPlaneAspect; theToDraw: bool) {.
    importcpp: "SetDisplayCenterArrow", header: "Prs3d_PlaneAspect.hxx".}
proc displayCenterArrow*(this: Prs3dPlaneAspect): bool {.noSideEffect,
    importcpp: "DisplayCenterArrow", header: "Prs3d_PlaneAspect.hxx".}
proc setDisplayEdgesArrows*(this: var Prs3dPlaneAspect; theToDraw: bool) {.
    importcpp: "SetDisplayEdgesArrows", header: "Prs3d_PlaneAspect.hxx".}
proc displayEdgesArrows*(this: Prs3dPlaneAspect): bool {.noSideEffect,
    importcpp: "DisplayEdgesArrows", header: "Prs3d_PlaneAspect.hxx".}
proc setDisplayEdges*(this: var Prs3dPlaneAspect; theToDraw: bool) {.
    importcpp: "SetDisplayEdges", header: "Prs3d_PlaneAspect.hxx".}
proc displayEdges*(this: Prs3dPlaneAspect): bool {.noSideEffect,
    importcpp: "DisplayEdges", header: "Prs3d_PlaneAspect.hxx".}
proc setDisplayIso*(this: var Prs3dPlaneAspect; theToDraw: bool) {.
    importcpp: "SetDisplayIso", header: "Prs3d_PlaneAspect.hxx".}
proc displayIso*(this: Prs3dPlaneAspect): bool {.noSideEffect,
    importcpp: "DisplayIso", header: "Prs3d_PlaneAspect.hxx".}
proc setPlaneLength*(this: var Prs3dPlaneAspect; theLX: float; theLY: float) {.
    importcpp: "SetPlaneLength", header: "Prs3d_PlaneAspect.hxx".}
proc planeXLength*(this: Prs3dPlaneAspect): float {.noSideEffect,
    importcpp: "PlaneXLength", header: "Prs3d_PlaneAspect.hxx".}
proc planeYLength*(this: Prs3dPlaneAspect): float {.noSideEffect,
    importcpp: "PlaneYLength", header: "Prs3d_PlaneAspect.hxx".}
proc setIsoDistance*(this: var Prs3dPlaneAspect; theL: float) {.
    importcpp: "SetIsoDistance", header: "Prs3d_PlaneAspect.hxx".}
proc isoDistance*(this: Prs3dPlaneAspect): float {.noSideEffect,
    importcpp: "IsoDistance", header: "Prs3d_PlaneAspect.hxx".}
proc dumpJson*(this: Prs3dPlaneAspect; theOStream: var StandardOStream;
              theDepth: int = -1) {.noSideEffect, importcpp: "DumpJson",
                                header: "Prs3d_PlaneAspect.hxx".}
discard "forward decl of Prs3d_PlaneAspect"
type
  HandlePrs3dPlaneAspect* = Handle[Prs3dPlaneAspect]

