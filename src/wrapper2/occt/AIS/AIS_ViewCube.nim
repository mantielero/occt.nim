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

import
  AIS_InteractiveObject, ../Graphic3d/Graphic3d_Camera,
  ../Graphic3d/Graphic3d_Vec2, ../Prs3d/Prs3d_DatumParts,
  ../Prs3d/Prs3d_ShadingAspect, ../Prs3d/Prs3d_TextAspect,
  ../SelectMgr/SelectMgr_EntityOwner, ../V3d/V3d_TypeOfOrientation

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

  AIS_ViewCubebase_type* = AIS_InteractiveObject

proc get_type_name*(): cstring {.importcpp: "AIS_ViewCube::get_type_name(@)",
                              header: "AIS_ViewCube.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "AIS_ViewCube::get_type_descriptor(@)", header: "AIS_ViewCube.hxx".}
proc DynamicType*(this: AIS_ViewCube): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "AIS_ViewCube.hxx".}
proc IsBoxSide*(theOrient: V3d_TypeOfOrientation): bool {.
    importcpp: "AIS_ViewCube::IsBoxSide(@)", header: "AIS_ViewCube.hxx".}
proc IsBoxEdge*(theOrient: V3d_TypeOfOrientation): bool {.
    importcpp: "AIS_ViewCube::IsBoxEdge(@)", header: "AIS_ViewCube.hxx".}
proc IsBoxCorner*(theOrient: V3d_TypeOfOrientation): bool {.
    importcpp: "AIS_ViewCube::IsBoxCorner(@)", header: "AIS_ViewCube.hxx".}
proc constructAIS_ViewCube*(): AIS_ViewCube {.constructor,
    importcpp: "AIS_ViewCube(@)", header: "AIS_ViewCube.hxx".}
proc ViewAnimation*(this: AIS_ViewCube): handle[AIS_AnimationCamera] {.noSideEffect,
    importcpp: "ViewAnimation", header: "AIS_ViewCube.hxx".}
proc SetViewAnimation*(this: var AIS_ViewCube;
                      theAnimation: handle[AIS_AnimationCamera]) {.
    importcpp: "SetViewAnimation", header: "AIS_ViewCube.hxx".}
proc ToAutoStartAnimation*(this: AIS_ViewCube): Standard_Boolean {.noSideEffect,
    importcpp: "ToAutoStartAnimation", header: "AIS_ViewCube.hxx".}
proc SetAutoStartAnimation*(this: var AIS_ViewCube; theToEnable: bool) {.
    importcpp: "SetAutoStartAnimation", header: "AIS_ViewCube.hxx".}
proc IsFixedAnimationLoop*(this: AIS_ViewCube): Standard_Boolean {.noSideEffect,
    importcpp: "IsFixedAnimationLoop", header: "AIS_ViewCube.hxx".}
proc SetFixedAnimationLoop*(this: var AIS_ViewCube; theToEnable: bool) {.
    importcpp: "SetFixedAnimationLoop", header: "AIS_ViewCube.hxx".}
proc ResetStyles*(this: var AIS_ViewCube) {.importcpp: "ResetStyles",
                                        header: "AIS_ViewCube.hxx".}
proc Size*(this: AIS_ViewCube): Standard_Real {.noSideEffect, importcpp: "Size",
    header: "AIS_ViewCube.hxx".}
proc SetSize*(this: var AIS_ViewCube; theValue: Standard_Real;
             theToAdaptAnother: Standard_Boolean = true) {.importcpp: "SetSize",
    header: "AIS_ViewCube.hxx".}
proc BoxFacetExtension*(this: AIS_ViewCube): Standard_Real {.noSideEffect,
    importcpp: "BoxFacetExtension", header: "AIS_ViewCube.hxx".}
proc SetBoxFacetExtension*(this: var AIS_ViewCube; theValue: Standard_Real) {.
    importcpp: "SetBoxFacetExtension", header: "AIS_ViewCube.hxx".}
