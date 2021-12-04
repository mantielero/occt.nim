##  Created on: 1992-01-17
##  Created by: GG
##  Copyright (c) 1992-1999 Matra Datavision
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

discard "forward decl of Aspect_Grid"
discard "forward decl of Graphic3d_AspectMarker3d"
discard "forward decl of Graphic3d_GraphicDriver"
discard "forward decl of Graphic3d_Group"
discard "forward decl of Graphic3d_Structure"
discard "forward decl of V3d_BadValue"
discard "forward decl of V3d_CircularGrid"
discard "forward decl of V3d_RectangularGrid"
discard "forward decl of V3d_View"
discard "forward decl of Quantity_Color"
type
  V3dViewer* {.importcpp: "V3d_Viewer", header: "V3d_Viewer.hxx", bycopy.} = object of StandardTransient ##
                                                                                               ## !
                                                                                               ## Create
                                                                                               ## a
                                                                                               ## Viewer
                                                                                               ## with
                                                                                               ## the
                                                                                               ## given
                                                                                               ## graphic
                                                                                               ## driver
                                                                                               ## and
                                                                                               ## with
                                                                                               ## default
                                                                                               ## parameters:
                                                                                               ##
                                                                                               ## !
                                                                                               ## -
                                                                                               ## View
                                                                                               ## orientation:
                                                                                               ## V3d_XposYnegZpos
                                                                                               ##
                                                                                               ## !
                                                                                               ## -
                                                                                               ## View
                                                                                               ## background:
                                                                                               ## Quantity_NOC_GRAY30
                                                                                               ##
                                                                                               ## !
                                                                                               ## -
                                                                                               ## Shading
                                                                                               ## model:
                                                                                               ## V3d_GOURAUD
                                                                                               ##
                                                                                               ## !
                                                                                               ## Return
                                                                                               ## a
                                                                                               ## list
                                                                                               ## of
                                                                                               ## active
                                                                                               ## views.
                                                                                               ##
                                                                                               ## !
                                                                                               ## Return
                                                                                               ## a
                                                                                               ## list
                                                                                               ## of
                                                                                               ## defined
                                                                                               ## views.
                                                                                               ##
                                                                                               ## !
                                                                                               ## @name
                                                                                               ## lights
                                                                                               ## management
                                                                                               ##
                                                                                               ## !
                                                                                               ## Defines
                                                                                               ## default
                                                                                               ## lights:
                                                                                               ##
                                                                                               ## !
                                                                                               ## positional-light
                                                                                               ## 0.3
                                                                                               ## 0.
                                                                                               ## 0.
                                                                                               ##
                                                                                               ## !
                                                                                               ## directional-light
                                                                                               ## V3d_XnegYposZpos
                                                                                               ##
                                                                                               ## !
                                                                                               ## directional-light
                                                                                               ## V3d_XnegYneg
                                                                                               ##
                                                                                               ## !
                                                                                               ## ambient-light
                                                                                               ##
                                                                                               ## !
                                                                                               ## Return
                                                                                               ## a
                                                                                               ## list
                                                                                               ## of
                                                                                               ## defined
                                                                                               ## lights.
                                                                                               ##
                                                                                               ## !
                                                                                               ## @name
                                                                                               ## objects
                                                                                               ## management
                                                                                               ##
                                                                                               ## !
                                                                                               ## Erase
                                                                                               ## all
                                                                                               ## Objects
                                                                                               ## in
                                                                                               ## All
                                                                                               ## the
                                                                                               ## views.
                                                                                               ##
                                                                                               ## !
                                                                                               ## returns
                                                                                               ## true
                                                                                               ## if
                                                                                               ## the
                                                                                               ## computed
                                                                                               ## mode
                                                                                               ## can
                                                                                               ## be
                                                                                               ## used.
                                                                                               ##
                                                                                               ## !
                                                                                               ## @name
                                                                                               ## privileged
                                                                                               ## plane
                                                                                               ## management
                                                                                               ##
                                                                                               ## !
                                                                                               ## @name
                                                                                               ## grid
                                                                                               ## management
                                                                                               ##
                                                                                               ## !
                                                                                               ## Activates
                                                                                               ## the
                                                                                               ## grid
                                                                                               ## in
                                                                                               ## all
                                                                                               ## views
                                                                                               ## of
                                                                                               ## <me>.
                                                                                               ##
                                                                                               ## !
                                                                                               ## @name
                                                                                               ## deprecated
                                                                                               ## methods
                                                                                               ##
                                                                                               ## !
                                                                                               ## Returns
                                                                                               ## the
                                                                                               ## default
                                                                                               ## background
                                                                                               ## colour.


