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

import
  ../Aspect/Aspect_TypeOfFacingModel, ../gp/gp_GTrsf,
  ../Graphic3d/Graphic3d_ClipPlane, ../Graphic3d/Graphic3d_SequenceOfHClipPlane,
  ../Graphic3d/Graphic3d_TransformPers, ../Graphic3d/Graphic3d_TransModeFlags,
  ../Graphic3d/Graphic3d_ZLayerId, ../Prs3d/Prs3d_Drawer,
  PrsMgr_ListOfPresentableObjects, PrsMgr_Presentation, PrsMgr_Presentations,
  PrsMgr_TypeOfPresentation3d, ../TColStd/TColStd_ListOfInteger

discard "forward decl of PrsMgr_PresentationManager"
type
  PrsMgr_PresentationManager3d* = PrsMgr_PresentationManager

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
  PrsMgr_PresentableObject* {.importcpp: "PrsMgr_PresentableObject",
                             header: "PrsMgr_PresentableObject.hxx", bycopy.} = object of Standard_Transient ##
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

  PrsMgr_PresentableObjectbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "PrsMgr_PresentableObject::get_type_name(@)",
                              header: "PrsMgr_PresentableObject.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "PrsMgr_PresentableObject::get_type_descriptor(@)",
    header: "PrsMgr_PresentableObject.hxx".}
proc DynamicType*(this: PrsMgr_PresentableObject): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "PrsMgr_PresentableObject.hxx".}
proc Presentations*(this: var PrsMgr_PresentableObject): var PrsMgr_Presentations {.
    importcpp: "Presentations", header: "PrsMgr_PresentableObject.hxx".}
proc ZLayer*(this: PrsMgr_PresentableObject): Graphic3d_ZLayerId {.noSideEffect,
    importcpp: "ZLayer", header: "PrsMgr_PresentableObject.hxx".}
proc SetZLayer*(this: var PrsMgr_PresentableObject; theLayerId: Graphic3d_ZLayerId) {.
    importcpp: "SetZLayer", header: "PrsMgr_PresentableObject.hxx".}
proc IsMutable*(this: PrsMgr_PresentableObject): Standard_Boolean {.noSideEffect,
    importcpp: "IsMutable", header: "PrsMgr_PresentableObject.hxx".}
proc SetMutable*(this: var PrsMgr_PresentableObject; theIsMutable: Standard_Boolean) {.
    importcpp: "SetMutable", header: "PrsMgr_PresentableObject.hxx".}
proc HasDisplayMode*(this: PrsMgr_PresentableObject): Standard_Boolean {.
    noSideEffect, importcpp: "HasDisplayMode",
    header: "PrsMgr_PresentableObject.hxx".}
proc DisplayMode*(this: PrsMgr_PresentableObject): Standard_Integer {.noSideEffect,
    importcpp: "DisplayMode", header: "PrsMgr_PresentableObject.hxx".}
proc SetDisplayMode*(this: var PrsMgr_PresentableObject; theMode: Standard_Integer) {.
    importcpp: "SetDisplayMode", header: "PrsMgr_PresentableObject.hxx".}
proc UnsetDisplayMode*(this: var PrsMgr_PresentableObject) {.
    importcpp: "UnsetDisplayMode", header: "PrsMgr_PresentableObject.hxx".}
proc HasHilightMode*(this: PrsMgr_PresentableObject): Standard_Boolean {.
    noSideEffect, importcpp: "HasHilightMode",
    header: "PrsMgr_PresentableObject.hxx".}
proc HilightMode*(this: PrsMgr_PresentableObject): Standard_Integer {.noSideEffect,
    importcpp: "HilightMode", header: "PrsMgr_PresentableObject.hxx".}
proc SetHilightMode*(this: var PrsMgr_PresentableObject; theMode: Standard_Integer) {.
    importcpp: "SetHilightMode", header: "PrsMgr_PresentableObject.hxx".}
proc UnsetHilightMode*(this: var PrsMgr_PresentableObject) {.
    importcpp: "UnsetHilightMode", header: "PrsMgr_PresentableObject.hxx".}
