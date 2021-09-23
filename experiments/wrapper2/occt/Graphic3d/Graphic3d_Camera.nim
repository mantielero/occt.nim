##  Created on: 2013-05-29
##  Created by: Anton POLETAEV
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

## !!!Ignored construct:  # _Graphic3d_Camera_HeaderFile [NewLine] # _Graphic3d_Camera_HeaderFile [NewLine] # ../Aspect/Aspect_Eye.hxx [NewLine] # ../Aspect/Aspect_FrustumLRBT.hxx [NewLine] # Graphic3d_CameraTile.hxx [NewLine] # Graphic3d_Mat4d.hxx [NewLine] # Graphic3d_Mat4.hxx [NewLine] # Graphic3d_Vec3.hxx [NewLine] # Graphic3d_WorldViewProjState.hxx [NewLine] # ../NCollection/NCollection_Lerp.hxx [NewLine] # ../NCollection/NCollection_Array1.hxx [NewLine] # ../gp/gp_Dir.hxx [NewLine] # ../gp/gp_Pnt.hxx [NewLine] # ../Standard/Standard_Macro.hxx [NewLine] # ../Standard/Standard_TypeDef.hxx [NewLine] # ../Bnd/Bnd_Box.hxx [NewLine] ! Forward declaration class Graphic3d_WorldViewProjState ;
## Error: token expected: ; but got: <!!!

## ! Camera class provides object-oriented approach to setting up projection
## ! and orientation properties of 3D view.

