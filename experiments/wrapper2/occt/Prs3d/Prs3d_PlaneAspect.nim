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

import
  Prs3d_LineAspect

## ! A framework to define the display of planes.

type
  Prs3d_PlaneAspect* {.importcpp: "Prs3d_PlaneAspect",
                      header: "Prs3d_PlaneAspect.hxx", bycopy.} = object of Prs3d_BasicAspect ##
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

  Prs3d_PlaneAspectbase_type* = Prs3d_BasicAspect

proc get_type_name*(): cstring {.importcpp: "Prs3d_PlaneAspect::get_type_name(@)",
                              header: "Prs3d_PlaneAspect.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Prs3d_PlaneAspect::get_type_descriptor(@)",
    header: "Prs3d_PlaneAspect.hxx".}
proc DynamicType*(this: Prs3d_PlaneAspect): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Prs3d_PlaneAspect.hxx".}
proc constructPrs3d_PlaneAspect*(): Prs3d_PlaneAspect {.constructor,
    importcpp: "Prs3d_PlaneAspect(@)", header: "Prs3d_PlaneAspect.hxx".}
proc EdgesAspect*(this: Prs3d_PlaneAspect): handle[Prs3d_LineAspect] {.noSideEffect,
    importcpp: "EdgesAspect", header: "Prs3d_PlaneAspect.hxx".}
proc IsoAspect*(this: Prs3d_PlaneAspect): handle[Prs3d_LineAspect] {.noSideEffect,
    importcpp: "IsoAspect", header: "Prs3d_PlaneAspect.hxx".}
proc ArrowAspect*(this: Prs3d_PlaneAspect): handle[Prs3d_LineAspect] {.noSideEffect,
    importcpp: "ArrowAspect", header: "Prs3d_PlaneAspect.hxx".}
proc SetArrowsLength*(this: var Prs3d_PlaneAspect; theLength: Standard_Real) {.
    importcpp: "SetArrowsLength", header: "Prs3d_PlaneAspect.hxx".}
proc ArrowsLength*(this: Prs3d_PlaneAspect): Standard_Real {.noSideEffect,
    importcpp: "ArrowsLength", header: "Prs3d_PlaneAspect.hxx".}
proc SetArrowsSize*(this: var Prs3d_PlaneAspect; theSize: Standard_Real) {.
    importcpp: "SetArrowsSize", header: "Prs3d_PlaneAspect.hxx".}
proc ArrowsSize*(this: Prs3d_PlaneAspect): Standard_Real {.noSideEffect,
    importcpp: "ArrowsSize", header: "Prs3d_PlaneAspect.hxx".}
proc SetArrowsAngle*(this: var Prs3d_PlaneAspect; theAngle: Standard_Real) {.
    importcpp: "SetArrowsAngle", header: "Prs3d_PlaneAspect.hxx".}
proc ArrowsAngle*(this: Prs3d_PlaneAspect): Standard_Real {.noSideEffect,
    importcpp: "ArrowsAngle", header: "Prs3d_PlaneAspect.hxx".}
proc SetDisplayCenterArrow*(this: var Prs3d_PlaneAspect; theToDraw: Standard_Boolean) {.
    importcpp: "SetDisplayCenterArrow", header: "Prs3d_PlaneAspect.hxx".}
proc DisplayCenterArrow*(this: Prs3d_PlaneAspect): Standard_Boolean {.noSideEffect,
    importcpp: "DisplayCenterArrow", header: "Prs3d_PlaneAspect.hxx".}
proc SetDisplayEdgesArrows*(this: var Prs3d_PlaneAspect; theToDraw: Standard_Boolean) {.
    importcpp: "SetDisplayEdgesArrows", header: "Prs3d_PlaneAspect.hxx".}
proc DisplayEdgesArrows*(this: Prs3d_PlaneAspect): Standard_Boolean {.noSideEffect,
    importcpp: "DisplayEdgesArrows", header: "Prs3d_PlaneAspect.hxx".}
proc SetDisplayEdges*(this: var Prs3d_PlaneAspect; theToDraw: Standard_Boolean) {.
    importcpp: "SetDisplayEdges", header: "Prs3d_PlaneAspect.hxx".}
proc DisplayEdges*(this: Prs3d_PlaneAspect): Standard_Boolean {.noSideEffect,
    importcpp: "DisplayEdges", header: "Prs3d_PlaneAspect.hxx".}
proc SetDisplayIso*(this: var Prs3d_PlaneAspect; theToDraw: Standard_Boolean) {.
    importcpp: "SetDisplayIso", header: "Prs3d_PlaneAspect.hxx".}
proc DisplayIso*(this: Prs3d_PlaneAspect): Standard_Boolean {.noSideEffect,
    importcpp: "DisplayIso", header: "Prs3d_PlaneAspect.hxx".}
proc SetPlaneLength*(this: var Prs3d_PlaneAspect; theLX: Standard_Real;
                    theLY: Standard_Real) {.importcpp: "SetPlaneLength",
    header: "Prs3d_PlaneAspect.hxx".}
proc PlaneXLength*(this: Prs3d_PlaneAspect): Standard_Real {.noSideEffect,
    importcpp: "PlaneXLength", header: "Prs3d_PlaneAspect.hxx".}
proc PlaneYLength*(this: Prs3d_PlaneAspect): Standard_Real {.noSideEffect,
    importcpp: "PlaneYLength", header: "Prs3d_PlaneAspect.hxx".}
proc SetIsoDistance*(this: var Prs3d_PlaneAspect; theL: Standard_Real) {.
    importcpp: "SetIsoDistance", header: "Prs3d_PlaneAspect.hxx".}
proc IsoDistance*(this: Prs3d_PlaneAspect): Standard_Real {.noSideEffect,
    importcpp: "IsoDistance", header: "Prs3d_PlaneAspect.hxx".}
proc DumpJson*(this: Prs3d_PlaneAspect; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Prs3d_PlaneAspect.hxx".}
discard "forward decl of Prs3d_PlaneAspect"
type
  Handle_Prs3d_PlaneAspect* = handle[Prs3d_PlaneAspect]
