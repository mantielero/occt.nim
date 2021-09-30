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
    standardType* {.importc: "Standard_Type".}: Handle
    aIS_AnimationCamera* {.importc: "AIS_AnimationCamera".}: Handle
    prs3dShadingAspect* {.importc: "Prs3d_ShadingAspect".}: Handle
    selectMgrEntityOwner* {.importc: "SelectMgr_EntityOwner".}: Handle
    ## !< map with box side labels
    ## !< map with axes labels
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
    ## !< start animation automatically on click
    ## !< fixed-loop animation
    ## !< fit selected or fit entire scene
    ## !< always reset camera up direction to default

  AIS_ViewCubebaseType* = AIS_InteractiveObject

proc getTypeName*(): cstring {.importcpp: "AIS_ViewCube::get_type_name(@)",
                            header: "AIS_ViewCube.hxx".}
## !!!Ignored construct:  & get_type_descriptor ( ) ;
## Error: identifier expected, but got: &!!!

## !!!Ignored construct:  & DynamicType ( ) const ;
## Error: identifier expected, but got: &!!!

proc isBoxSide*(theOrient: V3dTypeOfOrientation): bool {.
    importcpp: "AIS_ViewCube::IsBoxSide(@)", header: "AIS_ViewCube.hxx".}
proc isBoxEdge*(theOrient: V3dTypeOfOrientation): bool {.
    importcpp: "AIS_ViewCube::IsBoxEdge(@)", header: "AIS_ViewCube.hxx".}
proc isBoxCorner*(theOrient: V3dTypeOfOrientation): bool {.
    importcpp: "AIS_ViewCube::IsBoxCorner(@)", header: "AIS_ViewCube.hxx".}
proc constructAIS_ViewCube*(): AIS_ViewCube {.constructor,
    importcpp: "AIS_ViewCube(@)", header: "AIS_ViewCube.hxx".}
