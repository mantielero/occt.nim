import ../../tkmath/gp/gp_types
import ../../tkservice/aspect/aspect_types
import ../../tkernel/standard/standard_types
import graphic3d_types
import ../../tkmath/bnd/bnd_types





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

## ! Forward declaration








proc newGraphic3dCamera*(): Graphic3dCamera {.cdecl, constructor,
    importcpp: "Graphic3d_Camera(@)", header: "Graphic3d_Camera.hxx".}
proc newGraphic3dCamera*(theOther: Handle[Graphic3dCamera]): Graphic3dCamera {.
    cdecl, constructor, importcpp: "Graphic3d_Camera(@)", header: "Graphic3d_Camera.hxx".}
proc copyMappingData*(this: var Graphic3dCamera;
                     theOtherCamera: Handle[Graphic3dCamera]) {.cdecl,
    importcpp: "CopyMappingData", header: "Graphic3d_Camera.hxx".}
proc copyOrientationData*(this: var Graphic3dCamera;
                         theOtherCamera: Handle[Graphic3dCamera]) {.cdecl,
    importcpp: "CopyOrientationData", header: "Graphic3d_Camera.hxx".}
proc copy*(this: var Graphic3dCamera; theOther: Handle[Graphic3dCamera]) {.cdecl,
    importcpp: "Copy", header: "Graphic3d_Camera.hxx".}
proc direction*(this: Graphic3dCamera): DirObj {.noSideEffect, cdecl,
    importcpp: "Direction", header: "Graphic3d_Camera.hxx".}
proc setDirectionFromEye*(this: var Graphic3dCamera; theDir: DirObj) {.cdecl,
    importcpp: "SetDirectionFromEye", header: "Graphic3d_Camera.hxx".}
proc setDirection*(this: var Graphic3dCamera; theDir: DirObj) {.cdecl,
    importcpp: "SetDirection", header: "Graphic3d_Camera.hxx".}
proc up*(this: Graphic3dCamera): DirObj {.noSideEffect, cdecl, importcpp: "Up",
                                   header: "Graphic3d_Camera.hxx".}
proc setUp*(this: var Graphic3dCamera; theUp: DirObj) {.cdecl, importcpp: "SetUp",
    header: "Graphic3d_Camera.hxx".}
proc orthogonalizeUp*(this: var Graphic3dCamera) {.cdecl,
    importcpp: "OrthogonalizeUp", header: "Graphic3d_Camera.hxx".}
proc orthogonalizedUp*(this: Graphic3dCamera): DirObj {.noSideEffect, cdecl,
    importcpp: "OrthogonalizedUp", header: "Graphic3d_Camera.hxx".}
proc sideRight*(this: Graphic3dCamera): DirObj {.noSideEffect, cdecl,
    importcpp: "SideRight", header: "Graphic3d_Camera.hxx".}
proc eye*(this: Graphic3dCamera): PntObj {.noSideEffect, cdecl, importcpp: "Eye",
                                    header: "Graphic3d_Camera.hxx".}
proc moveEyeTo*(this: var Graphic3dCamera; theEye: PntObj) {.cdecl,
    importcpp: "MoveEyeTo", header: "Graphic3d_Camera.hxx".}
proc setEyeAndCenter*(this: var Graphic3dCamera; theEye: PntObj; theCenter: PntObj) {.cdecl,
    importcpp: "SetEyeAndCenter", header: "Graphic3d_Camera.hxx".}
proc setEye*(this: var Graphic3dCamera; theEye: PntObj) {.cdecl, importcpp: "SetEye",
    header: "Graphic3d_Camera.hxx".}
proc center*(this: Graphic3dCamera): PntObj {.noSideEffect, cdecl, importcpp: "Center",
                                       header: "Graphic3d_Camera.hxx".}
proc setCenter*(this: var Graphic3dCamera; theCenter: PntObj) {.cdecl,
    importcpp: "SetCenter", header: "Graphic3d_Camera.hxx".}
proc distance*(this: Graphic3dCamera): cfloat {.noSideEffect, cdecl,
    importcpp: "Distance", header: "Graphic3d_Camera.hxx".}
proc setDistance*(this: var Graphic3dCamera; theDistance: cfloat) {.cdecl,
    importcpp: "SetDistance", header: "Graphic3d_Camera.hxx".}
proc scale*(this: Graphic3dCamera): cfloat {.noSideEffect, cdecl, importcpp: "Scale",
    header: "Graphic3d_Camera.hxx".}
