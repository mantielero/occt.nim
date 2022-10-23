##  Created on: 2013-07-12
##  Created by: Anton POLETAEV
##  Copyright (c) 2013-2014 OPEN CASCADE SAS
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

## ! Clipping state.

type
  Graphic3dClipState* {.size: sizeof(cint), importcpp: "Graphic3d_ClipState",
                       header: "Graphic3d_ClipPlane.hxx".} = enum
    Graphic3dClipStateOut,    ## !< fully outside (clipped) - should be discarded
    Graphic3dClipStateIn,     ## !< fully inside  (NOT clipped) - should NOT be discarded
    Graphic3dClipStateOn      ## !< on (not clipped / partially clipped) - should NOT be discarded


## ! Container for properties describing either a Clipping halfspace (single Clipping Plane),
## ! or a chain of Clipping Planes defining logical AND (conjunction) operation.
## ! The plane equation is specified in "world" coordinate system.

type
  Graphic3dClipPlane* {.importcpp: "Graphic3d_ClipPlane",
                       header: "Graphic3d_ClipPlane.hxx", bycopy.} = object of StandardTransient ##
                                                                                          ## !
                                                                                          ## Type
                                                                                          ## defining
                                                                                          ## XYZW
                                                                                          ## (ABCD)
                                                                                          ## plane
                                                                                          ## equation
                                                                                          ## -
                                                                                          ## left
                                                                                          ## for
                                                                                          ## compatibility
                                                                                          ## with
                                                                                          ## old
                                                                                          ## code
                                                                                          ## using
                                                                                          ## Graphic3d_ClipPlane::Equation
                                                                                          ## type.
                                                                                          ##
                                                                                          ## !
                                                                                          ## Default
                                                                                          ## constructor.
                                                                                          ##
                                                                                          ## !
                                                                                          ## Initializes
                                                                                          ## clip
                                                                                          ## plane
                                                                                          ## container
                                                                                          ## with
                                                                                          ## the
                                                                                          ## following
                                                                                          ## properties:
                                                                                          ##
                                                                                          ## !
                                                                                          ## -
                                                                                          ## Equation
                                                                                          ## (0.0,
                                                                                          ## 0.0,
                                                                                          ## 1.0,
                                                                                          ## 0)
                                                                                          ##
                                                                                          ## !
                                                                                          ## -
                                                                                          ## IsOn
                                                                                          ## (True),
                                                                                          ##
                                                                                          ## !
                                                                                          ## -
                                                                                          ## IsCapping
                                                                                          ## (False),
                                                                                          ##
                                                                                          ## !
                                                                                          ## -
                                                                                          ## Material
                                                                                          ## (Graphic3d_NameOfMaterial_DEFAULT),
                                                                                          ##
                                                                                          ## !
                                                                                          ## -
                                                                                          ## Texture
                                                                                          ## (NULL),
                                                                                          ##
                                                                                          ## !
                                                                                          ## -
                                                                                          ## HatchStyle
                                                                                          ## (Aspect_HS_HORIZONTAL),
                                                                                          ##
                                                                                          ## !
                                                                                          ## -
                                                                                          ## IsHatchOn
                                                                                          ## (False)
                                                                                          ##
                                                                                          ## !
                                                                                          ## Return
                                                                                          ## TRUE
                                                                                          ## if
                                                                                          ## this
                                                                                          ## item
                                                                                          ## defines
                                                                                          ## a
                                                                                          ## conjunction
                                                                                          ## (logical
                                                                                          ## AND)
                                                                                          ## between
                                                                                          ## a
                                                                                          ## set
                                                                                          ## of
                                                                                          ## Planes.
                                                                                          ##
                                                                                          ## !
                                                                                          ## Graphic3d_ClipPlane
                                                                                          ## item
                                                                                          ## defines
                                                                                          ## either
                                                                                          ## a
                                                                                          ## Clipping
                                                                                          ## halfspace
                                                                                          ## (single
                                                                                          ## Clipping
                                                                                          ## Plane)
                                                                                          ##
                                                                                          ## !
                                                                                          ## or
                                                                                          ## a
                                                                                          ## Clipping
                                                                                          ## volume
                                                                                          ## defined
                                                                                          ## by
                                                                                          ## a
                                                                                          ## logical
                                                                                          ## AND
                                                                                          ## (conjunction)
                                                                                          ## operation
                                                                                          ## between
                                                                                          ## a
                                                                                          ## set
                                                                                          ## of
                                                                                          ## Planes
                                                                                          ## defined
                                                                                          ## as
                                                                                          ## a
                                                                                          ## Chain
                                                                                          ##
                                                                                          ## !
                                                                                          ## (so
                                                                                          ## that
                                                                                          ## the
                                                                                          ## volume
                                                                                          ## cuts
                                                                                          ## a
                                                                                          ## space
                                                                                          ## only
                                                                                          ## in
                                                                                          ## case
                                                                                          ## if
                                                                                          ## check
                                                                                          ## fails
                                                                                          ## for
                                                                                          ## ALL
                                                                                          ## Planes
                                                                                          ## in
                                                                                          ## the
                                                                                          ## Chain).
                                                                                          ##
                                                                                          ## !
                                                                                          ##
                                                                                          ## !
                                                                                          ## Note
                                                                                          ## that
                                                                                          ## Graphic3d_ClipPlane
                                                                                          ## item
                                                                                          ## cannot:
                                                                                          ##
                                                                                          ## !
                                                                                          ## -
                                                                                          ## Define
                                                                                          ## a
                                                                                          ## Chain
                                                                                          ## with
                                                                                          ## logical
                                                                                          ## OR
                                                                                          ## (disjunction)
                                                                                          ## operation;
                                                                                          ##
                                                                                          ## !
                                                                                          ## this
                                                                                          ## should
                                                                                          ## be
                                                                                          ## done
                                                                                          ## through
                                                                                          ## Graphic3d_SequenceOfHClipPlane.
                                                                                          ##
                                                                                          ## !
                                                                                          ## -
                                                                                          ## Define
                                                                                          ## nested
                                                                                          ## Chains.
                                                                                          ##
                                                                                          ## !
                                                                                          ## -
                                                                                          ## Disable
                                                                                          ## Chain
                                                                                          ## items;
                                                                                          ## only
                                                                                          ## entire
                                                                                          ## Chain
                                                                                          ## can
                                                                                          ## be
                                                                                          ## disabled
                                                                                          ## (by
                                                                                          ## disabled
                                                                                          ## a
                                                                                          ## head
                                                                                          ## of
                                                                                          ## Chain).
                                                                                          ##
                                                                                          ## !
                                                                                          ##
                                                                                          ## !
                                                                                          ## The
                                                                                          ## head
                                                                                          ## of
                                                                                          ## a
                                                                                          ## Chain
                                                                                          ## defines
                                                                                          ## all
                                                                                          ## visual
                                                                                          ## properties
                                                                                          ## of
                                                                                          ## the
                                                                                          ## Chain,
                                                                                          ##
                                                                                          ## !
                                                                                          ## so
                                                                                          ## that
                                                                                          ## Graphic3d_ClipPlane
                                                                                          ## of
                                                                                          ## next
                                                                                          ## items
                                                                                          ## in
                                                                                          ## a
                                                                                          ## Chain
                                                                                          ## merely
                                                                                          ## defines
                                                                                          ## only
                                                                                          ## geometrical
                                                                                          ## definition
                                                                                          ## of
                                                                                          ## the
                                                                                          ## plane.
                                                                                          ##
                                                                                          ## @name
                                                                                          ## user-defined
                                                                                          ## graphical
                                                                                          ## attributes
                                                                                          ##
                                                                                          ## !
                                                                                          ## Return
                                                                                          ## color
                                                                                          ## for
                                                                                          ## rendering
                                                                                          ## capping
                                                                                          ## surface.
                                                                                          ##
                                                                                          ## !
                                                                                          ## Return
                                                                                          ## capping
                                                                                          ## aspect.
                                                                                          ##
                                                                                          ## !
                                                                                          ## @return
                                                                                          ## capping
                                                                                          ## surface
                                                                                          ## rendering
                                                                                          ## aspect.
                                                                                          ##
                                                                                          ## !
                                                                                          ## Check
                                                                                          ## if
                                                                                          ## the
                                                                                          ## given
                                                                                          ## point
                                                                                          ## is
                                                                                          ## outside
                                                                                          ## /
                                                                                          ## inside
                                                                                          ## /
                                                                                          ## on
                                                                                          ## section.
                                                                                          ##
                                                                                          ## !
                                                                                          ## Check
                                                                                          ## if
                                                                                          ## the
                                                                                          ## given
                                                                                          ## point
                                                                                          ## is
                                                                                          ## outside
                                                                                          ## of
                                                                                          ## the
                                                                                          ## half-space
                                                                                          ## (e.g.
                                                                                          ## should
                                                                                          ## be
                                                                                          ## discarded
                                                                                          ## by
                                                                                          ## clipping
                                                                                          ## plane).
                                                                                          ##
                                                                                          ## @name
                                                                                          ## modification
                                                                                          ## counters
                                                                                          ##
                                                                                          ## !
                                                                                          ## @return
                                                                                          ## modification
                                                                                          ## counter
                                                                                          ## for
                                                                                          ## equation.
                                                                                          ##
                                                                                          ## !
                                                                                          ## Generate
                                                                                          ## unique
                                                                                          ## object
                                                                                          ## id
                                                                                          ## for
                                                                                          ## OpenGL
                                                                                          ## graphic
                                                                                          ## resource
                                                                                          ## manager.
    ## !< fill area aspect
    ## !< next     plane in a chain of planes defining logical AND operation
    ## !< previous plane in a chain of planes defining logical AND operation
    ## !< resource id
    ## !< plane definition
    ## !< plane equation vector
    ## !< reversed plane equation
    ## !< chain length in forward direction (including this item)
    ## !< capping flags
    ## !< modification counter for equation
    ## !< modification counter of aspect
    ## !< state of the clipping plane
    ## !< state of graphic driver capping

  Graphic3dClipPlaneEquation* = Graphic3dVec4d

