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

discard "forward decl of PrsMgr_PresentationManager"
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
    ## !< pointer to the parent object
    ## !< list of presentations
    ## !< sequence of object-specific clipping planes
    ## !< main presentation attributes
    ## !< (optional) custom presentation attributes for highlighting selected object
    ## !< (optional) custom presentation attributes for highlighting detected object
    ## !< transformation persistence
    ## !< local transformation relative to parent object
    ## !< absolute transformation of this object (combined parents + local transformations)
    ## !< transformation of parent object (combined for all parents)
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
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "PrsMgr_PresentableObject::get_type_descriptor(@)",
    header: "PrsMgr_PresentableObject.hxx".}
proc dynamicType*(this: PrsMgrPresentableObject): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "PrsMgr_PresentableObject.hxx".}
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
proc attributes*(this: PrsMgrPresentableObject): Handle[Prs3dDrawer] {.noSideEffect,
    importcpp: "Attributes", header: "PrsMgr_PresentableObject.hxx".}
proc setAttributes*(this: var PrsMgrPresentableObject;
                   theDrawer: Handle[Prs3dDrawer]) {.importcpp: "SetAttributes",
    header: "PrsMgr_PresentableObject.hxx".}
proc hilightAttributes*(this: PrsMgrPresentableObject): Handle[Prs3dDrawer] {.
    noSideEffect, importcpp: "HilightAttributes",
    header: "PrsMgr_PresentableObject.hxx".}
proc setHilightAttributes*(this: var PrsMgrPresentableObject;
                          theDrawer: Handle[Prs3dDrawer]) {.
    importcpp: "SetHilightAttributes", header: "PrsMgr_PresentableObject.hxx".}
proc dynamicHilightAttributes*(this: PrsMgrPresentableObject): Handle[Prs3dDrawer] {.
    noSideEffect, importcpp: "DynamicHilightAttributes",
    header: "PrsMgr_PresentableObject.hxx".}
proc setDynamicHilightAttributes*(this: var PrsMgrPresentableObject;
                                 theDrawer: Handle[Prs3dDrawer]) {.
    importcpp: "SetDynamicHilightAttributes",
    header: "PrsMgr_PresentableObject.hxx".}
proc unsetHilightAttributes*(this: var PrsMgrPresentableObject) {.
    importcpp: "UnsetHilightAttributes", header: "PrsMgr_PresentableObject.hxx".}
proc synchronizeAspects*(this: var PrsMgrPresentableObject) {.
    importcpp: "SynchronizeAspects", header: "PrsMgr_PresentableObject.hxx".}
proc transformPersistence*(this: PrsMgrPresentableObject): Handle[
    Graphic3dTransformPers] {.noSideEffect, importcpp: "TransformPersistence",
                             header: "PrsMgr_PresentableObject.hxx".}
proc setTransformPersistence*(this: var PrsMgrPresentableObject;
                             theTrsfPers: Handle[Graphic3dTransformPers]) {.
    importcpp: "SetTransformPersistence", header: "PrsMgr_PresentableObject.hxx".}
proc localTransformationGeom*(this: PrsMgrPresentableObject): Handle[TopLocDatum3D] {.
    noSideEffect, importcpp: "LocalTransformationGeom",
    header: "PrsMgr_PresentableObject.hxx".}
proc setLocalTransformation*(this: var PrsMgrPresentableObject; theTrsf: Trsf) {.
    importcpp: "SetLocalTransformation", header: "PrsMgr_PresentableObject.hxx".}
proc setLocalTransformation*(this: var PrsMgrPresentableObject;
                            theTrsf: Handle[TopLocDatum3D]) {.
    importcpp: "SetLocalTransformation", header: "PrsMgr_PresentableObject.hxx".}
proc hasTransformation*(this: PrsMgrPresentableObject): bool {.noSideEffect,
    importcpp: "HasTransformation", header: "PrsMgr_PresentableObject.hxx".}
proc transformationGeom*(this: PrsMgrPresentableObject): Handle[TopLocDatum3D] {.
    noSideEffect, importcpp: "TransformationGeom",
    header: "PrsMgr_PresentableObject.hxx".}
proc localTransformation*(this: PrsMgrPresentableObject): Trsf {.noSideEffect,
    importcpp: "LocalTransformation", header: "PrsMgr_PresentableObject.hxx".}
