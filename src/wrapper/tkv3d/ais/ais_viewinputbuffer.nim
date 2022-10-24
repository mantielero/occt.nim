import ais_types

##  Copyright (c) 2016-2019 OPEN CASCADE SAS
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

## ! Selection mode










proc newAIS_ViewInputBufferOrientation*(): AIS_ViewInputBufferOrientation {.cdecl,
    constructor, importcpp: "AIS_ViewInputBuffer::_orientation(@)", header: "AIS_ViewInputBuffer.hxx".}
#var orientation* {.importcpp: "Orientation", header: "AIS_ViewInputBuffer.hxx".}: AIS_ViewInputBufferOrientation



proc newAIS_ViewInputBufferHighlighting*(): AIS_ViewInputBufferHighlighting {.
    cdecl, constructor, importcpp: "AIS_ViewInputBuffer::_highlighting(@)",
    header: "AIS_ViewInputBuffer.hxx".}
#var moveTo* {.importcpp: "MoveTo", header: "AIS_ViewInputBuffer.hxx".}: AIS_ViewInputBufferHighlighting



proc newAIS_ViewInputBufferSelection*(): AIS_ViewInputBufferSelection {.cdecl,
    constructor, importcpp: "AIS_ViewInputBuffer::_selection(@)", header: "AIS_ViewInputBuffer.hxx".}
#var selection* {.importcpp: "Selection", header: "AIS_ViewInputBuffer.hxx".}: AIS_ViewInputBufferSelection



proc newAIS_ViewInputBufferPanningParams*(): AIS_ViewInputBufferPanningParams {.
    cdecl, constructor, importcpp: "AIS_ViewInputBuffer::_panningParams(@)",
    header: "AIS_ViewInputBuffer.hxx".}
#var panning* {.importcpp: "Panning", header: "AIS_ViewInputBuffer.hxx".}: AIS_ViewInputBufferPanningParams



proc newAIS_ViewInputBufferDraggingParams*(): AIS_ViewInputBufferDraggingParams {.
    cdecl, constructor, importcpp: "AIS_ViewInputBuffer::_draggingParams(@)",
    header: "AIS_ViewInputBuffer.hxx".}
#var dragging* {.importcpp: "Dragging", header: "AIS_ViewInputBuffer.hxx".}: AIS_ViewInputBufferDraggingParams



proc newAIS_ViewInputBufferOrbitRotation*(): AIS_ViewInputBufferOrbitRotation {.
    cdecl, constructor, importcpp: "AIS_ViewInputBuffer::_orbitRotation(@)",
    header: "AIS_ViewInputBuffer.hxx".}
#var orbitRotation* {.importcpp: "OrbitRotation", header: "AIS_ViewInputBuffer.hxx".}: AIS_ViewInputBufferOrbitRotation



proc newAIS_ViewInputBufferViewRotation*(): AIS_ViewInputBufferViewRotation {.
    cdecl, constructor, importcpp: "AIS_ViewInputBuffer::_viewRotation(@)",
    header: "AIS_ViewInputBuffer.hxx".}
#var viewRotation* {.importcpp: "ViewRotation", header: "AIS_ViewInputBuffer.hxx".}: AIS_ViewInputBufferViewRotation



proc newAIS_ViewInputBufferZrotateParams*(): AIS_ViewInputBufferZrotateParams {.
    cdecl, constructor, importcpp: "AIS_ViewInputBuffer::_zrotateParams(@)",
    header: "AIS_ViewInputBuffer.hxx".}
#var zRotate* {.importcpp: "ZRotate", header: "AIS_ViewInputBuffer.hxx".}: AIS_ViewInputBufferZrotateParams

proc newAIS_ViewInputBuffer*(): AIS_ViewInputBuffer {.cdecl, constructor,
    importcpp: "AIS_ViewInputBuffer(@)", header: "AIS_ViewInputBuffer.hxx".}
proc reset*(this: var AIS_ViewInputBuffer) {.cdecl, importcpp: "Reset", header: "AIS_ViewInputBuffer.hxx".}