#proc newV3dViewer*(theDriver: Handle[Graphic3dGraphicDriver]): V3dViewer {.cdecl,
#    constructor, importcpp: "V3d_Viewer(@)", header: "V3d_Viewer.hxx".}
proc ifMoreViews*(this: V3dViewer): bool {.noSideEffect, cdecl,
                                       importcpp: "IfMoreViews", header: "V3d_Viewer.hxx".}
proc createView*(this: var V3dViewer): Handle[V3dView] {.cdecl,
    importcpp: "CreateView", header: "V3d_Viewer.hxx".}
proc setViewOn*(this: var V3dViewer) {.cdecl, importcpp: "SetViewOn", header: "V3d_Viewer.hxx".}
proc setViewOn*(this: var V3dViewer; theView: Handle[V3dView]) {.cdecl,
    importcpp: "SetViewOn", header: "V3d_Viewer.hxx".}
proc setViewOff*(this: var V3dViewer) {.cdecl, importcpp: "SetViewOff", header: "V3d_Viewer.hxx".}
proc setViewOff*(this: var V3dViewer; theView: Handle[V3dView]) {.cdecl,
    importcpp: "SetViewOff", header: "V3d_Viewer.hxx".}
proc update*(this: var V3dViewer) {.cdecl, importcpp: "Update", header: "V3d_Viewer.hxx".}
proc redraw*(this: V3dViewer) {.noSideEffect, cdecl, importcpp: "Redraw", header: "V3d_Viewer.hxx".}
proc redrawImmediate*(this: V3dViewer) {.noSideEffect, cdecl,
                                      importcpp: "RedrawImmediate", header: "V3d_Viewer.hxx".}
proc invalidate*(this: V3dViewer) {.noSideEffect, cdecl, importcpp: "Invalidate",
                                 header: "V3d_Viewer.hxx".}
proc remove*(this: var V3dViewer) {.cdecl, importcpp: "Remove", header: "V3d_Viewer.hxx".}
#proc driver*(this: V3dViewer): Handle[Graphic3dGraphicDriver] {.noSideEffect, cdecl,
#    importcpp: "Driver", header: "V3d_Viewer.hxx".}
#proc structureManager*(this: V3dViewer): Handle[Graphic3dStructureManager] {.
#    noSideEffect, cdecl, importcpp: "StructureManager", header: "V3d_Viewer.hxx".}
#proc defaultRenderingParams*(this: V3dViewer): Graphic3dRenderingParams {.
#    noSideEffect, cdecl, importcpp: "DefaultRenderingParams", header: "V3d_Viewer.hxx".}
#proc setDefaultRenderingParams*(this: var V3dViewer;
#                               theParams: Graphic3dRenderingParams) {.cdecl,
#    importcpp: "SetDefaultRenderingParams", header: "V3d_Viewer.hxx".}
proc setDefaultBackgroundColor*(this: var V3dViewer; theColor: QuantityColor) {.cdecl,
    importcpp: "SetDefaultBackgroundColor", header: "V3d_Viewer.hxx".}
#proc getGradientBackground*(this: V3dViewer): AspectGradientBackground {.
#    noSideEffect, cdecl, importcpp: "GetGradientBackground", header: "V3d_Viewer.hxx".}
#proc setDefaultBgGradientColors*(this: var V3dViewer; theColor1: QuantityColor;
#                                theColor2: QuantityColor; theFillStyle: AspectGradientFillMethod = aspectGFM_HOR) {.
#    cdecl, importcpp: "SetDefaultBgGradientColors", header: "V3d_Viewer.hxx".}
proc defaultViewSize*(this: V3dViewer): cfloat {.noSideEffect, cdecl,
    importcpp: "DefaultViewSize", header: "V3d_Viewer.hxx".}
proc setDefaultViewSize*(this: var V3dViewer; theSize: cfloat) {.cdecl,
    importcpp: "SetDefaultViewSize", header: "V3d_Viewer.hxx".}
proc defaultViewProj*(this: V3dViewer): V3dTypeOfOrientation {.noSideEffect, cdecl,
    importcpp: "DefaultViewProj", header: "V3d_Viewer.hxx".}
