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

import
  ../Aspect/Aspect_HatchStyle, ../gp/gp_Pln, Graphic3d_AspectFillArea3d,
  Graphic3d_BndBox3d, Graphic3d_CappingFlags, Graphic3d_TextureMap,
  ../NCollection/NCollection_Vec4, ../Standard/Standard_Macro,
  ../Standard/Standard_TypeDef, ../Standard/Standard_Transient

## ! Clipping state.

type
  Graphic3d_ClipState* {.size: sizeof(cint), importcpp: "Graphic3d_ClipState",
                        header: "Graphic3d_ClipPlane.hxx".} = enum
    Graphic3d_ClipState_Out,  ## !< fully outside (clipped) - should be discarded
    Graphic3d_ClipState_In,   ## !< fully inside  (NOT clipped) - should NOT be discarded
    Graphic3d_ClipState_On    ## !< on (not clipped / partially clipped) - should NOT be discarded


## ! Container for properties describing either a Clipping halfspace (single Clipping Plane),
## ! or a chain of Clipping Planes defining logical AND (conjunction) operation.
## ! The plane equation is specified in "world" coordinate system.

type
  Graphic3d_ClipPlane* {.importcpp: "Graphic3d_ClipPlane",
                        header: "Graphic3d_ClipPlane.hxx", bycopy.} = object of Standard_Transient ##
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

  Graphic3d_ClipPlanebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Graphic3d_ClipPlane::get_type_name(@)",
                              header: "Graphic3d_ClipPlane.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Graphic3d_ClipPlane::get_type_descriptor(@)",
    header: "Graphic3d_ClipPlane.hxx".}
proc DynamicType*(this: Graphic3d_ClipPlane): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Graphic3d_ClipPlane.hxx".}
type
  Graphic3d_ClipPlaneEquation* = Graphic3d_Vec4d

proc constructGraphic3d_ClipPlane*(): Graphic3d_ClipPlane {.constructor,
    importcpp: "Graphic3d_ClipPlane(@)", header: "Graphic3d_ClipPlane.hxx".}
proc constructGraphic3d_ClipPlane*(theOther: Graphic3d_ClipPlane): Graphic3d_ClipPlane {.
    constructor, importcpp: "Graphic3d_ClipPlane(@)",
    header: "Graphic3d_ClipPlane.hxx".}
proc constructGraphic3d_ClipPlane*(theEquation: Graphic3d_Vec4d): Graphic3d_ClipPlane {.
    constructor, importcpp: "Graphic3d_ClipPlane(@)",
    header: "Graphic3d_ClipPlane.hxx".}
proc constructGraphic3d_ClipPlane*(thePlane: gp_Pln): Graphic3d_ClipPlane {.
    constructor, importcpp: "Graphic3d_ClipPlane(@)",
    header: "Graphic3d_ClipPlane.hxx".}
proc SetEquation*(this: var Graphic3d_ClipPlane; thePlane: gp_Pln) {.
    importcpp: "SetEquation", header: "Graphic3d_ClipPlane.hxx".}
proc SetEquation*(this: var Graphic3d_ClipPlane; theEquation: Graphic3d_Vec4d) {.
    importcpp: "SetEquation", header: "Graphic3d_ClipPlane.hxx".}
proc GetEquation*(this: Graphic3d_ClipPlane): Graphic3d_Vec4d {.noSideEffect,
    importcpp: "GetEquation", header: "Graphic3d_ClipPlane.hxx".}
proc ReversedEquation*(this: Graphic3d_ClipPlane): Graphic3d_Vec4d {.noSideEffect,
    importcpp: "ReversedEquation", header: "Graphic3d_ClipPlane.hxx".}
proc IsOn*(this: Graphic3d_ClipPlane): Standard_Boolean {.noSideEffect,
    importcpp: "IsOn", header: "Graphic3d_ClipPlane.hxx".}
proc SetOn*(this: var Graphic3d_ClipPlane; theIsOn: Standard_Boolean) {.
    importcpp: "SetOn", header: "Graphic3d_ClipPlane.hxx".}
proc SetCapping*(this: var Graphic3d_ClipPlane; theIsOn: Standard_Boolean) {.
    importcpp: "SetCapping", header: "Graphic3d_ClipPlane.hxx".}
proc IsCapping*(this: Graphic3d_ClipPlane): Standard_Boolean {.noSideEffect,
    importcpp: "IsCapping", header: "Graphic3d_ClipPlane.hxx".}
proc ToPlane*(this: Graphic3d_ClipPlane): gp_Pln {.noSideEffect,
    importcpp: "ToPlane", header: "Graphic3d_ClipPlane.hxx".}