type
  Graphic3d_Camera* {.importcpp: "Graphic3d_Camera",
                     header: "Graphic3d_Camera.hxx", bycopy.} = object of Standard_Transient ##
                                                                                      ## !
                                                                                      ## Template
                                                                                      ## container
                                                                                      ## for
                                                                                      ## cached
                                                                                      ## matrices
                                                                                      ## or
                                                                                      ## Real/ShortReal
                                                                                      ## types.
                                                                                      ##
                                                                                      ## !
                                                                                      ## Enumerates
                                                                                      ## supported
                                                                                      ## monographic
                                                                                      ## projections.
                                                                                      ##
                                                                                      ## !
                                                                                      ## -
                                                                                      ## Projection_Orthographic
                                                                                      ## :
                                                                                      ## orthographic
                                                                                      ## projection.
                                                                                      ##
                                                                                      ## !
                                                                                      ## -
                                                                                      ## Projection_Perspective
                                                                                      ## :
                                                                                      ## perspective
                                                                                      ## projection.
                                                                                      ##
                                                                                      ## !
                                                                                      ## -
                                                                                      ## Projection_Stereo
                                                                                      ## :
                                                                                      ## stereographic
                                                                                      ## projection.
                                                                                      ##
                                                                                      ## !
                                                                                      ## -
                                                                                      ## Projection_MonoLeftEye
                                                                                      ## :
                                                                                      ## mono
                                                                                      ## projection
                                                                                      ## for
                                                                                      ## stereo
                                                                                      ## left
                                                                                      ## eye.
                                                                                      ##
                                                                                      ## !
                                                                                      ## -
                                                                                      ## Projection_MonoRightEye
                                                                                      ## :
                                                                                      ## mono
                                                                                      ## projection
                                                                                      ## for
                                                                                      ## stereo
                                                                                      ## right
                                                                                      ## eye.
                                                                                      ##
                                                                                      ## !
                                                                                      ## Default
                                                                                      ## constructor.
                                                                                      ##
                                                                                      ## !
                                                                                      ## Initializes
                                                                                      ## camera
                                                                                      ## with
                                                                                      ## the
                                                                                      ## following
                                                                                      ## properties:
                                                                                      ##
                                                                                      ## !
                                                                                      ## Eye
                                                                                      ## (0,
                                                                                      ## 0,
                                                                                      ## -2);
                                                                                      ## Center
                                                                                      ## (0,
                                                                                      ## 0,
                                                                                      ## 0);
                                                                                      ## Up
                                                                                      ## (0,
                                                                                      ## 1,
                                                                                      ## 0);
                                                                                      ##
                                                                                      ## !
                                                                                      ## Type
                                                                                      ## (Orthographic);
                                                                                      ## FOVy
                                                                                      ## (45);
                                                                                      ## Scale
                                                                                      ## (1000);
                                                                                      ## IsStereo(false);
                                                                                      ##
                                                                                      ## !
                                                                                      ## ZNear
                                                                                      ## (0.001);
                                                                                      ## ZFar
                                                                                      ## (3000.0);
                                                                                      ## Aspect(1);
                                                                                      ##
                                                                                      ## !
                                                                                      ## ZFocus(1.0);
                                                                                      ## ZFocusType(Relative);
                                                                                      ## IOD(0.05);
                                                                                      ## IODType(Relative)
                                                                                      ##
                                                                                      ## !
                                                                                      ## Get
                                                                                      ## camera
                                                                                      ## look
                                                                                      ## direction.
                                                                                      ##
                                                                                      ## !
                                                                                      ## @return
                                                                                      ## camera
                                                                                      ## look
                                                                                      ## direction.
                                                                                      ##
                                                                                      ## !
                                                                                      ## Transform
                                                                                      ## orientation
                                                                                      ## components
                                                                                      ## of
                                                                                      ## the
                                                                                      ## camera:
                                                                                      ##
                                                                                      ## !
                                                                                      ## Eye,
                                                                                      ## Up
                                                                                      ## and
                                                                                      ## Center
                                                                                      ## points.
                                                                                      ##
                                                                                      ## !
                                                                                      ## @param
                                                                                      ## theTrsf
                                                                                      ## [in]
                                                                                      ## the
                                                                                      ## transformation
                                                                                      ## to
                                                                                      ## apply.
                                                                                      ##
                                                                                      ## !
                                                                                      ## Project
                                                                                      ## point
                                                                                      ## from
                                                                                      ## world
                                                                                      ## coordinate
                                                                                      ## space
                                                                                      ## to
                                                                                      ##
                                                                                      ## !
                                                                                      ## normalized
                                                                                      ## device
                                                                                      ## coordinates
                                                                                      ## (mapping).
                                                                                      ##
                                                                                      ## !
                                                                                      ## @param
                                                                                      ## thePnt
                                                                                      ## [in]
                                                                                      ## the
                                                                                      ## 3D
                                                                                      ## point
                                                                                      ## in
                                                                                      ## WCS.
                                                                                      ##
                                                                                      ## !
                                                                                      ## @return
                                                                                      ## mapped
                                                                                      ## point
                                                                                      ## in
                                                                                      ## NDC.
                                                                                      ##
                                                                                      ## !
                                                                                      ## @return
                                                                                      ## projection
                                                                                      ## modification
                                                                                      ## state
                                                                                      ## of
                                                                                      ## the
                                                                                      ## camera.
                                                                                      ##
                                                                                      ## !
                                                                                      ## Get
                                                                                      ## orientation
                                                                                      ## matrix.
                                                                                      ##
                                                                                      ## !
                                                                                      ## @return
                                                                                      ## camera
                                                                                      ## orientation
                                                                                      ## matrix.
                                                                                      ##
                                                                                      ## !
                                                                                      ## Get
                                                                                      ## stereo
                                                                                      ## projection
                                                                                      ## matrices.
                                                                                      ##
                                                                                      ## !
                                                                                      ## @param
                                                                                      ## theProjL
                                                                                      ## [out]
                                                                                      ## left
                                                                                      ## eye
                                                                                      ## projection
                                                                                      ## matrix
                                                                                      ##
                                                                                      ## !
                                                                                      ## @param
                                                                                      ## theHeadToEyeL
                                                                                      ## [out]
                                                                                      ## left
                                                                                      ## head
                                                                                      ## to
                                                                                      ## eye
                                                                                      ## translation
                                                                                      ## matrix
                                                                                      ##
                                                                                      ## !
                                                                                      ## @param
                                                                                      ## theProjR
                                                                                      ## [out]
                                                                                      ## right
                                                                                      ## eye
                                                                                      ## projection
                                                                                      ## matrix
                                                                                      ##
                                                                                      ## !
                                                                                      ## @param
                                                                                      ## theHeadToEyeR
                                                                                      ## [out]
                                                                                      ## right
                                                                                      ## head
                                                                                      ## to
                                                                                      ## eye
                                                                                      ## translation
                                                                                      ## matrix
                                                                                      ##
                                                                                      ## !
                                                                                      ## Get
                                                                                      ## stereo
                                                                                      ## projection
                                                                                      ## matrices.
                                                                                      ##
                                                                                      ## !
                                                                                      ## @param
                                                                                      ## theProjL
                                                                                      ## [out]
                                                                                      ## left
                                                                                      ## eye
                                                                                      ## projection
                                                                                      ## matrix
                                                                                      ##
                                                                                      ## !
                                                                                      ## @param
                                                                                      ## theHeadToEyeL
                                                                                      ## [out]
                                                                                      ## left
                                                                                      ## head
                                                                                      ## to
                                                                                      ## eye
                                                                                      ## translation
                                                                                      ## matrix
                                                                                      ##
                                                                                      ## !
                                                                                      ## @param
                                                                                      ## theProjR
                                                                                      ## [out]
                                                                                      ## right
                                                                                      ## eye
                                                                                      ## projection
                                                                                      ## matrix
                                                                                      ##
                                                                                      ## !
                                                                                      ## @param
                                                                                      ## theHeadToEyeR
                                                                                      ## [out]
                                                                                      ## right
                                                                                      ## head
                                                                                      ## to
                                                                                      ## eye
                                                                                      ## translation
                                                                                      ## matrix
                                                                                      ##
                                                                                      ## !
                                                                                      ## Compose
                                                                                      ## orthographic
                                                                                      ## projection
                                                                                      ## matrix
                                                                                      ## for
                                                                                      ## the
                                                                                      ## passed
                                                                                      ## camera
                                                                                      ## volume
                                                                                      ## mapping.
                                                                                      ##
                                                                                      ## !
                                                                                      ## @param
                                                                                      ## theOutMx
                                                                                      ## [out]
                                                                                      ## the
                                                                                      ## projection
                                                                                      ## matrix
                                                                                      ##
                                                                                      ## !
                                                                                      ## @param
                                                                                      ## theLRBT
                                                                                      ## [in]
                                                                                      ## the
                                                                                      ## left/right/bottom/top
                                                                                      ## mapping
                                                                                      ## (clipping)
                                                                                      ## coordinates
                                                                                      ##
                                                                                      ## !
                                                                                      ## @param
                                                                                      ## theNear
                                                                                      ## [in]
                                                                                      ## the
                                                                                      ## near
                                                                                      ## mapping
                                                                                      ## (clipping)
                                                                                      ## coordinate
                                                                                      ##
                                                                                      ## !
                                                                                      ## @param
                                                                                      ## theFar
                                                                                      ## [in]
                                                                                      ## the
                                                                                      ## far
                                                                                      ## mapping
                                                                                      ## (clipping)
                                                                                      ## coordinate
                                                                                      ##
                                                                                      ## !
                                                                                      ## Enumerates
                                                                                      ## vertices
                                                                                      ## of
                                                                                      ## view
                                                                                      ## volume.
    ## !< Camera up direction vector
    ## !< Camera view direction (from eye)
    ## !< Camera eye position
    ## !< distance from Eye to Center
    ## !< World axial scale.
    ## !< Projection type used for rendering.
    ## !< Field Of View in y axis.
    ## !< Field Of View in x axis.
    ## !< Field Of View limit for 2d on-screen elements
    ## !< Field Of View as Tan(DTR_HALF * myFOVy)
    ## !< Distance to near clipping plane.
    ## !< Distance to far clipping plane.
    ## !< Width to height display ratio.
    ## !< Specifies parallel scale for orthographic projection.
    ## !< Stereographic focus value.
    ## !< Stereographic focus definition type.
    ## !< Intraocular distance value.
    ## !< Intraocular distance definition type.
    ## !< Tile defining sub-area for drawing
    ## !< left  custom frustum
    ## !< right custom frustum
    ## !< flag indicating usage of custom projection matrix
    ## !< flag indicating usage of custom stereo projection matrices
    ## !< flag indicating usage of custom stereo frustums

  Graphic3d_CameraProjection* {.size: sizeof(cint),
                               importcpp: "Graphic3d_Camera::Projection",
                               header: "Graphic3d_Camera.hxx".} = enum
    Projection_Orthographic, Projection_Perspective, Projection_Stereo,
    Projection_MonoLeftEye, Projection_MonoRightEye


