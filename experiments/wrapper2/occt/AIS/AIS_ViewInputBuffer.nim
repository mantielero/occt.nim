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

import
  ../Aspect/Aspect_ScrollDelta, ../Graphic3d/Graphic3d_Vec2,
  ../NCollection/NCollection_Sequence, ../V3d/V3d_TypeOfOrientation

## ! Selection mode

type
  AIS_ViewSelectionTool* {.size: sizeof(cint), importcpp: "AIS_ViewSelectionTool",
                          header: "AIS_ViewInputBuffer.hxx".} = enum
    AIS_ViewSelectionTool_Picking, ## !< pick to select
    AIS_ViewSelectionTool_RubberBand, ## !< rubber-band to select
    AIS_ViewSelectionTool_Polygon, ## !< polyline to select
    AIS_ViewSelectionTool_ZoomWindow ## !< zoom-in window (no selection)


## ! Input buffer type.

type
  AIS_ViewInputBufferType* {.size: sizeof(cint),
                            importcpp: "AIS_ViewInputBufferType",
                            header: "AIS_ViewInputBuffer.hxx".} = enum
    AIS_ViewInputBufferType_UI, ## !< input buffer for filling from UI thread
    AIS_ViewInputBufferType_GL ## !< input buffer accessible  from GL thread


## ! Auxiliary structure defining viewer events

type
  AIS_ViewInputBuffer* {.importcpp: "AIS_ViewInputBuffer",
                        header: "AIS_ViewInputBuffer.hxx", bycopy.} = object
    IsNewGesture* {.importc: "IsNewGesture".}: bool ## !< transition from one action to another
    ZoomActions* {.importc: "ZoomActions".}: NCollection_Sequence[
        Aspect_ScrollDelta]   ## !< the queue with zoom actions

  AIS_ViewInputBuffer_orientation* {.importcpp: "AIS_ViewInputBuffer::_orientation",
                                    header: "AIS_ViewInputBuffer.hxx", bycopy.} = object
    ToFitAll* {.importc: "ToFitAll".}: bool ## !< perform FitAll operation
    ToSetViewOrient* {.importc: "ToSetViewOrient".}: bool ## !< set new view orientation
    ViewOrient* {.importc: "ViewOrient".}: V3d_TypeOfOrientation ## !< new view orientation


proc constructAIS_ViewInputBuffer_orientation*(): AIS_ViewInputBuffer_orientation {.
    constructor, importcpp: "AIS_ViewInputBuffer::_orientation(@)",
    header: "AIS_ViewInputBuffer.hxx".}
var Orientation* {.importcpp: "Orientation", header: "AIS_ViewInputBuffer.hxx".}: AIS_ViewInputBuffer_orientation

type
  AIS_ViewInputBuffer_highlighting* {.importcpp: "AIS_ViewInputBuffer::_highlighting",
                                     header: "AIS_ViewInputBuffer.hxx", bycopy.} = object
    ToHilight* {.importc: "ToHilight".}: bool ## !< perform dynamic highlighting at specified point
    Point* {.importc: "Point".}: Graphic3d_Vec2i ## !< the new point for dynamic highlighting


proc constructAIS_ViewInputBuffer_highlighting*(): AIS_ViewInputBuffer_highlighting {.
    constructor, importcpp: "AIS_ViewInputBuffer::_highlighting(@)",
    header: "AIS_ViewInputBuffer.hxx".}
var MoveTo* {.importcpp: "MoveTo", header: "AIS_ViewInputBuffer.hxx".}: AIS_ViewInputBuffer_highlighting

type
  AIS_ViewInputBuffer_selection* {.importcpp: "AIS_ViewInputBuffer::_selection",
                                  header: "AIS_ViewInputBuffer.hxx", bycopy.} = object
    Tool* {.importc: "Tool".}: AIS_ViewSelectionTool ## !< perform selection
    IsXOR* {.importc: "IsXOR".}: bool ## !< perform shift selection
    Points* {.importc: "Points".}: NCollection_Sequence[Graphic3d_Vec2i] ## !< the points for selection
    ToApplyTool* {.importc: "ToApplyTool".}: bool ## !< apply rubber-band selection tool


proc constructAIS_ViewInputBuffer_selection*(): AIS_ViewInputBuffer_selection {.
    constructor, importcpp: "AIS_ViewInputBuffer::_selection(@)",
    header: "AIS_ViewInputBuffer.hxx".}
var Selection* {.importcpp: "Selection", header: "AIS_ViewInputBuffer.hxx".}: AIS_ViewInputBuffer_selection

type
  AIS_ViewInputBuffer_panningParams* {.importcpp: "AIS_ViewInputBuffer::_panningParams",
                                      header: "AIS_ViewInputBuffer.hxx", bycopy.} = object
    ToStart* {.importc: "ToStart".}: bool ## !< start panning
    PointStart* {.importc: "PointStart".}: Graphic3d_Vec2i ## !< panning start point
    ToPan* {.importc: "ToPan".}: bool ## !< perform panning
    Delta* {.importc: "Delta".}: Graphic3d_Vec2i ## !< panning delta


