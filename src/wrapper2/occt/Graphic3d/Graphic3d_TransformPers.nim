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

import
  ../Aspect/Aspect_TypeOfTriedronPosition, ../Bnd/Bnd_Box, ../BVH/BVH_Box,
  Graphic3d_Camera, Graphic3d_TransformUtils, Graphic3d_TransModeFlags,
  Graphic3d_Vec, ../NCollection/NCollection_Mat4

discard "forward decl of Graphic3d_TransformPers"
type
  Handle_Graphic3d_TransformPers* = handle[Graphic3d_TransformPers]

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
  Graphic3d_TransformPers* {.importcpp: "Graphic3d_TransformPers",
                            header: "Graphic3d_TransformPers.hxx", bycopy.} = object of Standard_Transient ##
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

  Graphic3d_TransformPersbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Graphic3d_TransformPers::get_type_name(@)",
                              header: "Graphic3d_TransformPers.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Graphic3d_TransformPers::get_type_descriptor(@)",
    header: "Graphic3d_TransformPers.hxx".}
proc DynamicType*(this: Graphic3d_TransformPers): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "Graphic3d_TransformPers.hxx".}
proc IsZoomOrRotate*(theMode: Graphic3d_TransModeFlags): Standard_Boolean {.
    importcpp: "Graphic3d_TransformPers::IsZoomOrRotate(@)",
    header: "Graphic3d_TransformPers.hxx".}
proc IsTrihedronOr2d*(theMode: Graphic3d_TransModeFlags): Standard_Boolean {.
    importcpp: "Graphic3d_TransformPers::IsTrihedronOr2d(@)",
    header: "Graphic3d_TransformPers.hxx".}
proc FromDeprecatedParams*(theFlag: Graphic3d_TransModeFlags; thePoint: gp_Pnt): handle[
    Graphic3d_TransformPers] {.importcpp: "Graphic3d_TransformPers::FromDeprecatedParams(@)",
                              header: "Graphic3d_TransformPers.hxx".}
proc constructGraphic3d_TransformPers*(theMode: Graphic3d_TransModeFlags): Graphic3d_TransformPers {.
    constructor, importcpp: "Graphic3d_TransformPers(@)",
    header: "Graphic3d_TransformPers.hxx".}
proc constructGraphic3d_TransformPers*(theMode: Graphic3d_TransModeFlags;
                                      thePnt: gp_Pnt): Graphic3d_TransformPers {.
    constructor, importcpp: "Graphic3d_TransformPers(@)",
    header: "Graphic3d_TransformPers.hxx".}
proc constructGraphic3d_TransformPers*(theMode: Graphic3d_TransModeFlags;
                                      theCorner: Aspect_TypeOfTriedronPosition;
    theOffset: Graphic3d_Vec2i = Graphic3d_Vec2i(0, 0)): Graphic3d_TransformPers {.
    constructor, importcpp: "Graphic3d_TransformPers(@)",
    header: "Graphic3d_TransformPers.hxx".}
proc IsZoomOrRotate*(this: Graphic3d_TransformPers): Standard_Boolean {.
    noSideEffect, importcpp: "IsZoomOrRotate",
    header: "Graphic3d_TransformPers.hxx".}
proc IsTrihedronOr2d*(this: Graphic3d_TransformPers): Standard_Boolean {.
    noSideEffect, importcpp: "IsTrihedronOr2d",
    header: "Graphic3d_TransformPers.hxx".}
proc Mode*(this: Graphic3d_TransformPers): Graphic3d_TransModeFlags {.noSideEffect,
    importcpp: "Mode", header: "Graphic3d_TransformPers.hxx".}
proc Flags*(this: Graphic3d_TransformPers): Graphic3d_TransModeFlags {.noSideEffect,
    importcpp: "Flags", header: "Graphic3d_TransformPers.hxx".}
proc SetPersistence*(this: var Graphic3d_TransformPers;
                    theMode: Graphic3d_TransModeFlags; thePnt: gp_Pnt) {.
    importcpp: "SetPersistence", header: "Graphic3d_TransformPers.hxx".}
proc SetPersistence*(this: var Graphic3d_TransformPers;
                    theMode: Graphic3d_TransModeFlags;
                    theCorner: Aspect_TypeOfTriedronPosition;
                    theOffset: Graphic3d_Vec2i) {.importcpp: "SetPersistence",
    header: "Graphic3d_TransformPers.hxx".}
proc AnchorPoint*(this: Graphic3d_TransformPers): gp_Pnt {.noSideEffect,
    importcpp: "AnchorPoint", header: "Graphic3d_TransformPers.hxx".}
proc SetAnchorPoint*(this: var Graphic3d_TransformPers; thePnt: gp_Pnt) {.
    importcpp: "SetAnchorPoint", header: "Graphic3d_TransformPers.hxx".}