type
  Graphic3d_CameraFocusType* {.size: sizeof(cint),
                              importcpp: "Graphic3d_Camera::FocusType",
                              header: "Graphic3d_Camera.hxx".} = enum
    FocusType_Absolute, FocusType_Relative


type
  Graphic3d_CameraIODType* {.size: sizeof(cint),
                            importcpp: "Graphic3d_Camera::IODType",
                            header: "Graphic3d_Camera.hxx".} = enum
    IODType_Absolute, IODType_Relative


proc constructGraphic3d_Camera*(): Graphic3d_Camera {.constructor,
    importcpp: "Graphic3d_Camera(@)", header: "Graphic3d_Camera.hxx".}
proc constructGraphic3d_Camera*(theOther: handle[Graphic3d_Camera]): Graphic3d_Camera {.
    constructor, importcpp: "Graphic3d_Camera(@)", header: "Graphic3d_Camera.hxx".}
proc CopyMappingData*(this: var Graphic3d_Camera;
                     theOtherCamera: handle[Graphic3d_Camera]) {.
    importcpp: "CopyMappingData", header: "Graphic3d_Camera.hxx".}
proc CopyOrientationData*(this: var Graphic3d_Camera;
                         theOtherCamera: handle[Graphic3d_Camera]) {.
    importcpp: "CopyOrientationData", header: "Graphic3d_Camera.hxx".}
