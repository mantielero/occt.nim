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

type
  AIS_ViewSelectionTool* {.size: sizeof(cint), importcpp: "AIS_ViewSelectionTool",
                          header: "AIS_ViewInputBuffer.hxx".} = enum
    AIS_ViewSelectionToolPicking, ## !< pick to select
    AIS_ViewSelectionToolRubberBand, ## !< rubber-band to select
    AIS_ViewSelectionToolPolygon, ## !< polyline to select
    AIS_ViewSelectionToolZoomWindow ## !< zoom-in window (no selection)


## ! Input buffer type.

type
  AIS_ViewInputBufferType* {.size: sizeof(cint),
                            importcpp: "AIS_ViewInputBufferType",
                            header: "AIS_ViewInputBuffer.hxx".} = enum
    AIS_ViewInputBufferTypeUI, ## !< input buffer for filling from UI thread
    AIS_ViewInputBufferTypeGL ## !< input buffer accessible  from GL thread


## ! Auxiliary structure defining viewer events

type
  AIS_ViewInputBuffer* {.importcpp: "AIS_ViewInputBuffer",
                        header: "AIS_ViewInputBuffer.hxx", bycopy.} = object
    isNewGesture* {.importc: "IsNewGesture".}: bool ## !< transition from one action to another
    zoomActions* {.importc: "ZoomActions".}: NCollectionSequence[AspectScrollDelta] ## !< the queue with zoom actions

  AIS_ViewInputBufferOrientation* {.importcpp: "AIS_ViewInputBuffer::_orientation",
                                   header: "AIS_ViewInputBuffer.hxx", bycopy.} = object
    toFitAll* {.importc: "ToFitAll".}: bool ## !< perform FitAll operation
    toSetViewOrient* {.importc: "ToSetViewOrient".}: bool ## !< set new view orientation
    viewOrient* {.importc: "ViewOrient".}: V3dTypeOfOrientation ## !< new view orientation


proc constructAIS_ViewInputBufferOrientation*(): AIS_ViewInputBufferOrientation {.
    constructor, importcpp: "AIS_ViewInputBuffer::_orientation(@)",
    header: "AIS_ViewInputBuffer.hxx".}
var orientation* {.importcpp: "Orientation", header: "AIS_ViewInputBuffer.hxx".}: AIS_ViewInputBufferOrientation

type
  AIS_ViewInputBufferHighlighting* {.importcpp: "AIS_ViewInputBuffer::_highlighting",
                                    header: "AIS_ViewInputBuffer.hxx", bycopy.} = object
    toHilight* {.importc: "ToHilight".}: bool ## !< perform dynamic highlighting at specified point
    point* {.importc: "Point".}: Graphic3dVec2i ## !< the new point for dynamic highlighting


proc constructAIS_ViewInputBufferHighlighting*(): AIS_ViewInputBufferHighlighting {.
    constructor, importcpp: "AIS_ViewInputBuffer::_highlighting(@)",
    header: "AIS_ViewInputBuffer.hxx".}
var moveTo* {.importcpp: "MoveTo", header: "AIS_ViewInputBuffer.hxx".}: AIS_ViewInputBufferHighlighting

type
  AIS_ViewInputBufferSelection* {.importcpp: "AIS_ViewInputBuffer::_selection",
                                 header: "AIS_ViewInputBuffer.hxx", bycopy.} = object
    tool* {.importc: "Tool".}: AIS_ViewSelectionTool ## !< perform selection
    isXOR* {.importc: "IsXOR".}: bool ## !< perform shift selection
    points* {.importc: "Points".}: NCollectionSequence[Graphic3dVec2i] ## !< the points for selection
    toApplyTool* {.importc: "ToApplyTool".}: bool ## !< apply rubber-band selection tool


proc constructAIS_ViewInputBufferSelection*(): AIS_ViewInputBufferSelection {.
    constructor, importcpp: "AIS_ViewInputBuffer::_selection(@)",
    header: "AIS_ViewInputBuffer.hxx".}
var selection* {.importcpp: "Selection", header: "AIS_ViewInputBuffer.hxx".}: AIS_ViewInputBufferSelection

type
  AIS_ViewInputBufferPanningParams* {.importcpp: "AIS_ViewInputBuffer::_panningParams",
                                     header: "AIS_ViewInputBuffer.hxx", bycopy.} = object
    toStart* {.importc: "ToStart".}: bool ## !< start panning
    pointStart* {.importc: "PointStart".}: Graphic3dVec2i ## !< panning start point
    toPan* {.importc: "ToPan".}: bool ## !< perform panning
    delta* {.importc: "Delta".}: Graphic3dVec2i ## !< panning delta


