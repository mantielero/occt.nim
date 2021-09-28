##  Created on: 1995-01-25
##  Created by: Jean-Louis Frenkel
##  Copyright (c) 1995-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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

## !!!Ignored construct:  # _PrsMgr_PresentableObject_HeaderFile [NewLine] # _PrsMgr_PresentableObject_HeaderFile [NewLine] # < Aspect_TypeOfFacingModel . hxx > [NewLine] # < gp_GTrsf . hxx > [NewLine] # < Graphic3d_ClipPlane . hxx > [NewLine] # < Graphic3d_SequenceOfHClipPlane . hxx > [NewLine] # < Graphic3d_TransformPers . hxx > [NewLine] # < Graphic3d_TransModeFlags . hxx > [NewLine] # < Graphic3d_ZLayerId . hxx > [NewLine] # < Prs3d_Drawer . hxx > [NewLine] # < PrsMgr_ListOfPresentableObjects . hxx > [NewLine] # < PrsMgr_Presentation . hxx > [NewLine] # < PrsMgr_Presentations . hxx > [NewLine] # < PrsMgr_TypeOfPresentation3d . hxx > [NewLine] # < TColStd_ListOfInteger . hxx > [NewLine] class PrsMgr_PresentationManager ;
## Error: expected ';'!!!

type
  PrsMgrPresentationManager3d* = PrsMgrPresentationManager

## ! A framework to supply the Graphic3d structure of the object to be presented.
## ! On the first display request, this structure is created by calling the appropriate algorithm and retaining this framework for further display.
## ! This abstract framework is inherited in Application Interactive Services (AIS), notably by AIS_InteractiveObject.
## ! Consequently, 3D presentation should be handled by the relevant daughter classes and their member functions in AIS.
## ! This is particularly true in the creation of new interactive objects.
## !
## ! Key interface methods to be implemented by every Selectable Object:
## ! - AcceptDisplayMode() accepting display modes implemented by this object;
## ! - Compute() computing presentation for the given display mode index.
## !
## ! Warning! Methods managing standard attributes (SetColor(), SetWidth(), SetMaterial()) have different meaning for objects of different type (or no meaning at all).
## ! Sub-classes might override these methods to modify Prs3d_Drawer or class properties providing a convenient short-cut depending on application needs.
## ! For more sophisticated configuring, Prs3d_Drawer should be modified directly, while short-cuts might be left unimplemented.

