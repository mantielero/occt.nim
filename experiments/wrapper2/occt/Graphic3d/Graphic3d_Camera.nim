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

## !!!Ignored construct:  # _Graphic3d_Camera_HeaderFile [NewLine] # _Graphic3d_Camera_HeaderFile [NewLine] # < Aspect_Eye . hxx > [NewLine] # < Aspect_FrustumLRBT . hxx > [NewLine] # < Graphic3d_CameraTile . hxx > [NewLine] # < Graphic3d_Mat4d . hxx > [NewLine] # < Graphic3d_Mat4 . hxx > [NewLine] # < Graphic3d_Vec3 . hxx > [NewLine] # < Graphic3d_WorldViewProjState . hxx > [NewLine] # < NCollection_Lerp . hxx > [NewLine] # < NCollection_Array1 . hxx > [NewLine] # < gp_Dir . hxx > [NewLine] # < gp_Pnt . hxx > [NewLine] # < Standard_Macro . hxx > [NewLine] # < Standard_TypeDef . hxx > [NewLine] # < Bnd_Box . hxx > [NewLine] ! Forward declaration class Graphic3d_WorldViewProjState ;
## Error: token expected: ; but got: <!!!

## ! Camera class provides object-oriented approach to setting up projection
## ! and orientation properties of 3D view.

type
  Graphic3dCamera* {.importcpp: "Graphic3d_Camera", header: "Graphic3d_Camera.hxx",
                    bycopy.} = object of StandardTransient ## ! Template container for cached matrices or Real/ShortReal types.
                                                      ## ! Enumerates supported monographic projections.
                                                      ## ! - Projection_Orthographic : orthographic projection.
                                                      ## ! - Projection_Perspective  : perspective projection.
                                                      ## ! - Projection_Stereo       : stereographic projection.
                                                      ## ! - Projection_MonoLeftEye  : mono projection for stereo left eye.
                                                      ## ! - Projection_MonoRightEye : mono projection for stereo right eye.
                                                      ## ! Default constructor.
                                                      ## ! Initializes camera with the following properties:
                                                      ## ! Eye (0, 0, -2); Center (0, 0, 0); Up (0, 1, 0);
                                                      ## ! Type (Orthographic); FOVy (45); Scale (1000); IsStereo(false);
                                                      ## ! ZNear (0.001); ZFar (3000.0); Aspect(1);
                                                      ## ! ZFocus(1.0); ZFocusType(Relative); IOD(0.05); IODType(Relative)
                                                      ## ! Get camera look direction.
                                                      ## ! @return camera look direction.
                                                      ## ! Transform orientation components of the camera:
                                                      ## ! Eye, Up and Center points.
                                                      ## ! @param theTrsf [in] the transformation to apply.
                                                      ## ! Project point from world coordinate space to
                                                      ## ! normalized device coordinates (mapping).
                                                      ## ! @param thePnt [in] the 3D point in WCS.
                                                      ## ! @return mapped point in NDC.
                                                      ## ! @return projection modification state of the camera.
                                                      ## ! Get orientation matrix.
                                                      ## ! @return camera orientation matrix.
                                                      ## ! Get stereo projection matrices.
                                                      ## ! @param theProjL      [out] left  eye projection matrix
                                                      ## ! @param theHeadToEyeL [out] left  head to eye translation matrix
                                                      ## ! @param theProjR      [out] right eye projection matrix
                                                      ## ! @param theHeadToEyeR [out] right head to eye translation matrix
                                                      ## ! Get stereo projection matrices.
                                                      ## ! @param theProjL      [out] left  eye projection matrix
                                                      ## ! @param theHeadToEyeL [out] left  head to eye translation matrix
                                                      ## ! @param theProjR      [out] right eye projection matrix
                                                      ## ! @param theHeadToEyeR [out] right head to eye translation matrix
                                                      ## ! Compose orthographic projection matrix for the passed camera volume mapping.
                                                      ## ! @param theOutMx [out] the projection matrix
                                                      ## ! @param theLRBT [in] the left/right/bottom/top mapping (clipping) coordinates
                                                      ## ! @param theNear [in] the near mapping (clipping) coordinate
                                                      ## ! @param theFar [in] the far mapping (clipping) coordinate
                                                      ## ! Enumerates vertices of view volume.
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

  Graphic3dCameraProjection* {.size: sizeof(cint),
                              importcpp: "Graphic3d_Camera::Projection",
                              header: "Graphic3d_Camera.hxx".} = enum
    ProjectionOrthographic, ProjectionPerspective, ProjectionStereo,
    ProjectionMonoLeftEye, ProjectionMonoRightEye