proc setScale*(this: var Graphic3dCamera; theScale: cfloat) {.cdecl,
    importcpp: "SetScale", header: "Graphic3d_Camera.hxx".}
proc axialScale*(this: Graphic3dCamera): XyzObj {.noSideEffect, cdecl,
    importcpp: "AxialScale", header: "Graphic3d_Camera.hxx".}
proc setAxialScale*(this: var Graphic3dCamera; theAxialScale: XyzObj) {.cdecl,
    importcpp: "SetAxialScale", header: "Graphic3d_Camera.hxx".}
proc setProjectionType*(this: var Graphic3dCamera;
                       theProjection: Graphic3dCameraProjection) {.cdecl,
    importcpp: "SetProjectionType", header: "Graphic3d_Camera.hxx".}
proc projectionType*(this: Graphic3dCamera): Graphic3dCameraProjection {.
    noSideEffect, cdecl, importcpp: "ProjectionType", header: "Graphic3d_Camera.hxx".}
proc isOrthographic*(this: Graphic3dCamera): bool {.noSideEffect, cdecl,
    importcpp: "IsOrthographic", header: "Graphic3d_Camera.hxx".}
proc isStereo*(this: Graphic3dCamera): bool {.noSideEffect, cdecl,
    importcpp: "IsStereo", header: "Graphic3d_Camera.hxx".}
proc setFOVy*(this: var Graphic3dCamera; theFOVy: cfloat) {.cdecl,
    importcpp: "SetFOVy", header: "Graphic3d_Camera.hxx".}
proc fOVy*(this: Graphic3dCamera): cfloat {.noSideEffect, cdecl, importcpp: "FOVy",
                                        header: "Graphic3d_Camera.hxx".}
proc fOVx*(this: Graphic3dCamera): cfloat {.noSideEffect, cdecl, importcpp: "FOVx",
                                        header: "Graphic3d_Camera.hxx".}
proc fOV2d*(this: Graphic3dCamera): cfloat {.noSideEffect, cdecl, importcpp: "FOV2d",
    header: "Graphic3d_Camera.hxx".}
proc setFOV2d*(this: var Graphic3dCamera; theFOV: cfloat) {.cdecl,
    importcpp: "SetFOV2d", header: "Graphic3d_Camera.hxx".}
proc zFitAll*(this: Graphic3dCamera; theScaleFactor: cfloat; theMinMax: BndBox;
             theGraphicBB: BndBox; theZNear: var cfloat; theZFar: var cfloat): bool {.
    noSideEffect, cdecl, importcpp: "ZFitAll", header: "Graphic3d_Camera.hxx".}
proc zFitAll*(this: var Graphic3dCamera; theScaleFactor: cfloat; theMinMax: BndBox;
             theGraphicBB: BndBox) {.cdecl, importcpp: "ZFitAll", header: "Graphic3d_Camera.hxx".}
proc setZRange*(this: var Graphic3dCamera; theZNear: cfloat; theZFar: cfloat) {.cdecl,
    importcpp: "SetZRange", header: "Graphic3d_Camera.hxx".}
proc zNear*(this: Graphic3dCamera): cfloat {.noSideEffect, cdecl, importcpp: "ZNear",
    header: "Graphic3d_Camera.hxx".}
proc zFar*(this: Graphic3dCamera): cfloat {.noSideEffect, cdecl, importcpp: "ZFar",
                                        header: "Graphic3d_Camera.hxx".}
proc setAspect*(this: var Graphic3dCamera; theAspect: cfloat) {.cdecl,
    importcpp: "SetAspect", header: "Graphic3d_Camera.hxx".}
proc aspect*(this: Graphic3dCamera): cfloat {.noSideEffect, cdecl,
    importcpp: "Aspect", header: "Graphic3d_Camera.hxx".}
proc setZFocus*(this: var Graphic3dCamera; theType: Graphic3dCameraFocusType;
               theZFocus: cfloat) {.cdecl, importcpp: "SetZFocus", header: "Graphic3d_Camera.hxx".}
proc zFocus*(this: Graphic3dCamera): cfloat {.noSideEffect, cdecl,
    importcpp: "ZFocus", header: "Graphic3d_Camera.hxx".}
proc zFocusType*(this: Graphic3dCamera): Graphic3dCameraFocusType {.noSideEffect,
    cdecl, importcpp: "ZFocusType", header: "Graphic3d_Camera.hxx".}
proc setIOD*(this: var Graphic3dCamera; theType: Graphic3dCameraIODType;
            theIOD: cfloat) {.cdecl, importcpp: "SetIOD", header: "Graphic3d_Camera.hxx".}