proc AxesPadding*(this: AIS_ViewCube): Standard_Real {.noSideEffect,
    importcpp: "AxesPadding", header: "AIS_ViewCube.hxx".}
proc SetAxesPadding*(this: var AIS_ViewCube; theValue: Standard_Real) {.
    importcpp: "SetAxesPadding", header: "AIS_ViewCube.hxx".}
proc BoxEdgeGap*(this: AIS_ViewCube): Standard_Real {.noSideEffect,
    importcpp: "BoxEdgeGap", header: "AIS_ViewCube.hxx".}
proc SetBoxEdgeGap*(this: var AIS_ViewCube; theValue: Standard_Real) {.
    importcpp: "SetBoxEdgeGap", header: "AIS_ViewCube.hxx".}
proc BoxEdgeMinSize*(this: AIS_ViewCube): Standard_Real {.noSideEffect,
    importcpp: "BoxEdgeMinSize", header: "AIS_ViewCube.hxx".}
proc SetBoxEdgeMinSize*(this: var AIS_ViewCube; theValue: Standard_Real) {.
    importcpp: "SetBoxEdgeMinSize", header: "AIS_ViewCube.hxx".}
proc BoxCornerMinSize*(this: AIS_ViewCube): Standard_Real {.noSideEffect,
    importcpp: "BoxCornerMinSize", header: "AIS_ViewCube.hxx".}
proc SetBoxCornerMinSize*(this: var AIS_ViewCube; theValue: Standard_Real) {.
    importcpp: "SetBoxCornerMinSize", header: "AIS_ViewCube.hxx".}
proc RoundRadius*(this: AIS_ViewCube): Standard_Real {.noSideEffect,
    importcpp: "RoundRadius", header: "AIS_ViewCube.hxx".}
proc SetRoundRadius*(this: var AIS_ViewCube; theValue: Standard_Real) {.
    importcpp: "SetRoundRadius", header: "AIS_ViewCube.hxx".}
proc AxesRadius*(this: AIS_ViewCube): Standard_Real {.noSideEffect,
    importcpp: "AxesRadius", header: "AIS_ViewCube.hxx".}
proc SetAxesRadius*(this: var AIS_ViewCube; theRadius: Standard_Real) {.
    importcpp: "SetAxesRadius", header: "AIS_ViewCube.hxx".}
proc AxesConeRadius*(this: AIS_ViewCube): Standard_Real {.noSideEffect,
    importcpp: "AxesConeRadius", header: "AIS_ViewCube.hxx".}
proc SetAxesConeRadius*(this: var AIS_ViewCube; theRadius: Standard_Real) {.
    importcpp: "SetAxesConeRadius", header: "AIS_ViewCube.hxx".}
proc AxesSphereRadius*(this: AIS_ViewCube): Standard_Real {.noSideEffect,
    importcpp: "AxesSphereRadius", header: "AIS_ViewCube.hxx".}
proc SetAxesSphereRadius*(this: var AIS_ViewCube; theRadius: Standard_Real) {.
    importcpp: "SetAxesSphereRadius", header: "AIS_ViewCube.hxx".}
proc ToDrawAxes*(this: AIS_ViewCube): Standard_Boolean {.noSideEffect,
    importcpp: "ToDrawAxes", header: "AIS_ViewCube.hxx".}
proc SetDrawAxes*(this: var AIS_ViewCube; theValue: Standard_Boolean) {.
    importcpp: "SetDrawAxes", header: "AIS_ViewCube.hxx".}
proc ToDrawEdges*(this: AIS_ViewCube): Standard_Boolean {.noSideEffect,
    importcpp: "ToDrawEdges", header: "AIS_ViewCube.hxx".}
proc SetDrawEdges*(this: var AIS_ViewCube; theValue: Standard_Boolean) {.
    importcpp: "SetDrawEdges", header: "AIS_ViewCube.hxx".}