type
  Graphic3dCameraFocusType* {.size: sizeof(cint),
                             importcpp: "Graphic3d_Camera::FocusType",
                             header: "Graphic3d_Camera.hxx".} = enum
    FocusTypeAbsolute, FocusTypeRelative


type
  Graphic3dCameraIODType* {.size: sizeof(cint),
                           importcpp: "Graphic3d_Camera::IODType",
                           header: "Graphic3d_Camera.hxx".} = enum
    IODTypeAbsolute, IODTypeRelative


proc constructGraphic3dCamera*(): Graphic3dCamera {.constructor,
    importcpp: "Graphic3d_Camera(@)", header: "Graphic3d_Camera.hxx".}
proc constructGraphic3dCamera*(theOther: Handle[Graphic3dCamera]): Graphic3dCamera {.
    constructor, importcpp: "Graphic3d_Camera(@)", header: "Graphic3d_Camera.hxx".}
proc copyMappingData*(this: var Graphic3dCamera;
                     theOtherCamera: Handle[Graphic3dCamera]) {.
    importcpp: "CopyMappingData", header: "Graphic3d_Camera.hxx".}
proc copyOrientationData*(this: var Graphic3dCamera;
                         theOtherCamera: Handle[Graphic3dCamera]) {.
    importcpp: "CopyOrientationData", header: "Graphic3d_Camera.hxx".}
proc copy*(this: var Graphic3dCamera; theOther: Handle[Graphic3dCamera]) {.
    importcpp: "Copy", header: "Graphic3d_Camera.hxx".}
proc direction*(this: Graphic3dCamera): Dir {.noSideEffect, importcpp: "Direction",
    header: "Graphic3d_Camera.hxx".}
proc setDirectionFromEye*(this: var Graphic3dCamera; theDir: Dir) {.
    importcpp: "SetDirectionFromEye", header: "Graphic3d_Camera.hxx".}
proc setDirection*(this: var Graphic3dCamera; theDir: Dir) {.
    importcpp: "SetDirection", header: "Graphic3d_Camera.hxx".}
proc up*(this: Graphic3dCamera): Dir {.noSideEffect, importcpp: "Up",
                                   header: "Graphic3d_Camera.hxx".}
proc setUp*(this: var Graphic3dCamera; theUp: Dir) {.importcpp: "SetUp",
    header: "Graphic3d_Camera.hxx".}
proc orthogonalizeUp*(this: var Graphic3dCamera) {.importcpp: "OrthogonalizeUp",
    header: "Graphic3d_Camera.hxx".}
proc orthogonalizedUp*(this: Graphic3dCamera): Dir {.noSideEffect,
    importcpp: "OrthogonalizedUp", header: "Graphic3d_Camera.hxx".}
proc sideRight*(this: Graphic3dCamera): Dir {.noSideEffect, importcpp: "SideRight",
    header: "Graphic3d_Camera.hxx".}
proc eye*(this: Graphic3dCamera): Pnt {.noSideEffect, importcpp: "Eye",
                                    header: "Graphic3d_Camera.hxx".}
proc moveEyeTo*(this: var Graphic3dCamera; theEye: Pnt) {.importcpp: "MoveEyeTo",
    header: "Graphic3d_Camera.hxx".}
proc setEyeAndCenter*(this: var Graphic3dCamera; theEye: Pnt; theCenter: Pnt) {.
    importcpp: "SetEyeAndCenter", header: "Graphic3d_Camera.hxx".}
proc setEye*(this: var Graphic3dCamera; theEye: Pnt) {.importcpp: "SetEye",
    header: "Graphic3d_Camera.hxx".}
proc center*(this: Graphic3dCamera): Pnt {.noSideEffect, importcpp: "Center",
                                       header: "Graphic3d_Camera.hxx".}
proc setCenter*(this: var Graphic3dCamera; theCenter: Pnt) {.importcpp: "SetCenter",
    header: "Graphic3d_Camera.hxx".}
proc distance*(this: Graphic3dCamera): float {.noSideEffect, importcpp: "Distance",
    header: "Graphic3d_Camera.hxx".}
proc setDistance*(this: var Graphic3dCamera; theDistance: float) {.
    importcpp: "SetDistance", header: "Graphic3d_Camera.hxx".}
proc scale*(this: Graphic3dCamera): float {.noSideEffect, importcpp: "Scale",
                                        header: "Graphic3d_Camera.hxx".}
proc setScale*(this: var Graphic3dCamera; theScale: float) {.importcpp: "SetScale",
    header: "Graphic3d_Camera.hxx".}