type
  PrsMgrPresentableObject* {.importcpp: "PrsMgr_PresentableObject",
                            header: "PrsMgr_PresentableObject.hxx", bycopy.} = object of StandardTransient ##
                                                                                                    ## !
                                                                                                    ## Return
                                                                                                    ## presentations.
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## @name
                                                                                                    ## presentation
                                                                                                    ## attributes
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## Returns
                                                                                                    ## the
                                                                                                    ## attributes
                                                                                                    ## settings.
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## @name
                                                                                                    ## object
                                                                                                    ## transformation
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## Returns
                                                                                                    ## Transformation
                                                                                                    ## Persistence
                                                                                                    ## defining
                                                                                                    ## a
                                                                                                    ## special
                                                                                                    ## Local
                                                                                                    ## Coordinate
                                                                                                    ## system
                                                                                                    ## where
                                                                                                    ## this
                                                                                                    ## presentable
                                                                                                    ## object
                                                                                                    ## is
                                                                                                    ## located
                                                                                                    ## or
                                                                                                    ## NULL
                                                                                                    ## handle
                                                                                                    ## if
                                                                                                    ## not
                                                                                                    ## defined.
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## Position
                                                                                                    ## of
                                                                                                    ## the
                                                                                                    ## object
                                                                                                    ## having
                                                                                                    ## Transformation
                                                                                                    ## Persistence
                                                                                                    ## is
                                                                                                    ## mutable
                                                                                                    ## and
                                                                                                    ## depends
                                                                                                    ## on
                                                                                                    ## camera
                                                                                                    ## position.
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## The
                                                                                                    ## same
                                                                                                    ## applies
                                                                                                    ## to
                                                                                                    ## a
                                                                                                    ## bounding
                                                                                                    ## box
                                                                                                    ## of
                                                                                                    ## the
                                                                                                    ## object.
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## @sa
                                                                                                    ## Graphic3d_TransformPers
                                                                                                    ## class
                                                                                                    ## description
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## @name
                                                                                                    ## clipping
                                                                                                    ## planes
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## Get
                                                                                                    ## clip
                                                                                                    ## planes.
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## @return
                                                                                                    ## set
                                                                                                    ## of
                                                                                                    ## previously
                                                                                                    ## added
                                                                                                    ## clip
                                                                                                    ## planes
                                                                                                    ## for
                                                                                                    ## all
                                                                                                    ## display
                                                                                                    ## mode
                                                                                                    ## presentations.
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## @name
                                                                                                    ## parent/children
                                                                                                    ## properties
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## Returns
                                                                                                    ## parent
                                                                                                    ## of
                                                                                                    ## current
                                                                                                    ## object
                                                                                                    ## in
                                                                                                    ## scene
                                                                                                    ## hierarchy.
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## @name
                                                                                                    ## interface
                                                                                                    ## methods
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## Protected
                                                                                                    ## empty
                                                                                                    ## constructor.
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## @name
                                                                                                    ## simplified
                                                                                                    ## presentation
                                                                                                    ## properties
                                                                                                    ## API
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## Enables
                                                                                                    ## or
                                                                                                    ## disables
                                                                                                    ## on-triangulation
                                                                                                    ## build
                                                                                                    ## of
                                                                                                    ## isolines
                                                                                                    ## according
                                                                                                    ## to
                                                                                                    ## the
                                                                                                    ## flag
                                                                                                    ## given.
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## @name
                                                                                                    ## deprecated
                                                                                                    ## methods
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## gives
                                                                                                    ## the
                                                                                                    ## list
                                                                                                    ## of
                                                                                                    ## modes
                                                                                                    ## which
                                                                                                    ## are
                                                                                                    ## flagged
                                                                                                    ## "to
                                                                                                    ## be
                                                                                                    ## updated".
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## Recomputes
                                                                                                    ## all
                                                                                                    ## presentations
                                                                                                    ## of
                                                                                                    ## the
                                                                                                    ## object.
    standardType* {.importc: "Standard_Type".}: Handle
    prs3dDrawer* {.importc: "Prs3d_Drawer".}: Handle
    graphic3dTransformPers* {.importc: "Graphic3d_TransformPers".}: Handle
    topLocDatum3D* {.importc: "TopLoc_Datum3D".}: Handle
    graphic3dSequenceOfHClipPlane* {.importc: "Graphic3d_SequenceOfHClipPlane".}: Handle
    ## !< pointer to the parent object
    ## !< list of presentations
    ## !< list of children
    ## !< inversion of absolute transformation (combined parents + local transformations)
    ## !< presentation type
    ## !< current facing model
    ## !< custom width value
    ## !< own color flag
    ## !< own material flag
    ## !< infinite flag
    ## !< mutable flag
    ## !< flag indicating if object should have own presentations
    ## !< flag indicating if visual state (display/erase/color) should be propagated to all children

  PrsMgrPresentableObjectbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "PrsMgr_PresentableObject::get_type_name(@)",
                            header: "PrsMgr_PresentableObject.hxx".}
## !!!Ignored construct:  & get_type_descriptor ( ) ;
## Error: identifier expected, but got: &!!!

## !!!Ignored construct:  & DynamicType ( ) const ;
## Error: identifier expected, but got: &!!!

proc presentations*(this: var PrsMgrPresentableObject): var PrsMgrPresentations {.
    importcpp: "Presentations", header: "PrsMgr_PresentableObject.hxx".}
proc zLayer*(this: PrsMgrPresentableObject): Graphic3dZLayerId {.noSideEffect,
    importcpp: "ZLayer", header: "PrsMgr_PresentableObject.hxx".}