proc Copy*(this: var Graphic3d_Camera; theOther: handle[Graphic3d_Camera]) {.
    importcpp: "Copy", header: "Graphic3d_Camera.hxx".}
proc Direction*(this: Graphic3d_Camera): gp_Dir {.noSideEffect,
    importcpp: "Direction", header: "Graphic3d_Camera.hxx".}
proc SetDirectionFromEye*(this: var Graphic3d_Camera; theDir: gp_Dir) {.
    importcpp: "SetDirectionFromEye", header: "Graphic3d_Camera.hxx".}
proc SetDirection*(this: var Graphic3d_Camera; theDir: gp_Dir) {.
    importcpp: "SetDirection", header: "Graphic3d_Camera.hxx".}
proc Up*(this: Graphic3d_Camera): gp_Dir {.noSideEffect, importcpp: "Up",
                                       header: "Graphic3d_Camera.hxx".}
proc SetUp*(this: var Graphic3d_Camera; theUp: gp_Dir) {.importcpp: "SetUp",
    header: "Graphic3d_Camera.hxx".}
proc OrthogonalizeUp*(this: var Graphic3d_Camera) {.importcpp: "OrthogonalizeUp",
    header: "Graphic3d_Camera.hxx".}
proc OrthogonalizedUp*(this: Graphic3d_Camera): gp_Dir {.noSideEffect,
    importcpp: "OrthogonalizedUp", header: "Graphic3d_Camera.hxx".}
proc SideRight*(this: Graphic3d_Camera): gp_Dir {.noSideEffect,
    importcpp: "SideRight", header: "Graphic3d_Camera.hxx".}
proc Eye*(this: Graphic3d_Camera): gp_Pnt {.noSideEffect, importcpp: "Eye",
                                        header: "Graphic3d_Camera.hxx".}
proc MoveEyeTo*(this: var Graphic3d_Camera; theEye: gp_Pnt) {.importcpp: "MoveEyeTo",
    header: "Graphic3d_Camera.hxx".}
proc SetEyeAndCenter*(this: var Graphic3d_Camera; theEye: gp_Pnt; theCenter: gp_Pnt) {.
    importcpp: "SetEyeAndCenter", header: "Graphic3d_Camera.hxx".}
proc SetEye*(this: var Graphic3d_Camera; theEye: gp_Pnt) {.importcpp: "SetEye",
    header: "Graphic3d_Camera.hxx".}
proc Center*(this: Graphic3d_Camera): gp_Pnt {.noSideEffect, importcpp: "Center",
    header: "Graphic3d_Camera.hxx".}
proc SetCenter*(this: var Graphic3d_Camera; theCenter: gp_Pnt) {.
    importcpp: "SetCenter", header: "Graphic3d_Camera.hxx".}