proc axialScale*(this: Graphic3dCamera): Xyz {.noSideEffect, importcpp: "AxialScale",
    header: "Graphic3d_Camera.hxx".}
proc setAxialScale*(this: var Graphic3dCamera; theAxialScale: Xyz) {.
    importcpp: "SetAxialScale", header: "Graphic3d_Camera.hxx".}
proc setProjectionType*(this: var Graphic3dCamera;
                       theProjection: Graphic3dCameraProjection) {.
    importcpp: "SetProjectionType", header: "Graphic3d_Camera.hxx".}
proc projectionType*(this: Graphic3dCamera): Graphic3dCameraProjection {.
    noSideEffect, importcpp: "ProjectionType", header: "Graphic3d_Camera.hxx".}
proc isOrthographic*(this: Graphic3dCamera): bool {.noSideEffect,
    importcpp: "IsOrthographic", header: "Graphic3d_Camera.hxx".}
proc isStereo*(this: Graphic3dCamera): bool {.noSideEffect, importcpp: "IsStereo",
    header: "Graphic3d_Camera.hxx".}
proc setFOVy*(this: var Graphic3dCamera; theFOVy: float) {.importcpp: "SetFOVy",
    header: "Graphic3d_Camera.hxx".}
proc fOVy*(this: Graphic3dCamera): float {.noSideEffect, importcpp: "FOVy",
                                       header: "Graphic3d_Camera.hxx".}
proc fOVx*(this: Graphic3dCamera): float {.noSideEffect, importcpp: "FOVx",
                                       header: "Graphic3d_Camera.hxx".}
proc fOV2d*(this: Graphic3dCamera): float {.noSideEffect, importcpp: "FOV2d",
                                        header: "Graphic3d_Camera.hxx".}
proc setFOV2d*(this: var Graphic3dCamera; theFOV: float) {.importcpp: "SetFOV2d",
    header: "Graphic3d_Camera.hxx".}
proc zFitAll*(this: Graphic3dCamera; theScaleFactor: float; theMinMax: BndBox;
             theGraphicBB: BndBox; theZNear: var float; theZFar: var float): bool {.
    noSideEffect, importcpp: "ZFitAll", header: "Graphic3d_Camera.hxx".}
proc zFitAll*(this: var Graphic3dCamera; theScaleFactor: float; theMinMax: BndBox;
             theGraphicBB: BndBox) {.importcpp: "ZFitAll",
                                   header: "Graphic3d_Camera.hxx".}
proc setZRange*(this: var Graphic3dCamera; theZNear: float; theZFar: float) {.
    importcpp: "SetZRange", header: "Graphic3d_Camera.hxx".}
proc zNear*(this: Graphic3dCamera): float {.noSideEffect, importcpp: "ZNear",
                                        header: "Graphic3d_Camera.hxx".}
proc zFar*(this: Graphic3dCamera): float {.noSideEffect, importcpp: "ZFar",
                                       header: "Graphic3d_Camera.hxx".}
proc setAspect*(this: var Graphic3dCamera; theAspect: float) {.importcpp: "SetAspect",
    header: "Graphic3d_Camera.hxx".}
proc aspect*(this: Graphic3dCamera): float {.noSideEffect, importcpp: "Aspect",
    header: "Graphic3d_Camera.hxx".}
proc setZFocus*(this: var Graphic3dCamera; theType: Graphic3dCameraFocusType;
               theZFocus: float) {.importcpp: "SetZFocus",
                                 header: "Graphic3d_Camera.hxx".}
proc zFocus*(this: Graphic3dCamera): float {.noSideEffect, importcpp: "ZFocus",
    header: "Graphic3d_Camera.hxx".}
proc zFocusType*(this: Graphic3dCamera): Graphic3dCameraFocusType {.noSideEffect,
    importcpp: "ZFocusType", header: "Graphic3d_Camera.hxx".}
proc setIOD*(this: var Graphic3dCamera; theType: Graphic3dCameraIODType; theIOD: float) {.
    importcpp: "SetIOD", header: "Graphic3d_Camera.hxx".}
proc iod*(this: Graphic3dCamera): float {.noSideEffect, importcpp: "IOD",
                                      header: "Graphic3d_Camera.hxx".}
proc getIODType*(this: Graphic3dCamera): Graphic3dCameraIODType {.noSideEffect,
    importcpp: "GetIODType", header: "Graphic3d_Camera.hxx".}
proc tile*(this: Graphic3dCamera): Graphic3dCameraTile {.noSideEffect,
    importcpp: "Tile", header: "Graphic3d_Camera.hxx".}