proc setZLayer*(this: var PrsMgrPresentableObject; theLayerId: Graphic3dZLayerId) {.
    importcpp: "SetZLayer", header: "PrsMgr_PresentableObject.hxx".}
proc isMutable*(this: PrsMgrPresentableObject): bool {.noSideEffect,
    importcpp: "IsMutable", header: "PrsMgr_PresentableObject.hxx".}
proc setMutable*(this: var PrsMgrPresentableObject; theIsMutable: bool) {.
    importcpp: "SetMutable", header: "PrsMgr_PresentableObject.hxx".}
proc hasDisplayMode*(this: PrsMgrPresentableObject): bool {.noSideEffect,
    importcpp: "HasDisplayMode", header: "PrsMgr_PresentableObject.hxx".}
proc displayMode*(this: PrsMgrPresentableObject): int {.noSideEffect,
    importcpp: "DisplayMode", header: "PrsMgr_PresentableObject.hxx".}
proc setDisplayMode*(this: var PrsMgrPresentableObject; theMode: int) {.
    importcpp: "SetDisplayMode", header: "PrsMgr_PresentableObject.hxx".}
proc unsetDisplayMode*(this: var PrsMgrPresentableObject) {.
    importcpp: "UnsetDisplayMode", header: "PrsMgr_PresentableObject.hxx".}
proc hasHilightMode*(this: PrsMgrPresentableObject): bool {.noSideEffect,
    importcpp: "HasHilightMode", header: "PrsMgr_PresentableObject.hxx".}
proc hilightMode*(this: PrsMgrPresentableObject): int {.noSideEffect,
    importcpp: "HilightMode", header: "PrsMgr_PresentableObject.hxx".}
proc setHilightMode*(this: var PrsMgrPresentableObject; theMode: int) {.
    importcpp: "SetHilightMode", header: "PrsMgr_PresentableObject.hxx".}
proc unsetHilightMode*(this: var PrsMgrPresentableObject) {.
    importcpp: "UnsetHilightMode", header: "PrsMgr_PresentableObject.hxx".}
proc acceptDisplayMode*(this: PrsMgrPresentableObject; theMode: int): bool {.
    noSideEffect, importcpp: "AcceptDisplayMode",
    header: "PrsMgr_PresentableObject.hxx".}
proc defaultDisplayMode*(this: PrsMgrPresentableObject): int {.noSideEffect,
    importcpp: "DefaultDisplayMode", header: "PrsMgr_PresentableObject.hxx".}
proc toBeUpdated*(this: PrsMgrPresentableObject; theToIncludeHidden: bool = false): bool {.
    noSideEffect, importcpp: "ToBeUpdated", header: "PrsMgr_PresentableObject.hxx".}
proc setToUpdate*(this: var PrsMgrPresentableObject; theMode: int) {.
    importcpp: "SetToUpdate", header: "PrsMgr_PresentableObject.hxx".}
proc setToUpdate*(this: var PrsMgrPresentableObject) {.importcpp: "SetToUpdate",
    header: "PrsMgr_PresentableObject.hxx".}
proc isInfinite*(this: PrsMgrPresentableObject): bool {.noSideEffect,
    importcpp: "IsInfinite", header: "PrsMgr_PresentableObject.hxx".}
proc setInfiniteState*(this: var PrsMgrPresentableObject; theFlag: bool = true) {.
    importcpp: "SetInfiniteState", header: "PrsMgr_PresentableObject.hxx".}
proc typeOfPresentation3d*(this: PrsMgrPresentableObject): PrsMgrTypeOfPresentation3d {.
    noSideEffect, importcpp: "TypeOfPresentation3d",
    header: "PrsMgr_PresentableObject.hxx".}
proc setTypeOfPresentation*(this: var PrsMgrPresentableObject;
                           theType: PrsMgrTypeOfPresentation3d) {.
    importcpp: "SetTypeOfPresentation", header: "PrsMgr_PresentableObject.hxx".}
