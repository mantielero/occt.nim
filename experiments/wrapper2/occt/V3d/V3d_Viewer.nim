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

  V3dViewerbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "V3d_Viewer::get_type_name(@)",
                            header: "V3d_Viewer.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "V3d_Viewer::get_type_descriptor(@)", header: "V3d_Viewer.hxx".}
proc dynamicType*(this: V3dViewer): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "V3d_Viewer.hxx".}
proc constructV3dViewer*(theDriver: Handle[Graphic3dGraphicDriver]): V3dViewer {.
    constructor, importcpp: "V3d_Viewer(@)", header: "V3d_Viewer.hxx".}
proc ifMoreViews*(this: V3dViewer): bool {.noSideEffect, importcpp: "IfMoreViews",
                                       header: "V3d_Viewer.hxx".}
proc createView*(this: var V3dViewer): Handle[V3dView] {.importcpp: "CreateView",
    header: "V3d_Viewer.hxx".}
proc setViewOn*(this: var V3dViewer) {.importcpp: "SetViewOn",
                                   header: "V3d_Viewer.hxx".}
proc setViewOn*(this: var V3dViewer; theView: Handle[V3dView]) {.
    importcpp: "SetViewOn", header: "V3d_Viewer.hxx".}
proc setViewOff*(this: var V3dViewer) {.importcpp: "SetViewOff",
                                    header: "V3d_Viewer.hxx".}
proc setViewOff*(this: var V3dViewer; theView: Handle[V3dView]) {.
    importcpp: "SetViewOff", header: "V3d_Viewer.hxx".}
proc update*(this: var V3dViewer) {.importcpp: "Update", header: "V3d_Viewer.hxx".}
proc redraw*(this: V3dViewer) {.noSideEffect, importcpp: "Redraw",
                             header: "V3d_Viewer.hxx".}
proc redrawImmediate*(this: V3dViewer) {.noSideEffect, importcpp: "RedrawImmediate",
                                      header: "V3d_Viewer.hxx".}
proc invalidate*(this: V3dViewer) {.noSideEffect, importcpp: "Invalidate",
                                 header: "V3d_Viewer.hxx".}
proc remove*(this: var V3dViewer) {.importcpp: "Remove", header: "V3d_Viewer.hxx".}
proc driver*(this: V3dViewer): Handle[Graphic3dGraphicDriver] {.noSideEffect,
    importcpp: "Driver", header: "V3d_Viewer.hxx".}
proc structureManager*(this: V3dViewer): Handle[Graphic3dStructureManager] {.
    noSideEffect, importcpp: "StructureManager", header: "V3d_Viewer.hxx".}
proc defaultRenderingParams*(this: V3dViewer): Graphic3dRenderingParams {.
    noSideEffect, importcpp: "DefaultRenderingParams", header: "V3d_Viewer.hxx".}
proc setDefaultRenderingParams*(this: var V3dViewer;
                               theParams: Graphic3dRenderingParams) {.
    importcpp: "SetDefaultRenderingParams", header: "V3d_Viewer.hxx".}
proc setDefaultBackgroundColor*(this: var V3dViewer; theColor: QuantityColor) {.
    importcpp: "SetDefaultBackgroundColor", header: "V3d_Viewer.hxx".}
proc getGradientBackground*(this: V3dViewer): AspectGradientBackground {.
    noSideEffect, importcpp: "GetGradientBackground", header: "V3d_Viewer.hxx".}
proc setDefaultBgGradientColors*(this: var V3dViewer; theColor1: QuantityColor;
                                theColor2: QuantityColor; theFillStyle: AspectGradientFillMethod = aspectGFM_HOR) {.
    importcpp: "SetDefaultBgGradientColors", header: "V3d_Viewer.hxx".}
proc defaultViewSize*(this: V3dViewer): float {.noSideEffect,
    importcpp: "DefaultViewSize", header: "V3d_Viewer.hxx".}
