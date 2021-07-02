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

type
  SelectMgrBaseFrustum* {.importcpp: "SelectMgr_BaseFrustum",
                         header: "SelectMgr_BaseFrustum.hxx", bycopy.} = object of StandardTransient ##
                                                                                              ## !
                                                                                              ## Creates
                                                                                              ## new
                                                                                              ## selecting
                                                                                              ## volume
                                                                                              ## with
                                                                                              ## pixel
                                                                                              ## toletance
                                                                                              ## set
                                                                                              ## to
                                                                                              ## 2,
                                                                                              ##
                                                                                              ## !
                                                                                              ## orthographic
                                                                                              ## camera
                                                                                              ## and
                                                                                              ## empty
                                                                                              ## frustum
                                                                                              ## builder
    ## !< Pixel tolerance
    ## !< Defines if current camera is orthographic
    ## !< A tool implementing methods for volume build
    ## !< camera definition


proc constructSelectMgrBaseFrustum*(): SelectMgrBaseFrustum {.constructor,
    importcpp: "SelectMgr_BaseFrustum(@)", header: "SelectMgr_BaseFrustum.hxx".}
proc destroySelectMgrBaseFrustum*(this: var SelectMgrBaseFrustum) {.
    importcpp: "#.~SelectMgr_BaseFrustum()", header: "SelectMgr_BaseFrustum.hxx".}
proc camera*(this: SelectMgrBaseFrustum): Handle[Graphic3dCamera] {.noSideEffect,
    importcpp: "Camera", header: "SelectMgr_BaseFrustum.hxx".}
proc setCamera*(this: var SelectMgrBaseFrustum; theCamera: Handle[Graphic3dCamera]) {.
    importcpp: "SetCamera", header: "SelectMgr_BaseFrustum.hxx".}
proc setCamera*(this: var SelectMgrBaseFrustum; theProjection: Graphic3dMat4d;
               theWorldView: Graphic3dMat4d; theIsOrthographic: StandardBoolean;
    theWVPState: Graphic3dWorldViewProjState = graphic3dWorldViewProjState()) {.
    importcpp: "SetCamera", header: "SelectMgr_BaseFrustum.hxx".}
proc projectionMatrix*(this: SelectMgrBaseFrustum): Graphic3dMat4d {.noSideEffect,
    importcpp: "ProjectionMatrix", header: "SelectMgr_BaseFrustum.hxx".}
proc worldViewMatrix*(this: SelectMgrBaseFrustum): Graphic3dMat4d {.noSideEffect,
    importcpp: "WorldViewMatrix", header: "SelectMgr_BaseFrustum.hxx".}
proc worldViewProjState*(this: SelectMgrBaseFrustum): Graphic3dWorldViewProjState {.
    noSideEffect, importcpp: "WorldViewProjState",
    header: "SelectMgr_BaseFrustum.hxx".}
proc setPixelTolerance*(this: var SelectMgrBaseFrustum; theTol: StandardInteger) {.
    importcpp: "SetPixelTolerance", header: "SelectMgr_BaseFrustum.hxx".}
proc setWindowSize*(this: var SelectMgrBaseFrustum; theWidth: StandardInteger;
                   theHeight: StandardInteger) {.importcpp: "SetWindowSize",
    header: "SelectMgr_BaseFrustum.hxx".}
proc windowSize*(this: SelectMgrBaseFrustum; theWidth: var StandardInteger;
                theHeight: var StandardInteger) {.noSideEffect,
    importcpp: "WindowSize", header: "SelectMgr_BaseFrustum.hxx".}
proc setViewport*(this: var SelectMgrBaseFrustum; theX: StandardReal;
                 theY: StandardReal; theWidth: StandardReal; theHeight: StandardReal) {.
    importcpp: "SetViewport", header: "SelectMgr_BaseFrustum.hxx".}
proc setBuilder*(this: var SelectMgrBaseFrustum;
                theBuilder: Handle[SelectMgrFrustumBuilder]) {.
    importcpp: "SetBuilder", header: "SelectMgr_BaseFrustum.hxx".}
proc build*(this: var SelectMgrBaseFrustum; a2: GpPnt2d) {.importcpp: "Build",
    header: "SelectMgr_BaseFrustum.hxx".}
  ## thePoint
proc build*(this: var SelectMgrBaseFrustum; a2: GpPnt2d; ## theMinPt
           a3: GpPnt2d) {.importcpp: "Build", header: "SelectMgr_BaseFrustum.hxx".}
  ## theMaxPt