proc constructAIS_ViewInputBufferPanningParams*(): AIS_ViewInputBufferPanningParams {.
    constructor, importcpp: "AIS_ViewInputBuffer::_panningParams(@)",
    header: "AIS_ViewInputBuffer.hxx".}
var panning* {.importcpp: "Panning", header: "AIS_ViewInputBuffer.hxx".}: AIS_ViewInputBufferPanningParams

type
  AIS_ViewInputBufferDraggingParams* {.importcpp: "AIS_ViewInputBuffer::_draggingParams",
                                      header: "AIS_ViewInputBuffer.hxx", bycopy.} = object
    toStart* {.importc: "ToStart".}: bool ## !< start dragging
    toStop* {.importc: "ToStop".}: bool ## !< stop  dragging
    toAbort* {.importc: "ToAbort".}: bool ## !< abort dragging (restore previous position)
    pointStart* {.importc: "PointStart".}: Graphic3dVec2i ## !< drag start point
    pointTo* {.importc: "PointTo".}: Graphic3dVec2i ## !< drag end point


proc constructAIS_ViewInputBufferDraggingParams*(): AIS_ViewInputBufferDraggingParams {.
    constructor, importcpp: "AIS_ViewInputBuffer::_draggingParams(@)",
    header: "AIS_ViewInputBuffer.hxx".}
var dragging* {.importcpp: "Dragging", header: "AIS_ViewInputBuffer.hxx".}: AIS_ViewInputBufferDraggingParams

type
  AIS_ViewInputBufferOrbitRotation* {.importcpp: "AIS_ViewInputBuffer::_orbitRotation",
                                     header: "AIS_ViewInputBuffer.hxx", bycopy.} = object
    toStart* {.importc: "ToStart".}: bool ## !< start orbit rotation
    pointStart* {.importc: "PointStart".}: Graphic3dVec2d ## !< orbit rotation start point
    toRotate* {.importc: "ToRotate".}: bool ## !< perform orbit rotation
    pointTo* {.importc: "PointTo".}: Graphic3dVec2d ## !< orbit rotation end point


proc constructAIS_ViewInputBufferOrbitRotation*(): AIS_ViewInputBufferOrbitRotation {.
    constructor, importcpp: "AIS_ViewInputBuffer::_orbitRotation(@)",
    header: "AIS_ViewInputBuffer.hxx".}
var orbitRotation* {.importcpp: "OrbitRotation", header: "AIS_ViewInputBuffer.hxx".}: AIS_ViewInputBufferOrbitRotation

type
  AIS_ViewInputBufferViewRotation* {.importcpp: "AIS_ViewInputBuffer::_viewRotation",
                                    header: "AIS_ViewInputBuffer.hxx", bycopy.} = object
    toStart* {.importc: "ToStart".}: bool ## !< start view rotation
    pointStart* {.importc: "PointStart".}: Graphic3dVec2d ## !< view rotation start point
    toRotate* {.importc: "ToRotate".}: bool ## !< perform view rotation
    pointTo* {.importc: "PointTo".}: Graphic3dVec2d ## !< view rotation end point


proc constructAIS_ViewInputBufferViewRotation*(): AIS_ViewInputBufferViewRotation {.
    constructor, importcpp: "AIS_ViewInputBuffer::_viewRotation(@)",
    header: "AIS_ViewInputBuffer.hxx".}
var viewRotation* {.importcpp: "ViewRotation", header: "AIS_ViewInputBuffer.hxx".}: AIS_ViewInputBufferViewRotation

type
  AIS_ViewInputBufferZrotateParams* {.importcpp: "AIS_ViewInputBuffer::_zrotateParams",
                                     header: "AIS_ViewInputBuffer.hxx", bycopy.} = object
    point* {.importc: "Point".}: Graphic3dVec2i ## !< Z rotation start point
    angle* {.importc: "Angle".}: cdouble ## !< Z rotation angle
    toRotate* {.importc: "ToRotate".}: bool ## !< start Z rotation


proc constructAIS_ViewInputBufferZrotateParams*(): AIS_ViewInputBufferZrotateParams {.
    constructor, importcpp: "AIS_ViewInputBuffer::_zrotateParams(@)",
    header: "AIS_ViewInputBuffer.hxx".}
var zRotate* {.importcpp: "ZRotate", header: "AIS_ViewInputBuffer.hxx".}: AIS_ViewInputBufferZrotateParams

proc constructAIS_ViewInputBuffer*(): AIS_ViewInputBuffer {.constructor,
    importcpp: "AIS_ViewInputBuffer(@)", header: "AIS_ViewInputBuffer.hxx".}
proc reset*(this: var AIS_ViewInputBuffer) {.importcpp: "Reset",
    header: "AIS_ViewInputBuffer.hxx".}

