proc setDefaultViewSize*(this: var V3dViewer; theSize: float) {.
    importcpp: "SetDefaultViewSize", header: "V3d_Viewer.hxx".}
proc defaultViewProj*(this: V3dViewer): V3dTypeOfOrientation {.noSideEffect,
    importcpp: "DefaultViewProj", header: "V3d_Viewer.hxx".}
proc setDefaultViewProj*(this: var V3dViewer; theOrientation: V3dTypeOfOrientation) {.
    importcpp: "SetDefaultViewProj", header: "V3d_Viewer.hxx".}
proc defaultVisualization*(this: V3dViewer): V3dTypeOfVisualization {.noSideEffect,
    importcpp: "DefaultVisualization", header: "V3d_Viewer.hxx".}
proc setDefaultVisualization*(this: var V3dViewer; theType: V3dTypeOfVisualization) {.
    importcpp: "SetDefaultVisualization", header: "V3d_Viewer.hxx".}
proc defaultShadingModel*(this: V3dViewer): Graphic3dTypeOfShadingModel {.
    noSideEffect, importcpp: "DefaultShadingModel", header: "V3d_Viewer.hxx".}
proc setDefaultShadingModel*(this: var V3dViewer;
                            theType: Graphic3dTypeOfShadingModel) {.
    importcpp: "SetDefaultShadingModel", header: "V3d_Viewer.hxx".}
proc defaultTypeOfView*(this: V3dViewer): V3dTypeOfView {.noSideEffect,
    importcpp: "DefaultTypeOfView", header: "V3d_Viewer.hxx".}
proc setDefaultTypeOfView*(this: var V3dViewer; theType: V3dTypeOfView) {.
    importcpp: "SetDefaultTypeOfView", header: "V3d_Viewer.hxx".}
proc defaultBackgroundColor*(this: V3dViewer): QuantityColor {.noSideEffect,
    importcpp: "DefaultBackgroundColor", header: "V3d_Viewer.hxx".}
proc defaultBgGradientColors*(this: V3dViewer; theColor1: var QuantityColor;
                             theColor2: var QuantityColor) {.noSideEffect,
    importcpp: "DefaultBgGradientColors", header: "V3d_Viewer.hxx".}
proc getAllZLayers*(this: V3dViewer; theLayerSeq: var TColStdSequenceOfInteger) {.
    noSideEffect, importcpp: "GetAllZLayers", header: "V3d_Viewer.hxx".}
proc addZLayer*(this: var V3dViewer; theLayerId: var Graphic3dZLayerId;
               theSettings: Graphic3dZLayerSettings = graphic3dZLayerSettings()): bool {.
    importcpp: "AddZLayer", header: "V3d_Viewer.hxx".}
proc insertLayerBefore*(this: var V3dViewer; theNewLayerId: var Graphic3dZLayerId;
                       theSettings: Graphic3dZLayerSettings;
                       theLayerAfter: Graphic3dZLayerId): bool {.
    importcpp: "InsertLayerBefore", header: "V3d_Viewer.hxx".}
proc insertLayerAfter*(this: var V3dViewer; theNewLayerId: var Graphic3dZLayerId;
                      theSettings: Graphic3dZLayerSettings;
                      theLayerBefore: Graphic3dZLayerId): bool {.
    importcpp: "InsertLayerAfter", header: "V3d_Viewer.hxx".}
proc removeZLayer*(this: var V3dViewer; theLayerId: Graphic3dZLayerId): bool {.
    importcpp: "RemoveZLayer", header: "V3d_Viewer.hxx".}
proc zLayerSettings*(this: V3dViewer; theLayerId: Graphic3dZLayerId): Graphic3dZLayerSettings {.
    noSideEffect, importcpp: "ZLayerSettings", header: "V3d_Viewer.hxx".}
