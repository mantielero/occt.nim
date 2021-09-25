##  Created on: 2017-07-25
##  Created by: Anastasia BOBYLEVA
##  Copyright (c) 2017-2019 OPEN CASCADE SAS
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

discard "forward decl of AIS_AnimationCamera"
discard "forward decl of AIS_ViewCubeOwner"
discard "forward decl of Graphic3d_ArrayOfTriangles"
discard "forward decl of V3d_View"
type
  AIS_ViewCube* {.importcpp: "AIS_ViewCube", header: "AIS_ViewCube.hxx", bycopy.} = object of AIS_InteractiveObject ##
                                                                                                          ## !
                                                                                                          ## Return
                                                                                                          ## TRUE
                                                                                                          ## if
                                                                                                          ## specified
                                                                                                          ## orientation
                                                                                                          ## belongs
                                                                                                          ## to
                                                                                                          ## box
                                                                                                          ## side.
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## Empty
                                                                                                          ## constructor.
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## Set
                                                                                                          ## default
                                                                                                          ## visual
                                                                                                          ## attributes
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## @name
                                                                                                          ## Geometry
                                                                                                          ## management
                                                                                                          ## API
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## @return
                                                                                                          ## size
                                                                                                          ## (width
                                                                                                          ## and
                                                                                                          ## height)
                                                                                                          ## of
                                                                                                          ## View
                                                                                                          ## cube
                                                                                                          ## sides;
                                                                                                          ## 100
                                                                                                          ## by
                                                                                                          ## default.
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## @name
                                                                                                          ## Style
                                                                                                          ## management
                                                                                                          ## API
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## Return
                                                                                                          ## shading
                                                                                                          ## style
                                                                                                          ## of
                                                                                                          ## box
                                                                                                          ## sides.
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## Set
                                                                                                          ## new
                                                                                                          ## value
                                                                                                          ## of
                                                                                                          ## color
                                                                                                          ## for
                                                                                                          ## the
                                                                                                          ## whole
                                                                                                          ## object.
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## @param
                                                                                                          ## theColor
                                                                                                          ## [in]
                                                                                                          ## input
                                                                                                          ## color
                                                                                                          ## value.
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## @name
                                                                                                          ## animation
                                                                                                          ## methods
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## Return
                                                                                                          ## duration
                                                                                                          ## of
                                                                                                          ## animation
                                                                                                          ## in
                                                                                                          ## seconds;
                                                                                                          ## 0.5
                                                                                                          ## sec
                                                                                                          ## by
                                                                                                          ## default
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## Perform
                                                                                                          ## internal
                                                                                                          ## single
                                                                                                          ## step
                                                                                                          ## of
                                                                                                          ## animation.
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## @return
                                                                                                          ## FALSE
                                                                                                          ## if
                                                                                                          ## animation
                                                                                                          ## has
                                                                                                          ## been
                                                                                                          ## finished
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## @name
                                                                                                          ## protected
                                                                                                          ## virtual
                                                                                                          ## API
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## Method
                                                                                                          ## that
                                                                                                          ## is
                                                                                                          ## called
                                                                                                          ## after
                                                                                                          ## one
                                                                                                          ## step
                                                                                                          ## of
                                                                                                          ## transformation.
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## @name
                                                                                                          ## Presentation
                                                                                                          ## computation
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## Return
                                                                                                          ## TRUE
                                                                                                          ## for
                                                                                                          ## supported
                                                                                                          ## display
                                                                                                          ## mode.
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## @name
                                                                                                          ## Auxiliary
                                                                                                          ## classes
                                                                                                          ## to
                                                                                                          ## fill
                                                                                                          ## presentation
                                                                                                          ## with
                                                                                                          ## proper
                                                                                                          ## primitives
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## Create
                                                                                                          ## triangulation
                                                                                                          ## for
                                                                                                          ## a
                                                                                                          ## box
                                                                                                          ## part
                                                                                                          ## -
                                                                                                          ## for
                                                                                                          ## presentation
                                                                                                          ## and
                                                                                                          ## selection
                                                                                                          ## purposes.
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## @param
                                                                                                          ## theTris
                                                                                                          ## [in,out]
                                                                                                          ## triangulation
                                                                                                          ## to
                                                                                                          ## fill,
                                                                                                          ## or
                                                                                                          ## NULL
                                                                                                          ## to
                                                                                                          ## return
                                                                                                          ## size
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## @param
                                                                                                          ## theNbNodes
                                                                                                          ## [in,out]
                                                                                                          ## should
                                                                                                          ## be
                                                                                                          ## incremented
                                                                                                          ## by
                                                                                                          ## a
                                                                                                          ## number
                                                                                                          ## of
                                                                                                          ## nodes
                                                                                                          ## defining
                                                                                                          ## this
                                                                                                          ## triangulation
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## @param
                                                                                                          ## theNbTris
                                                                                                          ## [in,out]
                                                                                                          ## should
                                                                                                          ## be
                                                                                                          ## incremented
                                                                                                          ## by
                                                                                                          ## a
                                                                                                          ## number
                                                                                                          ## of
                                                                                                          ## triangles
                                                                                                          ## defining
                                                                                                          ## this
                                                                                                          ## triangulation
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## @param
                                                                                                          ## theDir
                                                                                                          ## [in]
                                                                                                          ## part
                                                                                                          ## to
                                                                                                          ## define
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## Create
                                                                                                          ## triangulation
                                                                                                          ## for
                                                                                                          ## a
                                                                                                          ## rectangle
                                                                                                          ## with
                                                                                                          ## round
                                                                                                          ## corners.
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## @param
                                                                                                          ## theTris
                                                                                                          ## [in,out]
                                                                                                          ## triangulation
                                                                                                          ## to
                                                                                                          ## fill,
                                                                                                          ## or
                                                                                                          ## NULL
                                                                                                          ## to
                                                                                                          ## return
                                                                                                          ## size
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## @param
                                                                                                          ## theNbNodes
                                                                                                          ## [in,out]
                                                                                                          ## should
                                                                                                          ## be
                                                                                                          ## incremented
                                                                                                          ## by
                                                                                                          ## a
                                                                                                          ## number
                                                                                                          ## of
                                                                                                          ## nodes
                                                                                                          ## defining
                                                                                                          ## this
                                                                                                          ## triangulation
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## @param
                                                                                                          ## theNbTris
                                                                                                          ## [in,out]
                                                                                                          ## should
                                                                                                          ## be
                                                                                                          ## incremented
                                                                                                          ## by
                                                                                                          ## a
                                                                                                          ## number
                                                                                                          ## of
                                                                                                          ## triangles
                                                                                                          ## defining
                                                                                                          ## this
                                                                                                          ## triangulation
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## @param
                                                                                                          ## theSize
                                                                                                          ## [in]
                                                                                                          ## rectangle
                                                                                                          ## dimensions
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## @param
                                                                                                          ## theRadius
                                                                                                          ## [in]
                                                                                                          ## radius
                                                                                                          ## at
                                                                                                          ## corners
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## @param
                                                                                                          ## theTrsf
                                                                                                          ## [in]
                                                                                                          ## transformation
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## Trivial
                                                                                                          ## hasher
                                                                                                          ## to
                                                                                                          ## avoid
                                                                                                          ## ambiguity
                                                                                                          ## with
                                                                                                          ## enumeration
                                                                                                          ## type.
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## @name
                                                                                                          ## Animation
                                                                                                          ## options
    ## !< map with box side labels
    ## !< map with axes labels
    ## !< style for box edges
    ## !< style for box corner
    ## !< size of box side, length of one axis
    ## !< minimal size of box edge
    ## !< gap between box side and box edge
    ## !< box facet extension
    ## !< Padding between box and axes
    ## !< radius of axes of the trihedron; 1.0 by default
    ## !< radius of cone of axes of the trihedron; 3.0 by default
    ## !< radius of sphere (central point) of the trihedron; 4.0 by default
    ## !< minimal size of box corner
    ## !< relative round radius within [0; 0.5] range
    ## !< trihedron visibility
    ## !< box edges visibility
    ## !< box corners (vertices) visibility
    ## !< flag indicating that application expects Y-up viewer orientation instead of Z-up
    ## !< Camera animation object
    ## !< Start state of view camera
    ## !< End state of view camera
    ## !< start animation automatically on click
    ## !< fixed-loop animation
    ## !< fit selected or fit entire scene
    ## !< always reset camera up direction to default

  AIS_ViewCubebaseType* = AIS_InteractiveObject