proc AcceptDisplayMode*(this: PrsMgr_PresentableObject; theMode: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "AcceptDisplayMode",
    header: "PrsMgr_PresentableObject.hxx".}
proc DefaultDisplayMode*(this: PrsMgr_PresentableObject): Standard_Integer {.
    noSideEffect, importcpp: "DefaultDisplayMode",
    header: "PrsMgr_PresentableObject.hxx".}
proc ToBeUpdated*(this: PrsMgr_PresentableObject;
                 theToIncludeHidden: Standard_Boolean = Standard_False): Standard_Boolean {.
    noSideEffect, importcpp: "ToBeUpdated", header: "PrsMgr_PresentableObject.hxx".}
proc SetToUpdate*(this: var PrsMgr_PresentableObject; theMode: Standard_Integer) {.
    importcpp: "SetToUpdate", header: "PrsMgr_PresentableObject.hxx".}
proc SetToUpdate*(this: var PrsMgr_PresentableObject) {.importcpp: "SetToUpdate",
    header: "PrsMgr_PresentableObject.hxx".}
proc IsInfinite*(this: PrsMgr_PresentableObject): Standard_Boolean {.noSideEffect,
    importcpp: "IsInfinite", header: "PrsMgr_PresentableObject.hxx".}
proc SetInfiniteState*(this: var PrsMgr_PresentableObject;
                      theFlag: Standard_Boolean = Standard_True) {.
    importcpp: "SetInfiniteState", header: "PrsMgr_PresentableObject.hxx".}
proc TypeOfPresentation3d*(this: PrsMgr_PresentableObject): PrsMgr_TypeOfPresentation3d {.
    noSideEffect, importcpp: "TypeOfPresentation3d",
    header: "PrsMgr_PresentableObject.hxx".}
proc SetTypeOfPresentation*(this: var PrsMgr_PresentableObject;
                           theType: PrsMgr_TypeOfPresentation3d) {.
    importcpp: "SetTypeOfPresentation", header: "PrsMgr_PresentableObject.hxx".}
proc Attributes*(this: PrsMgr_PresentableObject): handle[Prs3d_Drawer] {.
    noSideEffect, importcpp: "Attributes", header: "PrsMgr_PresentableObject.hxx".}
proc SetAttributes*(this: var PrsMgr_PresentableObject;
                   theDrawer: handle[Prs3d_Drawer]) {.importcpp: "SetAttributes",
    header: "PrsMgr_PresentableObject.hxx".}
proc HilightAttributes*(this: PrsMgr_PresentableObject): handle[Prs3d_Drawer] {.
    noSideEffect, importcpp: "HilightAttributes",
    header: "PrsMgr_PresentableObject.hxx".}
proc SetHilightAttributes*(this: var PrsMgr_PresentableObject;
                          theDrawer: handle[Prs3d_Drawer]) {.
    importcpp: "SetHilightAttributes", header: "PrsMgr_PresentableObject.hxx".}
proc DynamicHilightAttributes*(this: PrsMgr_PresentableObject): handle[Prs3d_Drawer] {.
    noSideEffect, importcpp: "DynamicHilightAttributes",
    header: "PrsMgr_PresentableObject.hxx".}
proc SetDynamicHilightAttributes*(this: var PrsMgr_PresentableObject;
                                 theDrawer: handle[Prs3d_Drawer]) {.
    importcpp: "SetDynamicHilightAttributes",
    header: "PrsMgr_PresentableObject.hxx".}
proc UnsetHilightAttributes*(this: var PrsMgr_PresentableObject) {.
    importcpp: "UnsetHilightAttributes", header: "PrsMgr_PresentableObject.hxx".}
proc SynchronizeAspects*(this: var PrsMgr_PresentableObject) {.
    importcpp: "SynchronizeAspects", header: "PrsMgr_PresentableObject.hxx".}
proc TransformPersistence*(this: PrsMgr_PresentableObject): handle[
    Graphic3d_TransformPers] {.noSideEffect, importcpp: "TransformPersistence",
                              header: "PrsMgr_PresentableObject.hxx".}
