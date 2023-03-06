{.hints:off.}
import ../../tkmath/tcolgp/tcolgp_types
import ../../tkmath/gp/gp_types
import ../../tkernel/standard/standard_types
import ../../tkernel/ncollection/ncollection_types
import ../graphic3d/[graphic3d_types, graphic3d_worldviewprojstate]
import selectmgr_types
import ../../tkernel/ncollection/ncollection_types



##  Created on: 2014-05-22
##  Created by: Varvara POSKONINA
##  Copyright (c) 2005-2014 OPEN CASCADE SAS
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

## ! This class is an interface for different types of selecting frustums,
## ! defining different selection types, like point, box or polyline
## ! selection. It contains signatures of functions for detection of
## ! overlap by sensitive entity and initializes some data for building
## ! the selecting frustum



proc newSelectMgrBaseFrustum*(): SelectMgrBaseFrustum {.cdecl, constructor,
    importcpp: "SelectMgr_BaseFrustum(@)", header: "SelectMgr_BaseFrustum.hxx".}
proc destroySelectMgrBaseFrustum*(this: var SelectMgrBaseFrustum) {.cdecl,
    importcpp: "#.~SelectMgr_BaseFrustum()", header: "SelectMgr_BaseFrustum.hxx".}
proc camera*(this: SelectMgrBaseFrustum): Handle[Graphic3dCamera] {.noSideEffect,
    cdecl, importcpp: "Camera", header: "SelectMgr_BaseFrustum.hxx".}
proc setCamera*(this: var SelectMgrBaseFrustum; theCamera: Handle[Graphic3dCamera]) {.
    cdecl, importcpp: "SetCamera", header: "SelectMgr_BaseFrustum.hxx".}
proc setCamera*(this: var SelectMgrBaseFrustum; theProjection: Graphic3dMat4d;
               theWorldView: Graphic3dMat4d; theIsOrthographic: bool; theWVPState: Graphic3dWorldViewProjState = newGraphic3dWorldViewProjState()) {.
    cdecl, importcpp: "SetCamera", header: "SelectMgr_BaseFrustum.hxx".}
proc projectionMatrix*(this: SelectMgrBaseFrustum): Graphic3dMat4d {.noSideEffect,
    cdecl, importcpp: "ProjectionMatrix", header: "SelectMgr_BaseFrustum.hxx".}
proc worldViewMatrix*(this: SelectMgrBaseFrustum): Graphic3dMat4d {.noSideEffect,
    cdecl, importcpp: "WorldViewMatrix", header: "SelectMgr_BaseFrustum.hxx".}
proc worldViewProjState*(this: SelectMgrBaseFrustum): Graphic3dWorldViewProjState {.
    noSideEffect, cdecl, importcpp: "WorldViewProjState", header: "SelectMgr_BaseFrustum.hxx".}
proc setPixelTolerance*(this: var SelectMgrBaseFrustum; theTol: cint) {.cdecl,
    importcpp: "SetPixelTolerance", header: "SelectMgr_BaseFrustum.hxx".}
proc setWindowSize*(this: var SelectMgrBaseFrustum; theWidth: cint; theHeight: cint) {.
    cdecl, importcpp: "SetWindowSize", header: "SelectMgr_BaseFrustum.hxx".}
proc windowSize*(this: SelectMgrBaseFrustum; theWidth: var cint; theHeight: var cint) {.
    noSideEffect, cdecl, importcpp: "WindowSize", header: "SelectMgr_BaseFrustum.hxx".}
proc setViewport*(this: var SelectMgrBaseFrustum; theX: cfloat; theY: cfloat;
                 theWidth: cfloat; theHeight: cfloat) {.cdecl,
    importcpp: "SetViewport", header: "SelectMgr_BaseFrustum.hxx".}
proc setBuilder*(this: var SelectMgrBaseFrustum;
                theBuilder: Handle[SelectMgrFrustumBuilder]) {.cdecl,
    importcpp: "SetBuilder", header: "SelectMgr_BaseFrustum.hxx".}
proc build*(this: var SelectMgrBaseFrustum; a2: Pnt2dObj) {.cdecl, importcpp: "Build",
    header: "SelectMgr_BaseFrustum.hxx".}
  ## thePoint