## !!!Ignored construct:  & Attributes ( ) const { return myDrawer ; } ! Initializes the drawing tool theDrawer. virtual void SetAttributes ( const Handle ( Prs3d_Drawer ) & theDrawer ) { myDrawer = theDrawer ; } ! Returns the hilight attributes settings.
## ! When not NULL, overrides both Prs3d_TypeOfHighlight_LocalSelected and Prs3d_TypeOfHighlight_Selected defined within AIS_InteractiveContext. const Handle ( Prs3d_Drawer ) & HilightAttributes ( ) const { return myHilightDrawer ; } ! Initializes the hilight drawing tool theDrawer. virtual void SetHilightAttributes ( const Handle ( Prs3d_Drawer ) & theDrawer ) { myHilightDrawer = theDrawer ; } ! Returns the hilight attributes settings.
## ! When not NULL, overrides both Prs3d_TypeOfHighlight_LocalDynamic and Prs3d_TypeOfHighlight_Dynamic defined within AIS_InteractiveContext. const Handle ( Prs3d_Drawer ) & DynamicHilightAttributes ( ) const { return myDynHilightDrawer ; } ! Initializes the dynamic hilight drawing tool. virtual void SetDynamicHilightAttributes ( const Handle ( Prs3d_Drawer ) & theDrawer ) { myDynHilightDrawer = theDrawer ; } ! Clears settings provided by the hilight drawing tool theDrawer. virtual void UnsetHilightAttributes ( ) { myHilightDrawer . Nullify ( ) ; } ! Synchronize presentation aspects after their modification.
## !
## ! This method should be called after modifying primitive aspect properties (material, texture, shader)
## ! so that modifications will take effect on already computed presentation groups (thus avoiding re-displaying the object). void SynchronizeAspects ( ) ;
## Error: identifier expected, but got: &!!!

## !!!Ignored construct:  & TransformPersistence ( ) const { return myTransformPersistence ; } ! Sets up Transform Persistence defining a special Local Coordinate system where this object should be located.
## ! Note that management of Transform Persistence object is more expensive than of the normal one,
## ! because it requires its position being recomputed basing on camera position within each draw call / traverse.
## ! @sa Graphic3d_TransformPers class description virtual void SetTransformPersistence ( const Handle ( Graphic3d_TransformPers ) & theTrsfPers ) ;
## Error: identifier expected, but got: &!!!

## !!!Ignored construct:  & LocalTransformationGeom ( ) const { return myLocalTransformation ; } ! Sets local transformation to theTransformation.
## ! Note that the local transformation of the object having Transformation Persistence
## ! is applied within Local Coordinate system defined by this Persistence. void SetLocalTransformation ( const gp_Trsf & theTrsf ) { setLocalTransformation ( new TopLoc_Datum3D ( theTrsf ) ) ; } ! Sets local transformation to theTransformation.
## ! Note that the local transformation of the object having Transformation Persistence
## ! is applied within Local Coordinate system defined by this Persistence. void SetLocalTransformation ( const Handle ( TopLoc_Datum3D ) & theTrsf ) { setLocalTransformation ( theTrsf ) ; } ! Returns true if object has a transformation that is different from the identity. Standard_Boolean HasTransformation ( ) const { return ! myTransformation . IsNull ( ) && myTransformation -> Form ( ) != gp_Identity ; } ! Return the transformation taking into account transformation of parent object(s).
## ! Note that the local transformation of the object having Transformation Persistence
## ! is applied within Local Coordinate system defined by this Persistence. const Handle ( TopLoc_Datum3D ) & TransformationGeom ( ) const { return myTransformation ; } ! Return the local transformation.
## ! Note that the local transformation of the object having Transformation Persistence
## ! is applied within Local Coordinate system defined by this Persistence. const gp_Trsf & LocalTransformation ( ) const { return ! myLocalTransformation . IsNull ( ) ? myLocalTransformation -> Trsf ( ) : getIdentityTrsf ( ) ; } ! Return the transformation taking into account transformation of parent object(s).
## ! Note that the local transformation of the object having Transformation Persistence
## ! is applied within Local Coordinate system defined by this Persistence. const gp_Trsf & Transformation ( ) const { return ! myTransformation . IsNull ( ) ? myTransformation -> Trsf ( ) : getIdentityTrsf ( ) ; } ! Return inversed transformation. const gp_GTrsf & InversedTransformation ( ) const { return myInvTransformation ; } ! Return combined parent transformation. const Handle ( TopLoc_Datum3D ) & CombinedParentTransformation ( ) const { return myCombinedParentTransform ; } ! resets local transformation to identity. virtual void ResetTransformation ( ) ;
## Error: identifier expected, but got: &!!!

