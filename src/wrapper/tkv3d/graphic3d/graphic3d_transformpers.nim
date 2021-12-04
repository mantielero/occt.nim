##  Created on: 2015-06-18
##  Created by: Anton POLETAEV
##  Copyright (c) 2015 OPEN CASCADE SAS
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

type
  HandleGraphic3dTransformPers* = Handle[Graphic3dTransformPers]

## ! Transformation Persistence definition.
## !
## ! Transformation Persistence defines a mutable Local Coordinate system which depends on camera position,
## ! so that visual appearance of the object becomes partially immutable while camera moves.
## ! Object visually preserves particular property such as size, placement, rotation or their combination.
## !
## ! Graphic3d_TMF_ZoomPers, Graphic3d_TMF_RotatePers and Graphic3d_TMF_ZoomRotatePers define Local Coordinate system
## ! having origin in specified anchor point defined in World Coordinate system,
## ! while Graphic3d_TMF_TriedronPers and Graphic3d_TMF_2d define origin as 2D offset from screen corner in pixels.
## !
## ! Graphic3d_TMF_2d, Graphic3d_TMF_TriedronPers and Graphic3d_TMF_ZoomPers defines Local Coordinate system where length units are pixels.
## ! Beware that Graphic3d_RenderingParams::ResolutionRatio() will be ignored!
## ! For other Persistence flags, normal (world) length units will apply.
## !
## ! WARNING: Graphic3d_TMF_None is not permitted for defining instance of this class - NULL handle should be used for this purpose!

type
  Graphic3dTransformPers* {.importcpp: "Graphic3d_TransformPers",
                           header: "Graphic3d_TransformPers.hxx", bycopy.} = object of StandardTransient ##
                                                                                                  ## !
                                                                                                  ## Return
                                                                                                  ## true
                                                                                                  ## if
                                                                                                  ## specified
                                                                                                  ## mode
                                                                                                  ## is
                                                                                                  ## zoom/rotate
                                                                                                  ## transformation
                                                                                                  ## persistence.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Set
                                                                                                  ## transformation
                                                                                                  ## persistence.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Return
                                                                                                  ## the
                                                                                                  ## anchor
                                                                                                  ## point
                                                                                                  ## for
                                                                                                  ## zoom/rotate
                                                                                                  ## transformation
                                                                                                  ## persistence.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Apply
                                                                                                  ## transformation
                                                                                                  ## to
                                                                                                  ## bounding
                                                                                                  ## box
                                                                                                  ## of
                                                                                                  ## presentation.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## @param
                                                                                                  ## theCamera
                                                                                                  ## [in]
                                                                                                  ## camera
                                                                                                  ## definition
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## @param
                                                                                                  ## theProjection
                                                                                                  ## [in]
                                                                                                  ## the
                                                                                                  ## projection
                                                                                                  ## transformation
                                                                                                  ## matrix.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## @param
                                                                                                  ## theWorldView
                                                                                                  ## [in]
                                                                                                  ## the
                                                                                                  ## world
                                                                                                  ## view
                                                                                                  ## transformation
                                                                                                  ## matrix.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## @param
                                                                                                  ## theViewportWidth
                                                                                                  ## [in]
                                                                                                  ## the
                                                                                                  ## width
                                                                                                  ## of
                                                                                                  ## viewport
                                                                                                  ## (for
                                                                                                  ## 2d
                                                                                                  ## persistence).
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## @param
                                                                                                  ## theViewportHeight
                                                                                                  ## [in]
                                                                                                  ## the
                                                                                                  ## height
                                                                                                  ## of
                                                                                                  ## viewport
                                                                                                  ## (for
                                                                                                  ## 2d
                                                                                                  ## persistence).
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## @param
                                                                                                  ## theBoundingBox
                                                                                                  ## [in/out]
                                                                                                  ## the
                                                                                                  ## bounding
                                                                                                  ## box
                                                                                                  ## to
                                                                                                  ## transform.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## 3D
                                                                                                  ## anchor
                                                                                                  ## point
                                                                                                  ## for
                                                                                                  ## zoom/rotate
                                                                                                  ## transformation
                                                                                                  ## persistence.
    ## !< Transformation persistence mode flags