proc build*(this: var SelectMgrBaseFrustum; a2: GpPnt2d; ## theP1
           a3: GpPnt2d;        ## theP2
           a4: GpPnt2d) {.importcpp: "Build", header: "SelectMgr_BaseFrustum.hxx".}
  ## theP3
proc build*(this: var SelectMgrBaseFrustum; a2: TColgpArray1OfPnt2d) {.
    importcpp: "Build", header: "SelectMgr_BaseFrustum.hxx".}
  ## thePoints
proc scaleAndTransform*(this: SelectMgrBaseFrustum; a2: StandardInteger; ## theScaleFactor
                       a3: GpGTrsf): Handle[SelectMgrBaseFrustum] {.noSideEffect,
    importcpp: "ScaleAndTransform", header: "SelectMgr_BaseFrustum.hxx".}
  ## theTrsf
proc overlaps*(this: SelectMgrBaseFrustum; theBoxMin: SelectMgrVec3;
              theBoxMax: SelectMgrVec3; theClipRange: SelectMgrViewClipRange;
              thePickResult: var SelectBasicsPickResult): StandardBoolean {.
    noSideEffect, importcpp: "Overlaps", header: "SelectMgr_BaseFrustum.hxx".}
proc overlaps*(this: SelectMgrBaseFrustum; theBoxMin: SelectMgrVec3;
              theBoxMax: SelectMgrVec3; theInside: ptr StandardBoolean = nil): StandardBoolean {.
    noSideEffect, importcpp: "Overlaps", header: "SelectMgr_BaseFrustum.hxx".}
proc overlaps*(this: SelectMgrBaseFrustum; thePnt: GpPnt;
              theClipRange: SelectMgrViewClipRange;
              thePickResult: var SelectBasicsPickResult): StandardBoolean {.
    noSideEffect, importcpp: "Overlaps", header: "SelectMgr_BaseFrustum.hxx".}
proc overlaps*(this: SelectMgrBaseFrustum; thePnt: GpPnt): StandardBoolean {.
    noSideEffect, importcpp: "Overlaps", header: "SelectMgr_BaseFrustum.hxx".}
proc overlaps*(this: SelectMgrBaseFrustum; theArrayOfPnts: TColgpArray1OfPnt;
              theSensType: Select3D_TypeOfSensitivity;
              theClipRange: SelectMgrViewClipRange;
              thePickResult: var SelectBasicsPickResult): StandardBoolean {.
    noSideEffect, importcpp: "Overlaps", header: "SelectMgr_BaseFrustum.hxx".}
proc overlaps*(this: SelectMgrBaseFrustum; thePnt1: GpPnt; thePnt2: GpPnt;
              theClipRange: SelectMgrViewClipRange;
              thePickResult: var SelectBasicsPickResult): StandardBoolean {.
    noSideEffect, importcpp: "Overlaps", header: "SelectMgr_BaseFrustum.hxx".}
proc overlaps*(this: SelectMgrBaseFrustum; thePt1: GpPnt; thePt2: GpPnt; thePt3: GpPnt;
              theSensType: Select3D_TypeOfSensitivity;
              theClipRange: SelectMgrViewClipRange;
              thePickResult: var SelectBasicsPickResult): StandardBoolean {.
    noSideEffect, importcpp: "Overlaps", header: "SelectMgr_BaseFrustum.hxx".}
proc distToGeometryCenter*(this: SelectMgrBaseFrustum; theCOG: GpPnt): StandardReal {.
    noSideEffect, importcpp: "DistToGeometryCenter",
    header: "SelectMgr_BaseFrustum.hxx".}
proc detectedPoint*(this: SelectMgrBaseFrustum; theDepth: StandardReal): GpPnt {.
    noSideEffect, importcpp: "DetectedPoint", header: "SelectMgr_BaseFrustum.hxx".}
proc getPlanes*(this: SelectMgrBaseFrustum;
               thePlaneEquations: var NCollectionVector[SelectMgrVec4]) {.
    noSideEffect, importcpp: "GetPlanes", header: "SelectMgr_BaseFrustum.hxx".}
proc dumpJson*(this: SelectMgrBaseFrustum; theOStream: var StandardOStream;
              theDepth: StandardInteger = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "SelectMgr_BaseFrustum.hxx".}
type
  SelectMgrBaseFrustumbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "SelectMgr_BaseFrustum::get_type_name(@)",
                            header: "SelectMgr_BaseFrustum.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "SelectMgr_BaseFrustum::get_type_descriptor(@)",
    header: "SelectMgr_BaseFrustum.hxx".}
proc dynamicType*(this: SelectMgrBaseFrustum): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "SelectMgr_BaseFrustum.hxx".}