proc SetTransformPersistence*(this: var PrsMgr_PresentableObject;
                             theTrsfPers: handle[Graphic3d_TransformPers]) {.
    importcpp: "SetTransformPersistence", header: "PrsMgr_PresentableObject.hxx".}
proc LocalTransformationGeom*(this: PrsMgr_PresentableObject): handle[
    TopLoc_Datum3D] {.noSideEffect, importcpp: "LocalTransformationGeom",
                     header: "PrsMgr_PresentableObject.hxx".}
proc SetLocalTransformation*(this: var PrsMgr_PresentableObject; theTrsf: gp_Trsf) {.
    importcpp: "SetLocalTransformation", header: "PrsMgr_PresentableObject.hxx".}
proc SetLocalTransformation*(this: var PrsMgr_PresentableObject;
                            theTrsf: handle[TopLoc_Datum3D]) {.
    importcpp: "SetLocalTransformation", header: "PrsMgr_PresentableObject.hxx".}
proc HasTransformation*(this: PrsMgr_PresentableObject): Standard_Boolean {.
    noSideEffect, importcpp: "HasTransformation",
    header: "PrsMgr_PresentableObject.hxx".}
proc TransformationGeom*(this: PrsMgr_PresentableObject): handle[TopLoc_Datum3D] {.
    noSideEffect, importcpp: "TransformationGeom",
    header: "PrsMgr_PresentableObject.hxx".}
proc LocalTransformation*(this: PrsMgr_PresentableObject): gp_Trsf {.noSideEffect,
    importcpp: "LocalTransformation", header: "PrsMgr_PresentableObject.hxx".}
proc Transformation*(this: PrsMgr_PresentableObject): gp_Trsf {.noSideEffect,
    importcpp: "Transformation", header: "PrsMgr_PresentableObject.hxx".}
proc InversedTransformation*(this: PrsMgr_PresentableObject): gp_GTrsf {.
    noSideEffect, importcpp: "InversedTransformation",
    header: "PrsMgr_PresentableObject.hxx".}
proc CombinedParentTransformation*(this: PrsMgr_PresentableObject): handle[
    TopLoc_Datum3D] {.noSideEffect, importcpp: "CombinedParentTransformation",
                     header: "PrsMgr_PresentableObject.hxx".}
proc ResetTransformation*(this: var PrsMgr_PresentableObject) {.
    importcpp: "ResetTransformation", header: "PrsMgr_PresentableObject.hxx".}
proc UpdateTransformation*(this: var PrsMgr_PresentableObject) {.
    importcpp: "UpdateTransformation", header: "PrsMgr_PresentableObject.hxx".}
proc ClipPlanes*(this: PrsMgr_PresentableObject): handle[
    Graphic3d_SequenceOfHClipPlane] {.noSideEffect, importcpp: "ClipPlanes",
                                     header: "PrsMgr_PresentableObject.hxx".}
proc SetClipPlanes*(this: var PrsMgr_PresentableObject;
                   thePlanes: handle[Graphic3d_SequenceOfHClipPlane]) {.
    importcpp: "SetClipPlanes", header: "PrsMgr_PresentableObject.hxx".}
proc AddClipPlane*(this: var PrsMgr_PresentableObject;
                  thePlane: handle[Graphic3d_ClipPlane]) {.
    importcpp: "AddClipPlane", header: "PrsMgr_PresentableObject.hxx".}
proc RemoveClipPlane*(this: var PrsMgr_PresentableObject;
                     thePlane: handle[Graphic3d_ClipPlane]) {.
    importcpp: "RemoveClipPlane", header: "PrsMgr_PresentableObject.hxx".}
proc Parent*(this: PrsMgr_PresentableObject): ptr PrsMgr_PresentableObject {.
    noSideEffect, importcpp: "Parent", header: "PrsMgr_PresentableObject.hxx".}