proc updateTransformation*(this: var PrsMgrPresentableObject) {.
    importcpp: "UpdateTransformation", header: "PrsMgr_PresentableObject.hxx".}
## !!!Ignored construct:  & ClipPlanes ( ) const { return myClipPlanes ; } ! Set clip planes for graphical clipping for all display mode presentations.
## ! The composition of clip planes truncates the rendering space to convex volume.
## ! Please be aware that number of supported clip plane is limited.
## ! The planes which exceed the limit are ignored.
## ! Besides of this, some planes can be already set in view where the object is shown:
## ! the number of these planes should be subtracted from limit to predict the maximum
## ! possible number of object clipping planes. virtual void SetClipPlanes ( const Handle ( Graphic3d_SequenceOfHClipPlane ) & thePlanes ) ;
## Error: identifier expected, but got: &!!!

## !!!Ignored construct:  ! Adds clip plane for graphical clipping for all display mode
## ! presentations. The composition of clip planes truncates the rendering
## ! space to convex volume. Please be aware that number of supported
## ! clip plane is limited. The planes which exceed the limit are ignored.
## ! Besides of this, some planes can be already set in view where the object
## ! is shown: the number of these planes should be subtracted from limit
## ! to predict the maximum possible number of object clipping planes.
## ! @param thePlane [in] the clip plane to be appended to map of clip planes. virtual void AddClipPlane ( const Handle ( Graphic3d_ClipPlane ) & thePlane ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Removes previously added clip plane.
## ! @param thePlane [in] the clip plane to be removed from map of clip planes. virtual void RemoveClipPlane ( const Handle ( Graphic3d_ClipPlane ) & thePlane ) ;
## Error: token expected: ) but got: &!!!

proc parent*(this: PrsMgrPresentableObject): ptr PrsMgrPresentableObject {.
    noSideEffect, importcpp: "Parent", header: "PrsMgr_PresentableObject.hxx".}
proc children*(this: PrsMgrPresentableObject): PrsMgrListOfPresentableObjects {.
    noSideEffect, importcpp: "Children", header: "PrsMgr_PresentableObject.hxx".}
## !!!Ignored construct:  ! Makes theObject child of current object in scene hierarchy. virtual void AddChild ( const Handle ( PrsMgr_PresentableObject ) & theObject ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Makes theObject child of current object in scene hierarchy with keeping the current global transformation
## ! So the object keeps the same position/orientation in the global CS. void AddChildWithCurrentTransformation ( const Handle ( PrsMgr_PresentableObject ) & theObject ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Removes theObject from children of current object in scene hierarchy. virtual void RemoveChild ( const Handle ( PrsMgr_PresentableObject ) & theObject ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Removes theObject from children of current object in scene hierarchy with keeping the current global transformation.
## ! So the object keeps the same position/orientation in the global CS. void RemoveChildWithRestoreTransformation ( const Handle ( PrsMgr_PresentableObject ) & theObject ) ;
## Error: token expected: ) but got: &!!!

proc hasOwnPresentations*(this: PrsMgrPresentableObject): bool {.noSideEffect,
    importcpp: "HasOwnPresentations", header: "PrsMgr_PresentableObject.hxx".}
proc boundingBox*(this: var PrsMgrPresentableObject; theBndBox: var BndBox) {.
    importcpp: "BoundingBox", header: "PrsMgr_PresentableObject.hxx".}