proc setDefaultViewProj*(this: var V3dViewer; theOrientation: V3dTypeOfOrientation) {.
    cdecl, importcpp: "SetDefaultViewProj", header: "V3d_Viewer.hxx".}
proc defaultVisualization*(this: V3dViewer): V3dTypeOfVisualization {.noSideEffect,
    cdecl, importcpp: "DefaultVisualization", header: "V3d_Viewer.hxx".}
proc setDefaultVisualization*(this: var V3dViewer; theType: V3dTypeOfVisualization) {.
    cdecl, importcpp: "SetDefaultVisualization", header: "V3d_Viewer.hxx".}
proc defaultShadingModel*(this: V3dViewer): Graphic3dTypeOfShadingModel {.
    noSideEffect, cdecl, importcpp: "DefaultShadingModel", header: "V3d_Viewer.hxx".}
proc setDefaultShadingModel*(this: var V3dViewer;
                            theType: Graphic3dTypeOfShadingModel) {.cdecl,
    importcpp: "SetDefaultShadingModel", header: "V3d_Viewer.hxx".}
proc defaultTypeOfView*(this: V3dViewer): V3dTypeOfView {.noSideEffect, cdecl,
    importcpp: "DefaultTypeOfView", header: "V3d_Viewer.hxx".}
proc setDefaultTypeOfView*(this: var V3dViewer; theType: V3dTypeOfView) {.cdecl,
    importcpp: "SetDefaultTypeOfView", header: "V3d_Viewer.hxx".}
proc defaultBackgroundColor*(this: V3dViewer): QuantityColor {.noSideEffect, cdecl,
    importcpp: "DefaultBackgroundColor", header: "V3d_Viewer.hxx".}
proc defaultBgGradientColors*(this: V3dViewer; theColor1: var QuantityColor;
                             theColor2: var QuantityColor) {.noSideEffect, cdecl,
    importcpp: "DefaultBgGradientColors", header: "V3d_Viewer.hxx".}
proc getAllZLayers*(this: V3dViewer; theLayerSeq: var TColStdSequenceOfInteger) {.
    noSideEffect, cdecl, importcpp: "GetAllZLayers", header: "V3d_Viewer.hxx".}
#proc addZLayer*(this: var V3dViewer; theLayerId: var Graphic3dZLayerId;
#               theSettings: Graphic3dZLayerSettings = graphic3dZLayerSettings()): bool {.
#    cdecl, importcpp: "AddZLayer", header: "V3d_Viewer.hxx".}
#proc insertLayerBefore*(this: var V3dViewer; theNewLayerId: var Graphic3dZLayerId;
#                       theSettings: Graphic3dZLayerSettings;
#                       theLayerAfter: Graphic3dZLayerId): bool {.cdecl,
#    importcpp: "InsertLayerBefore", header: "V3d_Viewer.hxx".}
#proc insertLayerAfter*(this: var V3dViewer; theNewLayerId: var Graphic3dZLayerId;
#                      theSettings: Graphic3dZLayerSettings;
#                      theLayerBefore: Graphic3dZLayerId): bool {.cdecl,
#    importcpp: "InsertLayerAfter", header: "V3d_Viewer.hxx".}
#proc removeZLayer*(this: var V3dViewer; theLayerId: Graphic3dZLayerId): bool {.cdecl,
#    importcpp: "RemoveZLayer", header: "V3d_Viewer.hxx".}
#proc zLayerSettings*(this: V3dViewer; theLayerId: Graphic3dZLayerId): Graphic3dZLayerSettings {.
#    noSideEffect, cdecl, importcpp: "ZLayerSettings", header: "V3d_Viewer.hxx".}
#proc setZLayerSettings*(this: var V3dViewer; theLayerId: Graphic3dZLayerId;
#                       theSettings: Graphic3dZLayerSettings) {.cdecl,
#    importcpp: "SetZLayerSettings", header: "V3d_Viewer.hxx".}
proc activeViews*(this: V3dViewer): V3dListOfView {.noSideEffect, cdecl,
    importcpp: "ActiveViews", header: "V3d_Viewer.hxx".}
proc activeViewIterator*(this: V3dViewer): V3dListOfViewIterator {.noSideEffect,
    cdecl, importcpp: "ActiveViewIterator", header: "V3d_Viewer.hxx".}
