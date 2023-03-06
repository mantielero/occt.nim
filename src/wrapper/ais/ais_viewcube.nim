import ../selectmgr/selectmgr_types
import ../tcollection/tcollection_types
import ../aspect/aspect_types
import ../standard/standard_types
import ais_types
import ../prs3d/prs3d_types
import ../prsmgr/prsmgr_types
import ../v3d/v3d_types
import ../graphic3d/graphic3d_types
import ../quantity/quantity_types





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



proc isBoxSide*(theOrient: V3dTypeOfOrientation): bool {.cdecl,
    importcpp: "AIS_ViewCube::IsBoxSide(@)", header: "AIS_ViewCube.hxx".}
proc isBoxEdge*(theOrient: V3dTypeOfOrientation): bool {.cdecl,
    importcpp: "AIS_ViewCube::IsBoxEdge(@)", header: "AIS_ViewCube.hxx".}
proc isBoxCorner*(theOrient: V3dTypeOfOrientation): bool {.cdecl,
    importcpp: "AIS_ViewCube::IsBoxCorner(@)", header: "AIS_ViewCube.hxx".}
proc newAIS_ViewCube*(): AIS_ViewCube {.cdecl, constructor,
                                     importcpp: "AIS_ViewCube(@)", header: "AIS_ViewCube.hxx".}
proc viewAnimation*(this: AIS_ViewCube): Handle[AIS_AnimationCamera] {.noSideEffect,
    cdecl, importcpp: "ViewAnimation", header: "AIS_ViewCube.hxx".}
proc setViewAnimation*(this: var AIS_ViewCube;
                      theAnimation: Handle[AIS_AnimationCamera]) {.cdecl,
    importcpp: "SetViewAnimation", header: "AIS_ViewCube.hxx".}
proc toAutoStartAnimation*(this: AIS_ViewCube): bool {.noSideEffect, cdecl,
    importcpp: "ToAutoStartAnimation", header: "AIS_ViewCube.hxx".}
proc setAutoStartAnimation*(this: var AIS_ViewCube; theToEnable: bool) {.cdecl,
    importcpp: "SetAutoStartAnimation", header: "AIS_ViewCube.hxx".}
proc isFixedAnimationLoop*(this: AIS_ViewCube): bool {.noSideEffect, cdecl,
    importcpp: "IsFixedAnimationLoop", header: "AIS_ViewCube.hxx".}
proc setFixedAnimationLoop*(this: var AIS_ViewCube; theToEnable: bool) {.cdecl,
    importcpp: "SetFixedAnimationLoop", header: "AIS_ViewCube.hxx".}
proc resetStyles*(this: var AIS_ViewCube) {.cdecl, importcpp: "ResetStyles",
                                        header: "AIS_ViewCube.hxx".}
proc size*(this: AIS_ViewCube): cfloat {.noSideEffect, cdecl, importcpp: "Size",
                                     header: "AIS_ViewCube.hxx".}
proc setSize*(this: var AIS_ViewCube; theValue: cfloat; theToAdaptAnother: bool = true) {.
    cdecl, importcpp: "SetSize", header: "AIS_ViewCube.hxx".}
proc boxFacetExtension*(this: AIS_ViewCube): cfloat {.noSideEffect, cdecl,
    importcpp: "BoxFacetExtension", header: "AIS_ViewCube.hxx".}
proc setBoxFacetExtension*(this: var AIS_ViewCube; theValue: cfloat) {.cdecl,
    importcpp: "SetBoxFacetExtension", header: "AIS_ViewCube.hxx".}
proc axesPadding*(this: AIS_ViewCube): cfloat {.noSideEffect, cdecl,
    importcpp: "AxesPadding", header: "AIS_ViewCube.hxx".}
proc setAxesPadding*(this: var AIS_ViewCube; theValue: cfloat) {.cdecl,
    importcpp: "SetAxesPadding", header: "AIS_ViewCube.hxx".}
proc boxEdgeGap*(this: AIS_ViewCube): cfloat {.noSideEffect, cdecl,
    importcpp: "BoxEdgeGap", header: "AIS_ViewCube.hxx".}
proc setBoxEdgeGap*(this: var AIS_ViewCube; theValue: cfloat) {.cdecl,
    importcpp: "SetBoxEdgeGap", header: "AIS_ViewCube.hxx".}
proc boxEdgeMinSize*(this: AIS_ViewCube): cfloat {.noSideEffect, cdecl,
    importcpp: "BoxEdgeMinSize", header: "AIS_ViewCube.hxx".}
proc setBoxEdgeMinSize*(this: var AIS_ViewCube; theValue: cfloat) {.cdecl,
    importcpp: "SetBoxEdgeMinSize", header: "AIS_ViewCube.hxx".}