proc Children*(this: PrsMgr_PresentableObject): PrsMgr_ListOfPresentableObjects {.
    noSideEffect, importcpp: "Children", header: "PrsMgr_PresentableObject.hxx".}
proc AddChild*(this: var PrsMgr_PresentableObject;
              theObject: handle[PrsMgr_PresentableObject]) {.
    importcpp: "AddChild", header: "PrsMgr_PresentableObject.hxx".}
proc AddChildWithCurrentTransformation*(this: var PrsMgr_PresentableObject;
    theObject: handle[PrsMgr_PresentableObject]) {.
    importcpp: "AddChildWithCurrentTransformation",
    header: "PrsMgr_PresentableObject.hxx".}
proc RemoveChild*(this: var PrsMgr_PresentableObject;
                 theObject: handle[PrsMgr_PresentableObject]) {.
    importcpp: "RemoveChild", header: "PrsMgr_PresentableObject.hxx".}
proc RemoveChildWithRestoreTransformation*(this: var PrsMgr_PresentableObject;
    theObject: handle[PrsMgr_PresentableObject]) {.
    importcpp: "RemoveChildWithRestoreTransformation",
    header: "PrsMgr_PresentableObject.hxx".}
proc HasOwnPresentations*(this: PrsMgr_PresentableObject): Standard_Boolean {.
    noSideEffect, importcpp: "HasOwnPresentations",
    header: "PrsMgr_PresentableObject.hxx".}
proc BoundingBox*(this: var PrsMgr_PresentableObject; theBndBox: var Bnd_Box) {.
    importcpp: "BoundingBox", header: "PrsMgr_PresentableObject.hxx".}
proc SetIsoOnTriangulation*(this: var PrsMgr_PresentableObject;
                           theIsEnabled: Standard_Boolean) {.
    importcpp: "SetIsoOnTriangulation", header: "PrsMgr_PresentableObject.hxx".}
proc CurrentFacingModel*(this: PrsMgr_PresentableObject): Aspect_TypeOfFacingModel {.
    noSideEffect, importcpp: "CurrentFacingModel",
    header: "PrsMgr_PresentableObject.hxx".}
proc SetCurrentFacingModel*(this: var PrsMgr_PresentableObject; theModel: Aspect_TypeOfFacingModel = Aspect_TOFM_BOTH_SIDE) {.
    importcpp: "SetCurrentFacingModel", header: "PrsMgr_PresentableObject.hxx".}
proc HasColor*(this: PrsMgr_PresentableObject): Standard_Boolean {.noSideEffect,
    importcpp: "HasColor", header: "PrsMgr_PresentableObject.hxx".}
proc Color*(this: PrsMgr_PresentableObject; theColor: var Quantity_Color) {.
    noSideEffect, importcpp: "Color", header: "PrsMgr_PresentableObject.hxx".}
proc SetColor*(this: var PrsMgr_PresentableObject; theColor: Quantity_Color) {.
    importcpp: "SetColor", header: "PrsMgr_PresentableObject.hxx".}
proc UnsetColor*(this: var PrsMgr_PresentableObject) {.importcpp: "UnsetColor",
    header: "PrsMgr_PresentableObject.hxx".}
proc HasWidth*(this: PrsMgr_PresentableObject): Standard_Boolean {.noSideEffect,
    importcpp: "HasWidth", header: "PrsMgr_PresentableObject.hxx".}
proc Width*(this: PrsMgr_PresentableObject): Standard_Real {.noSideEffect,
    importcpp: "Width", header: "PrsMgr_PresentableObject.hxx".}
proc SetWidth*(this: var PrsMgr_PresentableObject; theWidth: Standard_Real) {.
    importcpp: "SetWidth", header: "PrsMgr_PresentableObject.hxx".}
proc UnsetWidth*(this: var PrsMgr_PresentableObject) {.importcpp: "UnsetWidth",
    header: "PrsMgr_PresentableObject.hxx".}
proc HasMaterial*(this: PrsMgr_PresentableObject): Standard_Boolean {.noSideEffect,
    importcpp: "HasMaterial", header: "PrsMgr_PresentableObject.hxx".}