proc lastActiveView*(this: V3dViewer): bool {.noSideEffect, cdecl,
    importcpp: "LastActiveView", header: "V3d_Viewer.hxx".}
proc definedViews*(this: V3dViewer): V3dListOfView {.noSideEffect, cdecl,
    importcpp: "DefinedViews", header: "V3d_Viewer.hxx".}
proc definedViewIterator*(this: V3dViewer): V3dListOfViewIterator {.noSideEffect,
    cdecl, importcpp: "DefinedViewIterator", header: "V3d_Viewer.hxx".}
proc setDefaultLights*(this: var V3dViewer) {.cdecl, importcpp: "SetDefaultLights",
    header: "V3d_Viewer.hxx".}
proc setLightOn*(this: var V3dViewer; theLight: Handle[V3dLight]) {.cdecl,
    importcpp: "SetLightOn", header: "V3d_Viewer.hxx".}
proc setLightOn*(this: var V3dViewer) {.cdecl, importcpp: "SetLightOn", header: "V3d_Viewer.hxx".}
proc setLightOff*(this: var V3dViewer; theLight: Handle[V3dLight]) {.cdecl,
    importcpp: "SetLightOff", header: "V3d_Viewer.hxx".}
proc setLightOff*(this: var V3dViewer) {.cdecl, importcpp: "SetLightOff", header: "V3d_Viewer.hxx".}
proc addLight*(this: var V3dViewer; theLight: Handle[V3dLight]) {.cdecl,
    importcpp: "AddLight", header: "V3d_Viewer.hxx".}
proc delLight*(this: var V3dViewer; theLight: Handle[V3dLight]) {.cdecl,
    importcpp: "DelLight", header: "V3d_Viewer.hxx".}
proc updateLights*(this: var V3dViewer) {.cdecl, importcpp: "UpdateLights",
                                      header: "V3d_Viewer.hxx".}
proc isGlobalLight*(this: V3dViewer; theLight: Handle[V3dLight]): bool {.noSideEffect,
    cdecl, importcpp: "IsGlobalLight", header: "V3d_Viewer.hxx".}
proc activeLights*(this: V3dViewer): V3dListOfLight {.noSideEffect, cdecl,
    importcpp: "ActiveLights", header: "V3d_Viewer.hxx".}
proc activeLightIterator*(this: V3dViewer): V3dListOfLightIterator {.noSideEffect,
    cdecl, importcpp: "ActiveLightIterator", header: "V3d_Viewer.hxx".}
proc definedLights*(this: V3dViewer): V3dListOfLight {.noSideEffect, cdecl,
    importcpp: "DefinedLights", header: "V3d_Viewer.hxx".}
proc definedLightIterator*(this: V3dViewer): V3dListOfLightIterator {.noSideEffect,
    cdecl, importcpp: "DefinedLightIterator", header: "V3d_Viewer.hxx".}
proc erase*(this: V3dViewer) {.noSideEffect, cdecl, importcpp: "Erase", header: "V3d_Viewer.hxx".}
proc unHighlight*(this: V3dViewer) {.noSideEffect, cdecl, importcpp: "UnHighlight",
                                  header: "V3d_Viewer.hxx".}
proc computedMode*(this: V3dViewer): bool {.noSideEffect, cdecl,
                                        importcpp: "ComputedMode", header: "V3d_Viewer.hxx".}
proc setComputedMode*(this: var V3dViewer; theMode: bool) {.cdecl,
    importcpp: "SetComputedMode", header: "V3d_Viewer.hxx".}
proc defaultComputedMode*(this: V3dViewer): bool {.noSideEffect, cdecl,
    importcpp: "DefaultComputedMode", header: "V3d_Viewer.hxx".}
proc setDefaultComputedMode*(this: var V3dViewer; theMode: bool) {.cdecl,
    importcpp: "SetDefaultComputedMode", header: "V3d_Viewer.hxx".}
proc privilegedPlane*(this: V3dViewer): Ax3 {.noSideEffect, cdecl,
    importcpp: "PrivilegedPlane", header: "V3d_Viewer.hxx".}
proc setPrivilegedPlane*(this: var V3dViewer; thePlane: Ax3) {.cdecl,
    importcpp: "SetPrivilegedPlane", header: "V3d_Viewer.hxx".}
proc displayPrivilegedPlane*(this: var V3dViewer; theOnOff: bool; theSize: cfloat = 1) {.
    cdecl, importcpp: "DisplayPrivilegedPlane", header: "V3d_Viewer.hxx".}