proc setZLayerSettings*(this: var V3dViewer; theLayerId: Graphic3dZLayerId;
                       theSettings: Graphic3dZLayerSettings) {.
    importcpp: "SetZLayerSettings", header: "V3d_Viewer.hxx".}
proc activeViews*(this: V3dViewer): V3dListOfView {.noSideEffect,
    importcpp: "ActiveViews", header: "V3d_Viewer.hxx".}
proc activeViewIterator*(this: V3dViewer): V3dListOfViewIterator {.noSideEffect,
    importcpp: "ActiveViewIterator", header: "V3d_Viewer.hxx".}
proc lastActiveView*(this: V3dViewer): bool {.noSideEffect,
    importcpp: "LastActiveView", header: "V3d_Viewer.hxx".}
proc definedViews*(this: V3dViewer): V3dListOfView {.noSideEffect,
    importcpp: "DefinedViews", header: "V3d_Viewer.hxx".}
proc definedViewIterator*(this: V3dViewer): V3dListOfViewIterator {.noSideEffect,
    importcpp: "DefinedViewIterator", header: "V3d_Viewer.hxx".}
proc setDefaultLights*(this: var V3dViewer) {.importcpp: "SetDefaultLights",
    header: "V3d_Viewer.hxx".}
proc setLightOn*(this: var V3dViewer; theLight: Handle[V3dLight]) {.
    importcpp: "SetLightOn", header: "V3d_Viewer.hxx".}
proc setLightOn*(this: var V3dViewer) {.importcpp: "SetLightOn",
                                    header: "V3d_Viewer.hxx".}
proc setLightOff*(this: var V3dViewer; theLight: Handle[V3dLight]) {.
    importcpp: "SetLightOff", header: "V3d_Viewer.hxx".}
proc setLightOff*(this: var V3dViewer) {.importcpp: "SetLightOff",
                                     header: "V3d_Viewer.hxx".}
proc addLight*(this: var V3dViewer; theLight: Handle[V3dLight]) {.
    importcpp: "AddLight", header: "V3d_Viewer.hxx".}
proc delLight*(this: var V3dViewer; theLight: Handle[V3dLight]) {.
    importcpp: "DelLight", header: "V3d_Viewer.hxx".}
proc updateLights*(this: var V3dViewer) {.importcpp: "UpdateLights",
                                      header: "V3d_Viewer.hxx".}
proc isGlobalLight*(this: V3dViewer; theLight: Handle[V3dLight]): bool {.noSideEffect,
    importcpp: "IsGlobalLight", header: "V3d_Viewer.hxx".}
proc activeLights*(this: V3dViewer): V3dListOfLight {.noSideEffect,
    importcpp: "ActiveLights", header: "V3d_Viewer.hxx".}
proc activeLightIterator*(this: V3dViewer): V3dListOfLightIterator {.noSideEffect,
    importcpp: "ActiveLightIterator", header: "V3d_Viewer.hxx".}
proc definedLights*(this: V3dViewer): V3dListOfLight {.noSideEffect,
    importcpp: "DefinedLights", header: "V3d_Viewer.hxx".}
proc definedLightIterator*(this: V3dViewer): V3dListOfLightIterator {.noSideEffect,
    importcpp: "DefinedLightIterator", header: "V3d_Viewer.hxx".}
proc erase*(this: V3dViewer) {.noSideEffect, importcpp: "Erase",
                            header: "V3d_Viewer.hxx".}
proc unHighlight*(this: V3dViewer) {.noSideEffect, importcpp: "UnHighlight",
                                  header: "V3d_Viewer.hxx".}
proc computedMode*(this: V3dViewer): bool {.noSideEffect, importcpp: "ComputedMode",
                                        header: "V3d_Viewer.hxx".}
proc setComputedMode*(this: var V3dViewer; theMode: bool) {.
    importcpp: "SetComputedMode", header: "V3d_Viewer.hxx".}