proc Corner2d*(this: Graphic3d_TransformPers): Aspect_TypeOfTriedronPosition {.
    noSideEffect, importcpp: "Corner2d", header: "Graphic3d_TransformPers.hxx".}
proc SetCorner2d*(this: var Graphic3d_TransformPers;
                 thePos: Aspect_TypeOfTriedronPosition) {.
    importcpp: "SetCorner2d", header: "Graphic3d_TransformPers.hxx".}
proc Offset2d*(this: Graphic3d_TransformPers): Graphic3d_Vec2i {.noSideEffect,
    importcpp: "Offset2d", header: "Graphic3d_TransformPers.hxx".}
proc SetOffset2d*(this: var Graphic3d_TransformPers; theOffset: Graphic3d_Vec2i) {.
    importcpp: "SetOffset2d", header: "Graphic3d_TransformPers.hxx".}
proc Apply*[T](this: Graphic3d_TransformPers; theCamera: handle[Graphic3d_Camera];
              theProjection: NCollection_Mat4[T];
              theWorldView: NCollection_Mat4[T];
              theViewportWidth: Standard_Integer;
              theViewportHeight: Standard_Integer; theBoundingBox: var Bnd_Box) {.
    noSideEffect, importcpp: "Apply", header: "Graphic3d_TransformPers.hxx".}
proc Apply*[T](this: Graphic3d_TransformPers; theCamera: handle[Graphic3d_Camera];
              theProjection: NCollection_Mat4[T];
              theWorldView: NCollection_Mat4[T];
              theViewportWidth: Standard_Integer;
              theViewportHeight: Standard_Integer;
              theBoundingBox: var BVH_Box[T, 3]) {.noSideEffect, importcpp: "Apply",
    header: "Graphic3d_TransformPers.hxx".}
proc Compute*[T](this: Graphic3d_TransformPers;
                theCamera: handle[Graphic3d_Camera];
                theProjection: NCollection_Mat4[T];
                theWorldView: NCollection_Mat4[T];
                theViewportWidth: Standard_Integer;
                theViewportHeight: Standard_Integer): NCollection_Mat4[T] {.
    noSideEffect, importcpp: "Compute", header: "Graphic3d_TransformPers.hxx".}
proc Apply*[T](this: Graphic3d_TransformPers; theCamera: handle[Graphic3d_Camera];
              theProjection: NCollection_Mat4[T];
              theWorldView: var NCollection_Mat4[T];
              theViewportWidth: Standard_Integer;
              theViewportHeight: Standard_Integer) {.noSideEffect,
    importcpp: "Apply", header: "Graphic3d_TransformPers.hxx".}
proc DumpJson*(this: Graphic3d_TransformPers; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Graphic3d_TransformPers.hxx".}
##  =======================================================================
##  function : Apply
##  purpose  : Apply transformation to world view and projection matrices.
##  =======================================================================

proc Apply*(this: Graphic3d_TransformPers; theCamera: handle[Graphic3d_Camera];
           theProjection: NCollection_Mat4[T];
           theWorldView: var NCollection_Mat4[T];
           theViewportWidth: Standard_Integer; theViewportHeight: Standard_Integer) {.
    noSideEffect, importcpp: "Apply", header: "Graphic3d_TransformPers.hxx".}
##  =======================================================================
##  function : Apply
##  purpose  : Apply transformation to bounding box of presentation.
##  =======================================================================

proc Apply*(this: Graphic3d_TransformPers; theCamera: handle[Graphic3d_Camera];
           theProjection: NCollection_Mat4[T]; theWorldView: NCollection_Mat4[T];
           theViewportWidth: Standard_Integer;
           theViewportHeight: Standard_Integer; theBoundingBox: var Bnd_Box) {.
    noSideEffect, importcpp: "Apply", header: "Graphic3d_TransformPers.hxx".}
##  =======================================================================
##  function : Apply
##  purpose  : Apply transformation to bounding box of presentation.
##  =======================================================================

proc Apply*(this: Graphic3d_TransformPers; theCamera: handle[Graphic3d_Camera];
           theProjection: NCollection_Mat4[T]; theWorldView: NCollection_Mat4[T];
           theViewportWidth: Standard_Integer;
           theViewportHeight: Standard_Integer; theBoundingBox: var BVH_Box[T, 3]) {.
    noSideEffect, importcpp: "Apply", header: "Graphic3d_TransformPers.hxx".}
##  =======================================================================
##  function : Compute
##  purpose  : Compute transformation.
##  =======================================================================

proc Compute*(this: Graphic3d_TransformPers; theCamera: handle[Graphic3d_Camera];
             theProjection: NCollection_Mat4[T];
             theWorldView: NCollection_Mat4[T];
             theViewportWidth: Standard_Integer;
             theViewportHeight: Standard_Integer): NCollection_Mat4[T] {.
    noSideEffect, importcpp: "Compute", header: "Graphic3d_TransformPers.hxx".}