proc getTypeName*(): cstring {.importcpp: "AIS_ViewCube::get_type_name(@)",
                            header: "AIS_ViewCube.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "AIS_ViewCube::get_type_descriptor(@)", header: "AIS_ViewCube.hxx".}
proc dynamicType*(this: AIS_ViewCube): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "AIS_ViewCube.hxx".}
proc isBoxSide*(theOrient: V3dTypeOfOrientation): bool {.
    importcpp: "AIS_ViewCube::IsBoxSide(@)", header: "AIS_ViewCube.hxx".}
proc isBoxEdge*(theOrient: V3dTypeOfOrientation): bool {.
    importcpp: "AIS_ViewCube::IsBoxEdge(@)", header: "AIS_ViewCube.hxx".}
proc isBoxCorner*(theOrient: V3dTypeOfOrientation): bool {.
    importcpp: "AIS_ViewCube::IsBoxCorner(@)", header: "AIS_ViewCube.hxx".}
proc constructAIS_ViewCube*(): AIS_ViewCube {.constructor,
    importcpp: "AIS_ViewCube(@)", header: "AIS_ViewCube.hxx".}
proc viewAnimation*(this: AIS_ViewCube): Handle[AIS_AnimationCamera] {.noSideEffect,
    importcpp: "ViewAnimation", header: "AIS_ViewCube.hxx".}