## !!!Ignored construct:  & ViewAnimation ( ) const { return myViewAnimation ; } ! Set view animation. void SetViewAnimation ( const Handle ( AIS_AnimationCamera ) & theAnimation ) { myViewAnimation = theAnimation ; } ! Return TRUE if automatic camera transformation on selection (highlighting) is enabled; TRUE by default. Standard_Boolean ToAutoStartAnimation ( ) const { return myToAutoStartAnim ; } ! Enable/disable automatic camera transformation on selection (highlighting).
## ! The automatic logic can be disabled if application wants performing action manually
## ! basing on picking results (AIS_ViewCubeOwner). void SetAutoStartAnimation ( bool theToEnable ) { myToAutoStartAnim = theToEnable ; } ! Return TRUE if camera animation should be done in uninterruptible loop; TRUE by default. Standard_Boolean IsFixedAnimationLoop ( ) const { return myIsFixedAnimation ; } ! Set if camera animation should be done in uninterruptible loop. void SetFixedAnimationLoop ( bool theToEnable ) { myIsFixedAnimation = theToEnable ; } ! Reset all size and style parameters to default.
## ! @warning It doesn't reset position of View Cube void ResetStyles ( ) ;
## Error: identifier expected, but got: &!!!

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
## !!!Ignored construct:  & BoxSideStyle ( ) const { return myDrawer -> ShadingAspect ( ) ; } ! Return shading style of box edges. const Handle ( Prs3d_ShadingAspect ) & BoxEdgeStyle ( ) const { return myBoxEdgeAspect ; } ! Return shading style of box corners. const Handle ( Prs3d_ShadingAspect ) & BoxCornerStyle ( ) const { return myBoxCornerAspect ; } ! Return value of front color for the 3D part of object. const Quantity_Color & BoxColor ( ) const { return myDrawer -> ShadingAspect ( ) -> Color ( ) ; } ! Set new value of front color for the 3D part of object.
## ! @param theColor [in] input color value. void SetBoxColor ( const Quantity_Color & theColor ) { if ( ! myDrawer -> ShadingAspect ( ) -> Color ( ) . IsEqual ( theColor ) || ! myBoxEdgeAspect -> Color ( ) . IsEqual ( theColor ) || ! myBoxCornerAspect -> Color ( ) . IsEqual ( theColor ) ) { myDrawer -> ShadingAspect ( ) -> SetColor ( theColor ) ; myBoxEdgeAspect -> SetColor ( theColor ) ; myBoxCornerAspect -> SetColor ( theColor ) ; SynchronizeAspects ( ) ; } } ! Return transparency for 3D part of object. Standard_Real BoxTransparency ( ) const { return myDrawer -> ShadingAspect ( ) -> Transparency ( ) ; } ! Set new value of transparency for 3D part of object.
## ! @param theValue [in] input transparency value void SetBoxTransparency ( Standard_Real theValue ) { if ( Abs ( myDrawer -> ShadingAspect ( ) -> Transparency ( ) - theValue ) > Precision :: Confusion ( ) || Abs ( myBoxEdgeAspect -> Transparency ( ) - theValue ) > Precision :: Confusion ( ) || Abs ( myBoxCornerAspect -> Transparency ( ) - theValue ) > Precision :: Confusion ( ) ) { myDrawer -> ShadingAspect ( ) -> SetTransparency ( theValue ) ; myBoxEdgeAspect -> SetTransparency ( theValue ) ; myBoxCornerAspect -> SetTransparency ( theValue ) ; SynchronizeAspects ( ) ; } } ! Return color of sides back material. const Quantity_Color & InnerColor ( ) const { return myDrawer -> ShadingAspect ( ) -> Color ( Aspect_TOFM_BACK_SIDE ) ; } ! Set color of sides back material. Alias for:
## ! @code Attributes()->ShadingAspect()->Aspect()->ChangeBackMaterial().SetColor() @endcode void SetInnerColor ( const Quantity_Color & theColor ) { myDrawer -> ShadingAspect ( ) -> SetColor ( theColor , Aspect_TOFM_BACK_SIDE ) ; SynchronizeAspects ( ) ; } ! Return box side label or empty string if undefined.
## ! Default labels: FRONT, BACK, LEFT, RIGHT, TOP, BOTTOM. TCollection_AsciiString BoxSideLabel ( V3d_TypeOfOrientation theSide ) const { const TCollection_AsciiString * aLabel = myBoxSideLabels . Seek ( theSide ) ; return aLabel != NULL ? * aLabel : TCollection_AsciiString ( ) ; } ! Set box side label. void SetBoxSideLabel ( const V3d_TypeOfOrientation theSide , const TCollection_AsciiString & theLabel ) { if ( ! IsBoxSide ( theSide ) ) { throw Standard_ProgramError ( AIS_ViewCube::SetBoxSideLabel(), invalid enumeration value ) ; } myBoxSideLabels . Bind ( theSide , theLabel ) ; SetToUpdate ( ) ; } ! Return text color of labels of box sides; BLACK by default. const Quantity_Color & TextColor ( ) const { return myDrawer -> TextAspect ( ) -> Aspect ( ) -> Color ( ) ; } ! Set color of text labels on box sides. Alias for:
## ! @code Attributes()->TextAspect()->SetColor() @endcode void SetTextColor ( const Quantity_Color & theColor ) { myDrawer -> TextAspect ( ) -> SetColor ( theColor ) ; SynchronizeAspects ( ) ; } ! Return font name that is used for displaying of sides and axes text. Alias for:
## ! @code Attributes()->TextAspect()->Aspect()->SetFont() @endcode const TCollection_AsciiString & Font ( ) const { return myDrawer -> TextAspect ( ) -> Aspect ( ) -> Font ( ) ; } ! Set font name that is used for displaying of sides and axes text. Alias for:
## ! @code Attributes()->TextAspect()->SetFont() @endcode void SetFont ( const TCollection_AsciiString & theFont ) { myDrawer -> TextAspect ( ) -> Aspect ( ) -> SetFont ( theFont ) ; SynchronizeAspects ( ) ; } ! Return height of font Standard_Real FontHeight ( ) const { return myDrawer -> TextAspect ( ) -> Height ( ) ; } ! Change font height. Alias for:
## ! @code Attributes()->TextAspect()->SetHeight() @endcode void SetFontHeight ( Standard_Real theValue ) { if ( Abs ( myDrawer -> TextAspect ( ) -> Height ( ) - theValue ) > Precision :: Confusion ( ) ) { myDrawer -> TextAspect ( ) -> SetHeight ( theValue ) ; SetToUpdate ( ) ; } } ! Return axes labels or empty string if undefined.
## ! Default labels: X, Y, Z. TCollection_AsciiString AxisLabel ( Prs3d_DatumParts theAxis ) const { const TCollection_AsciiString * aLabel = myAxesLabels . Seek ( theAxis ) ; return aLabel != NULL ? * aLabel : TCollection_AsciiString ( ) ; } ! Set axes labels. void SetAxesLabels ( const TCollection_AsciiString & theX , const TCollection_AsciiString & theY , const TCollection_AsciiString & theZ ) { myAxesLabels . Bind ( Prs3d_DP_XAxis , theX ) ; myAxesLabels . Bind ( Prs3d_DP_YAxis , theY ) ; myAxesLabels . Bind ( Prs3d_DP_ZAxis , theZ ) ; SetToUpdate ( ) ; } public : ! Set new value of color for the whole object.
## ! @param theColor [in] input color value. virtual void SetColor ( const Quantity_Color & theColor ) { SetBoxColor ( theColor ) ; } ! Reset color for the whole object. virtual void UnsetColor ( ) { myDrawer -> ShadingAspect ( ) -> SetColor ( Quantity_NOC_WHITE ) ; myBoxEdgeAspect -> SetColor ( Quantity_NOC_GRAY30 ) ; myBoxCornerAspect -> SetColor ( Quantity_NOC_GRAY30 ) ; SynchronizeAspects ( ) ; } ! Set new value of transparency for the whole object.
## ! @param theValue [in] input transparency value. virtual void SetTransparency ( const Standard_Real theValue ) { SetBoxTransparency ( theValue ) ; } ! Reset transparency for the whole object. virtual void UnsetTransparency ( ) { SetBoxTransparency ( 0.0f ) ; } ! Sets the material for the interactive object. virtual void SetMaterial ( const Graphic3d_MaterialAspect & theMat ) { myDrawer -> ShadingAspect ( ) -> SetMaterial ( theMat ) ; myBoxEdgeAspect -> SetMaterial ( theMat ) ; myBoxCornerAspect -> SetMaterial ( theMat ) ; SynchronizeAspects ( ) ; } ! Sets the material for the interactive object. virtual void UnsetMaterial ( ) { Graphic3d_MaterialAspect aMat ( Graphic3d_NameOfMaterial_UserDefined ) ; aMat . SetColor ( Quantity_NOC_WHITE ) ; aMat . SetAmbientColor ( Quantity_NOC_GRAY60 ) ; myDrawer -> ShadingAspect ( ) -> SetMaterial ( aMat ) ; myBoxEdgeAspect -> SetMaterial ( aMat ) ; myBoxEdgeAspect -> SetColor ( Quantity_NOC_GRAY30 ) ; myBoxCornerAspect -> SetMaterial ( aMat ) ; myBoxCornerAspect -> SetColor ( Quantity_NOC_GRAY30 ) ; SynchronizeAspects ( ) ; } public : ! @name animation methods ! Return duration of animation in seconds; 0.5 sec by default Standard_Real Duration ( ) const ;
## Error: identifier expected, but got: &!!!

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
## !!!Ignored construct:  ! Start camera transformation corresponding to the input detected owner.
## ! @param theOwner [in] detected owner. virtual void StartAnimation ( const Handle ( AIS_ViewCubeOwner ) & theOwner ) ;
## Error: token expected: ) but got: &!!!