proc ToDrawVertices*(this: AIS_ViewCube): Standard_Boolean {.noSideEffect,
    importcpp: "ToDrawVertices", header: "AIS_ViewCube.hxx".}
proc SetDrawVertices*(this: var AIS_ViewCube; theValue: Standard_Boolean) {.
    importcpp: "SetDrawVertices", header: "AIS_ViewCube.hxx".}
proc IsYup*(this: AIS_ViewCube): Standard_Boolean {.noSideEffect, importcpp: "IsYup",
    header: "AIS_ViewCube.hxx".}
proc SetYup*(this: var AIS_ViewCube; theIsYup: Standard_Boolean;
            theToUpdateLabels: Standard_Boolean = Standard_True) {.
    importcpp: "SetYup", header: "AIS_ViewCube.hxx".}
proc BoxSideStyle*(this: AIS_ViewCube): handle[Prs3d_ShadingAspect] {.noSideEffect,
    importcpp: "BoxSideStyle", header: "AIS_ViewCube.hxx".}
proc BoxEdgeStyle*(this: AIS_ViewCube): handle[Prs3d_ShadingAspect] {.noSideEffect,
    importcpp: "BoxEdgeStyle", header: "AIS_ViewCube.hxx".}
proc BoxCornerStyle*(this: AIS_ViewCube): handle[Prs3d_ShadingAspect] {.
    noSideEffect, importcpp: "BoxCornerStyle", header: "AIS_ViewCube.hxx".}
proc BoxColor*(this: AIS_ViewCube): Quantity_Color {.noSideEffect,
    importcpp: "BoxColor", header: "AIS_ViewCube.hxx".}
proc SetBoxColor*(this: var AIS_ViewCube; theColor: Quantity_Color) {.
    importcpp: "SetBoxColor", header: "AIS_ViewCube.hxx".}
proc BoxTransparency*(this: AIS_ViewCube): Standard_Real {.noSideEffect,
    importcpp: "BoxTransparency", header: "AIS_ViewCube.hxx".}
proc SetBoxTransparency*(this: var AIS_ViewCube; theValue: Standard_Real) {.
    importcpp: "SetBoxTransparency", header: "AIS_ViewCube.hxx".}
proc InnerColor*(this: AIS_ViewCube): Quantity_Color {.noSideEffect,
    importcpp: "InnerColor", header: "AIS_ViewCube.hxx".}
proc SetInnerColor*(this: var AIS_ViewCube; theColor: Quantity_Color) {.
    importcpp: "SetInnerColor", header: "AIS_ViewCube.hxx".}
proc BoxSideLabel*(this: AIS_ViewCube; theSide: V3d_TypeOfOrientation): TCollection_AsciiString {.
    noSideEffect, importcpp: "BoxSideLabel", header: "AIS_ViewCube.hxx".}
proc SetBoxSideLabel*(this: var AIS_ViewCube; theSide: V3d_TypeOfOrientation;
                     theLabel: TCollection_AsciiString) {.
    importcpp: "SetBoxSideLabel", header: "AIS_ViewCube.hxx".}
proc TextColor*(this: AIS_ViewCube): Quantity_Color {.noSideEffect,
    importcpp: "TextColor", header: "AIS_ViewCube.hxx".}
proc SetTextColor*(this: var AIS_ViewCube; theColor: Quantity_Color) {.
    importcpp: "SetTextColor", header: "AIS_ViewCube.hxx".}
proc Font*(this: AIS_ViewCube): TCollection_AsciiString {.noSideEffect,
    importcpp: "Font", header: "AIS_ViewCube.hxx".}
proc SetFont*(this: var AIS_ViewCube; theFont: TCollection_AsciiString) {.
    importcpp: "SetFont", header: "AIS_ViewCube.hxx".}
proc FontHeight*(this: AIS_ViewCube): Standard_Real {.noSideEffect,
    importcpp: "FontHeight", header: "AIS_ViewCube.hxx".}