proc transformation*(this: PrsMgrPresentableObject): Trsf {.noSideEffect,
    importcpp: "Transformation", header: "PrsMgr_PresentableObject.hxx".}
proc inversedTransformation*(this: PrsMgrPresentableObject): GTrsf {.noSideEffect,
    importcpp: "InversedTransformation", header: "PrsMgr_PresentableObject.hxx".}
proc combinedParentTransformation*(this: PrsMgrPresentableObject): Handle[
    TopLocDatum3D] {.noSideEffect, importcpp: "CombinedParentTransformation",
                    header: "PrsMgr_PresentableObject.hxx".}
proc resetTransformation*(this: var PrsMgrPresentableObject) {.
    importcpp: "ResetTransformation", header: "PrsMgr_PresentableObject.hxx".}
proc updateTransformation*(this: var PrsMgrPresentableObject) {.
    importcpp: "UpdateTransformation", header: "PrsMgr_PresentableObject.hxx".}
proc clipPlanes*(this: PrsMgrPresentableObject): Handle[
    Graphic3dSequenceOfHClipPlane] {.noSideEffect, importcpp: "ClipPlanes",
                                    header: "PrsMgr_PresentableObject.hxx".}
proc setClipPlanes*(this: var PrsMgrPresentableObject;
                   thePlanes: Handle[Graphic3dSequenceOfHClipPlane]) {.
    importcpp: "SetClipPlanes", header: "PrsMgr_PresentableObject.hxx".}
proc addClipPlane*(this: var PrsMgrPresentableObject;
                  thePlane: Handle[Graphic3dClipPlane]) {.
    importcpp: "AddClipPlane", header: "PrsMgr_PresentableObject.hxx".}
proc removeClipPlane*(this: var PrsMgrPresentableObject;
                     thePlane: Handle[Graphic3dClipPlane]) {.
    importcpp: "RemoveClipPlane", header: "PrsMgr_PresentableObject.hxx".}
proc parent*(this: PrsMgrPresentableObject): ptr PrsMgrPresentableObject {.
    noSideEffect, importcpp: "Parent", header: "PrsMgr_PresentableObject.hxx".}
proc children*(this: PrsMgrPresentableObject): PrsMgrListOfPresentableObjects {.
    noSideEffect, importcpp: "Children", header: "PrsMgr_PresentableObject.hxx".}
proc addChild*(this: var PrsMgrPresentableObject;
              theObject: Handle[PrsMgrPresentableObject]) {.importcpp: "AddChild",
    header: "PrsMgr_PresentableObject.hxx".}
proc addChildWithCurrentTransformation*(this: var PrsMgrPresentableObject; theObject: Handle[
    PrsMgrPresentableObject]) {.importcpp: "AddChildWithCurrentTransformation",
                               header: "PrsMgr_PresentableObject.hxx".}
proc removeChild*(this: var PrsMgrPresentableObject;
                 theObject: Handle[PrsMgrPresentableObject]) {.
    importcpp: "RemoveChild", header: "PrsMgr_PresentableObject.hxx".}
proc removeChildWithRestoreTransformation*(this: var PrsMgrPresentableObject;
    theObject: Handle[PrsMgrPresentableObject]) {.
    importcpp: "RemoveChildWithRestoreTransformation",
    header: "PrsMgr_PresentableObject.hxx".}
proc hasOwnPresentations*(this: PrsMgrPresentableObject): bool {.noSideEffect,
    importcpp: "HasOwnPresentations", header: "PrsMgr_PresentableObject.hxx".}
proc boundingBox*(this: var PrsMgrPresentableObject; theBndBox: var BndBox) {.
    importcpp: "BoundingBox", header: "PrsMgr_PresentableObject.hxx".}
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

## !!!Ignored construct:  Standard_DEPRECATED ( This method is deprecated - overload taking Handle should be used instead ) void SetClipPlanes ( const Graphic3d_SequenceOfHClipPlane & thePlanes ) { opencascade :: handle < Graphic3d_SequenceOfHClipPlane > [end of template] aPlanes = new Graphic3d_SequenceOfHClipPlane ( thePlanes ) ; SetClipPlanes ( aPlanes ) ; } ! Sets up Transform Persistence Mode for this object.
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

discard "forward decl of PrsMgr_PresentableObject"
type
  HandlePrsMgrPresentableObject* = Handle[PrsMgrPresentableObject]