## !!!Ignored construct:  ! Fills the given 3D view presentation for specified display mode using Compute() method.
## ! In addition, configures other properties of presentation (transformation, clipping planes).
## ! @param thePrsMgr presentation manager where presentation has been created
## ! @param thePrs    presentation to fill
## ! @param theMode   display mode to compute; can be any number accepted by AcceptDisplayMode() method virtual void Fill ( const Handle ( PrsMgr_PresentationManager ) & thePrsMgr , const Handle ( PrsMgr_Presentation ) & thePrs , const Standard_Integer theMode ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Calculates the 3D view presentation for specified display mode.
## ! This is a key interface for implementing Presentable Object interface.
## ! @param thePrsMgr presentation manager where presentation has been created
## ! @param thePrs    presentation to fill
## ! @param theMode   display mode to compute; can be any number accepted by AcceptDisplayMode() method
## ! @sa AcceptDisplayMode() virtual void Compute ( const Handle ( PrsMgr_PresentationManager ) & thePrsMgr , const Handle ( Prs3d_Presentation ) & thePrs , const Standard_Integer theMode ) = 0 ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Calculates hidden line removal presentation for specific camera position.
## ! Each of the views in the viewer and every modification such as rotation, for example, entails recalculation.
## ! Default implementation throws Standard_NotImplemented exception
## ! Warning! The transformation must be applied to the object before computation.
## ! @param theProjector [in] view orientation
## ! @param theTrsf [in] additional transformation, or NULL if undefined
## ! @param thePrs  [in] presentation to fill virtual void computeHLR ( const Handle ( Graphic3d_Camera ) & theProjector , const Handle ( TopLoc_Datum3D ) & theTrsf , const Handle ( Prs3d_Presentation ) & thePrs ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Sets myCombinedParentTransform to theTransformation. Thus object receives transformation
## ! from parent node and able to derive its own. virtual void SetCombinedParentTransform ( const Handle ( TopLoc_Datum3D ) & theTrsf ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Sets local transformation to theTransformation. virtual void setLocalTransformation ( const Handle ( TopLoc_Datum3D ) & theTransformation ) ;
## Error: token expected: ) but got: &!!!

proc setIsoOnTriangulation*(this: var PrsMgrPresentableObject; theIsEnabled: bool) {.
    importcpp: "SetIsoOnTriangulation", header: "PrsMgr_PresentableObject.hxx".}
proc currentFacingModel*(this: PrsMgrPresentableObject): AspectTypeOfFacingModel {.
    noSideEffect, importcpp: "CurrentFacingModel",
    header: "PrsMgr_PresentableObject.hxx".}
proc setCurrentFacingModel*(this: var PrsMgrPresentableObject; theModel: AspectTypeOfFacingModel = aspectTOFM_BOTH_SIDE) {.
    importcpp: "SetCurrentFacingModel", header: "PrsMgr_PresentableObject.hxx".}
proc hasColor*(this: PrsMgrPresentableObject): bool {.noSideEffect,
    importcpp: "HasColor", header: "PrsMgr_PresentableObject.hxx".}
proc color*(this: PrsMgrPresentableObject; theColor: var QuantityColor) {.
    noSideEffect, importcpp: "Color", header: "PrsMgr_PresentableObject.hxx".}
proc setColor*(this: var PrsMgrPresentableObject; theColor: QuantityColor) {.
    importcpp: "SetColor", header: "PrsMgr_PresentableObject.hxx".}
proc unsetColor*(this: var PrsMgrPresentableObject) {.importcpp: "UnsetColor",
    header: "PrsMgr_PresentableObject.hxx".}
proc hasWidth*(this: PrsMgrPresentableObject): bool {.noSideEffect,
    importcpp: "HasWidth", header: "PrsMgr_PresentableObject.hxx".}
proc width*(this: PrsMgrPresentableObject): float {.noSideEffect, importcpp: "Width",
    header: "PrsMgr_PresentableObject.hxx".}
