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

  Graphic3dClipPlanebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Graphic3d_ClipPlane::get_type_name(@)",
                            header: "Graphic3d_ClipPlane.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Graphic3d_ClipPlane::get_type_descriptor(@)",
    header: "Graphic3d_ClipPlane.hxx".}
proc dynamicType*(this: Graphic3dClipPlane): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Graphic3d_ClipPlane.hxx".}
type
  Graphic3dClipPlaneEquation* = Graphic3dVec4d

proc constructGraphic3dClipPlane*(): Graphic3dClipPlane {.constructor,
    importcpp: "Graphic3d_ClipPlane(@)", header: "Graphic3d_ClipPlane.hxx".}
proc constructGraphic3dClipPlane*(theOther: Graphic3dClipPlane): Graphic3dClipPlane {.
    constructor, importcpp: "Graphic3d_ClipPlane(@)",
    header: "Graphic3d_ClipPlane.hxx".}
proc constructGraphic3dClipPlane*(theEquation: Graphic3dVec4d): Graphic3dClipPlane {.
    constructor, importcpp: "Graphic3d_ClipPlane(@)",
    header: "Graphic3d_ClipPlane.hxx".}
proc constructGraphic3dClipPlane*(thePlane: Pln): Graphic3dClipPlane {.constructor,
    importcpp: "Graphic3d_ClipPlane(@)", header: "Graphic3d_ClipPlane.hxx".}
proc setEquation*(this: var Graphic3dClipPlane; thePlane: Pln) {.
    importcpp: "SetEquation", header: "Graphic3d_ClipPlane.hxx".}
proc setEquation*(this: var Graphic3dClipPlane; theEquation: Graphic3dVec4d) {.
    importcpp: "SetEquation", header: "Graphic3d_ClipPlane.hxx".}
proc getEquation*(this: Graphic3dClipPlane): Graphic3dVec4d {.noSideEffect,
    importcpp: "GetEquation", header: "Graphic3d_ClipPlane.hxx".}
proc reversedEquation*(this: Graphic3dClipPlane): Graphic3dVec4d {.noSideEffect,
    importcpp: "ReversedEquation", header: "Graphic3d_ClipPlane.hxx".}
proc isOn*(this: Graphic3dClipPlane): bool {.noSideEffect, importcpp: "IsOn",
    header: "Graphic3d_ClipPlane.hxx".}
proc setOn*(this: var Graphic3dClipPlane; theIsOn: bool) {.importcpp: "SetOn",
    header: "Graphic3d_ClipPlane.hxx".}
proc setCapping*(this: var Graphic3dClipPlane; theIsOn: bool) {.
    importcpp: "SetCapping", header: "Graphic3d_ClipPlane.hxx".}
proc isCapping*(this: Graphic3dClipPlane): bool {.noSideEffect,
    importcpp: "IsCapping", header: "Graphic3d_ClipPlane.hxx".}
proc toPlane*(this: Graphic3dClipPlane): Pln {.noSideEffect, importcpp: "ToPlane",
    header: "Graphic3d_ClipPlane.hxx".}
proc clone*(this: Graphic3dClipPlane): Handle[Graphic3dClipPlane] {.noSideEffect,
    importcpp: "Clone", header: "Graphic3d_ClipPlane.hxx".}
proc isChain*(this: Graphic3dClipPlane): bool {.noSideEffect, importcpp: "IsChain",
    header: "Graphic3d_ClipPlane.hxx".}
proc chainPreviousPlane*(this: Graphic3dClipPlane): Handle[Graphic3dClipPlane] {.
    noSideEffect, importcpp: "ChainPreviousPlane",
    header: "Graphic3d_ClipPlane.hxx".}
proc chainNextPlane*(this: Graphic3dClipPlane): Handle[Graphic3dClipPlane] {.
    noSideEffect, importcpp: "ChainNextPlane", header: "Graphic3d_ClipPlane.hxx".}
proc nbChainNextPlanes*(this: Graphic3dClipPlane): cint {.noSideEffect,
    importcpp: "NbChainNextPlanes", header: "Graphic3d_ClipPlane.hxx".}