proc build*(this: var SelectMgrBaseFrustum; a2: Pnt2dObj; ## theMinPt
           a3: Pnt2dObj) {.cdecl, importcpp: "Build", header: "SelectMgr_BaseFrustum.hxx".}
  ## theMaxPt
proc build*(this: var SelectMgrBaseFrustum; a2: Pnt2dObj; ## theP1
           a3: Pnt2dObj;          ## theP2
           a4: Pnt2dObj) {.cdecl, importcpp: "Build", header: "SelectMgr_BaseFrustum.hxx".}
  ## theP3
proc build*(this: var SelectMgrBaseFrustum; a2: TColgpArray1OfPnt2d) {.cdecl,
    importcpp: "Build", header: "SelectMgr_BaseFrustum.hxx".}
  ## thePoints
proc scaleAndTransform*(this: SelectMgrBaseFrustum; a2: cint; a3: GTrsf): Handle[
    SelectMgrBaseFrustum] {.noSideEffect, cdecl, importcpp: "ScaleAndTransform",
                           header: "SelectMgr_BaseFrustum.hxx".}
  ## theTrsf
proc overlaps*(this: SelectMgrBaseFrustum; theBoxMin: SelectMgrVec3;
              theBoxMax: SelectMgrVec3; theClipRange: SelectMgrViewClipRange;
              thePickResult: var SelectBasicsPickResult): bool {.noSideEffect, cdecl,
    importcpp: "Overlaps", header: "SelectMgr_BaseFrustum.hxx".}
proc overlaps*(this: SelectMgrBaseFrustum; theBoxMin: SelectMgrVec3;
              theBoxMax: SelectMgrVec3; theInside: ptr bool = nil): bool {.noSideEffect,
    cdecl, importcpp: "Overlaps", header: "SelectMgr_BaseFrustum.hxx".}
proc overlaps*(this: SelectMgrBaseFrustum; thePnt: PntObj;
              theClipRange: SelectMgrViewClipRange;
              thePickResult: var SelectBasicsPickResult): bool {.noSideEffect, cdecl,
    importcpp: "Overlaps", header: "SelectMgr_BaseFrustum.hxx".}
proc overlaps*(this: SelectMgrBaseFrustum; thePnt: PntObj): bool {.noSideEffect, cdecl,
    importcpp: "Overlaps", header: "SelectMgr_BaseFrustum.hxx".}
proc overlaps*(this: SelectMgrBaseFrustum; theArrayOfPnts: TColgpArray1OfPnt;
              theSensType: Select3D_TypeOfSensitivity;
              theClipRange: SelectMgrViewClipRange;
              thePickResult: var SelectBasicsPickResult): bool {.noSideEffect, cdecl,
    importcpp: "Overlaps", header: "SelectMgr_BaseFrustum.hxx".}
proc overlaps*(this: SelectMgrBaseFrustum; thePnt1: PntObj; thePnt2: PntObj;
              theClipRange: SelectMgrViewClipRange;
              thePickResult: var SelectBasicsPickResult): bool {.noSideEffect, cdecl,
    importcpp: "Overlaps", header: "SelectMgr_BaseFrustum.hxx".}
proc overlaps*(this: SelectMgrBaseFrustum; thePt1: PntObj; thePt2: PntObj; thePt3: PntObj;
              theSensType: Select3D_TypeOfSensitivity;
              theClipRange: SelectMgrViewClipRange;
              thePickResult: var SelectBasicsPickResult): bool {.noSideEffect, cdecl,
    importcpp: "Overlaps", header: "SelectMgr_BaseFrustum.hxx".}
proc distToGeometryCenter*(this: SelectMgrBaseFrustum; theCOG: PntObj): cfloat {.
    noSideEffect, cdecl, importcpp: "DistToGeometryCenter", header: "SelectMgr_BaseFrustum.hxx".}
proc detectedPoint*(this: SelectMgrBaseFrustum; theDepth: cfloat): PntObj {.noSideEffect,
    cdecl, importcpp: "DetectedPoint", header: "SelectMgr_BaseFrustum.hxx".}
proc getPlanes*(this: SelectMgrBaseFrustum;
               thePlaneEquations: var NCollectionVector[SelectMgrVec4]) {.
    noSideEffect, cdecl, importcpp: "GetPlanes", header: "SelectMgr_BaseFrustum.hxx".}
proc dumpJson*(this: SelectMgrBaseFrustum; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "SelectMgr_BaseFrustum.hxx".}