proc Clone*(this: Graphic3d_ClipPlane): handle[Graphic3d_ClipPlane] {.noSideEffect,
    importcpp: "Clone", header: "Graphic3d_ClipPlane.hxx".}
proc IsChain*(this: Graphic3d_ClipPlane): Standard_Boolean {.noSideEffect,
    importcpp: "IsChain", header: "Graphic3d_ClipPlane.hxx".}
proc ChainPreviousPlane*(this: Graphic3d_ClipPlane): handle[Graphic3d_ClipPlane] {.
    noSideEffect, importcpp: "ChainPreviousPlane",
    header: "Graphic3d_ClipPlane.hxx".}
proc ChainNextPlane*(this: Graphic3d_ClipPlane): handle[Graphic3d_ClipPlane] {.
    noSideEffect, importcpp: "ChainNextPlane", header: "Graphic3d_ClipPlane.hxx".}
proc NbChainNextPlanes*(this: Graphic3d_ClipPlane): Standard_Integer {.noSideEffect,
    importcpp: "NbChainNextPlanes", header: "Graphic3d_ClipPlane.hxx".}
proc SetChainNextPlane*(this: var Graphic3d_ClipPlane;
                       thePlane: handle[Graphic3d_ClipPlane]) {.
    importcpp: "SetChainNextPlane", header: "Graphic3d_ClipPlane.hxx".}
proc CappingColor*(this: Graphic3d_ClipPlane): Quantity_Color {.noSideEffect,
    importcpp: "CappingColor", header: "Graphic3d_ClipPlane.hxx".}
proc SetCappingColor*(this: var Graphic3d_ClipPlane; theColor: Quantity_Color) {.
    importcpp: "SetCappingColor", header: "Graphic3d_ClipPlane.hxx".}
proc SetCappingMaterial*(this: var Graphic3d_ClipPlane;
                        theMat: Graphic3d_MaterialAspect) {.
    importcpp: "SetCappingMaterial", header: "Graphic3d_ClipPlane.hxx".}
proc CappingMaterial*(this: Graphic3d_ClipPlane): Graphic3d_MaterialAspect {.
    noSideEffect, importcpp: "CappingMaterial", header: "Graphic3d_ClipPlane.hxx".}
proc SetCappingTexture*(this: var Graphic3d_ClipPlane;
                       theTexture: handle[Graphic3d_TextureMap]) {.
    importcpp: "SetCappingTexture", header: "Graphic3d_ClipPlane.hxx".}
proc CappingTexture*(this: Graphic3d_ClipPlane): handle[Graphic3d_TextureMap] {.
    noSideEffect, importcpp: "CappingTexture", header: "Graphic3d_ClipPlane.hxx".}
proc SetCappingHatch*(this: var Graphic3d_ClipPlane; theStyle: Aspect_HatchStyle) {.
    importcpp: "SetCappingHatch", header: "Graphic3d_ClipPlane.hxx".}
proc CappingHatch*(this: Graphic3d_ClipPlane): Aspect_HatchStyle {.noSideEffect,
    importcpp: "CappingHatch", header: "Graphic3d_ClipPlane.hxx".}
proc SetCappingCustomHatch*(this: var Graphic3d_ClipPlane;
                           theStyle: handle[Graphic3d_HatchStyle]) {.
    importcpp: "SetCappingCustomHatch", header: "Graphic3d_ClipPlane.hxx".}
proc CappingCustomHatch*(this: Graphic3d_ClipPlane): handle[Graphic3d_HatchStyle] {.
    noSideEffect, importcpp: "CappingCustomHatch",
    header: "Graphic3d_ClipPlane.hxx".}
proc SetCappingHatchOn*(this: var Graphic3d_ClipPlane) {.
    importcpp: "SetCappingHatchOn", header: "Graphic3d_ClipPlane.hxx".}
proc SetCappingHatchOff*(this: var Graphic3d_ClipPlane) {.
    importcpp: "SetCappingHatchOff", header: "Graphic3d_ClipPlane.hxx".}
proc IsHatchOn*(this: Graphic3d_ClipPlane): Standard_Boolean {.noSideEffect,
    importcpp: "IsHatchOn", header: "Graphic3d_ClipPlane.hxx".}
proc GetId*(this: Graphic3d_ClipPlane): TCollection_AsciiString {.noSideEffect,
    importcpp: "GetId", header: "Graphic3d_ClipPlane.hxx".}
proc CappingAspect*(this: Graphic3d_ClipPlane): handle[Graphic3d_AspectFillArea3d] {.
    noSideEffect, importcpp: "CappingAspect", header: "Graphic3d_ClipPlane.hxx".}
proc SetCappingAspect*(this: var Graphic3d_ClipPlane;
                      theAspect: handle[Graphic3d_AspectFillArea3d]) {.
    importcpp: "SetCappingAspect", header: "Graphic3d_ClipPlane.hxx".}