proc setChainNextPlane*(this: var Graphic3dClipPlane;
                       thePlane: Handle[Graphic3dClipPlane]) {.
    importcpp: "SetChainNextPlane", header: "Graphic3d_ClipPlane.hxx".}
proc cappingColor*(this: Graphic3dClipPlane): QuantityColor {.noSideEffect,
    importcpp: "CappingColor", header: "Graphic3d_ClipPlane.hxx".}
proc setCappingColor*(this: var Graphic3dClipPlane; theColor: QuantityColor) {.
    importcpp: "SetCappingColor", header: "Graphic3d_ClipPlane.hxx".}
proc setCappingMaterial*(this: var Graphic3dClipPlane;
                        theMat: Graphic3dMaterialAspect) {.
    importcpp: "SetCappingMaterial", header: "Graphic3d_ClipPlane.hxx".}
proc cappingMaterial*(this: Graphic3dClipPlane): Graphic3dMaterialAspect {.
    noSideEffect, importcpp: "CappingMaterial", header: "Graphic3d_ClipPlane.hxx".}
proc setCappingTexture*(this: var Graphic3dClipPlane;
                       theTexture: Handle[Graphic3dTextureMap]) {.
    importcpp: "SetCappingTexture", header: "Graphic3d_ClipPlane.hxx".}
proc cappingTexture*(this: Graphic3dClipPlane): Handle[Graphic3dTextureMap] {.
    noSideEffect, importcpp: "CappingTexture", header: "Graphic3d_ClipPlane.hxx".}
proc setCappingHatch*(this: var Graphic3dClipPlane; theStyle: AspectHatchStyle) {.
    importcpp: "SetCappingHatch", header: "Graphic3d_ClipPlane.hxx".}
proc cappingHatch*(this: Graphic3dClipPlane): AspectHatchStyle {.noSideEffect,
    importcpp: "CappingHatch", header: "Graphic3d_ClipPlane.hxx".}
proc setCappingCustomHatch*(this: var Graphic3dClipPlane;
                           theStyle: Handle[Graphic3dHatchStyle]) {.
    importcpp: "SetCappingCustomHatch", header: "Graphic3d_ClipPlane.hxx".}
proc cappingCustomHatch*(this: Graphic3dClipPlane): Handle[Graphic3dHatchStyle] {.
    noSideEffect, importcpp: "CappingCustomHatch",
    header: "Graphic3d_ClipPlane.hxx".}
proc setCappingHatchOn*(this: var Graphic3dClipPlane) {.
    importcpp: "SetCappingHatchOn", header: "Graphic3d_ClipPlane.hxx".}
proc setCappingHatchOff*(this: var Graphic3dClipPlane) {.
    importcpp: "SetCappingHatchOff", header: "Graphic3d_ClipPlane.hxx".}
proc isHatchOn*(this: Graphic3dClipPlane): bool {.noSideEffect,
    importcpp: "IsHatchOn", header: "Graphic3d_ClipPlane.hxx".}
proc getId*(this: Graphic3dClipPlane): TCollectionAsciiString {.noSideEffect,
    importcpp: "GetId", header: "Graphic3d_ClipPlane.hxx".}
proc cappingAspect*(this: Graphic3dClipPlane): Handle[Graphic3dAspectFillArea3d] {.
    noSideEffect, importcpp: "CappingAspect", header: "Graphic3d_ClipPlane.hxx".}
proc setCappingAspect*(this: var Graphic3dClipPlane;
                      theAspect: Handle[Graphic3dAspectFillArea3d]) {.
    importcpp: "SetCappingAspect", header: "Graphic3d_ClipPlane.hxx".}
proc toUseObjectMaterial*(this: Graphic3dClipPlane): bool {.noSideEffect,
    importcpp: "ToUseObjectMaterial", header: "Graphic3d_ClipPlane.hxx".}
proc setUseObjectMaterial*(this: var Graphic3dClipPlane; theToUse: bool) {.
    importcpp: "SetUseObjectMaterial", header: "Graphic3d_ClipPlane.hxx".}