proc defaultComputedMode*(this: V3dViewer): bool {.noSideEffect,
    importcpp: "DefaultComputedMode", header: "V3d_Viewer.hxx".}
proc setDefaultComputedMode*(this: var V3dViewer; theMode: bool) {.
    importcpp: "SetDefaultComputedMode", header: "V3d_Viewer.hxx".}
proc privilegedPlane*(this: V3dViewer): Ax3 {.noSideEffect,
    importcpp: "PrivilegedPlane", header: "V3d_Viewer.hxx".}
proc setPrivilegedPlane*(this: var V3dViewer; thePlane: Ax3) {.
    importcpp: "SetPrivilegedPlane", header: "V3d_Viewer.hxx".}
proc displayPrivilegedPlane*(this: var V3dViewer; theOnOff: bool; theSize: float = 1) {.
    importcpp: "DisplayPrivilegedPlane", header: "V3d_Viewer.hxx".}
proc activateGrid*(this: var V3dViewer; aGridType: AspectGridType;
                  aGridDrawMode: AspectGridDrawMode) {.importcpp: "ActivateGrid",
    header: "V3d_Viewer.hxx".}
proc deactivateGrid*(this: var V3dViewer) {.importcpp: "DeactivateGrid",
                                        header: "V3d_Viewer.hxx".}
proc setGridEcho*(this: var V3dViewer; showGrid: bool = true) {.
    importcpp: "SetGridEcho", header: "V3d_Viewer.hxx".}
proc setGridEcho*(this: var V3dViewer; aMarker: Handle[Graphic3dAspectMarker3d]) {.
    importcpp: "SetGridEcho", header: "V3d_Viewer.hxx".}
proc gridEcho*(this: V3dViewer): bool {.noSideEffect, importcpp: "GridEcho",
                                    header: "V3d_Viewer.hxx".}
proc isActive*(this: V3dViewer): bool {.noSideEffect, importcpp: "IsActive",
                                    header: "V3d_Viewer.hxx".}
proc grid*(this: V3dViewer): Handle[AspectGrid] {.noSideEffect, importcpp: "Grid",
    header: "V3d_Viewer.hxx".}
proc gridType*(this: V3dViewer): AspectGridType {.noSideEffect,
    importcpp: "GridType", header: "V3d_Viewer.hxx".}
proc gridDrawMode*(this: V3dViewer): AspectGridDrawMode {.noSideEffect,
    importcpp: "GridDrawMode", header: "V3d_Viewer.hxx".}
proc rectangularGridValues*(this: V3dViewer; xOrigin: var float; yOrigin: var float;
                           xStep: var float; yStep: var float;
                           rotationAngle: var float) {.noSideEffect,
    importcpp: "RectangularGridValues", header: "V3d_Viewer.hxx".}
proc setRectangularGridValues*(this: var V3dViewer; xOrigin: float; yOrigin: float;
                              xStep: float; yStep: float; rotationAngle: float) {.
    importcpp: "SetRectangularGridValues", header: "V3d_Viewer.hxx".}
proc circularGridValues*(this: V3dViewer; xOrigin: var float; yOrigin: var float;
                        radiusStep: var float; divisionNumber: var int;
                        rotationAngle: var float) {.noSideEffect,
    importcpp: "CircularGridValues", header: "V3d_Viewer.hxx".}
proc setCircularGridValues*(this: var V3dViewer; xOrigin: float; yOrigin: float;
                           radiusStep: float; divisionNumber: int;
                           rotationAngle: float) {.
    importcpp: "SetCircularGridValues", header: "V3d_Viewer.hxx".}
proc circularGridGraphicValues*(this: V3dViewer; radius: var float; offSet: var float) {.
    noSideEffect, importcpp: "CircularGridGraphicValues", header: "V3d_Viewer.hxx".}
proc setCircularGridGraphicValues*(this: var V3dViewer; radius: float; offSet: float) {.
    importcpp: "SetCircularGridGraphicValues", header: "V3d_Viewer.hxx".}