proc setWidth*(this: var PrsMgrPresentableObject; theWidth: float) {.
    importcpp: "SetWidth", header: "PrsMgr_PresentableObject.hxx".}
proc unsetWidth*(this: var PrsMgrPresentableObject) {.importcpp: "UnsetWidth",
    header: "PrsMgr_PresentableObject.hxx".}
proc hasMaterial*(this: PrsMgrPresentableObject): bool {.noSideEffect,
    importcpp: "HasMaterial", header: "PrsMgr_PresentableObject.hxx".}
proc material*(this: PrsMgrPresentableObject): Graphic3dNameOfMaterial {.
    noSideEffect, importcpp: "Material", header: "PrsMgr_PresentableObject.hxx".}
proc setMaterial*(this: var PrsMgrPresentableObject; aName: Graphic3dMaterialAspect) {.
    importcpp: "SetMaterial", header: "PrsMgr_PresentableObject.hxx".}
proc unsetMaterial*(this: var PrsMgrPresentableObject) {.importcpp: "UnsetMaterial",
    header: "PrsMgr_PresentableObject.hxx".}
proc isTransparent*(this: PrsMgrPresentableObject): bool {.noSideEffect,
    importcpp: "IsTransparent", header: "PrsMgr_PresentableObject.hxx".}
proc transparency*(this: PrsMgrPresentableObject): float {.noSideEffect,
    importcpp: "Transparency", header: "PrsMgr_PresentableObject.hxx".}
proc setTransparency*(this: var PrsMgrPresentableObject; aValue: float = 0.6) {.
    importcpp: "SetTransparency", header: "PrsMgr_PresentableObject.hxx".}
proc unsetTransparency*(this: var PrsMgrPresentableObject) {.
    importcpp: "UnsetTransparency", header: "PrsMgr_PresentableObject.hxx".}
proc hasPolygonOffsets*(this: PrsMgrPresentableObject): bool {.noSideEffect,
    importcpp: "HasPolygonOffsets", header: "PrsMgr_PresentableObject.hxx".}
proc polygonOffsets*(this: PrsMgrPresentableObject; aMode: var int;
                    aFactor: var StandardShortReal; aUnits: var StandardShortReal) {.
    noSideEffect, importcpp: "PolygonOffsets",
    header: "PrsMgr_PresentableObject.hxx".}
proc setPolygonOffsets*(this: var PrsMgrPresentableObject; aMode: int;
                       aFactor: StandardShortReal = 1.0;
                       aUnits: StandardShortReal = 0.0) {.
    importcpp: "SetPolygonOffsets", header: "PrsMgr_PresentableObject.hxx".}
proc unsetAttributes*(this: var PrsMgrPresentableObject) {.
    importcpp: "UnsetAttributes", header: "PrsMgr_PresentableObject.hxx".}
proc dumpJson*(this: PrsMgrPresentableObject; theOStream: var StandardOStream;
              theDepth: int = -1) {.noSideEffect, importcpp: "DumpJson",
                                header: "PrsMgr_PresentableObject.hxx".}
## !!!Ignored construct:  public : ! @name deprecated methods ! gives the list of modes which are flagged "to be updated". Standard_DEPRECATED ( This method is deprecated - UpdatePresentations() should be called instead ) void ToBeUpdated ( TColStd_ListOfInteger & ListOfMode ) const ;
## Error: identifier expected, but got: This method is deprecated - UpdatePresentations() should be called instead!!!