proc SetFontHeight*(this: var AIS_ViewCube; theValue: Standard_Real) {.
    importcpp: "SetFontHeight", header: "AIS_ViewCube.hxx".}
proc AxisLabel*(this: AIS_ViewCube; theAxis: Prs3d_DatumParts): TCollection_AsciiString {.
    noSideEffect, importcpp: "AxisLabel", header: "AIS_ViewCube.hxx".}
proc SetAxesLabels*(this: var AIS_ViewCube; theX: TCollection_AsciiString;
                   theY: TCollection_AsciiString; theZ: TCollection_AsciiString) {.
    importcpp: "SetAxesLabels", header: "AIS_ViewCube.hxx".}
proc SetColor*(this: var AIS_ViewCube; theColor: Quantity_Color) {.
    importcpp: "SetColor", header: "AIS_ViewCube.hxx".}
proc UnsetColor*(this: var AIS_ViewCube) {.importcpp: "UnsetColor",
                                       header: "AIS_ViewCube.hxx".}
proc SetTransparency*(this: var AIS_ViewCube; theValue: Standard_Real) {.
    importcpp: "SetTransparency", header: "AIS_ViewCube.hxx".}
proc UnsetTransparency*(this: var AIS_ViewCube) {.importcpp: "UnsetTransparency",
    header: "AIS_ViewCube.hxx".}
proc SetMaterial*(this: var AIS_ViewCube; theMat: Graphic3d_MaterialAspect) {.
    importcpp: "SetMaterial", header: "AIS_ViewCube.hxx".}
proc UnsetMaterial*(this: var AIS_ViewCube) {.importcpp: "UnsetMaterial",
    header: "AIS_ViewCube.hxx".}
proc Duration*(this: AIS_ViewCube): Standard_Real {.noSideEffect,
    importcpp: "Duration", header: "AIS_ViewCube.hxx".}
proc SetDuration*(this: var AIS_ViewCube; theValue: Standard_Real) {.
    importcpp: "SetDuration", header: "AIS_ViewCube.hxx".}
proc ToResetCameraUp*(this: AIS_ViewCube): Standard_Boolean {.noSideEffect,
    importcpp: "ToResetCameraUp", header: "AIS_ViewCube.hxx".}
proc SetResetCamera*(this: var AIS_ViewCube; theToReset: Standard_Boolean) {.
    importcpp: "SetResetCamera", header: "AIS_ViewCube.hxx".}
proc ToFitSelected*(this: AIS_ViewCube): Standard_Boolean {.noSideEffect,
    importcpp: "ToFitSelected", header: "AIS_ViewCube.hxx".}
proc SetFitSelected*(this: var AIS_ViewCube; theToFitSelected: Standard_Boolean) {.
    importcpp: "SetFitSelected", header: "AIS_ViewCube.hxx".}
proc HasAnimation*(this: AIS_ViewCube): Standard_Boolean {.noSideEffect,
    importcpp: "HasAnimation", header: "AIS_ViewCube.hxx".}
proc StartAnimation*(this: var AIS_ViewCube; theOwner: handle[AIS_ViewCubeOwner]) {.
    importcpp: "StartAnimation", header: "AIS_ViewCube.hxx".}
proc UpdateAnimation*(this: var AIS_ViewCube; theToUpdate: Standard_Boolean): Standard_Boolean {.
    importcpp: "UpdateAnimation", header: "AIS_ViewCube.hxx".}
proc HandleClick*(this: var AIS_ViewCube; theOwner: handle[AIS_ViewCubeOwner]) {.
    importcpp: "HandleClick", header: "AIS_ViewCube.hxx".}
proc AcceptDisplayMode*(this: AIS_ViewCube; theMode: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "AcceptDisplayMode", header: "AIS_ViewCube.hxx".}
proc GlobalSelOwner*(this: AIS_ViewCube): handle[SelectMgr_EntityOwner] {.
    noSideEffect, importcpp: "GlobalSelOwner", header: "AIS_ViewCube.hxx".}