#proc activateGrid*(this: var V3dViewer; aGridType: AspectGridType;
#                  aGridDrawMode: AspectGridDrawMode) {.cdecl,
#    importcpp: "ActivateGrid", header: "V3d_Viewer.hxx".}
proc deactivateGrid*(this: var V3dViewer) {.cdecl, importcpp: "DeactivateGrid",
                                        header: "V3d_Viewer.hxx".}
proc setGridEcho*(this: var V3dViewer; showGrid: bool = true) {.cdecl,
    importcpp: "SetGridEcho", header: "V3d_Viewer.hxx".}
#proc setGridEcho*(this: var V3dViewer; aMarker: Handle[Graphic3dAspectMarker3d]) {.
#    cdecl, importcpp: "SetGridEcho", header: "V3d_Viewer.hxx".}
proc gridEcho*(this: V3dViewer): bool {.noSideEffect, cdecl, importcpp: "GridEcho",
                                    header: "V3d_Viewer.hxx".}
proc isActive*(this: V3dViewer): bool {.noSideEffect, cdecl, importcpp: "IsActive",
                                    header: "V3d_Viewer.hxx".}
#proc grid*(this: V3dViewer): Handle[AspectGrid] {.noSideEffect, cdecl,
#    importcpp: "Grid", header: "V3d_Viewer.hxx".}
#proc gridType*(this: V3dViewer): AspectGridType {.noSideEffect, cdecl,
#    importcpp: "GridType", header: "V3d_Viewer.hxx".}
#proc gridDrawMode*(this: V3dViewer): AspectGridDrawMode {.noSideEffect, cdecl,
#    importcpp: "GridDrawMode", header: "V3d_Viewer.hxx".}
proc rectangularGridValues*(this: V3dViewer; xOrigin: var cfloat; yOrigin: var cfloat;
                           xStep: var cfloat; yStep: var cfloat;
                           rotationAngle: var cfloat) {.noSideEffect, cdecl,
    importcpp: "RectangularGridValues", header: "V3d_Viewer.hxx".}
proc setRectangularGridValues*(this: var V3dViewer; xOrigin: cfloat; yOrigin: cfloat;
                              xStep: cfloat; yStep: cfloat; rotationAngle: cfloat) {.
    cdecl, importcpp: "SetRectangularGridValues", header: "V3d_Viewer.hxx".}
proc circularGridValues*(this: V3dViewer; xOrigin: var cfloat; yOrigin: var cfloat;
                        radiusStep: var cfloat; divisionNumber: var cint;
                        rotationAngle: var cfloat) {.noSideEffect, cdecl,
    importcpp: "CircularGridValues", header: "V3d_Viewer.hxx".}
proc setCircularGridValues*(this: var V3dViewer; xOrigin: cfloat; yOrigin: cfloat;
                           radiusStep: cfloat; divisionNumber: cint;
                           rotationAngle: cfloat) {.cdecl,
    importcpp: "SetCircularGridValues", header: "V3d_Viewer.hxx".}
proc circularGridGraphicValues*(this: V3dViewer; radius: var cfloat;
                               offSet: var cfloat) {.noSideEffect, cdecl,
    importcpp: "CircularGridGraphicValues", header: "V3d_Viewer.hxx".}
proc setCircularGridGraphicValues*(this: var V3dViewer; radius: cfloat; offSet: cfloat) {.
    cdecl, importcpp: "SetCircularGridGraphicValues", header: "V3d_Viewer.hxx".}
proc rectangularGridGraphicValues*(this: V3dViewer; xSize: var cfloat;
                                  ySize: var cfloat; offSet: var cfloat) {.
    noSideEffect, cdecl, importcpp: "RectangularGridGraphicValues", header: "V3d_Viewer.hxx".}
proc setRectangularGridGraphicValues*(this: var V3dViewer; xSize: cfloat;
                                     ySize: cfloat; offSet: cfloat) {.cdecl,
    importcpp: "SetRectangularGridGraphicValues", header: "V3d_Viewer.hxx".}
#proc showGridEcho*(this: var V3dViewer; theView: Handle[V3dView];
#                  thePoint: Graphic3dVertex) {.cdecl, importcpp: "ShowGridEcho",
#    header: "V3d_Viewer.hxx".}
proc hideGridEcho*(this: var V3dViewer; theView: Handle[V3dView]) {.cdecl,
    importcpp: "HideGridEcho", header: "V3d_Viewer.hxx".}