proc isZoomOrRotate*(theMode: Graphic3dTransModeFlags): bool {.cdecl,
    importcpp: "Graphic3d_TransformPers::IsZoomOrRotate(@)", header: "Graphic3d_TransformPers.hxx".}
proc isTrihedronOr2d*(theMode: Graphic3dTransModeFlags): bool {.cdecl,
    importcpp: "Graphic3d_TransformPers::IsTrihedronOr2d(@)", header: "Graphic3d_TransformPers.hxx".}
proc fromDeprecatedParams*(theFlag: Graphic3dTransModeFlags; thePoint: Pnt): Handle[
    Graphic3dTransformPers] {.cdecl, importcpp: "Graphic3d_TransformPers::FromDeprecatedParams(@)",
                             header: "Graphic3d_TransformPers.hxx".}
proc newGraphic3dTransformPers*(theMode: Graphic3dTransModeFlags): Graphic3dTransformPers {.
    cdecl, constructor, importcpp: "Graphic3d_TransformPers(@)", header: "Graphic3d_TransformPers.hxx".}
proc newGraphic3dTransformPers*(theMode: Graphic3dTransModeFlags; thePnt: Pnt): Graphic3dTransformPers {.
    cdecl, constructor, importcpp: "Graphic3d_TransformPers(@)", header: "Graphic3d_TransformPers.hxx".}
#proc newGraphic3dTransformPers*(theMode: Graphic3dTransModeFlags;
#                               theCorner: AspectTypeOfTriedronPosition;
#                               theOffset: Graphic3dVec2i = graphic3dVec2i(0, 0)): Graphic3dTransformPers {.
#    cdecl, constructor, importcpp: "Graphic3d_TransformPers(@)", header: "Graphic3d_TransformPers.hxx".}
proc isZoomOrRotate*(this: Graphic3dTransformPers): bool {.noSideEffect, cdecl,
    importcpp: "IsZoomOrRotate", header: "Graphic3d_TransformPers.hxx".}
proc isTrihedronOr2d*(this: Graphic3dTransformPers): bool {.noSideEffect, cdecl,
    importcpp: "IsTrihedronOr2d", header: "Graphic3d_TransformPers.hxx".}
proc mode*(this: Graphic3dTransformPers): Graphic3dTransModeFlags {.noSideEffect,
    cdecl, importcpp: "Mode", header: "Graphic3d_TransformPers.hxx".}
proc flags*(this: Graphic3dTransformPers): Graphic3dTransModeFlags {.noSideEffect,
    cdecl, importcpp: "Flags", header: "Graphic3d_TransformPers.hxx".}
proc setPersistence*(this: var Graphic3dTransformPers;
                    theMode: Graphic3dTransModeFlags; thePnt: Pnt) {.cdecl,
    importcpp: "SetPersistence", header: "Graphic3d_TransformPers.hxx".}
proc setPersistence*(this: var Graphic3dTransformPers;
                    theMode: Graphic3dTransModeFlags;
                    theCorner: AspectTypeOfTriedronPosition;
                    theOffset: Graphic3dVec2i) {.cdecl,
    importcpp: "SetPersistence", header: "Graphic3d_TransformPers.hxx".}
proc anchorPoint*(this: Graphic3dTransformPers): Pnt {.noSideEffect, cdecl,
    importcpp: "AnchorPoint", header: "Graphic3d_TransformPers.hxx".}
proc setAnchorPoint*(this: var Graphic3dTransformPers; thePnt: Pnt) {.cdecl,
    importcpp: "SetAnchorPoint", header: "Graphic3d_TransformPers.hxx".}
proc corner2d*(this: Graphic3dTransformPers): AspectTypeOfTriedronPosition {.
    noSideEffect, cdecl, importcpp: "Corner2d", header: "Graphic3d_TransformPers.hxx".}
proc setCorner2d*(this: var Graphic3dTransformPers;
                 thePos: AspectTypeOfTriedronPosition) {.cdecl,
    importcpp: "SetCorner2d", header: "Graphic3d_TransformPers.hxx".}
proc offset2d*(this: Graphic3dTransformPers): Graphic3dVec2i {.noSideEffect, cdecl,
    importcpp: "Offset2d", header: "Graphic3d_TransformPers.hxx".}