proc Distance*(this: Graphic3d_Camera): Standard_Real {.noSideEffect,
    importcpp: "Distance", header: "Graphic3d_Camera.hxx".}
proc SetDistance*(this: var Graphic3d_Camera; theDistance: Standard_Real) {.
    importcpp: "SetDistance", header: "Graphic3d_Camera.hxx".}
proc Scale*(this: Graphic3d_Camera): Standard_Real {.noSideEffect,
    importcpp: "Scale", header: "Graphic3d_Camera.hxx".}
proc SetScale*(this: var Graphic3d_Camera; theScale: Standard_Real) {.
    importcpp: "SetScale", header: "Graphic3d_Camera.hxx".}
proc AxialScale*(this: Graphic3d_Camera): gp_XYZ {.noSideEffect,
    importcpp: "AxialScale", header: "Graphic3d_Camera.hxx".}
proc SetAxialScale*(this: var Graphic3d_Camera; theAxialScale: gp_XYZ) {.
    importcpp: "SetAxialScale", header: "Graphic3d_Camera.hxx".}
proc SetProjectionType*(this: var Graphic3d_Camera;
                       theProjection: Graphic3d_CameraProjection) {.
    importcpp: "SetProjectionType", header: "Graphic3d_Camera.hxx".}
proc ProjectionType*(this: Graphic3d_Camera): Graphic3d_CameraProjection {.
    noSideEffect, importcpp: "ProjectionType", header: "Graphic3d_Camera.hxx".}
proc IsOrthographic*(this: Graphic3d_Camera): Standard_Boolean {.noSideEffect,
    importcpp: "IsOrthographic", header: "Graphic3d_Camera.hxx".}
proc IsStereo*(this: Graphic3d_Camera): Standard_Boolean {.noSideEffect,
    importcpp: "IsStereo", header: "Graphic3d_Camera.hxx".}
proc SetFOVy*(this: var Graphic3d_Camera; theFOVy: Standard_Real) {.
    importcpp: "SetFOVy", header: "Graphic3d_Camera.hxx".}
proc FOVy*(this: Graphic3d_Camera): Standard_Real {.noSideEffect, importcpp: "FOVy",
    header: "Graphic3d_Camera.hxx".}
proc FOVx*(this: Graphic3d_Camera): Standard_Real {.noSideEffect, importcpp: "FOVx",
    header: "Graphic3d_Camera.hxx".}
proc FOV2d*(this: Graphic3d_Camera): Standard_Real {.noSideEffect,
    importcpp: "FOV2d", header: "Graphic3d_Camera.hxx".}
proc SetFOV2d*(this: var Graphic3d_Camera; theFOV: Standard_Real) {.
    importcpp: "SetFOV2d", header: "Graphic3d_Camera.hxx".}
proc ZFitAll*(this: Graphic3d_Camera; theScaleFactor: Standard_Real;
             theMinMax: Bnd_Box; theGraphicBB: Bnd_Box; theZNear: var Standard_Real;
             theZFar: var Standard_Real): bool {.noSideEffect, importcpp: "ZFitAll",
    header: "Graphic3d_Camera.hxx".}
proc ZFitAll*(this: var Graphic3d_Camera; theScaleFactor: Standard_Real;
             theMinMax: Bnd_Box; theGraphicBB: Bnd_Box) {.importcpp: "ZFitAll",
    header: "Graphic3d_Camera.hxx".}
proc SetZRange*(this: var Graphic3d_Camera; theZNear: Standard_Real;
               theZFar: Standard_Real) {.importcpp: "SetZRange",
                                       header: "Graphic3d_Camera.hxx".}
proc ZNear*(this: Graphic3d_Camera): Standard_Real {.noSideEffect,
    importcpp: "ZNear", header: "Graphic3d_Camera.hxx".}
proc ZFar*(this: Graphic3d_Camera): Standard_Real {.noSideEffect, importcpp: "ZFar",
    header: "Graphic3d_Camera.hxx".}
proc SetAspect*(this: var Graphic3d_Camera; theAspect: Standard_Real) {.
    importcpp: "SetAspect", header: "Graphic3d_Camera.hxx".}