proc newGraphic3dClipPlane*(): Graphic3dClipPlane {.cdecl, constructor,
    importcpp: "Graphic3d_ClipPlane(@)", header: "Graphic3d_ClipPlane.hxx".}
proc newGraphic3dClipPlane*(theOther: Graphic3dClipPlane): Graphic3dClipPlane {.
    cdecl, constructor, importcpp: "Graphic3d_ClipPlane(@)", header: "Graphic3d_ClipPlane.hxx".}
proc newGraphic3dClipPlane*(theEquation: Graphic3dVec4d): Graphic3dClipPlane {.
    cdecl, constructor, importcpp: "Graphic3d_ClipPlane(@)", header: "Graphic3d_ClipPlane.hxx".}
proc newGraphic3dClipPlane*(thePlane: PlnObj): Graphic3dClipPlane {.cdecl, constructor,
    importcpp: "Graphic3d_ClipPlane(@)", header: "Graphic3d_ClipPlane.hxx".}
proc setEquation*(this: var Graphic3dClipPlane; thePlane: PlnObj) {.cdecl,
    importcpp: "SetEquation", header: "Graphic3d_ClipPlane.hxx".}
proc setEquation*(this: var Graphic3dClipPlane; theEquation: Graphic3dVec4d) {.cdecl,
    importcpp: "SetEquation", header: "Graphic3d_ClipPlane.hxx".}