#proc newV3dViewer*(theDriver: Handle[Graphic3dGraphicDriver];
#                  theName: StandardExtString; theDomain: cstring = "";
#                  theViewSize: cfloat = 1000.0;
#                  theViewProj: V3dTypeOfOrientation = v3dXposYnegZpos;
#                  theViewBackground: QuantityColor = quantityNOC_GRAY30;
#                  theVisualization: V3dTypeOfVisualization = v3dZBUFFER;
#    theShadingModel: Graphic3dTypeOfShadingModel = graphic3dTOSM_VERTEX;
#                  theComputedMode: bool = true; theDefaultComputedMode: bool = true): V3dViewer {.
#    cdecl, constructor, importcpp: "V3d_Viewer(@)", header: "V3d_Viewer.hxx".}
proc setDefaultBackgroundColor*(this: var V3dViewer; theType: QuantityTypeOfColor;
                               theV1: cfloat; theV2: cfloat; theV3: cfloat) {.cdecl,
    importcpp: "SetDefaultBackgroundColor", header: "V3d_Viewer.hxx".}
proc defaultBackgroundColor*(this: V3dViewer; theType: QuantityTypeOfColor;
                            theV1: var cfloat; theV2: var cfloat; theV3: var cfloat) {.
    noSideEffect, cdecl, importcpp: "DefaultBackgroundColor", header: "V3d_Viewer.hxx".}
proc initActiveViews*(this: var V3dViewer) {.cdecl, importcpp: "InitActiveViews",
    header: "V3d_Viewer.hxx".}
proc moreActiveViews*(this: V3dViewer): bool {.noSideEffect, cdecl,
    importcpp: "MoreActiveViews", header: "V3d_Viewer.hxx".}
proc nextActiveViews*(this: var V3dViewer) {.cdecl, importcpp: "NextActiveViews",
    header: "V3d_Viewer.hxx".}
proc activeView*(this: V3dViewer): Handle[V3dView] {.noSideEffect, cdecl,
    importcpp: "ActiveView", header: "V3d_Viewer.hxx".}
proc initDefinedViews*(this: var V3dViewer) {.cdecl, importcpp: "InitDefinedViews",
    header: "V3d_Viewer.hxx".}
proc moreDefinedViews*(this: V3dViewer): bool {.noSideEffect, cdecl,
    importcpp: "MoreDefinedViews", header: "V3d_Viewer.hxx".}
proc nextDefinedViews*(this: var V3dViewer) {.cdecl, importcpp: "NextDefinedViews",
    header: "V3d_Viewer.hxx".}
proc definedView*(this: V3dViewer): Handle[V3dView] {.noSideEffect, cdecl,
    importcpp: "DefinedView", header: "V3d_Viewer.hxx".}
proc initActiveLights*(this: var V3dViewer) {.cdecl, importcpp: "InitActiveLights",
    header: "V3d_Viewer.hxx".}
proc moreActiveLights*(this: V3dViewer): bool {.noSideEffect, cdecl,
    importcpp: "MoreActiveLights", header: "V3d_Viewer.hxx".}
proc nextActiveLights*(this: var V3dViewer) {.cdecl, importcpp: "NextActiveLights",
    header: "V3d_Viewer.hxx".}
proc activeLight*(this: V3dViewer): Handle[V3dLight] {.noSideEffect, cdecl,
    importcpp: "ActiveLight", header: "V3d_Viewer.hxx".}
proc initDefinedLights*(this: var V3dViewer) {.cdecl, importcpp: "InitDefinedLights",
    header: "V3d_Viewer.hxx".}
proc moreDefinedLights*(this: V3dViewer): bool {.noSideEffect, cdecl,
    importcpp: "MoreDefinedLights", header: "V3d_Viewer.hxx".}
proc nextDefinedLights*(this: var V3dViewer) {.cdecl, importcpp: "NextDefinedLights",
    header: "V3d_Viewer.hxx".}
proc definedLight*(this: V3dViewer): Handle[V3dLight] {.noSideEffect, cdecl,
    importcpp: "DefinedLight", header: "V3d_Viewer.hxx".}
proc dumpJson*(this: V3dViewer; theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson", header: "V3d_Viewer.hxx".}
type
  HandleV3dViewer* = Handle[V3dViewer]