proc setOffset2d*(this: var Graphic3dTransformPers; theOffset: Graphic3dVec2i) {.
    cdecl, importcpp: "SetOffset2d", header: "Graphic3d_TransformPers.hxx".}
proc apply*[T](this: Graphic3dTransformPers; theCamera: Handle[Graphic3dCamera];
              theProjection: NCollectionMat4[T]; theWorldView: NCollectionMat4[T];
              theViewportWidth: cint; theViewportHeight: cint;
              theBoundingBox: var BndBox) {.noSideEffect, cdecl, importcpp: "Apply",
    header: "Graphic3d_TransformPers.hxx".}
proc apply*[T](this: Graphic3dTransformPers; theCamera: Handle[Graphic3dCamera];
              theProjection: NCollectionMat4[T]; theWorldView: NCollectionMat4[T];
              theViewportWidth: cint; theViewportHeight: cint;
              theBoundingBox: var BVH_Box[T, 3]) {.noSideEffect, cdecl,
    importcpp: "Apply", header: "Graphic3d_TransformPers.hxx".}
proc compute*[T](this: Graphic3dTransformPers; theCamera: Handle[Graphic3dCamera];
                theProjection: NCollectionMat4[T];
                theWorldView: NCollectionMat4[T]; theViewportWidth: cint;
                theViewportHeight: cint): NCollectionMat4[T] {.noSideEffect, cdecl,
    importcpp: "Compute", header: "Graphic3d_TransformPers.hxx".}
proc apply*[T](this: Graphic3dTransformPers; theCamera: Handle[Graphic3dCamera];
              theProjection: NCollectionMat4[T];
              theWorldView: var NCollectionMat4[T]; theViewportWidth: cint;
              theViewportHeight: cint) {.noSideEffect, cdecl, importcpp: "Apply",
                                       header: "Graphic3d_TransformPers.hxx".}
proc dumpJson*(this: Graphic3dTransformPers; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "Graphic3d_TransformPers.hxx".}
##  =======================================================================
##  function : Apply
##  purpose  : Apply transformation to world view and projection matrices.
##  =======================================================================

#proc apply*(this: Graphic3dTransformPers; theCamera: Handle[Graphic3dCamera];
#           theProjection: NCollectionMat4[T];
#           theWorldView: var NCollectionMat4[T]; theViewportWidth: cint;
#           theViewportHeight: cint) {.noSideEffect, cdecl, importcpp: "Apply",
#                                    header: "Graphic3d_TransformPers.hxx".}
###  =======================================================================
###  function : Apply
###  purpose  : Apply transformation to bounding box of presentation.
###  =======================================================================
#
#proc apply*(this: Graphic3dTransformPers; theCamera: Handle[Graphic3dCamera];
#           theProjection: NCollectionMat4[T]; theWorldView: NCollectionMat4[T];
#           theViewportWidth: cint; theViewportHeight: cint;
#           theBoundingBox: var BndBox) {.noSideEffect, cdecl, importcpp: "Apply",
#                                      header: "Graphic3d_TransformPers.hxx".}
###  =======================================================================
###  function : Apply
###  purpose  : Apply transformation to bounding box of presentation.
###  =======================================================================
#
#proc apply*(this: Graphic3dTransformPers; theCamera: Handle[Graphic3dCamera];
#           theProjection: NCollectionMat4[T]; theWorldView: NCollectionMat4[T];
#           theViewportWidth: cint; theViewportHeight: cint;
#           theBoundingBox: var BVH_Box[T, 3]) {.noSideEffect, cdecl,
#    importcpp: "Apply", header: "Graphic3d_TransformPers.hxx".}
###  =======================================================================
###  function : Compute
###  purpose  : Compute transformation.
###  =======================================================================
#
#proc compute*(this: Graphic3dTransformPers; theCamera: Handle[Graphic3dCamera];
#             theProjection: NCollectionMat4[T]; theWorldView: NCollectionMat4[T];
#             theViewportWidth: cint; theViewportHeight: cint): NCollectionMat4[T] {.
#    noSideEffect, cdecl, importcpp: "Compute", header: "Graphic3d_TransformPers.hxx".}