proc boxCornerMinSize*(this: AIS_ViewCube): cfloat {.noSideEffect, cdecl,
    importcpp: "BoxCornerMinSize", header: "AIS_ViewCube.hxx".}
proc setBoxCornerMinSize*(this: var AIS_ViewCube; theValue: cfloat) {.cdecl,
    importcpp: "SetBoxCornerMinSize", header: "AIS_ViewCube.hxx".}
proc roundRadius*(this: AIS_ViewCube): cfloat {.noSideEffect, cdecl,
    importcpp: "RoundRadius", header: "AIS_ViewCube.hxx".}
proc setRoundRadius*(this: var AIS_ViewCube; theValue: cfloat) {.cdecl,
    importcpp: "SetRoundRadius", header: "AIS_ViewCube.hxx".}
proc axesRadius*(this: AIS_ViewCube): cfloat {.noSideEffect, cdecl,
    importcpp: "AxesRadius", header: "AIS_ViewCube.hxx".}
proc setAxesRadius*(this: var AIS_ViewCube; theRadius: cfloat) {.cdecl,
    importcpp: "SetAxesRadius", header: "AIS_ViewCube.hxx".}
proc axesConeRadius*(this: AIS_ViewCube): cfloat {.noSideEffect, cdecl,
    importcpp: "AxesConeRadius", header: "AIS_ViewCube.hxx".}
proc setAxesConeRadius*(this: var AIS_ViewCube; theRadius: cfloat) {.cdecl,
    importcpp: "SetAxesConeRadius", header: "AIS_ViewCube.hxx".}
proc axesSphereRadius*(this: AIS_ViewCube): cfloat {.noSideEffect, cdecl,
    importcpp: "AxesSphereRadius", header: "AIS_ViewCube.hxx".}
proc setAxesSphereRadius*(this: var AIS_ViewCube; theRadius: cfloat) {.cdecl,
    importcpp: "SetAxesSphereRadius", header: "AIS_ViewCube.hxx".}
proc toDrawAxes*(this: AIS_ViewCube): bool {.noSideEffect, cdecl,
    importcpp: "ToDrawAxes", header: "AIS_ViewCube.hxx".}
proc setDrawAxes*(this: var AIS_ViewCube; theValue: bool) {.cdecl,
    importcpp: "SetDrawAxes", header: "AIS_ViewCube.hxx".}
proc toDrawEdges*(this: AIS_ViewCube): bool {.noSideEffect, cdecl,
    importcpp: "ToDrawEdges", header: "AIS_ViewCube.hxx".}
proc setDrawEdges*(this: var AIS_ViewCube; theValue: bool) {.cdecl,
    importcpp: "SetDrawEdges", header: "AIS_ViewCube.hxx".}
proc toDrawVertices*(this: AIS_ViewCube): bool {.noSideEffect, cdecl,
    importcpp: "ToDrawVertices", header: "AIS_ViewCube.hxx".}
proc setDrawVertices*(this: var AIS_ViewCube; theValue: bool) {.cdecl,
    importcpp: "SetDrawVertices", header: "AIS_ViewCube.hxx".}
proc isYup*(this: AIS_ViewCube): bool {.noSideEffect, cdecl, importcpp: "IsYup",
                                    header: "AIS_ViewCube.hxx".}
proc setYup*(this: var AIS_ViewCube; theIsYup: bool; theToUpdateLabels: bool = true) {.
    cdecl, importcpp: "SetYup", header: "AIS_ViewCube.hxx".}
proc boxSideStyle*(this: AIS_ViewCube): Handle[Prs3dShadingAspect] {.noSideEffect,
    cdecl, importcpp: "BoxSideStyle", header: "AIS_ViewCube.hxx".}
proc boxEdgeStyle*(this: AIS_ViewCube): Handle[Prs3dShadingAspect] {.noSideEffect,
    cdecl, importcpp: "BoxEdgeStyle", header: "AIS_ViewCube.hxx".}
proc boxCornerStyle*(this: AIS_ViewCube): Handle[Prs3dShadingAspect] {.noSideEffect,
    cdecl, importcpp: "BoxCornerStyle", header: "AIS_ViewCube.hxx".}
proc boxColor*(this: AIS_ViewCube): QuantityColor {.noSideEffect, cdecl,
    importcpp: "BoxColor", header: "AIS_ViewCube.hxx".}
proc setBoxColor*(this: var AIS_ViewCube; theColor: QuantityColor) {.cdecl,
    importcpp: "SetBoxColor", header: "AIS_ViewCube.hxx".}