proc setViewAnimation*(this: var AIS_ViewCube;
                      theAnimation: Handle[AIS_AnimationCamera]) {.
    importcpp: "SetViewAnimation", header: "AIS_ViewCube.hxx".}
proc toAutoStartAnimation*(this: AIS_ViewCube): bool {.noSideEffect,
    importcpp: "ToAutoStartAnimation", header: "AIS_ViewCube.hxx".}
proc setAutoStartAnimation*(this: var AIS_ViewCube; theToEnable: bool) {.
    importcpp: "SetAutoStartAnimation", header: "AIS_ViewCube.hxx".}
proc isFixedAnimationLoop*(this: AIS_ViewCube): bool {.noSideEffect,
    importcpp: "IsFixedAnimationLoop", header: "AIS_ViewCube.hxx".}
proc setFixedAnimationLoop*(this: var AIS_ViewCube; theToEnable: bool) {.
    importcpp: "SetFixedAnimationLoop", header: "AIS_ViewCube.hxx".}
proc resetStyles*(this: var AIS_ViewCube) {.importcpp: "ResetStyles",
                                        header: "AIS_ViewCube.hxx".}
proc size*(this: AIS_ViewCube): float {.noSideEffect, importcpp: "Size",
                                    header: "AIS_ViewCube.hxx".}
proc setSize*(this: var AIS_ViewCube; theValue: float; theToAdaptAnother: bool = true) {.
    importcpp: "SetSize", header: "AIS_ViewCube.hxx".}
proc boxFacetExtension*(this: AIS_ViewCube): float {.noSideEffect,
    importcpp: "BoxFacetExtension", header: "AIS_ViewCube.hxx".}
proc setBoxFacetExtension*(this: var AIS_ViewCube; theValue: float) {.
    importcpp: "SetBoxFacetExtension", header: "AIS_ViewCube.hxx".}
proc axesPadding*(this: AIS_ViewCube): float {.noSideEffect,
    importcpp: "AxesPadding", header: "AIS_ViewCube.hxx".}
proc setAxesPadding*(this: var AIS_ViewCube; theValue: float) {.
    importcpp: "SetAxesPadding", header: "AIS_ViewCube.hxx".}
proc boxEdgeGap*(this: AIS_ViewCube): float {.noSideEffect, importcpp: "BoxEdgeGap",
    header: "AIS_ViewCube.hxx".}
proc setBoxEdgeGap*(this: var AIS_ViewCube; theValue: float) {.
    importcpp: "SetBoxEdgeGap", header: "AIS_ViewCube.hxx".}
proc boxEdgeMinSize*(this: AIS_ViewCube): float {.noSideEffect,
    importcpp: "BoxEdgeMinSize", header: "AIS_ViewCube.hxx".}
proc setBoxEdgeMinSize*(this: var AIS_ViewCube; theValue: float) {.
    importcpp: "SetBoxEdgeMinSize", header: "AIS_ViewCube.hxx".}
proc boxCornerMinSize*(this: AIS_ViewCube): float {.noSideEffect,
    importcpp: "BoxCornerMinSize", header: "AIS_ViewCube.hxx".}
proc setBoxCornerMinSize*(this: var AIS_ViewCube; theValue: float) {.
    importcpp: "SetBoxCornerMinSize", header: "AIS_ViewCube.hxx".}