proc getEquation*(this: Graphic3dClipPlane): Graphic3dVec4d {.noSideEffect, cdecl,
    importcpp: "GetEquation", header: "Graphic3d_ClipPlane.hxx".}
proc reversedEquation*(this: Graphic3dClipPlane): Graphic3dVec4d {.noSideEffect,
    cdecl, importcpp: "ReversedEquation", header: "Graphic3d_ClipPlane.hxx".}
proc isOn*(this: Graphic3dClipPlane): bool {.noSideEffect, cdecl, importcpp: "IsOn",
    header: "Graphic3d_ClipPlane.hxx".}
proc setOn*(this: var Graphic3dClipPlane; theIsOn: bool) {.cdecl, importcpp: "SetOn",
    header: "Graphic3d_ClipPlane.hxx".}
proc setCapping*(this: var Graphic3dClipPlane; theIsOn: bool) {.cdecl,
    importcpp: "SetCapping", header: "Graphic3d_ClipPlane.hxx".}
proc isCapping*(this: Graphic3dClipPlane): bool {.noSideEffect, cdecl,
    importcpp: "IsCapping", header: "Graphic3d_ClipPlane.hxx".}
proc toPlane*(this: Graphic3dClipPlane): PlnObj {.noSideEffect, cdecl,
    importcpp: "ToPlane", header: "Graphic3d_ClipPlane.hxx".}
proc clone*(this: Graphic3dClipPlane): Handle[Graphic3dClipPlane] {.noSideEffect,
    cdecl, importcpp: "Clone", header: "Graphic3d_ClipPlane.hxx".}
proc isChain*(this: Graphic3dClipPlane): bool {.noSideEffect, cdecl,
    importcpp: "IsChain", header: "Graphic3d_ClipPlane.hxx".}