proc iod*(this: Graphic3dCamera): cfloat {.noSideEffect, cdecl, importcpp: "IOD",
                                       header: "Graphic3d_Camera.hxx".}
proc getIODType*(this: Graphic3dCamera): Graphic3dCameraIODType {.noSideEffect,
    cdecl, importcpp: "GetIODType", header: "Graphic3d_Camera.hxx".}
proc tile*(this: Graphic3dCamera): Graphic3dCameraTile {.noSideEffect, cdecl,
    importcpp: "Tile", header: "Graphic3d_Camera.hxx".}
proc setTile*(this: var Graphic3dCamera; theTile: Graphic3dCameraTile) {.cdecl,
    importcpp: "SetTile", header: "Graphic3d_Camera.hxx".}
proc transform*(this: var Graphic3dCamera; theTrsf: TrsfObj) {.cdecl,
    importcpp: "Transform", header: "Graphic3d_Camera.hxx".}
proc viewDimensions*(this: Graphic3dCamera): XyzObj {.noSideEffect, cdecl,
    importcpp: "ViewDimensions", header: "Graphic3d_Camera.hxx".}
proc viewDimensions*(this: Graphic3dCamera; theZValue: cfloat): XyzObj {.noSideEffect,
    cdecl, importcpp: "ViewDimensions", header: "Graphic3d_Camera.hxx".}
proc nDC2dOffsetX*(this: Graphic3dCamera): cfloat {.noSideEffect, cdecl,
    importcpp: "NDC2dOffsetX", header: "Graphic3d_Camera.hxx".}
proc nDC2dOffsetY*(this: Graphic3dCamera): cfloat {.noSideEffect, cdecl,
    importcpp: "NDC2dOffsetY", header: "Graphic3d_Camera.hxx".}
proc frustum*(this: Graphic3dCamera; theLeft: var PlnObj; theRight: var PlnObj;
             theBottom: var PlnObj; theTop: var PlnObj; theNear: var PlnObj; theFar: var PlnObj) {.
    noSideEffect, cdecl, importcpp: "Frustum", header: "Graphic3d_Camera.hxx".}
proc project*(this: Graphic3dCamera; thePnt: PntObj): PntObj {.noSideEffect, cdecl,
    importcpp: "Project", header: "Graphic3d_Camera.hxx".}
proc unProject*(this: Graphic3dCamera; thePnt: PntObj): PntObj {.noSideEffect, cdecl,
    importcpp: "UnProject", header: "Graphic3d_Camera.hxx".}
proc convertView2Proj*(this: Graphic3dCamera; thePnt: PntObj): PntObj {.noSideEffect, cdecl,
    importcpp: "ConvertView2Proj", header: "Graphic3d_Camera.hxx".}
proc convertProj2View*(this: Graphic3dCamera; thePnt: PntObj): PntObj {.noSideEffect, cdecl,
    importcpp: "ConvertProj2View", header: "Graphic3d_Camera.hxx".}
proc convertWorld2View*(this: Graphic3dCamera; thePnt: PntObj): PntObj {.noSideEffect, cdecl,
    importcpp: "ConvertWorld2View", header: "Graphic3d_Camera.hxx".}
proc convertView2World*(this: Graphic3dCamera; thePnt: PntObj): PntObj {.noSideEffect, cdecl,
    importcpp: "ConvertView2World", header: "Graphic3d_Camera.hxx".}
proc worldViewProjState*(this: Graphic3dCamera): Graphic3dWorldViewProjState {.
    noSideEffect, cdecl, importcpp: "WorldViewProjState", header: "Graphic3d_Camera.hxx".}
proc projectionState*(this: Graphic3dCamera): csize_t {.noSideEffect, cdecl,
    importcpp: "ProjectionState", header: "Graphic3d_Camera.hxx".}
proc worldViewState*(this: Graphic3dCamera): csize_t {.noSideEffect, cdecl,
    importcpp: "WorldViewState", header: "Graphic3d_Camera.hxx".}
proc orientationMatrix*(this: Graphic3dCamera): Graphic3dMat4d {.noSideEffect, cdecl,
    importcpp: "OrientationMatrix", header: "Graphic3d_Camera.hxx".}
proc orientationMatrixF*(this: Graphic3dCamera): Graphic3dMat4 {.noSideEffect, cdecl,
    importcpp: "OrientationMatrixF", header: "Graphic3d_Camera.hxx".}