proc ToUseObjectMaterial*(this: Graphic3d_ClipPlane): bool {.noSideEffect,
    importcpp: "ToUseObjectMaterial", header: "Graphic3d_ClipPlane.hxx".}
proc SetUseObjectMaterial*(this: var Graphic3d_ClipPlane; theToUse: bool) {.
    importcpp: "SetUseObjectMaterial", header: "Graphic3d_ClipPlane.hxx".}
proc ToUseObjectTexture*(this: Graphic3d_ClipPlane): bool {.noSideEffect,
    importcpp: "ToUseObjectTexture", header: "Graphic3d_ClipPlane.hxx".}
proc SetUseObjectTexture*(this: var Graphic3d_ClipPlane; theToUse: bool) {.
    importcpp: "SetUseObjectTexture", header: "Graphic3d_ClipPlane.hxx".}
proc ToUseObjectShader*(this: Graphic3d_ClipPlane): bool {.noSideEffect,
    importcpp: "ToUseObjectShader", header: "Graphic3d_ClipPlane.hxx".}
proc SetUseObjectShader*(this: var Graphic3d_ClipPlane; theToUse: bool) {.
    importcpp: "SetUseObjectShader", header: "Graphic3d_ClipPlane.hxx".}
proc ToUseObjectProperties*(this: Graphic3d_ClipPlane): bool {.noSideEffect,
    importcpp: "ToUseObjectProperties", header: "Graphic3d_ClipPlane.hxx".}
proc ProbePoint*(this: Graphic3d_ClipPlane; thePoint: Graphic3d_Vec4d): Graphic3d_ClipState {.
    noSideEffect, importcpp: "ProbePoint", header: "Graphic3d_ClipPlane.hxx".}
proc ProbeBox*(this: Graphic3d_ClipPlane; theBox: Graphic3d_BndBox3d): Graphic3d_ClipState {.
    noSideEffect, importcpp: "ProbeBox", header: "Graphic3d_ClipPlane.hxx".}
proc ProbeBoxTouch*(this: Graphic3d_ClipPlane; theBox: Graphic3d_BndBox3d): Standard_Boolean {.
    noSideEffect, importcpp: "ProbeBoxTouch", header: "Graphic3d_ClipPlane.hxx".}
proc ProbePointHalfspace*(this: Graphic3d_ClipPlane; thePoint: Graphic3d_Vec4d): Graphic3d_ClipState {.
    noSideEffect, importcpp: "ProbePointHalfspace",
    header: "Graphic3d_ClipPlane.hxx".}
proc ProbeBoxHalfspace*(this: Graphic3d_ClipPlane; theBox: Graphic3d_BndBox3d): Graphic3d_ClipState {.
    noSideEffect, importcpp: "ProbeBoxHalfspace", header: "Graphic3d_ClipPlane.hxx".}
proc IsPointOutHalfspace*(this: Graphic3d_ClipPlane; thePoint: Graphic3d_Vec4d): bool {.
    noSideEffect, importcpp: "IsPointOutHalfspace",
    header: "Graphic3d_ClipPlane.hxx".}
proc IsBoxFullOutHalfspace*(this: Graphic3d_ClipPlane; theBox: Graphic3d_BndBox3d): bool {.
    noSideEffect, importcpp: "IsBoxFullOutHalfspace",
    header: "Graphic3d_ClipPlane.hxx".}
proc ProbeBoxMaxPointHalfspace*(this: Graphic3d_ClipPlane;
                               theBox: Graphic3d_BndBox3d): Graphic3d_ClipState {.
    noSideEffect, importcpp: "ProbeBoxMaxPointHalfspace",
    header: "Graphic3d_ClipPlane.hxx".}
proc IsBoxFullInHalfspace*(this: Graphic3d_ClipPlane; theBox: Graphic3d_BndBox3d): bool {.
    noSideEffect, importcpp: "IsBoxFullInHalfspace",
    header: "Graphic3d_ClipPlane.hxx".}
proc DumpJson*(this: Graphic3d_ClipPlane; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Graphic3d_ClipPlane.hxx".}
proc MCountEquation*(this: Graphic3d_ClipPlane): cuint {.noSideEffect,
    importcpp: "MCountEquation", header: "Graphic3d_ClipPlane.hxx".}
proc MCountAspect*(this: Graphic3d_ClipPlane): cuint {.noSideEffect,
    importcpp: "MCountAspect", header: "Graphic3d_ClipPlane.hxx".}
discard "forward decl of Graphic3d_ClipPlane"
type
  Handle_Graphic3d_ClipPlane* = handle[Graphic3d_ClipPlane]