proc updateAnimation*(this: var AIS_ViewCube; theToUpdate: bool): bool {.
    importcpp: "UpdateAnimation", header: "AIS_ViewCube.hxx".}
## !!!Ignored construct:  ! Perform camera transformation corresponding to the input detected owner. virtual void HandleClick ( const Handle ( AIS_ViewCubeOwner ) & theOwner ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Fit selected/all into view.
## ! @param theView [in] view definition to retrieve scene bounding box
## ! @param theCamera [in,out] camera definition virtual void viewFitAll ( const Handle ( V3d_View ) & theView , const Handle ( Graphic3d_Camera ) & theCamera ) ;
## Error: token expected: ) but got: &!!!

proc acceptDisplayMode*(this: AIS_ViewCube; theMode: int): bool {.noSideEffect,
    importcpp: "AcceptDisplayMode", header: "AIS_ViewCube.hxx".}
## !!!Ignored construct:  GlobalSelOwner ( ) const { return Handle ( SelectMgr_EntityOwner ) ( ) ; } ! Compute 3D part of View Cube.
## ! @param thePrsMgr [in] presentation manager.
## ! @param thePrs [in] input presentation that is to be filled with flat presentation primitives.
## ! @param theMode [in] display mode.
## ! @warning this object accept only 0 display mode. virtual void Compute ( const Handle ( PrsMgr_PresentationManager3d ) & thePrsMgr , const Handle ( Prs3d_Presentation ) & thePrs , const Standard_Integer theMode = 0 ) ;
## Error: identifier expected, but got: )!!!