proc Aspect*(this: Graphic3d_Camera): Standard_Real {.noSideEffect,
    importcpp: "Aspect", header: "Graphic3d_Camera.hxx".}
proc SetZFocus*(this: var Graphic3d_Camera; theType: Graphic3d_CameraFocusType;
               theZFocus: Standard_Real) {.importcpp: "SetZFocus",
    header: "Graphic3d_Camera.hxx".}
proc ZFocus*(this: Graphic3d_Camera): Standard_Real {.noSideEffect,
    importcpp: "ZFocus", header: "Graphic3d_Camera.hxx".}
proc ZFocusType*(this: Graphic3d_Camera): Graphic3d_CameraFocusType {.noSideEffect,
    importcpp: "ZFocusType", header: "Graphic3d_Camera.hxx".}
proc SetIOD*(this: var Graphic3d_Camera; theType: Graphic3d_CameraIODType;
            theIOD: Standard_Real) {.importcpp: "SetIOD",
                                   header: "Graphic3d_Camera.hxx".}
proc IOD*(this: Graphic3d_Camera): Standard_Real {.noSideEffect, importcpp: "IOD",
    header: "Graphic3d_Camera.hxx".}
proc GetIODType*(this: Graphic3d_Camera): Graphic3d_CameraIODType {.noSideEffect,
    importcpp: "GetIODType", header: "Graphic3d_Camera.hxx".}
proc Tile*(this: Graphic3d_Camera): Graphic3d_CameraTile {.noSideEffect,
    importcpp: "Tile", header: "Graphic3d_Camera.hxx".}
proc SetTile*(this: var Graphic3d_Camera; theTile: Graphic3d_CameraTile) {.
    importcpp: "SetTile", header: "Graphic3d_Camera.hxx".}
proc Transform*(this: var Graphic3d_Camera; theTrsf: gp_Trsf) {.
    importcpp: "Transform", header: "Graphic3d_Camera.hxx".}
proc ViewDimensions*(this: Graphic3d_Camera): gp_XYZ {.noSideEffect,
    importcpp: "ViewDimensions", header: "Graphic3d_Camera.hxx".}
proc ViewDimensions*(this: Graphic3d_Camera; theZValue: Standard_Real): gp_XYZ {.
    noSideEffect, importcpp: "ViewDimensions", header: "Graphic3d_Camera.hxx".}
proc NDC2dOffsetX*(this: Graphic3d_Camera): Standard_Real {.noSideEffect,
    importcpp: "NDC2dOffsetX", header: "Graphic3d_Camera.hxx".}
proc NDC2dOffsetY*(this: Graphic3d_Camera): Standard_Real {.noSideEffect,
    importcpp: "NDC2dOffsetY", header: "Graphic3d_Camera.hxx".}
proc Frustum*(this: Graphic3d_Camera; theLeft: var gp_Pln; theRight: var gp_Pln;
             theBottom: var gp_Pln; theTop: var gp_Pln; theNear: var gp_Pln;
             theFar: var gp_Pln) {.noSideEffect, importcpp: "Frustum",
                                header: "Graphic3d_Camera.hxx".}
proc Project*(this: Graphic3d_Camera; thePnt: gp_Pnt): gp_Pnt {.noSideEffect,
    importcpp: "Project", header: "Graphic3d_Camera.hxx".}
proc UnProject*(this: Graphic3d_Camera; thePnt: gp_Pnt): gp_Pnt {.noSideEffect,
    importcpp: "UnProject", header: "Graphic3d_Camera.hxx".}
proc ConvertView2Proj*(this: Graphic3d_Camera; thePnt: gp_Pnt): gp_Pnt {.noSideEffect,
    importcpp: "ConvertView2Proj", header: "Graphic3d_Camera.hxx".}
proc ConvertProj2View*(this: Graphic3d_Camera; thePnt: gp_Pnt): gp_Pnt {.noSideEffect,
    importcpp: "ConvertProj2View", header: "Graphic3d_Camera.hxx".}
proc ConvertWorld2View*(this: Graphic3d_Camera; thePnt: gp_Pnt): gp_Pnt {.
    noSideEffect, importcpp: "ConvertWorld2View", header: "Graphic3d_Camera.hxx".}