proc Material*(this: PrsMgr_PresentableObject): Graphic3d_NameOfMaterial {.
    noSideEffect, importcpp: "Material", header: "PrsMgr_PresentableObject.hxx".}
proc SetMaterial*(this: var PrsMgr_PresentableObject;
                 aName: Graphic3d_MaterialAspect) {.importcpp: "SetMaterial",
    header: "PrsMgr_PresentableObject.hxx".}
proc UnsetMaterial*(this: var PrsMgr_PresentableObject) {.
    importcpp: "UnsetMaterial", header: "PrsMgr_PresentableObject.hxx".}
proc IsTransparent*(this: PrsMgr_PresentableObject): Standard_Boolean {.
    noSideEffect, importcpp: "IsTransparent",
    header: "PrsMgr_PresentableObject.hxx".}
proc Transparency*(this: PrsMgr_PresentableObject): Standard_Real {.noSideEffect,
    importcpp: "Transparency", header: "PrsMgr_PresentableObject.hxx".}
proc SetTransparency*(this: var PrsMgr_PresentableObject;
                     aValue: Standard_Real = 0.6) {.importcpp: "SetTransparency",
    header: "PrsMgr_PresentableObject.hxx".}
proc UnsetTransparency*(this: var PrsMgr_PresentableObject) {.
    importcpp: "UnsetTransparency", header: "PrsMgr_PresentableObject.hxx".}
proc HasPolygonOffsets*(this: PrsMgr_PresentableObject): Standard_Boolean {.
    noSideEffect, importcpp: "HasPolygonOffsets",
    header: "PrsMgr_PresentableObject.hxx".}
proc PolygonOffsets*(this: PrsMgr_PresentableObject; aMode: var Standard_Integer;
                    aFactor: var Standard_ShortReal; aUnits: var Standard_ShortReal) {.
    noSideEffect, importcpp: "PolygonOffsets",
    header: "PrsMgr_PresentableObject.hxx".}
proc SetPolygonOffsets*(this: var PrsMgr_PresentableObject; aMode: Standard_Integer;
                       aFactor: Standard_ShortReal = 1.0;
                       aUnits: Standard_ShortReal = 0.0) {.
    importcpp: "SetPolygonOffsets", header: "PrsMgr_PresentableObject.hxx".}
proc UnsetAttributes*(this: var PrsMgr_PresentableObject) {.
    importcpp: "UnsetAttributes", header: "PrsMgr_PresentableObject.hxx".}
proc DumpJson*(this: PrsMgr_PresentableObject; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
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

proc ToPropagateVisualState*(this: PrsMgr_PresentableObject): Standard_Boolean {.
    noSideEffect, importcpp: "ToPropagateVisualState",
    header: "PrsMgr_PresentableObject.hxx".}
proc SetPropagateVisualState*(this: var PrsMgr_PresentableObject;
                             theFlag: Standard_Boolean) {.
    importcpp: "SetPropagateVisualState", header: "PrsMgr_PresentableObject.hxx".}
## !!!Ignored construct:  protected : ! Recomputes all presentations of the object. Standard_DEPRECATED ( This method is deprecated - SetToUpdate() + UpdatePresentations() should be called instead ) void Update ( Standard_Boolean theToIncludeHidden = Standard_False ) { SetToUpdate ( ) ; UpdatePresentations ( theToIncludeHidden ) ; } ! Recomputes the presentation in the given mode.
## ! @param theMode presentation (display mode) to recompute
## ! @param theToClearOther when TRUE, other presentations (display modes) will be removed Standard_DEPRECATED ( This method is deprecated - SetToUpdate() + UpdatePresentations() should be called instead ) void Update ( Standard_Integer theMode , Standard_Boolean theToClearOther ) ;
## Error: identifier expected, but got: This method is deprecated - SetToUpdate() + UpdatePresentations() should be called instead!!!

discard "forward decl of PrsMgr_PresentableObject"
type
  Handle_PrsMgr_PresentableObject* = handle[PrsMgr_PresentableObject]