## !!!Ignored construct:  Standard_DEPRECATED ( This method is deprecated - overload taking Handle should be used instead ) void SetClipPlanes ( const Graphic3d_SequenceOfHClipPlane & thePlanes ) { Handle ( Graphic3d_SequenceOfHClipPlane ) aPlanes = new Graphic3d_SequenceOfHClipPlane ( thePlanes ) ; SetClipPlanes ( aPlanes ) ; } ! Sets up Transform Persistence Mode for this object.
## ! This function used to lock in object position, rotation and / or zooming relative to camera position.
## ! Object will be drawn in the origin setted by thePoint parameter (except Graphic3d_TMF_TriedronPers flag
## ! - see description later). theMode should be:
## ! -   Graphic3d_TMF_None - no persistence attributes (reset);
## ! -   Graphic3d_TMF_ZoomPers - object doesn't resize;
## ! -   Graphic3d_TMF_RotatePers - object doesn't rotate;
## ! -   Graphic3d_TMF_ZoomRotatePers - object doesn't resize and rotate;
## ! -   Graphic3d_TMF_RotatePers - object doesn't rotate;
## ! -   Graphic3d_TMF_TriedronPers - object behaves like trihedron.
## ! If Graphic3d_TMF_TriedronPers or Graphic3d_TMF_2d persistence mode selected thePoint coordinates X and Y means:
## ! -   X = 0.0, Y = 0.0 - center of view window;
## ! -   X > 0.0, Y > 0.0 - right upper corner of view window;
## ! -   X > 0.0, Y < 0.0 - right lower corner of view window;
## ! -   X < 0.0, Y > 0.0 - left  upper corner of view window;
## ! -   X < 0.0, Y < 0.0 - left  lower corner of view window.
## ! And Z coordinate defines the gap from border of view window (except center position). Standard_DEPRECATED ( This method is deprecated - SetTransformPersistence() taking Graphic3d_TransformPers should be called instead ) void SetTransformPersistence ( const Graphic3d_TransModeFlags theMode , const gp_Pnt & thePoint = gp_Pnt ( 0.0 , 0.0 , 0.0 ) ) { SetTransformPersistence ( Graphic3d_TransformPers :: FromDeprecatedParams ( theMode , thePoint ) ) ; } ! Gets  Transform  Persistence Mode  for  this  object Standard_DEPRECATED ( This method is deprecated - TransformPersistence() should be called instead ) Graphic3d_TransModeFlags GetTransformPersistenceMode ( ) const { return myTransformPersistence . IsNull ( ) ? Graphic3d_TMF_None : myTransformPersistence -> Mode ( ) ; } ! Gets  point  of  transform  persistence for  this  object Standard_DEPRECATED ( This method is deprecated - TransformPersistence() should be called instead ) gp_Pnt GetTransformPersistencePoint ( ) const ;
## Error: identifier expected, but got: This method is deprecated - overload taking Handle should be used instead!!!

proc toPropagateVisualState*(this: PrsMgrPresentableObject): bool {.noSideEffect,
    importcpp: "ToPropagateVisualState", header: "PrsMgr_PresentableObject.hxx".}
proc setPropagateVisualState*(this: var PrsMgrPresentableObject; theFlag: bool) {.
    importcpp: "SetPropagateVisualState", header: "PrsMgr_PresentableObject.hxx".}
## !!!Ignored construct:  protected : ! Recomputes all presentations of the object. Standard_DEPRECATED ( This method is deprecated - SetToUpdate() + UpdatePresentations() should be called instead ) void Update ( Standard_Boolean theToIncludeHidden = Standard_False ) { SetToUpdate ( ) ; UpdatePresentations ( theToIncludeHidden ) ; } ! Recomputes the presentation in the given mode.
## ! @param theMode presentation (display mode) to recompute
## ! @param theToClearOther when TRUE, other presentations (display modes) will be removed Standard_DEPRECATED ( This method is deprecated - SetToUpdate() + UpdatePresentations() should be called instead ) void Update ( Standard_Integer theMode , Standard_Boolean theToClearOther ) ;
## Error: identifier expected, but got: This method is deprecated - SetToUpdate() + UpdatePresentations() should be called instead!!!

## !!!Ignored construct:  myClipPlanes ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  myDrawer ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  myHilightDrawer ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  myDynHilightDrawer ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  myTransformPersistence ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  myLocalTransformation ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  myTransformation ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  myCombinedParentTransform ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  DEFINE_STANDARD_HANDLE ( PrsMgr_PresentableObject , Standard_Transient ) #  _PrsMgr_PresentableObject_HeaderFile
## Error: expected ';'!!!














