proc Compute*(this: var AIS_ViewCube;
             thePrsMgr: handle[PrsMgr_PresentationManager3d];
             thePrs: handle[Prs3d_Presentation]; theMode: Standard_Integer = 0) {.
    importcpp: "Compute", header: "AIS_ViewCube.hxx".}
proc ComputeSelection*(this: var AIS_ViewCube;
                      theSelection: handle[SelectMgr_Selection];
                      theMode: Standard_Integer) {.importcpp: "ComputeSelection",
    header: "AIS_ViewCube.hxx".}
proc IsAutoHilight*(this: AIS_ViewCube): Standard_Boolean {.noSideEffect,
    importcpp: "IsAutoHilight", header: "AIS_ViewCube.hxx".}
proc ClearSelected*(this: var AIS_ViewCube) {.importcpp: "ClearSelected",
    header: "AIS_ViewCube.hxx".}
proc HilightOwnerWithColor*(this: var AIS_ViewCube;
                           thePM: handle[PrsMgr_PresentationManager3d];
                           theStyle: handle[Prs3d_Drawer];
                           theOwner: handle[SelectMgr_EntityOwner]) {.
    importcpp: "HilightOwnerWithColor", header: "AIS_ViewCube.hxx".}
proc HilightSelected*(this: var AIS_ViewCube;
                     thePM: handle[PrsMgr_PresentationManager3d];
                     theSeq: SelectMgr_SequenceOfOwner) {.
    importcpp: "HilightSelected", header: "AIS_ViewCube.hxx".}
proc UnsetAttributes*(this: var AIS_ViewCube) {.importcpp: "UnsetAttributes",
    header: "AIS_ViewCube.hxx".}
proc UnsetHilightAttributes*(this: var AIS_ViewCube) {.
    importcpp: "UnsetHilightAttributes", header: "AIS_ViewCube.hxx".}
## ! Redefined entity owner that is highlighted when owner is detected,
## ! even if Interactive Context highlighted on last detection procedure.

type
  AIS_ViewCubeOwner* {.importcpp: "AIS_ViewCubeOwner", header: "AIS_ViewCube.hxx",
                      bycopy.} = object of SelectMgr_EntityOwner ## ! Main constructor.
    ## !< new orientation to set

  AIS_ViewCubeOwnerbase_type* = SelectMgr_EntityOwner

proc get_type_name*(): cstring {.importcpp: "AIS_ViewCubeOwner::get_type_name(@)",
                              header: "AIS_ViewCube.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "AIS_ViewCubeOwner::get_type_descriptor(@)",
    header: "AIS_ViewCube.hxx".}
proc DynamicType*(this: AIS_ViewCubeOwner): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "AIS_ViewCube.hxx".}
proc constructAIS_ViewCubeOwner*(theObject: handle[AIS_ViewCube];
                                theOrient: V3d_TypeOfOrientation;
                                thePriority: Standard_Integer = 5): AIS_ViewCubeOwner {.
    constructor, importcpp: "AIS_ViewCubeOwner(@)", header: "AIS_ViewCube.hxx".}
proc IsForcedHilight*(this: AIS_ViewCubeOwner): Standard_Boolean {.noSideEffect,
    importcpp: "IsForcedHilight", header: "AIS_ViewCube.hxx".}
proc MainOrientation*(this: AIS_ViewCubeOwner): V3d_TypeOfOrientation {.
    noSideEffect, importcpp: "MainOrientation", header: "AIS_ViewCube.hxx".}
proc HandleMouseClick*(this: var AIS_ViewCubeOwner; thePoint: Graphic3d_Vec2i;
                      theButton: Aspect_VKeyMouse; theModifiers: Aspect_VKeyFlags;
                      theIsDoubleClick: bool): Standard_Boolean {.
    importcpp: "HandleMouseClick", header: "AIS_ViewCube.hxx".}