proc projectionMatrix*(this: Graphic3dCamera): Graphic3dMat4d {.noSideEffect, cdecl,
    importcpp: "ProjectionMatrix", header: "Graphic3d_Camera.hxx".}
proc projectionMatrixF*(this: Graphic3dCamera): Graphic3dMat4 {.noSideEffect, cdecl,
    importcpp: "ProjectionMatrixF", header: "Graphic3d_Camera.hxx".}
proc projectionStereoLeft*(this: Graphic3dCamera): Graphic3dMat4d {.noSideEffect,
    cdecl, importcpp: "ProjectionStereoLeft", header: "Graphic3d_Camera.hxx".}
proc projectionStereoLeftF*(this: Graphic3dCamera): Graphic3dMat4 {.noSideEffect,
    cdecl, importcpp: "ProjectionStereoLeftF", header: "Graphic3d_Camera.hxx".}
proc projectionStereoRight*(this: Graphic3dCamera): Graphic3dMat4d {.noSideEffect,
    cdecl, importcpp: "ProjectionStereoRight", header: "Graphic3d_Camera.hxx".}
proc projectionStereoRightF*(this: Graphic3dCamera): Graphic3dMat4 {.noSideEffect,
    cdecl, importcpp: "ProjectionStereoRightF", header: "Graphic3d_Camera.hxx".}
proc invalidateProjection*(this: var Graphic3dCamera) {.cdecl,
    importcpp: "InvalidateProjection", header: "Graphic3d_Camera.hxx".}
proc invalidateOrientation*(this: var Graphic3dCamera) {.cdecl,
    importcpp: "InvalidateOrientation", header: "Graphic3d_Camera.hxx".}
proc stereoProjection*(this: Graphic3dCamera; theProjL: var Graphic3dMat4d;
                      theHeadToEyeL: var Graphic3dMat4d;
                      theProjR: var Graphic3dMat4d;
                      theHeadToEyeR: var Graphic3dMat4d) {.noSideEffect, cdecl,
    importcpp: "StereoProjection", header: "Graphic3d_Camera.hxx".}
proc stereoProjectionF*(this: Graphic3dCamera; theProjL: var Graphic3dMat4;
                       theHeadToEyeL: var Graphic3dMat4;
                       theProjR: var Graphic3dMat4;
                       theHeadToEyeR: var Graphic3dMat4) {.noSideEffect, cdecl,
    importcpp: "StereoProjectionF", header: "Graphic3d_Camera.hxx".}
proc resetCustomProjection*(this: var Graphic3dCamera) {.cdecl,
    importcpp: "ResetCustomProjection", header: "Graphic3d_Camera.hxx".}
proc isCustomStereoFrustum*(this: Graphic3dCamera): bool {.noSideEffect, cdecl,
    importcpp: "IsCustomStereoFrustum", header: "Graphic3d_Camera.hxx".}
proc setCustomStereoFrustums*(this: var Graphic3dCamera;
                             theFrustumL: AspectFrustumLRBT[cfloat];
                             theFrustumR: AspectFrustumLRBT[cfloat]) {.cdecl,
    importcpp: "SetCustomStereoFrustums", header: "Graphic3d_Camera.hxx".}
proc isCustomStereoProjection*(this: Graphic3dCamera): bool {.noSideEffect, cdecl,
    importcpp: "IsCustomStereoProjection", header: "Graphic3d_Camera.hxx".}
proc setCustomStereoProjection*(this: var Graphic3dCamera; theProjL: Graphic3dMat4d;
                               theHeadToEyeL: Graphic3dMat4d;
                               theProjR: Graphic3dMat4d;
                               theHeadToEyeR: Graphic3dMat4d) {.cdecl,
    importcpp: "SetCustomStereoProjection", header: "Graphic3d_Camera.hxx".}
proc isCustomMonoProjection*(this: Graphic3dCamera): bool {.noSideEffect, cdecl,
    importcpp: "IsCustomMonoProjection", header: "Graphic3d_Camera.hxx".}
proc setCustomMonoProjection*(this: var Graphic3dCamera; theProj: Graphic3dMat4d) {.
    cdecl, importcpp: "SetCustomMonoProjection", header: "Graphic3d_Camera.hxx".}
proc dumpJson*(this: Graphic3dCamera; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
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

#proc frustumPoints*(this: Graphic3dCamera;
#                   thePoints: var NCollectionArray1[Graphic3dVec3d];
#                   theModelWorld: Graphic3dMat4d = graphic3dMat4d()) {.noSideEffect,
#    cdecl, importcpp: "FrustumPoints", header: "Graphic3d_Camera.hxx".}