proc chainPreviousPlane*(this: Graphic3dClipPlane): Handle[Graphic3dClipPlane] {.
    noSideEffect, cdecl, importcpp: "ChainPreviousPlane", header: "Graphic3d_ClipPlane.hxx".}
proc chainNextPlane*(this: Graphic3dClipPlane): Handle[Graphic3dClipPlane] {.
    noSideEffect, cdecl, importcpp: "ChainNextPlane", header: "Graphic3d_ClipPlane.hxx".}
proc nbChainNextPlanes*(this: Graphic3dClipPlane): cint {.noSideEffect, cdecl,
    importcpp: "NbChainNextPlanes", header: "Graphic3d_ClipPlane.hxx".}
proc setChainNextPlane*(this: var Graphic3dClipPlane;
                       thePlane: Handle[Graphic3dClipPlane]) {.cdecl,
    importcpp: "SetChainNextPlane", header: "Graphic3d_ClipPlane.hxx".}
proc cappingColor*(this: Graphic3dClipPlane): QuantityColor {.noSideEffect, cdecl,
    importcpp: "CappingColor", header: "Graphic3d_ClipPlane.hxx".}
proc setCappingColor*(this: var Graphic3dClipPlane; theColor: QuantityColor) {.cdecl,
    importcpp: "SetCappingColor", header: "Graphic3d_ClipPlane.hxx".}
proc setCappingMaterial*(this: var Graphic3dClipPlane;
                        theMat: Graphic3dMaterialAspect) {.cdecl,
    importcpp: "SetCappingMaterial", header: "Graphic3d_ClipPlane.hxx".}
proc cappingMaterial*(this: Graphic3dClipPlane): Graphic3dMaterialAspect {.
    noSideEffect, cdecl, importcpp: "CappingMaterial", header: "Graphic3d_ClipPlane.hxx".}
proc setCappingTexture*(this: var Graphic3dClipPlane;
                       theTexture: Handle[Graphic3dTextureMap]) {.cdecl,
    importcpp: "SetCappingTexture", header: "Graphic3d_ClipPlane.hxx".}
proc cappingTexture*(this: Graphic3dClipPlane): Handle[Graphic3dTextureMap] {.
    noSideEffect, cdecl, importcpp: "CappingTexture", header: "Graphic3d_ClipPlane.hxx".}
proc setCappingHatch*(this: var Graphic3dClipPlane; theStyle: AspectHatchStyle) {.
    cdecl, importcpp: "SetCappingHatch", header: "Graphic3d_ClipPlane.hxx".}
proc cappingHatch*(this: Graphic3dClipPlane): AspectHatchStyle {.noSideEffect, cdecl,
    importcpp: "CappingHatch", header: "Graphic3d_ClipPlane.hxx".}
proc setCappingCustomHatch*(this: var Graphic3dClipPlane;
                           theStyle: Handle[Graphic3dHatchStyle]) {.cdecl,
    importcpp: "SetCappingCustomHatch", header: "Graphic3d_ClipPlane.hxx".}
proc cappingCustomHatch*(this: Graphic3dClipPlane): Handle[Graphic3dHatchStyle] {.
    noSideEffect, cdecl, importcpp: "CappingCustomHatch", header: "Graphic3d_ClipPlane.hxx".}
proc setCappingHatchOn*(this: var Graphic3dClipPlane) {.cdecl,
    importcpp: "SetCappingHatchOn", header: "Graphic3d_ClipPlane.hxx".}
proc setCappingHatchOff*(this: var Graphic3dClipPlane) {.cdecl,
    importcpp: "SetCappingHatchOff", header: "Graphic3d_ClipPlane.hxx".}
proc isHatchOn*(this: Graphic3dClipPlane): bool {.noSideEffect, cdecl,
    importcpp: "IsHatchOn", header: "Graphic3d_ClipPlane.hxx".}
proc getId*(this: Graphic3dClipPlane): TCollectionAsciiString {.noSideEffect, cdecl,
    importcpp: "GetId", header: "Graphic3d_ClipPlane.hxx".}
proc cappingAspect*(this: Graphic3dClipPlane): Handle[Graphic3dAspectFillArea3d] {.
    noSideEffect, cdecl, importcpp: "CappingAspect", header: "Graphic3d_ClipPlane.hxx".}
proc setCappingAspect*(this: var Graphic3dClipPlane;
                      theAspect: Handle[Graphic3dAspectFillArea3d]) {.cdecl,
    importcpp: "SetCappingAspect", header: "Graphic3d_ClipPlane.hxx".}