proc rectangularGridGraphicValues*(this: V3dViewer; xSize: var float;
                                  ySize: var float; offSet: var float) {.noSideEffect,
    importcpp: "RectangularGridGraphicValues", header: "V3d_Viewer.hxx".}
proc setRectangularGridGraphicValues*(this: var V3dViewer; xSize: float; ySize: float;
                                     offSet: float) {.
    importcpp: "SetRectangularGridGraphicValues", header: "V3d_Viewer.hxx".}
proc showGridEcho*(this: var V3dViewer; theView: Handle[V3dView];
                  thePoint: Graphic3dVertex) {.importcpp: "ShowGridEcho",
    header: "V3d_Viewer.hxx".}
proc hideGridEcho*(this: var V3dViewer; theView: Handle[V3dView]) {.
    importcpp: "HideGridEcho", header: "V3d_Viewer.hxx".}
## !!!Ignored construct:  public : ! @name deprecated methods Standard_DEPRECATED ( This constructor is deprecated ) V3d_Viewer ( const opencascade :: handle < Graphic3d_GraphicDriver > [end of template] & theDriver , const Standard_ExtString theName , const Standard_CString theDomain =  , const Standard_Real theViewSize = 1000.0 , const V3d_TypeOfOrientation theViewProj = V3d_XposYnegZpos , const Quantity_Color & theViewBackground = Quantity_NOC_GRAY30 , const V3d_TypeOfVisualization theVisualization = V3d_ZBUFFER , const Graphic3d_TypeOfShadingModel theShadingModel = Graphic3d_TOSM_VERTEX , const Standard_Boolean theComputedMode = Standard_True , const Standard_Boolean theDefaultComputedMode = Standard_True ) ;
## Error: identifier expected, but got: This constructor is deprecated!!!