proc roundRadius*(this: AIS_ViewCube): float {.noSideEffect,
    importcpp: "RoundRadius", header: "AIS_ViewCube.hxx".}
proc setRoundRadius*(this: var AIS_ViewCube; theValue: float) {.
    importcpp: "SetRoundRadius", header: "AIS_ViewCube.hxx".}
proc axesRadius*(this: AIS_ViewCube): float {.noSideEffect, importcpp: "AxesRadius",
    header: "AIS_ViewCube.hxx".}
proc setAxesRadius*(this: var AIS_ViewCube; theRadius: float) {.
    importcpp: "SetAxesRadius", header: "AIS_ViewCube.hxx".}
proc axesConeRadius*(this: AIS_ViewCube): float {.noSideEffect,
    importcpp: "AxesConeRadius", header: "AIS_ViewCube.hxx".}
proc setAxesConeRadius*(this: var AIS_ViewCube; theRadius: float) {.
    importcpp: "SetAxesConeRadius", header: "AIS_ViewCube.hxx".}
proc axesSphereRadius*(this: AIS_ViewCube): float {.noSideEffect,
    importcpp: "AxesSphereRadius", header: "AIS_ViewCube.hxx".}
proc setAxesSphereRadius*(this: var AIS_ViewCube; theRadius: float) {.
    importcpp: "SetAxesSphereRadius", header: "AIS_ViewCube.hxx".}
proc toDrawAxes*(this: AIS_ViewCube): bool {.noSideEffect, importcpp: "ToDrawAxes",
    header: "AIS_ViewCube.hxx".}
proc setDrawAxes*(this: var AIS_ViewCube; theValue: bool) {.importcpp: "SetDrawAxes",
    header: "AIS_ViewCube.hxx".}
proc toDrawEdges*(this: AIS_ViewCube): bool {.noSideEffect, importcpp: "ToDrawEdges",
    header: "AIS_ViewCube.hxx".}
proc setDrawEdges*(this: var AIS_ViewCube; theValue: bool) {.
    importcpp: "SetDrawEdges", header: "AIS_ViewCube.hxx".}
proc toDrawVertices*(this: AIS_ViewCube): bool {.noSideEffect,
    importcpp: "ToDrawVertices", header: "AIS_ViewCube.hxx".}
proc setDrawVertices*(this: var AIS_ViewCube; theValue: bool) {.
    importcpp: "SetDrawVertices", header: "AIS_ViewCube.hxx".}
proc isYup*(this: AIS_ViewCube): bool {.noSideEffect, importcpp: "IsYup",
                                    header: "AIS_ViewCube.hxx".}
proc setYup*(this: var AIS_ViewCube; theIsYup: bool; theToUpdateLabels: bool = true) {.
    importcpp: "SetYup", header: "AIS_ViewCube.hxx".}
proc boxSideStyle*(this: AIS_ViewCube): Handle[Prs3dShadingAspect] {.noSideEffect,
    importcpp: "BoxSideStyle", header: "AIS_ViewCube.hxx".}
proc boxEdgeStyle*(this: AIS_ViewCube): Handle[Prs3dShadingAspect] {.noSideEffect,
    importcpp: "BoxEdgeStyle", header: "AIS_ViewCube.hxx".}
proc boxCornerStyle*(this: AIS_ViewCube): Handle[Prs3dShadingAspect] {.noSideEffect,
    importcpp: "BoxCornerStyle", header: "AIS_ViewCube.hxx".}
proc boxColor*(this: AIS_ViewCube): QuantityColor {.noSideEffect,
    importcpp: "BoxColor", header: "AIS_ViewCube.hxx".}
proc setBoxColor*(this: var AIS_ViewCube; theColor: QuantityColor) {.
    importcpp: "SetBoxColor", header: "AIS_ViewCube.hxx".}
proc boxTransparency*(this: AIS_ViewCube): float {.noSideEffect,
    importcpp: "BoxTransparency", header: "AIS_ViewCube.hxx".}
proc setBoxTransparency*(this: var AIS_ViewCube; theValue: float) {.
    importcpp: "SetBoxTransparency", header: "AIS_ViewCube.hxx".}
proc innerColor*(this: AIS_ViewCube): QuantityColor {.noSideEffect,
    importcpp: "InnerColor", header: "AIS_ViewCube.hxx".}
proc setInnerColor*(this: var AIS_ViewCube; theColor: QuantityColor) {.
    importcpp: "SetInnerColor", header: "AIS_ViewCube.hxx".}