## !!!Ignored construct:  ! Redefine computing of sensitive entities for View Cube.
## ! @param theSelection [in] input selection object that is to be filled with sensitive entities.
## ! @param theMode [in] selection mode.
## ! @warning object accepts only 0 selection mode. virtual void ComputeSelection ( const Handle ( SelectMgr_Selection ) & theSelection , const Standard_Integer theMode ) ;
## Error: token expected: ) but got: &!!!

proc isAutoHilight*(this: AIS_ViewCube): bool {.noSideEffect,
    importcpp: "IsAutoHilight", header: "AIS_ViewCube.hxx".}
proc clearSelected*(this: var AIS_ViewCube) {.importcpp: "ClearSelected",
    header: "AIS_ViewCube.hxx".}
## !!!Ignored construct:  ! Method which highlights input owner belonging to this selectable object.
## ! @param thePM [in] presentation manager
## ! @param theStyle [in] style for dynamic highlighting.
## ! @param theOwner [in] input entity owner. virtual void HilightOwnerWithColor ( const Handle ( PrsMgr_PresentationManager3d ) & thePM , const Handle ( Prs3d_Drawer ) & theStyle , const Handle ( SelectMgr_EntityOwner ) & theOwner ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Method which draws selected owners. virtual void HilightSelected ( const Handle ( PrsMgr_PresentationManager3d ) & thePM , const SelectMgr_SequenceOfOwner & theSeq ) ;
## Error: token expected: ) but got: &!!!

proc unsetAttributes*(this: var AIS_ViewCube) {.importcpp: "UnsetAttributes",
    header: "AIS_ViewCube.hxx".}
proc unsetHilightAttributes*(this: var AIS_ViewCube) {.
    importcpp: "UnsetHilightAttributes", header: "AIS_ViewCube.hxx".}