proc ConvertView2World*(this: Graphic3d_Camera; thePnt: gp_Pnt): gp_Pnt {.
    noSideEffect, importcpp: "ConvertView2World", header: "Graphic3d_Camera.hxx".}
proc WorldViewProjState*(this: Graphic3d_Camera): Graphic3d_WorldViewProjState {.
    noSideEffect, importcpp: "WorldViewProjState", header: "Graphic3d_Camera.hxx".}
proc ProjectionState*(this: Graphic3d_Camera): Standard_Size {.noSideEffect,
    importcpp: "ProjectionState", header: "Graphic3d_Camera.hxx".}
proc WorldViewState*(this: Graphic3d_Camera): Standard_Size {.noSideEffect,
    importcpp: "WorldViewState", header: "Graphic3d_Camera.hxx".}
proc OrientationMatrix*(this: Graphic3d_Camera): Graphic3d_Mat4d {.noSideEffect,
    importcpp: "OrientationMatrix", header: "Graphic3d_Camera.hxx".}
proc OrientationMatrixF*(this: Graphic3d_Camera): Graphic3d_Mat4 {.noSideEffect,
    importcpp: "OrientationMatrixF", header: "Graphic3d_Camera.hxx".}
proc ProjectionMatrix*(this: Graphic3d_Camera): Graphic3d_Mat4d {.noSideEffect,
    importcpp: "ProjectionMatrix", header: "Graphic3d_Camera.hxx".}
proc ProjectionMatrixF*(this: Graphic3d_Camera): Graphic3d_Mat4 {.noSideEffect,
    importcpp: "ProjectionMatrixF", header: "Graphic3d_Camera.hxx".}
proc ProjectionStereoLeft*(this: Graphic3d_Camera): Graphic3d_Mat4d {.noSideEffect,
    importcpp: "ProjectionStereoLeft", header: "Graphic3d_Camera.hxx".}
proc ProjectionStereoLeftF*(this: Graphic3d_Camera): Graphic3d_Mat4 {.noSideEffect,
    importcpp: "ProjectionStereoLeftF", header: "Graphic3d_Camera.hxx".}
proc ProjectionStereoRight*(this: Graphic3d_Camera): Graphic3d_Mat4d {.noSideEffect,
    importcpp: "ProjectionStereoRight", header: "Graphic3d_Camera.hxx".}
proc ProjectionStereoRightF*(this: Graphic3d_Camera): Graphic3d_Mat4 {.noSideEffect,
    importcpp: "ProjectionStereoRightF", header: "Graphic3d_Camera.hxx".}
proc InvalidateProjection*(this: var Graphic3d_Camera) {.
    importcpp: "InvalidateProjection", header: "Graphic3d_Camera.hxx".}
proc InvalidateOrientation*(this: var Graphic3d_Camera) {.
    importcpp: "InvalidateOrientation", header: "Graphic3d_Camera.hxx".}
proc StereoProjection*(this: Graphic3d_Camera; theProjL: var Graphic3d_Mat4d;
                      theHeadToEyeL: var Graphic3d_Mat4d;
                      theProjR: var Graphic3d_Mat4d;
                      theHeadToEyeR: var Graphic3d_Mat4d) {.noSideEffect,
    importcpp: "StereoProjection", header: "Graphic3d_Camera.hxx".}
proc StereoProjectionF*(this: Graphic3d_Camera; theProjL: var Graphic3d_Mat4;
                       theHeadToEyeL: var Graphic3d_Mat4;
                       theProjR: var Graphic3d_Mat4;
                       theHeadToEyeR: var Graphic3d_Mat4) {.noSideEffect,
    importcpp: "StereoProjectionF", header: "Graphic3d_Camera.hxx".}
proc ResetCustomProjection*(this: var Graphic3d_Camera) {.
    importcpp: "ResetCustomProjection", header: "Graphic3d_Camera.hxx".}
proc IsCustomStereoFrustum*(this: Graphic3d_Camera): bool {.noSideEffect,
    importcpp: "IsCustomStereoFrustum", header: "Graphic3d_Camera.hxx".}
proc SetCustomStereoFrustums*(this: var Graphic3d_Camera;
                             theFrustumL: Aspect_FrustumLRBT[Standard_Real];
                             theFrustumR: Aspect_FrustumLRBT[Standard_Real]) {.
    importcpp: "SetCustomStereoFrustums", header: "Graphic3d_Camera.hxx".}