proc toUseObjectTexture*(this: Graphic3dClipPlane): bool {.noSideEffect,
    importcpp: "ToUseObjectTexture", header: "Graphic3d_ClipPlane.hxx".}
proc setUseObjectTexture*(this: var Graphic3dClipPlane; theToUse: bool) {.
    importcpp: "SetUseObjectTexture", header: "Graphic3d_ClipPlane.hxx".}
proc toUseObjectShader*(this: Graphic3dClipPlane): bool {.noSideEffect,
    importcpp: "ToUseObjectShader", header: "Graphic3d_ClipPlane.hxx".}
proc setUseObjectShader*(this: var Graphic3dClipPlane; theToUse: bool) {.
    importcpp: "SetUseObjectShader", header: "Graphic3d_ClipPlane.hxx".}
proc toUseObjectProperties*(this: Graphic3dClipPlane): bool {.noSideEffect,
    importcpp: "ToUseObjectProperties", header: "Graphic3d_ClipPlane.hxx".}
proc probePoint*(this: Graphic3dClipPlane; thePoint: Graphic3dVec4d): Graphic3dClipState {.
    noSideEffect, importcpp: "ProbePoint", header: "Graphic3d_ClipPlane.hxx".}
proc probeBox*(this: Graphic3dClipPlane; theBox: Graphic3dBndBox3d): Graphic3dClipState {.
    noSideEffect, importcpp: "ProbeBox", header: "Graphic3d_ClipPlane.hxx".}
proc probeBoxTouch*(this: Graphic3dClipPlane; theBox: Graphic3dBndBox3d): bool {.
    noSideEffect, importcpp: "ProbeBoxTouch", header: "Graphic3d_ClipPlane.hxx".}
proc probePointHalfspace*(this: Graphic3dClipPlane; thePoint: Graphic3dVec4d): Graphic3dClipState {.
    noSideEffect, importcpp: "ProbePointHalfspace",
    header: "Graphic3d_ClipPlane.hxx".}
proc probeBoxHalfspace*(this: Graphic3dClipPlane; theBox: Graphic3dBndBox3d): Graphic3dClipState {.
    noSideEffect, importcpp: "ProbeBoxHalfspace", header: "Graphic3d_ClipPlane.hxx".}
proc isPointOutHalfspace*(this: Graphic3dClipPlane; thePoint: Graphic3dVec4d): bool {.
    noSideEffect, importcpp: "IsPointOutHalfspace",
    header: "Graphic3d_ClipPlane.hxx".}
proc isBoxFullOutHalfspace*(this: Graphic3dClipPlane; theBox: Graphic3dBndBox3d): bool {.
    noSideEffect, importcpp: "IsBoxFullOutHalfspace",
    header: "Graphic3d_ClipPlane.hxx".}
proc probeBoxMaxPointHalfspace*(this: Graphic3dClipPlane; theBox: Graphic3dBndBox3d): Graphic3dClipState {.
    noSideEffect, importcpp: "ProbeBoxMaxPointHalfspace",
    header: "Graphic3d_ClipPlane.hxx".}
proc isBoxFullInHalfspace*(this: Graphic3dClipPlane; theBox: Graphic3dBndBox3d): bool {.
    noSideEffect, importcpp: "IsBoxFullInHalfspace",
    header: "Graphic3d_ClipPlane.hxx".}
proc dumpJson*(this: Graphic3dClipPlane; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, importcpp: "DumpJson",
                                 header: "Graphic3d_ClipPlane.hxx".}
proc mCountEquation*(this: Graphic3dClipPlane): cuint {.noSideEffect,
    importcpp: "MCountEquation", header: "Graphic3d_ClipPlane.hxx".}
proc mCountAspect*(this: Graphic3dClipPlane): cuint {.noSideEffect,
    importcpp: "MCountAspect", header: "Graphic3d_ClipPlane.hxx".}
discard "forward decl of Graphic3d_ClipPlane"
type
  HandleC1C1* = Handle[Graphic3dClipPlane]


