proc toUseObjectMaterial*(this: Graphic3dClipPlane): bool {.noSideEffect, cdecl,
    importcpp: "ToUseObjectMaterial", header: "Graphic3d_ClipPlane.hxx".}
proc setUseObjectMaterial*(this: var Graphic3dClipPlane; theToUse: bool) {.cdecl,
    importcpp: "SetUseObjectMaterial", header: "Graphic3d_ClipPlane.hxx".}
proc toUseObjectTexture*(this: Graphic3dClipPlane): bool {.noSideEffect, cdecl,
    importcpp: "ToUseObjectTexture", header: "Graphic3d_ClipPlane.hxx".}
proc setUseObjectTexture*(this: var Graphic3dClipPlane; theToUse: bool) {.cdecl,
    importcpp: "SetUseObjectTexture", header: "Graphic3d_ClipPlane.hxx".}
proc toUseObjectShader*(this: Graphic3dClipPlane): bool {.noSideEffect, cdecl,
    importcpp: "ToUseObjectShader", header: "Graphic3d_ClipPlane.hxx".}
proc setUseObjectShader*(this: var Graphic3dClipPlane; theToUse: bool) {.cdecl,
    importcpp: "SetUseObjectShader", header: "Graphic3d_ClipPlane.hxx".}
proc toUseObjectProperties*(this: Graphic3dClipPlane): bool {.noSideEffect, cdecl,
    importcpp: "ToUseObjectProperties", header: "Graphic3d_ClipPlane.hxx".}
proc probePoint*(this: Graphic3dClipPlane; thePoint: Graphic3dVec4d): Graphic3dClipState {.
    noSideEffect, cdecl, importcpp: "ProbePoint", header: "Graphic3d_ClipPlane.hxx".}
proc probeBox*(this: Graphic3dClipPlane; theBox: Graphic3dBndBox3d): Graphic3dClipState {.
    noSideEffect, cdecl, importcpp: "ProbeBox", header: "Graphic3d_ClipPlane.hxx".}
proc probeBoxTouch*(this: Graphic3dClipPlane; theBox: Graphic3dBndBox3d): bool {.
    noSideEffect, cdecl, importcpp: "ProbeBoxTouch", header: "Graphic3d_ClipPlane.hxx".}
proc probePointHalfspace*(this: Graphic3dClipPlane; thePoint: Graphic3dVec4d): Graphic3dClipState {.
    noSideEffect, cdecl, importcpp: "ProbePointHalfspace", header: "Graphic3d_ClipPlane.hxx".}
proc probeBoxHalfspace*(this: Graphic3dClipPlane; theBox: Graphic3dBndBox3d): Graphic3dClipState {.
    noSideEffect, cdecl, importcpp: "ProbeBoxHalfspace", header: "Graphic3d_ClipPlane.hxx".}
proc isPointOutHalfspace*(this: Graphic3dClipPlane; thePoint: Graphic3dVec4d): bool {.
    noSideEffect, cdecl, importcpp: "IsPointOutHalfspace", header: "Graphic3d_ClipPlane.hxx".}
proc isBoxFullOutHalfspace*(this: Graphic3dClipPlane; theBox: Graphic3dBndBox3d): bool {.
    noSideEffect, cdecl, importcpp: "IsBoxFullOutHalfspace", header: "Graphic3d_ClipPlane.hxx".}
proc probeBoxMaxPointHalfspace*(this: Graphic3dClipPlane; theBox: Graphic3dBndBox3d): Graphic3dClipState {.
    noSideEffect, cdecl, importcpp: "ProbeBoxMaxPointHalfspace", header: "Graphic3d_ClipPlane.hxx".}
proc isBoxFullInHalfspace*(this: Graphic3dClipPlane; theBox: Graphic3dBndBox3d): bool {.
    noSideEffect, cdecl, importcpp: "IsBoxFullInHalfspace", header: "Graphic3d_ClipPlane.hxx".}
proc dumpJson*(this: Graphic3dClipPlane; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "Graphic3d_ClipPlane.hxx".}
proc mCountEquation*(this: Graphic3dClipPlane): cuint {.noSideEffect, cdecl,
    importcpp: "MCountEquation", header: "Graphic3d_ClipPlane.hxx".}
proc mCountAspect*(this: Graphic3dClipPlane): cuint {.noSideEffect, cdecl,
    importcpp: "MCountAspect", header: "Graphic3d_ClipPlane.hxx".}
type
  HandleGraphic3dClipPlane* = Handle[Graphic3dClipPlane]