proc IsCustomStereoProjection*(this: Graphic3d_Camera): bool {.noSideEffect,
    importcpp: "IsCustomStereoProjection", header: "Graphic3d_Camera.hxx".}
proc SetCustomStereoProjection*(this: var Graphic3d_Camera;
                               theProjL: Graphic3d_Mat4d;
                               theHeadToEyeL: Graphic3d_Mat4d;
                               theProjR: Graphic3d_Mat4d;
                               theHeadToEyeR: Graphic3d_Mat4d) {.
    importcpp: "SetCustomStereoProjection", header: "Graphic3d_Camera.hxx".}
proc IsCustomMonoProjection*(this: Graphic3d_Camera): bool {.noSideEffect,
    importcpp: "IsCustomMonoProjection", header: "Graphic3d_Camera.hxx".}
proc SetCustomMonoProjection*(this: var Graphic3d_Camera; theProj: Graphic3d_Mat4d) {.
    importcpp: "SetCustomMonoProjection", header: "Graphic3d_Camera.hxx".}
proc DumpJson*(this: Graphic3d_Camera; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Graphic3d_Camera.hxx".}
const
  Graphic3d_CameraFrustumVert_LeftBottomNear* = 0
  Graphic3d_CameraFrustumVert_LeftBottomFar* = 1
  Graphic3d_CameraFrustumVert_LeftTopNear* = 2
  Graphic3d_CameraFrustumVert_LeftTopFar* = 3
  Graphic3d_CameraFrustumVert_RightBottomNear* = 4
  Graphic3d_CameraFrustumVert_RightBottomFar* = 5
  Graphic3d_CameraFrustumVert_RightTopNear* = 6
  Graphic3d_CameraFrustumVert_RightTopFar* = 7
  Graphic3d_CameraFrustumVerticesNB* = 8

proc FrustumPoints*(this: Graphic3d_Camera;
                   thePoints: var NCollection_Array1[Graphic3d_Vec3d];
                   theModelWorld: Graphic3d_Mat4d = Graphic3d_Mat4d()) {.
    noSideEffect, importcpp: "FrustumPoints", header: "Graphic3d_Camera.hxx".}
type
  Graphic3d_Camerabase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Graphic3d_Camera::get_type_name(@)",
                              header: "Graphic3d_Camera.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Graphic3d_Camera::get_type_descriptor(@)",
    header: "Graphic3d_Camera.hxx".}
proc DynamicType*(this: Graphic3d_Camera): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Graphic3d_Camera.hxx".}
discard "forward decl of Graphic3d_Camera"
type
  Handle_Graphic3d_CameraGraphic3d_Camera* = handle[Graphic3d_Camera]

## ! Linear interpolation tool for camera orientation and position.
## ! This tool interpolates camera parameters scale, eye, center, rotation (up and direction vectors) independently.
## !
## ! Eye/Center interpolation is performed through defining an anchor point in-between Center and Eye.
## ! The anchor position is defined as point near to the camera point which has smaller translation part.
## ! The main idea is to keep the distance between Center and Eye
## ! (which will change if Center and Eye translation will be interpolated independently).
## ! E.g.:
## !  - When both Center and Eye are moved at the same vector -> both will be just translated by straight line
## !  - When Center is not moved -> camera Eye    will move around Center through arc
## !  - When Eye    is not moved -> camera Center will move around Eye    through arc
## !  - When both Center and Eye are move by different vectors -> transformation will be something in between,
## !    and will try interpolate linearly the distance between Center and Eye.
## !
## ! This transformation might be not in line with user expectations.
## ! In this case, application might define intermediate camera positions for interpolation
## ! or implement own interpolation logic.

## !!!Ignored construct:  template < > [end of template] void NCollection_Lerp < opencascade :: handle < Graphic3d_Camera > [end of template] > :: Interpolate ( const double theT , opencascade :: handle < Graphic3d_Camera > [end of template] & theResult ) const ;
## Error: token expected: ; but got: <!!!

type
  Graphic3d_CameraLerp* = NCollection_Lerp[handle[Graphic3d_Camera]]