## !!!Ignored construct:  protected : ! @name Auxiliary classes to fill presentation with proper primitives ! Create triangulation for a box part - for presentation and selection purposes.
## ! @param theTris    [in,out] triangulation to fill, or NULL to return size
## ! @param theNbNodes [in,out] should be incremented by a number of nodes defining this triangulation
## ! @param theNbTris  [in,out] should be incremented by a number of triangles defining this triangulation
## ! @param theDir     [in] part to define virtual void createBoxPartTriangles ( const Handle ( Graphic3d_ArrayOfTriangles ) & theTris , Standard_Integer & theNbNodes , Standard_Integer & theNbTris , V3d_TypeOfOrientation theDir ) const ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Create triangulation for a box side.
## ! @param theTris    [in,out] triangulation to fill, or NULL to return size
## ! @param theNbNodes [in,out] should be incremented by a number of nodes defining this triangulation
## ! @param theNbTris  [in,out] should be incremented by a number of triangles defining this triangulation
## ! @param theDir     [in] part to define virtual void createBoxSideTriangles ( const Handle ( Graphic3d_ArrayOfTriangles ) & theTris , Standard_Integer & theNbNodes , Standard_Integer & theNbTris , V3d_TypeOfOrientation theDir ) const ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Create triangulation for a box edge.
## ! @param theTris    [in,out] triangulation to fill, or NULL to return size
## ! @param theNbNodes [in,out] should be incremented by a number of nodes defining this triangulation
## ! @param theNbTris  [in,out] should be incremented by a number of triangles defining this triangulation
## ! @param theDir     [in] part to define virtual void createBoxEdgeTriangles ( const Handle ( Graphic3d_ArrayOfTriangles ) & theTris , Standard_Integer & theNbNodes , Standard_Integer & theNbTris , V3d_TypeOfOrientation theDir ) const ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Create triangulation for a box corner (vertex).
## ! @param theTris    [in,out] triangulation to fill, or NULL to return size
## ! @param theNbNodes [in,out] should be incremented by a number of nodes defining this triangulation
## ! @param theNbTris  [in,out] should be incremented by a number of triangles defining this triangulation
## ! @param theDir     [in] part to define virtual void createBoxCornerTriangles ( const Handle ( Graphic3d_ArrayOfTriangles ) & theTris , Standard_Integer & theNbNodes , Standard_Integer & theNbTris , V3d_TypeOfOrientation theDir ) const ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  protected : ! Create triangulation for a rectangle with round corners.
## ! @param theTris    [in,out] triangulation to fill, or NULL to return size
## ! @param theNbNodes [in,out] should be incremented by a number of nodes defining this triangulation
## ! @param theNbTris  [in,out] should be incremented by a number of triangles defining this triangulation
## ! @param theSize    [in] rectangle dimensions
## ! @param theRadius  [in] radius at corners
## ! @param theTrsf    [in] transformation static void createRoundRectangleTriangles ( const Handle ( Graphic3d_ArrayOfTriangles ) & theTris , Standard_Integer & theNbNodes , Standard_Integer & theNbTris , const gp_XY & theSize , Standard_Real theRadius , const gp_Trsf & theTrsf ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  myBoxEdgeAspect ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  myBoxCornerAspect ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  myViewAnimation ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  myStartState ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  myEndState ;
## Error: identifier expected, but got: ;!!!

## ! Redefined entity owner that is highlighted when owner is detected,
## ! even if Interactive Context highlighted on last detection procedure.

type
  AIS_ViewCubeOwner* {.importcpp: "AIS_ViewCubeOwner", header: "AIS_ViewCube.hxx",
                      bycopy.} = object of SelectMgrEntityOwner ## ! Main constructor.
    standardType* {.importc: "Standard_Type".}: Handle

  AIS_ViewCubeOwnerbaseType* = SelectMgrEntityOwner

proc getTypeName*(): cstring {.importcpp: "AIS_ViewCubeOwner::get_type_name(@)",
                            header: "AIS_ViewCube.hxx".}
## !!!Ignored construct:  & get_type_descriptor ( ) ;
## Error: identifier expected, but got: &!!!

## !!!Ignored construct:  & DynamicType ( ) const ;
## Error: identifier expected, but got: &!!!

## !!!Ignored construct:  public : ! Main constructor. AIS_ViewCubeOwner ( const Handle ( AIS_ViewCube ) & theObject , V3d_TypeOfOrientation theOrient , Standard_Integer thePriority = 5 ) : SelectMgr_EntityOwner ( ( const Handle ( SelectMgr_SelectableObject ) & ) theObject , thePriority ) , myMainOrient ( theOrient ) { myFromDecomposition = true ; } ! @return TRUE. This owner will always call method
## ! Hilight for its Selectable Object when the owner is detected. virtual Standard_Boolean IsForcedHilight ( ) const { return Standard_True ; } ! Return new orientation to set. V3d_TypeOfOrientation MainOrientation ( ) const { return myMainOrient ; } ! Handle mouse button click event. virtual Standard_Boolean HandleMouseClick ( const Graphic3d_Vec2i & thePoint , Aspect_VKeyMouse theButton , Aspect_VKeyFlags theModifiers , bool theIsDoubleClick ) { ( void ) thePoint ; ( void ) theButton ; ( void ) theModifiers ; ( void ) theIsDoubleClick ; AIS_ViewCube * aCubePrs = dynamic_cast < AIS_ViewCube * > ( mySelectable ) ; aCubePrs -> HandleClick ( this ) ; return Standard_True ; } protected : V3d_TypeOfOrientation myMainOrient ;
## Error: token expected: ) but got: &!!!














