proc setTile*(this: var Graphic3dCamera; theTile: Graphic3dCameraTile) {.
    importcpp: "SetTile", header: "Graphic3d_Camera.hxx".}
proc transform*(this: var Graphic3dCamera; theTrsf: Trsf) {.importcpp: "Transform",
    header: "Graphic3d_Camera.hxx".}
proc viewDimensions*(this: Graphic3dCamera): Xyz {.noSideEffect,
    importcpp: "ViewDimensions", header: "Graphic3d_Camera.hxx".}
proc viewDimensions*(this: Graphic3dCamera; theZValue: float): Xyz {.noSideEffect,
    importcpp: "ViewDimensions", header: "Graphic3d_Camera.hxx".}
proc nDC2dOffsetX*(this: Graphic3dCamera): float {.noSideEffect,
    importcpp: "NDC2dOffsetX", header: "Graphic3d_Camera.hxx".}
proc nDC2dOffsetY*(this: Graphic3dCamera): float {.noSideEffect,
    importcpp: "NDC2dOffsetY", header: "Graphic3d_Camera.hxx".}
proc frustum*(this: Graphic3dCamera; theLeft: var Pln; theRight: var Pln;
             theBottom: var Pln; theTop: var Pln; theNear: var Pln; theFar: var Pln) {.
    noSideEffect, importcpp: "Frustum", header: "Graphic3d_Camera.hxx".}
proc project*(this: Graphic3dCamera; thePnt: Pnt): Pnt {.noSideEffect,
    importcpp: "Project", header: "Graphic3d_Camera.hxx".}
proc unProject*(this: Graphic3dCamera; thePnt: Pnt): Pnt {.noSideEffect,
    importcpp: "UnProject", header: "Graphic3d_Camera.hxx".}
proc convertView2Proj*(this: Graphic3dCamera; thePnt: Pnt): Pnt {.noSideEffect,
    importcpp: "ConvertView2Proj", header: "Graphic3d_Camera.hxx".}
proc convertProj2View*(this: Graphic3dCamera; thePnt: Pnt): Pnt {.noSideEffect,
    importcpp: "ConvertProj2View", header: "Graphic3d_Camera.hxx".}
proc convertWorld2View*(this: Graphic3dCamera; thePnt: Pnt): Pnt {.noSideEffect,
    importcpp: "ConvertWorld2View", header: "Graphic3d_Camera.hxx".}
proc convertView2World*(this: Graphic3dCamera; thePnt: Pnt): Pnt {.noSideEffect,
    importcpp: "ConvertView2World", header: "Graphic3d_Camera.hxx".}
proc worldViewProjState*(this: Graphic3dCamera): Graphic3dWorldViewProjState {.
    noSideEffect, importcpp: "WorldViewProjState", header: "Graphic3d_Camera.hxx".}
proc projectionState*(this: Graphic3dCamera): StandardSize {.noSideEffect,
    importcpp: "ProjectionState", header: "Graphic3d_Camera.hxx".}
proc worldViewState*(this: Graphic3dCamera): StandardSize {.noSideEffect,
    importcpp: "WorldViewState", header: "Graphic3d_Camera.hxx".}
proc orientationMatrix*(this: Graphic3dCamera): Graphic3dMat4d {.noSideEffect,
    importcpp: "OrientationMatrix", header: "Graphic3d_Camera.hxx".}
proc orientationMatrixF*(this: Graphic3dCamera): Graphic3dMat4 {.noSideEffect,
    importcpp: "OrientationMatrixF", header: "Graphic3d_Camera.hxx".}
proc projectionMatrix*(this: Graphic3dCamera): Graphic3dMat4d {.noSideEffect,
    importcpp: "ProjectionMatrix", header: "Graphic3d_Camera.hxx".}
proc projectionMatrixF*(this: Graphic3dCamera): Graphic3dMat4 {.noSideEffect,
    importcpp: "ProjectionMatrixF", header: "Graphic3d_Camera.hxx".}
proc projectionStereoLeft*(this: Graphic3dCamera): Graphic3dMat4d {.noSideEffect,
    importcpp: "ProjectionStereoLeft", header: "Graphic3d_Camera.hxx".}
proc projectionStereoLeftF*(this: Graphic3dCamera): Graphic3dMat4 {.noSideEffect,
    importcpp: "ProjectionStereoLeftF", header: "Graphic3d_Camera.hxx".}
proc projectionStereoRight*(this: Graphic3dCamera): Graphic3dMat4d {.noSideEffect,
    importcpp: "ProjectionStereoRight", header: "Graphic3d_Camera.hxx".}
proc projectionStereoRightF*(this: Graphic3dCamera): Graphic3dMat4 {.noSideEffect,
    importcpp: "ProjectionStereoRightF", header: "Graphic3d_Camera.hxx".}