proc boxTransparency*(this: AIS_ViewCube): cfloat {.noSideEffect, cdecl,
    importcpp: "BoxTransparency", header: "AIS_ViewCube.hxx".}
proc setBoxTransparency*(this: var AIS_ViewCube; theValue: cfloat) {.cdecl,
    importcpp: "SetBoxTransparency", header: "AIS_ViewCube.hxx".}
proc innerColor*(this: AIS_ViewCube): QuantityColor {.noSideEffect, cdecl,
    importcpp: "InnerColor", header: "AIS_ViewCube.hxx".}
proc setInnerColor*(this: var AIS_ViewCube; theColor: QuantityColor) {.cdecl,
    importcpp: "SetInnerColor", header: "AIS_ViewCube.hxx".}
proc boxSideLabel*(this: AIS_ViewCube; theSide: V3dTypeOfOrientation): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "BoxSideLabel", header: "AIS_ViewCube.hxx".}
proc setBoxSideLabel*(this: var AIS_ViewCube; theSide: V3dTypeOfOrientation;
                     theLabel: TCollectionAsciiString) {.cdecl,
    importcpp: "SetBoxSideLabel", header: "AIS_ViewCube.hxx".}
proc textColor*(this: AIS_ViewCube): QuantityColor {.noSideEffect, cdecl,
    importcpp: "TextColor", header: "AIS_ViewCube.hxx".}
proc setTextColor*(this: var AIS_ViewCube; theColor: QuantityColor) {.cdecl,
    importcpp: "SetTextColor", header: "AIS_ViewCube.hxx".}
proc font*(this: AIS_ViewCube): TCollectionAsciiString {.noSideEffect, cdecl,
    importcpp: "Font", header: "AIS_ViewCube.hxx".}
proc setFont*(this: var AIS_ViewCube; theFont: TCollectionAsciiString) {.cdecl,
    importcpp: "SetFont", header: "AIS_ViewCube.hxx".}
proc fontHeight*(this: AIS_ViewCube): cfloat {.noSideEffect, cdecl,
    importcpp: "FontHeight", header: "AIS_ViewCube.hxx".}
proc setFontHeight*(this: var AIS_ViewCube; theValue: cfloat) {.cdecl,
    importcpp: "SetFontHeight", header: "AIS_ViewCube.hxx".}
proc axisLabel*(this: AIS_ViewCube; theAxis: Prs3dDatumParts): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "AxisLabel", header: "AIS_ViewCube.hxx".}
proc setAxesLabels*(this: var AIS_ViewCube; theX: TCollectionAsciiString;
                   theY: TCollectionAsciiString; theZ: TCollectionAsciiString) {.
    cdecl, importcpp: "SetAxesLabels", header: "AIS_ViewCube.hxx".}
proc setColor*(this: var AIS_ViewCube; theColor: QuantityColor) {.cdecl,
    importcpp: "SetColor", header: "AIS_ViewCube.hxx".}
proc unsetColor*(this: var AIS_ViewCube) {.cdecl, importcpp: "UnsetColor",
                                       header: "AIS_ViewCube.hxx".}
proc setTransparency*(this: var AIS_ViewCube; theValue: cfloat) {.cdecl,
    importcpp: "SetTransparency", header: "AIS_ViewCube.hxx".}
proc unsetTransparency*(this: var AIS_ViewCube) {.cdecl,
    importcpp: "UnsetTransparency", header: "AIS_ViewCube.hxx".}
proc setMaterial*(this: var AIS_ViewCube; theMat: Graphic3dMaterialAspect) {.cdecl,
    importcpp: "SetMaterial", header: "AIS_ViewCube.hxx".}
proc unsetMaterial*(this: var AIS_ViewCube) {.cdecl, importcpp: "UnsetMaterial",
    header: "AIS_ViewCube.hxx".}
proc duration*(this: AIS_ViewCube): cfloat {.noSideEffect, cdecl,
    importcpp: "Duration", header: "AIS_ViewCube.hxx".}
proc setDuration*(this: var AIS_ViewCube; theValue: cfloat) {.cdecl,
    importcpp: "SetDuration", header: "AIS_ViewCube.hxx".}
proc toResetCameraUp*(this: AIS_ViewCube): bool {.noSideEffect, cdecl,
    importcpp: "ToResetCameraUp", header: "AIS_ViewCube.hxx".}
proc setResetCamera*(this: var AIS_ViewCube; theToReset: bool) {.cdecl,
    importcpp: "SetResetCamera", header: "AIS_ViewCube.hxx".}
proc toFitSelected*(this: AIS_ViewCube): bool {.noSideEffect, cdecl,
    importcpp: "ToFitSelected", header: "AIS_ViewCube.hxx".}