proc constructAIS_ViewInputBuffer_panningParams*(): AIS_ViewInputBuffer_panningParams {.
    constructor, importcpp: "AIS_ViewInputBuffer::_panningParams(@)",
    header: "AIS_ViewInputBuffer.hxx".}
var Panning* {.importcpp: "Panning", header: "AIS_ViewInputBuffer.hxx".}: AIS_ViewInputBuffer_panningParams

type
  AIS_ViewInputBuffer_draggingParams* {.importcpp: "AIS_ViewInputBuffer::_draggingParams",
                                       header: "AIS_ViewInputBuffer.hxx", bycopy.} = object
    ToStart* {.importc: "ToStart".}: bool ## !< start dragging
    ToStop* {.importc: "ToStop".}: bool ## !< stop  dragging
    ToAbort* {.importc: "ToAbort".}: bool ## !< abort dragging (restore previous position)
    PointStart* {.importc: "PointStart".}: Graphic3d_Vec2i ## !< drag start point
    PointTo* {.importc: "PointTo".}: Graphic3d_Vec2i ## !< drag end point


proc constructAIS_ViewInputBuffer_draggingParams*(): AIS_ViewInputBuffer_draggingParams {.
    constructor, importcpp: "AIS_ViewInputBuffer::_draggingParams(@)",
    header: "AIS_ViewInputBuffer.hxx".}
var Dragging* {.importcpp: "Dragging", header: "AIS_ViewInputBuffer.hxx".}: AIS_ViewInputBuffer_draggingParams

type
  AIS_ViewInputBuffer_orbitRotation* {.importcpp: "AIS_ViewInputBuffer::_orbitRotation",
                                      header: "AIS_ViewInputBuffer.hxx", bycopy.} = object
    ToStart* {.importc: "ToStart".}: bool ## !< start orbit rotation
    PointStart* {.importc: "PointStart".}: Graphic3d_Vec2d ## !< orbit rotation start point
    ToRotate* {.importc: "ToRotate".}: bool ## !< perform orbit rotation
    PointTo* {.importc: "PointTo".}: Graphic3d_Vec2d ## !< orbit rotation end point


proc constructAIS_ViewInputBuffer_orbitRotation*(): AIS_ViewInputBuffer_orbitRotation {.
    constructor, importcpp: "AIS_ViewInputBuffer::_orbitRotation(@)",
    header: "AIS_ViewInputBuffer.hxx".}
var OrbitRotation* {.importcpp: "OrbitRotation", header: "AIS_ViewInputBuffer.hxx".}: AIS_ViewInputBuffer_orbitRotation

type
  AIS_ViewInputBuffer_viewRotation* {.importcpp: "AIS_ViewInputBuffer::_viewRotation",
                                     header: "AIS_ViewInputBuffer.hxx", bycopy.} = object
    ToStart* {.importc: "ToStart".}: bool ## !< start view rotation
    PointStart* {.importc: "PointStart".}: Graphic3d_Vec2d ## !< view rotation start point
    ToRotate* {.importc: "ToRotate".}: bool ## !< perform view rotation
    PointTo* {.importc: "PointTo".}: Graphic3d_Vec2d ## !< view rotation end point


proc constructAIS_ViewInputBuffer_viewRotation*(): AIS_ViewInputBuffer_viewRotation {.
    constructor, importcpp: "AIS_ViewInputBuffer::_viewRotation(@)",
    header: "AIS_ViewInputBuffer.hxx".}
var ViewRotation* {.importcpp: "ViewRotation", header: "AIS_ViewInputBuffer.hxx".}: AIS_ViewInputBuffer_viewRotation

type
  AIS_ViewInputBuffer_zrotateParams* {.importcpp: "AIS_ViewInputBuffer::_zrotateParams",
                                      header: "AIS_ViewInputBuffer.hxx", bycopy.} = object
    Point* {.importc: "Point".}: Graphic3d_Vec2i ## !< Z rotation start point
    Angle* {.importc: "Angle".}: cdouble ## !< Z rotation angle
    ToRotate* {.importc: "ToRotate".}: bool ## !< start Z rotation


proc constructAIS_ViewInputBuffer_zrotateParams*(): AIS_ViewInputBuffer_zrotateParams {.
    constructor, importcpp: "AIS_ViewInputBuffer::_zrotateParams(@)",
    header: "AIS_ViewInputBuffer.hxx".}
var ZRotate* {.importcpp: "ZRotate", header: "AIS_ViewInputBuffer.hxx".}: AIS_ViewInputBuffer_zrotateParams

proc constructAIS_ViewInputBuffer*(): AIS_ViewInputBuffer {.constructor,
    importcpp: "AIS_ViewInputBuffer(@)", header: "AIS_ViewInputBuffer.hxx".}
proc Reset*(this: var AIS_ViewInputBuffer) {.importcpp: "Reset",
    header: "AIS_ViewInputBuffer.hxx".}