proc invalidateProjection*(this: var Graphic3dCamera) {.
    importcpp: "InvalidateProjection", header: "Graphic3d_Camera.hxx".}
proc invalidateOrientation*(this: var Graphic3dCamera) {.
    importcpp: "InvalidateOrientation", header: "Graphic3d_Camera.hxx".}
proc stereoProjection*(this: Graphic3dCamera; theProjL: var Graphic3dMat4d;
                      theHeadToEyeL: var Graphic3dMat4d;
                      theProjR: var Graphic3dMat4d;
                      theHeadToEyeR: var Graphic3dMat4d) {.noSideEffect,
    importcpp: "StereoProjection", header: "Graphic3d_Camera.hxx".}
proc stereoProjectionF*(this: Graphic3dCamera; theProjL: var Graphic3dMat4;
                       theHeadToEyeL: var Graphic3dMat4;
                       theProjR: var Graphic3dMat4;
                       theHeadToEyeR: var Graphic3dMat4) {.noSideEffect,
    importcpp: "StereoProjectionF", header: "Graphic3d_Camera.hxx".}
proc resetCustomProjection*(this: var Graphic3dCamera) {.
    importcpp: "ResetCustomProjection", header: "Graphic3d_Camera.hxx".}
proc isCustomStereoFrustum*(this: Graphic3dCamera): bool {.noSideEffect,
    importcpp: "IsCustomStereoFrustum", header: "Graphic3d_Camera.hxx".}
proc setCustomStereoFrustums*(this: var Graphic3dCamera;
                             theFrustumL: AspectFrustumLRBT[float];
                             theFrustumR: AspectFrustumLRBT[float]) {.
    importcpp: "SetCustomStereoFrustums", header: "Graphic3d_Camera.hxx".}
proc isCustomStereoProjection*(this: Graphic3dCamera): bool {.noSideEffect,
    importcpp: "IsCustomStereoProjection", header: "Graphic3d_Camera.hxx".}
proc setCustomStereoProjection*(this: var Graphic3dCamera; theProjL: Graphic3dMat4d;
                               theHeadToEyeL: Graphic3dMat4d;
                               theProjR: Graphic3dMat4d;
                               theHeadToEyeR: Graphic3dMat4d) {.
    importcpp: "SetCustomStereoProjection", header: "Graphic3d_Camera.hxx".}
proc isCustomMonoProjection*(this: Graphic3dCamera): bool {.noSideEffect,
    importcpp: "IsCustomMonoProjection", header: "Graphic3d_Camera.hxx".}
proc setCustomMonoProjection*(this: var Graphic3dCamera; theProj: Graphic3dMat4d) {.
    importcpp: "SetCustomMonoProjection", header: "Graphic3d_Camera.hxx".}
proc dumpJson*(this: Graphic3dCamera; theOStream: var StandardOStream;
              theDepth: int = -1) {.noSideEffect, importcpp: "DumpJson",
                                header: "Graphic3d_Camera.hxx".}
const
  Graphic3dCameraFrustumVertLeftBottomNear* = 0
  Graphic3dCameraFrustumVertLeftBottomFar* = 1
  Graphic3dCameraFrustumVertLeftTopNear* = 2
  Graphic3dCameraFrustumVertLeftTopFar* = 3
  Graphic3dCameraFrustumVertRightBottomNear* = 4
  Graphic3dCameraFrustumVertRightBottomFar* = 5
  Graphic3dCameraFrustumVertRightTopNear* = 6
  Graphic3dCameraFrustumVertRightTopFar* = 7
  Graphic3dCameraFrustumVerticesNB* = 8

proc frustumPoints*(this: Graphic3dCamera;
                   thePoints: var NCollectionArray1[Graphic3dVec3d];
                   theModelWorld: Graphic3dMat4d = graphic3dMat4d()) {.noSideEffect,
    importcpp: "FrustumPoints", header: "Graphic3d_Camera.hxx".}
type
  Graphic3dCamerabaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Graphic3d_Camera::get_type_name(@)",
                            header: "Graphic3d_Camera.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Graphic3d_Camera::get_type_descriptor(@)",
    header: "Graphic3d_Camera.hxx".}
proc dynamicType*(this: Graphic3dCamera): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Graphic3d_Camera.hxx".}
discard "forward decl of Graphic3d_Camera"
type
  HandleGraphic3dCameraGraphic3dCamera* = Handle[Graphic3dCamera]

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
  Graphic3dCameraLerp* = NCollectionLerp[Handle[Graphic3dCamera]]