## !!!Ignored construct:  ! Defines the default base colour of views attached
## ! to the Viewer by supplying the type of colour
## ! definition and the three component values. Standard_DEPRECATED ( This method is deprecated - SetDefaultBackgroundColor() taking Quantity_Color should be used instead ) void SetDefaultBackgroundColor ( const Quantity_TypeOfColor theType , const Standard_Real theV1 , const Standard_Real theV2 , const Standard_Real theV3 ) { Standard_Real aV1 = theV1 ; Standard_Real aV2 = theV2 ; Standard_Real aV3 = theV3 ; if ( aV1 < 0.0 ) aV1 = 0.0 ; else if ( aV1 > 1.0 ) aV1 = 1.0 ; if ( aV2 < 0.0 ) aV2 = 0.0 ; else if ( aV2 > 1.0 ) aV2 = 1.0 ; if ( aV3 < 0.0 ) aV3 = 0.0 ; else if ( aV3 > 1.0 ) aV3 = 1.0 ; SetDefaultBackgroundColor ( Quantity_Color ( aV1 , aV2 , aV3 , theType ) ) ; } Standard_DEPRECATED ( This method is deprecated - DefaultBackgroundColor() without arguments should be used instead ) void DefaultBackgroundColor ( const Quantity_TypeOfColor theType , Standard_Real & theV1 , Standard_Real & theV2 , Standard_Real & theV3 ) const { Quantity_Color aColor = DefaultBackgroundColor ( ) ; aColor . Values ( theV1 , theV2 , theV3 , theType ) ; } ! Initializes an internal iterator on the active views. Standard_DEPRECATED ( Deprecated method - ActiveViews() should be used instead ) void InitActiveViews ( ) { myActiveViewsIterator . Initialize ( myActiveViews ) ; } ! Returns true if there are more active view(s) to return. Standard_DEPRECATED ( Deprecated method - ActiveViews() should be used instead ) Standard_Boolean MoreActiveViews ( ) const { return myActiveViewsIterator . More ( ) ; } ! Go to the next active view (if there is not, ActiveView will raise an exception) Standard_DEPRECATED ( Deprecated method - ActiveViews() should be used instead ) void NextActiveViews ( ) { if ( ! myActiveViews . IsEmpty ( ) ) myActiveViewsIterator . Next ( ) ; } Standard_DEPRECATED ( Deprecated method - ActiveViews() should be used instead ) const opencascade :: handle < V3d_View > [end of template] & ActiveView ( ) const { return myActiveViewsIterator . Value ( ) ; } ! Initializes an internal iterator on the Defined views. Standard_DEPRECATED ( Deprecated method - DefinedViews() should be used instead ) void InitDefinedViews ( ) { myDefinedViewsIterator . Initialize ( myDefinedViews ) ; } ! returns true if there are more Defined view(s) to return. Standard_DEPRECATED ( Deprecated method - DefinedViews() should be used instead ) Standard_Boolean MoreDefinedViews ( ) const { return myDefinedViewsIterator . More ( ) ; } ! Go to the next Defined view (if there is not, DefinedView will raise an exception) Standard_DEPRECATED ( Deprecated method - DefinedViews() should be used instead ) void NextDefinedViews ( ) { if ( ! myDefinedViews . IsEmpty ( ) ) myDefinedViewsIterator . Next ( ) ; } Standard_DEPRECATED ( Deprecated method - DefinedViews() should be used instead ) const opencascade :: handle < V3d_View > [end of template] & DefinedView ( ) const { return myDefinedViewsIterator . Value ( ) ; } ! Initializes an internal iteratator on the active Lights. Standard_DEPRECATED ( Deprecated method - ActiveLights() should be used instead ) void InitActiveLights ( ) { myActiveLightsIterator . Initialize ( myActiveLights ) ; } ! returns true if there are more active Light(s) to return. Standard_DEPRECATED ( Deprecated method - ActiveLights() should be used instead ) Standard_Boolean MoreActiveLights ( ) const { return myActiveLightsIterator . More ( ) ; } ! Go to the next active Light (if there is not, ActiveLight() will raise an exception) Standard_DEPRECATED ( Deprecated method - ActiveLights() should be used instead ) void NextActiveLights ( ) { myActiveLightsIterator . Next ( ) ; } Standard_DEPRECATED ( Deprecated method - ActiveLights() should be used instead ) const opencascade :: handle < V3d_Light > [end of template] & ActiveLight ( ) const { return myActiveLightsIterator . Value ( ) ; } ! Initializes an internal iterattor on the Defined Lights. Standard_DEPRECATED ( Deprecated method - DefinedLights() should be used instead ) void InitDefinedLights ( ) { myDefinedLightsIterator . Initialize ( myDefinedLights ) ; } ! Returns true if there are more Defined Light(s) to return. Standard_DEPRECATED ( Deprecated method - DefinedLights() should be used instead ) Standard_Boolean MoreDefinedLights ( ) const { return myDefinedLightsIterator . More ( ) ; } ! Go to the next Defined Light (if there is not, DefinedLight() will raise an exception) Standard_DEPRECATED ( Deprecated method - DefinedLights() should be used instead ) void NextDefinedLights ( ) { if ( ! myDefinedLights . IsEmpty ( ) ) myDefinedLightsIterator . Next ( ) ; } Standard_DEPRECATED ( Deprecated method - DefinedLights() should be used instead ) const opencascade :: handle < V3d_Light > [end of template] & DefinedLight ( ) const { return myDefinedLightsIterator . Value ( ) ; } ! Dumps the content of me into the stream void DumpJson ( Standard_OStream & theOStream , Standard_Integer theDepth = - 1 ) const ;
## Error: identifier expected, but got: This method is deprecated - SetDefaultBackgroundColor() taking Quantity_Color should be used instead!!!

discard "forward decl of V3d_Viewer"
type
  HandleV3dViewer* = Handle[V3dViewer]