proc boxSideLabel*(this: AIS_ViewCube; theSide: V3dTypeOfOrientation): TCollectionAsciiString {.
    noSideEffect, importcpp: "BoxSideLabel", header: "AIS_ViewCube.hxx".}
proc setBoxSideLabel*(this: var AIS_ViewCube; theSide: V3dTypeOfOrientation;
                     theLabel: TCollectionAsciiString) {.
    importcpp: "SetBoxSideLabel", header: "AIS_ViewCube.hxx".}
proc textColor*(this: AIS_ViewCube): QuantityColor {.noSideEffect,
    importcpp: "TextColor", header: "AIS_ViewCube.hxx".}
proc setTextColor*(this: var AIS_ViewCube; theColor: QuantityColor) {.
    importcpp: "SetTextColor", header: "AIS_ViewCube.hxx".}
proc font*(this: AIS_ViewCube): TCollectionAsciiString {.noSideEffect,
    importcpp: "Font", header: "AIS_ViewCube.hxx".}
proc setFont*(this: var AIS_ViewCube; theFont: TCollectionAsciiString) {.
    importcpp: "SetFont", header: "AIS_ViewCube.hxx".}
proc fontHeight*(this: AIS_ViewCube): float {.noSideEffect, importcpp: "FontHeight",
    header: "AIS_ViewCube.hxx".}
proc setFontHeight*(this: var AIS_ViewCube; theValue: float) {.
    importcpp: "SetFontHeight", header: "AIS_ViewCube.hxx".}
proc axisLabel*(this: AIS_ViewCube; theAxis: Prs3dDatumParts): TCollectionAsciiString {.
    noSideEffect, importcpp: "AxisLabel", header: "AIS_ViewCube.hxx".}
proc setAxesLabels*(this: var AIS_ViewCube; theX: TCollectionAsciiString;
                   theY: TCollectionAsciiString; theZ: TCollectionAsciiString) {.
    importcpp: "SetAxesLabels", header: "AIS_ViewCube.hxx".}
proc setColor*(this: var AIS_ViewCube; theColor: QuantityColor) {.
    importcpp: "SetColor", header: "AIS_ViewCube.hxx".}
proc unsetColor*(this: var AIS_ViewCube) {.importcpp: "UnsetColor",
                                       header: "AIS_ViewCube.hxx".}
proc setTransparency*(this: var AIS_ViewCube; theValue: float) {.
    importcpp: "SetTransparency", header: "AIS_ViewCube.hxx".}
proc unsetTransparency*(this: var AIS_ViewCube) {.importcpp: "UnsetTransparency",
    header: "AIS_ViewCube.hxx".}
proc setMaterial*(this: var AIS_ViewCube; theMat: Graphic3dMaterialAspect) {.
    importcpp: "SetMaterial", header: "AIS_ViewCube.hxx".}
proc unsetMaterial*(this: var AIS_ViewCube) {.importcpp: "UnsetMaterial",
    header: "AIS_ViewCube.hxx".}
proc duration*(this: AIS_ViewCube): float {.noSideEffect, importcpp: "Duration",
                                        header: "AIS_ViewCube.hxx".}
proc setDuration*(this: var AIS_ViewCube; theValue: float) {.importcpp: "SetDuration",
    header: "AIS_ViewCube.hxx".}
proc toResetCameraUp*(this: AIS_ViewCube): bool {.noSideEffect,
    importcpp: "ToResetCameraUp", header: "AIS_ViewCube.hxx".}
proc setResetCamera*(this: var AIS_ViewCube; theToReset: bool) {.
    importcpp: "SetResetCamera", header: "AIS_ViewCube.hxx".}
proc toFitSelected*(this: AIS_ViewCube): bool {.noSideEffect,
    importcpp: "ToFitSelected", header: "AIS_ViewCube.hxx".}
proc setFitSelected*(this: var AIS_ViewCube; theToFitSelected: bool) {.
    importcpp: "SetFitSelected", header: "AIS_ViewCube.hxx".}
proc hasAnimation*(this: AIS_ViewCube): bool {.noSideEffect,
    importcpp: "HasAnimation", header: "AIS_ViewCube.hxx".}
proc startAnimation*(this: var AIS_ViewCube; theOwner: Handle[AIS_ViewCubeOwner]) {.
    importcpp: "StartAnimation", header: "AIS_ViewCube.hxx".}