proc setFitSelected*(this: var AIS_ViewCube; theToFitSelected: bool) {.cdecl,
    importcpp: "SetFitSelected", header: "AIS_ViewCube.hxx".}
proc hasAnimation*(this: AIS_ViewCube): bool {.noSideEffect, cdecl,
    importcpp: "HasAnimation", header: "AIS_ViewCube.hxx".}
proc startAnimation*(this: var AIS_ViewCube; theOwner: Handle[AIS_ViewCubeOwner]) {.
    cdecl, importcpp: "StartAnimation", header: "AIS_ViewCube.hxx".}
proc updateAnimation*(this: var AIS_ViewCube; theToUpdate: bool): bool {.cdecl,
    importcpp: "UpdateAnimation", header: "AIS_ViewCube.hxx".}
proc handleClick*(this: var AIS_ViewCube; theOwner: Handle[AIS_ViewCubeOwner]) {.
    cdecl, importcpp: "HandleClick", header: "AIS_ViewCube.hxx".}
proc acceptDisplayMode*(this: AIS_ViewCube; theMode: cint): bool {.noSideEffect, cdecl,
    importcpp: "AcceptDisplayMode", header: "AIS_ViewCube.hxx".}
proc globalSelOwner*(this: AIS_ViewCube): Handle[SelectMgrEntityOwner] {.
    noSideEffect, cdecl, importcpp: "GlobalSelOwner", header: "AIS_ViewCube.hxx".}
proc compute*(this: var AIS_ViewCube;
             thePrsMgr: Handle[PrsMgrPresentationManager3d];
             thePrs: Handle[Prs3dPresentation]; theMode: cint = 0) {.cdecl,
    importcpp: "Compute", header: "AIS_ViewCube.hxx".}
proc computeSelection*(this: var AIS_ViewCube;
                      theSelection: Handle[SelectMgrSelection]; theMode: cint) {.
    cdecl, importcpp: "ComputeSelection", header: "AIS_ViewCube.hxx".}
proc isAutoHilight*(this: AIS_ViewCube): bool {.noSideEffect, cdecl,
    importcpp: "IsAutoHilight", header: "AIS_ViewCube.hxx".}
proc clearSelected*(this: var AIS_ViewCube) {.cdecl, importcpp: "ClearSelected",
    header: "AIS_ViewCube.hxx".}
proc hilightOwnerWithColor*(this: var AIS_ViewCube;
                           thePM: Handle[PrsMgrPresentationManager3d];
                           theStyle: Handle[Prs3dDrawer];
                           theOwner: Handle[SelectMgrEntityOwner]) {.cdecl,
    importcpp: "HilightOwnerWithColor", header: "AIS_ViewCube.hxx".}
proc hilightSelected*(this: var AIS_ViewCube;
                     thePM: Handle[PrsMgrPresentationManager3d];
                     theSeq: SelectMgrSequenceOfOwner) {.cdecl,
    importcpp: "HilightSelected", header: "AIS_ViewCube.hxx".}
proc unsetAttributes*(this: var AIS_ViewCube) {.cdecl, importcpp: "UnsetAttributes",
    header: "AIS_ViewCube.hxx".}
proc unsetHilightAttributes*(this: var AIS_ViewCube) {.cdecl,
    importcpp: "UnsetHilightAttributes", header: "AIS_ViewCube.hxx".}
## ! Redefined entity owner that is highlighted when owner is detected,
## ! even if Interactive Context highlighted on last detection procedure.



proc newAIS_ViewCubeOwner*(theObject: Handle[AIS_ViewCube];
                          theOrient: V3dTypeOfOrientation; thePriority: cint = 5): AIS_ViewCubeOwner {.
    cdecl, constructor, importcpp: "AIS_ViewCubeOwner(@)", header: "AIS_ViewCube.hxx".}
proc isForcedHilight*(this: AIS_ViewCubeOwner): bool {.noSideEffect, cdecl,
    importcpp: "IsForcedHilight", header: "AIS_ViewCube.hxx".}
proc mainOrientation*(this: AIS_ViewCubeOwner): V3dTypeOfOrientation {.noSideEffect,
    cdecl, importcpp: "MainOrientation", header: "AIS_ViewCube.hxx".}
proc handleMouseClick*(this: var AIS_ViewCubeOwner; thePoint: Graphic3dVec2i;
                      theButton: AspectVKeyMouse; theModifiers: AspectVKeyFlags;
                      theIsDoubleClick: bool): bool {.cdecl,
    importcpp: "HandleMouseClick", header: "AIS_ViewCube.hxx".}