proc updateAnimation*(this: var AIS_ViewCube; theToUpdate: bool): bool {.
    importcpp: "UpdateAnimation", header: "AIS_ViewCube.hxx".}
proc handleClick*(this: var AIS_ViewCube; theOwner: Handle[AIS_ViewCubeOwner]) {.
    importcpp: "HandleClick", header: "AIS_ViewCube.hxx".}
proc acceptDisplayMode*(this: AIS_ViewCube; theMode: int): bool {.noSideEffect,
    importcpp: "AcceptDisplayMode", header: "AIS_ViewCube.hxx".}
proc globalSelOwner*(this: AIS_ViewCube): Handle[SelectMgrEntityOwner] {.
    noSideEffect, importcpp: "GlobalSelOwner", header: "AIS_ViewCube.hxx".}
proc compute*(this: var AIS_ViewCube;
             thePrsMgr: Handle[PrsMgrPresentationManager3d];
             thePrs: Handle[Prs3dPresentation]; theMode: int = 0) {.
    importcpp: "Compute", header: "AIS_ViewCube.hxx".}
proc computeSelection*(this: var AIS_ViewCube;
                      theSelection: Handle[SelectMgrSelection]; theMode: int) {.
    importcpp: "ComputeSelection", header: "AIS_ViewCube.hxx".}
proc isAutoHilight*(this: AIS_ViewCube): bool {.noSideEffect,
    importcpp: "IsAutoHilight", header: "AIS_ViewCube.hxx".}
proc clearSelected*(this: var AIS_ViewCube) {.importcpp: "ClearSelected",
    header: "AIS_ViewCube.hxx".}
proc hilightOwnerWithColor*(this: var AIS_ViewCube;
                           thePM: Handle[PrsMgrPresentationManager3d];
                           theStyle: Handle[Prs3dDrawer];
                           theOwner: Handle[SelectMgrEntityOwner]) {.
    importcpp: "HilightOwnerWithColor", header: "AIS_ViewCube.hxx".}
proc hilightSelected*(this: var AIS_ViewCube;
                     thePM: Handle[PrsMgrPresentationManager3d];
                     theSeq: SelectMgrSequenceOfOwner) {.
    importcpp: "HilightSelected", header: "AIS_ViewCube.hxx".}
proc unsetAttributes*(this: var AIS_ViewCube) {.importcpp: "UnsetAttributes",
    header: "AIS_ViewCube.hxx".}
proc unsetHilightAttributes*(this: var AIS_ViewCube) {.
    importcpp: "UnsetHilightAttributes", header: "AIS_ViewCube.hxx".}
## ! Redefined entity owner that is highlighted when owner is detected,
## ! even if Interactive Context highlighted on last detection procedure.

type
  AIS_ViewCubeOwner* {.importcpp: "AIS_ViewCubeOwner", header: "AIS_ViewCube.hxx",
                      bycopy.} = object of SelectMgrEntityOwner ## ! Main constructor.
    ## !< new orientation to set

  AIS_ViewCubeOwnerbaseType* = SelectMgrEntityOwner

proc getTypeName*(): cstring {.importcpp: "AIS_ViewCubeOwner::get_type_name(@)",
                            header: "AIS_ViewCube.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "AIS_ViewCubeOwner::get_type_descriptor(@)",
    header: "AIS_ViewCube.hxx".}
proc dynamicType*(this: AIS_ViewCubeOwner): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "AIS_ViewCube.hxx".}
proc constructAIS_ViewCubeOwner*(theObject: Handle[AIS_ViewCube];
                                theOrient: V3dTypeOfOrientation;
                                thePriority: int = 5): AIS_ViewCubeOwner {.
    constructor, importcpp: "AIS_ViewCubeOwner(@)", header: "AIS_ViewCube.hxx".}
proc isForcedHilight*(this: AIS_ViewCubeOwner): bool {.noSideEffect,
    importcpp: "IsForcedHilight", header: "AIS_ViewCube.hxx".}
proc mainOrientation*(this: AIS_ViewCubeOwner): V3dTypeOfOrientation {.noSideEffect,
    importcpp: "MainOrientation", header: "AIS_ViewCube.hxx".}
proc handleMouseClick*(this: var AIS_ViewCubeOwner; thePoint: Graphic3dVec2i;
                      theButton: AspectVKeyMouse; theModifiers: AspectVKeyFlags;
                      theIsDoubleClick: bool): bool {.
    importcpp: "HandleMouseClick", header: "AIS_ViewCube.hxx".}
