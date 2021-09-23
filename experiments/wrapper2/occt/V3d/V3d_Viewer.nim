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

import
  ../Aspect/Aspect_Background, ../Aspect/Aspect_GenId,
  ../Aspect/Aspect_GradientBackground, ../Aspect/Aspect_GradientFillMethod,
  ../Aspect/Aspect_GridDrawMode, ../Aspect/Aspect_GridType, ../gp/gp_Ax3,
  ../Graphic3d/Graphic3d_StructureManager,
  ../Graphic3d/Graphic3d_TypeOfShadingModel, ../Graphic3d/Graphic3d_Vertex,
  ../Graphic3d/Graphic3d_ZLayerSettings, ../Standard/Standard,
  ../Standard/Standard_Boolean, ../Standard/Standard_CString,
  ../Standard/Standard_ExtString, ../Standard/Standard_Integer,
  ../Standard/Standard_Real, ../Standard/Standard_Type,
  ../TColStd/TColStd_MapOfInteger,
  ../TColStd/TColStd_ListIteratorOfListOfTransient,
  ../TColStd/TColStd_SequenceOfInteger, ../TCollection/TCollection_AsciiString,
  ../TCollection/TCollection_ExtendedString, V3d_ListOfLight, V3d_ListOfView,
  V3d_TypeOfOrientation, V3d_TypeOfView, V3d_TypeOfVisualization,
  ../Quantity/Quantity_Color

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
  V3d_Viewer* {.importcpp: "V3d_Viewer", header: "V3d_Viewer.hxx", bycopy.} = object of Standard_Transient ##
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

  V3d_Viewerbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "V3d_Viewer::get_type_name(@)",
                              header: "V3d_Viewer.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "V3d_Viewer::get_type_descriptor(@)", header: "V3d_Viewer.hxx".}
proc DynamicType*(this: V3d_Viewer): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "V3d_Viewer.hxx".}
proc constructV3d_Viewer*(theDriver: handle[Graphic3d_GraphicDriver]): V3d_Viewer {.
    constructor, importcpp: "V3d_Viewer(@)", header: "V3d_Viewer.hxx".}
proc IfMoreViews*(this: V3d_Viewer): Standard_Boolean {.noSideEffect,
    importcpp: "IfMoreViews", header: "V3d_Viewer.hxx".}
proc CreateView*(this: var V3d_Viewer): handle[V3d_View] {.importcpp: "CreateView",
    header: "V3d_Viewer.hxx".}
proc SetViewOn*(this: var V3d_Viewer) {.importcpp: "SetViewOn",
                                    header: "V3d_Viewer.hxx".}
proc SetViewOn*(this: var V3d_Viewer; theView: handle[V3d_View]) {.
    importcpp: "SetViewOn", header: "V3d_Viewer.hxx".}
proc SetViewOff*(this: var V3d_Viewer) {.importcpp: "SetViewOff",
                                     header: "V3d_Viewer.hxx".}
proc SetViewOff*(this: var V3d_Viewer; theView: handle[V3d_View]) {.
    importcpp: "SetViewOff", header: "V3d_Viewer.hxx".}
proc Update*(this: var V3d_Viewer) {.importcpp: "Update", header: "V3d_Viewer.hxx".}
proc Redraw*(this: V3d_Viewer) {.noSideEffect, importcpp: "Redraw",
                              header: "V3d_Viewer.hxx".}
proc RedrawImmediate*(this: V3d_Viewer) {.noSideEffect,
                                       importcpp: "RedrawImmediate",
                                       header: "V3d_Viewer.hxx".}
proc Invalidate*(this: V3d_Viewer) {.noSideEffect, importcpp: "Invalidate",
                                  header: "V3d_Viewer.hxx".}
proc Remove*(this: var V3d_Viewer) {.importcpp: "Remove", header: "V3d_Viewer.hxx".}
proc Driver*(this: V3d_Viewer): handle[Graphic3d_GraphicDriver] {.noSideEffect,
    importcpp: "Driver", header: "V3d_Viewer.hxx".}
proc StructureManager*(this: V3d_Viewer): handle[Graphic3d_StructureManager] {.
    noSideEffect, importcpp: "StructureManager", header: "V3d_Viewer.hxx".}
proc DefaultRenderingParams*(this: V3d_Viewer): Graphic3d_RenderingParams {.
    noSideEffect, importcpp: "DefaultRenderingParams", header: "V3d_Viewer.hxx".}
proc SetDefaultRenderingParams*(this: var V3d_Viewer;
                               theParams: Graphic3d_RenderingParams) {.
    importcpp: "SetDefaultRenderingParams", header: "V3d_Viewer.hxx".}
proc SetDefaultBackgroundColor*(this: var V3d_Viewer; theColor: Quantity_Color) {.
    importcpp: "SetDefaultBackgroundColor", header: "V3d_Viewer.hxx".}
proc GetGradientBackground*(this: V3d_Viewer): Aspect_GradientBackground {.
    noSideEffect, importcpp: "GetGradientBackground", header: "V3d_Viewer.hxx".}
proc SetDefaultBgGradientColors*(this: var V3d_Viewer; theColor1: Quantity_Color;
                                theColor2: Quantity_Color; theFillStyle: Aspect_GradientFillMethod = Aspect_GFM_HOR) {.
    importcpp: "SetDefaultBgGradientColors", header: "V3d_Viewer.hxx".}
proc DefaultViewSize*(this: V3d_Viewer): Standard_Real {.noSideEffect,
    importcpp: "DefaultViewSize", header: "V3d_Viewer.hxx".}
proc SetDefaultViewSize*(this: var V3d_Viewer; theSize: Standard_Real) {.
    importcpp: "SetDefaultViewSize", header: "V3d_Viewer.hxx".}
proc DefaultViewProj*(this: V3d_Viewer): V3d_TypeOfOrientation {.noSideEffect,
    importcpp: "DefaultViewProj", header: "V3d_Viewer.hxx".}
proc SetDefaultViewProj*(this: var V3d_Viewer; theOrientation: V3d_TypeOfOrientation) {.
    importcpp: "SetDefaultViewProj", header: "V3d_Viewer.hxx".}
proc DefaultVisualization*(this: V3d_Viewer): V3d_TypeOfVisualization {.
    noSideEffect, importcpp: "DefaultVisualization", header: "V3d_Viewer.hxx".}
proc SetDefaultVisualization*(this: var V3d_Viewer; theType: V3d_TypeOfVisualization) {.
    importcpp: "SetDefaultVisualization", header: "V3d_Viewer.hxx".}
proc DefaultShadingModel*(this: V3d_Viewer): Graphic3d_TypeOfShadingModel {.
    noSideEffect, importcpp: "DefaultShadingModel", header: "V3d_Viewer.hxx".}
proc SetDefaultShadingModel*(this: var V3d_Viewer;
                            theType: Graphic3d_TypeOfShadingModel) {.
    importcpp: "SetDefaultShadingModel", header: "V3d_Viewer.hxx".}
proc DefaultTypeOfView*(this: V3d_Viewer): V3d_TypeOfView {.noSideEffect,
    importcpp: "DefaultTypeOfView", header: "V3d_Viewer.hxx".}
proc SetDefaultTypeOfView*(this: var V3d_Viewer; theType: V3d_TypeOfView) {.
    importcpp: "SetDefaultTypeOfView", header: "V3d_Viewer.hxx".}
proc DefaultBackgroundColor*(this: V3d_Viewer): Quantity_Color {.noSideEffect,
    importcpp: "DefaultBackgroundColor", header: "V3d_Viewer.hxx".}
proc DefaultBgGradientColors*(this: V3d_Viewer; theColor1: var Quantity_Color;
                             theColor2: var Quantity_Color) {.noSideEffect,
    importcpp: "DefaultBgGradientColors", header: "V3d_Viewer.hxx".}
proc GetAllZLayers*(this: V3d_Viewer; theLayerSeq: var TColStd_SequenceOfInteger) {.
    noSideEffect, importcpp: "GetAllZLayers", header: "V3d_Viewer.hxx".}
proc AddZLayer*(this: var V3d_Viewer; theLayerId: var Graphic3d_ZLayerId; theSettings: Graphic3d_ZLayerSettings = Graphic3d_ZLayerSettings()): Standard_Boolean {.
    importcpp: "AddZLayer", header: "V3d_Viewer.hxx".}
proc InsertLayerBefore*(this: var V3d_Viewer; theNewLayerId: var Graphic3d_ZLayerId;
                       theSettings: Graphic3d_ZLayerSettings;
                       theLayerAfter: Graphic3d_ZLayerId): Standard_Boolean {.
    importcpp: "InsertLayerBefore", header: "V3d_Viewer.hxx".}
proc InsertLayerAfter*(this: var V3d_Viewer; theNewLayerId: var Graphic3d_ZLayerId;
                      theSettings: Graphic3d_ZLayerSettings;
                      theLayerBefore: Graphic3d_ZLayerId): Standard_Boolean {.
    importcpp: "InsertLayerAfter", header: "V3d_Viewer.hxx".}
proc RemoveZLayer*(this: var V3d_Viewer; theLayerId: Graphic3d_ZLayerId): Standard_Boolean {.
    importcpp: "RemoveZLayer", header: "V3d_Viewer.hxx".}
proc ZLayerSettings*(this: V3d_Viewer; theLayerId: Graphic3d_ZLayerId): Graphic3d_ZLayerSettings {.
    noSideEffect, importcpp: "ZLayerSettings", header: "V3d_Viewer.hxx".}
proc SetZLayerSettings*(this: var V3d_Viewer; theLayerId: Graphic3d_ZLayerId;
                       theSettings: Graphic3d_ZLayerSettings) {.
    importcpp: "SetZLayerSettings", header: "V3d_Viewer.hxx".}
proc ActiveViews*(this: V3d_Viewer): V3d_ListOfView {.noSideEffect,
    importcpp: "ActiveViews", header: "V3d_Viewer.hxx".}
proc ActiveViewIterator*(this: V3d_Viewer): V3d_ListOfViewIterator {.noSideEffect,
    importcpp: "ActiveViewIterator", header: "V3d_Viewer.hxx".}
proc LastActiveView*(this: V3d_Viewer): Standard_Boolean {.noSideEffect,
    importcpp: "LastActiveView", header: "V3d_Viewer.hxx".}
proc DefinedViews*(this: V3d_Viewer): V3d_ListOfView {.noSideEffect,
    importcpp: "DefinedViews", header: "V3d_Viewer.hxx".}
proc DefinedViewIterator*(this: V3d_Viewer): V3d_ListOfViewIterator {.noSideEffect,
    importcpp: "DefinedViewIterator", header: "V3d_Viewer.hxx".}
proc SetDefaultLights*(this: var V3d_Viewer) {.importcpp: "SetDefaultLights",
    header: "V3d_Viewer.hxx".}
proc SetLightOn*(this: var V3d_Viewer; theLight: handle[V3d_Light]) {.
    importcpp: "SetLightOn", header: "V3d_Viewer.hxx".}
proc SetLightOn*(this: var V3d_Viewer) {.importcpp: "SetLightOn",
                                     header: "V3d_Viewer.hxx".}
proc SetLightOff*(this: var V3d_Viewer; theLight: handle[V3d_Light]) {.
    importcpp: "SetLightOff", header: "V3d_Viewer.hxx".}
proc SetLightOff*(this: var V3d_Viewer) {.importcpp: "SetLightOff",
                                      header: "V3d_Viewer.hxx".}
proc AddLight*(this: var V3d_Viewer; theLight: handle[V3d_Light]) {.
    importcpp: "AddLight", header: "V3d_Viewer.hxx".}
proc DelLight*(this: var V3d_Viewer; theLight: handle[V3d_Light]) {.
    importcpp: "DelLight", header: "V3d_Viewer.hxx".}
proc UpdateLights*(this: var V3d_Viewer) {.importcpp: "UpdateLights",
                                       header: "V3d_Viewer.hxx".}
proc IsGlobalLight*(this: V3d_Viewer; TheLight: handle[V3d_Light]): Standard_Boolean {.
    noSideEffect, importcpp: "IsGlobalLight", header: "V3d_Viewer.hxx".}
proc ActiveLights*(this: V3d_Viewer): V3d_ListOfLight {.noSideEffect,
    importcpp: "ActiveLights", header: "V3d_Viewer.hxx".}
proc ActiveLightIterator*(this: V3d_Viewer): V3d_ListOfLightIterator {.noSideEffect,
    importcpp: "ActiveLightIterator", header: "V3d_Viewer.hxx".}
proc DefinedLights*(this: V3d_Viewer): V3d_ListOfLight {.noSideEffect,
    importcpp: "DefinedLights", header: "V3d_Viewer.hxx".}
proc DefinedLightIterator*(this: V3d_Viewer): V3d_ListOfLightIterator {.
    noSideEffect, importcpp: "DefinedLightIterator", header: "V3d_Viewer.hxx".}
proc Erase*(this: V3d_Viewer) {.noSideEffect, importcpp: "Erase",
                             header: "V3d_Viewer.hxx".}
proc UnHighlight*(this: V3d_Viewer) {.noSideEffect, importcpp: "UnHighlight",
                                   header: "V3d_Viewer.hxx".}
proc ComputedMode*(this: V3d_Viewer): Standard_Boolean {.noSideEffect,
    importcpp: "ComputedMode", header: "V3d_Viewer.hxx".}
proc SetComputedMode*(this: var V3d_Viewer; theMode: Standard_Boolean) {.
    importcpp: "SetComputedMode", header: "V3d_Viewer.hxx".}
proc DefaultComputedMode*(this: V3d_Viewer): Standard_Boolean {.noSideEffect,
    importcpp: "DefaultComputedMode", header: "V3d_Viewer.hxx".}
proc SetDefaultComputedMode*(this: var V3d_Viewer; theMode: Standard_Boolean) {.
    importcpp: "SetDefaultComputedMode", header: "V3d_Viewer.hxx".}
proc PrivilegedPlane*(this: V3d_Viewer): gp_Ax3 {.noSideEffect,
    importcpp: "PrivilegedPlane", header: "V3d_Viewer.hxx".}
proc SetPrivilegedPlane*(this: var V3d_Viewer; thePlane: gp_Ax3) {.
    importcpp: "SetPrivilegedPlane", header: "V3d_Viewer.hxx".}
proc DisplayPrivilegedPlane*(this: var V3d_Viewer; theOnOff: Standard_Boolean;
                            theSize: Standard_Real = 1) {.
    importcpp: "DisplayPrivilegedPlane", header: "V3d_Viewer.hxx".}
proc ActivateGrid*(this: var V3d_Viewer; aGridType: Aspect_GridType;
                  aGridDrawMode: Aspect_GridDrawMode) {.importcpp: "ActivateGrid",
    header: "V3d_Viewer.hxx".}
proc DeactivateGrid*(this: var V3d_Viewer) {.importcpp: "DeactivateGrid",
    header: "V3d_Viewer.hxx".}
proc SetGridEcho*(this: var V3d_Viewer; showGrid: Standard_Boolean = Standard_True) {.
    importcpp: "SetGridEcho", header: "V3d_Viewer.hxx".}
proc SetGridEcho*(this: var V3d_Viewer; aMarker: handle[Graphic3d_AspectMarker3d]) {.
    importcpp: "SetGridEcho", header: "V3d_Viewer.hxx".}
proc GridEcho*(this: V3d_Viewer): Standard_Boolean {.noSideEffect,
    importcpp: "GridEcho", header: "V3d_Viewer.hxx".}
proc IsActive*(this: V3d_Viewer): Standard_Boolean {.noSideEffect,
    importcpp: "IsActive", header: "V3d_Viewer.hxx".}
proc Grid*(this: V3d_Viewer): handle[Aspect_Grid] {.noSideEffect, importcpp: "Grid",
    header: "V3d_Viewer.hxx".}
proc GridType*(this: V3d_Viewer): Aspect_GridType {.noSideEffect,
    importcpp: "GridType", header: "V3d_Viewer.hxx".}
proc GridDrawMode*(this: V3d_Viewer): Aspect_GridDrawMode {.noSideEffect,
    importcpp: "GridDrawMode", header: "V3d_Viewer.hxx".}
proc RectangularGridValues*(this: V3d_Viewer; XOrigin: var Standard_Real;
                           YOrigin: var Standard_Real; XStep: var Standard_Real;
                           YStep: var Standard_Real;
                           RotationAngle: var Standard_Real) {.noSideEffect,
    importcpp: "RectangularGridValues", header: "V3d_Viewer.hxx".}
proc SetRectangularGridValues*(this: var V3d_Viewer; XOrigin: Standard_Real;
                              YOrigin: Standard_Real; XStep: Standard_Real;
                              YStep: Standard_Real; RotationAngle: Standard_Real) {.
    importcpp: "SetRectangularGridValues", header: "V3d_Viewer.hxx".}
proc CircularGridValues*(this: V3d_Viewer; XOrigin: var Standard_Real;
                        YOrigin: var Standard_Real; RadiusStep: var Standard_Real;
                        DivisionNumber: var Standard_Integer;
                        RotationAngle: var Standard_Real) {.noSideEffect,
    importcpp: "CircularGridValues", header: "V3d_Viewer.hxx".}
proc SetCircularGridValues*(this: var V3d_Viewer; XOrigin: Standard_Real;
                           YOrigin: Standard_Real; RadiusStep: Standard_Real;
                           DivisionNumber: Standard_Integer;
                           RotationAngle: Standard_Real) {.
    importcpp: "SetCircularGridValues", header: "V3d_Viewer.hxx".}
proc CircularGridGraphicValues*(this: V3d_Viewer; Radius: var Standard_Real;
                               OffSet: var Standard_Real) {.noSideEffect,
    importcpp: "CircularGridGraphicValues", header: "V3d_Viewer.hxx".}
proc SetCircularGridGraphicValues*(this: var V3d_Viewer; Radius: Standard_Real;
                                  OffSet: Standard_Real) {.
    importcpp: "SetCircularGridGraphicValues", header: "V3d_Viewer.hxx".}
proc RectangularGridGraphicValues*(this: V3d_Viewer; XSize: var Standard_Real;
                                  YSize: var Standard_Real;
                                  OffSet: var Standard_Real) {.noSideEffect,
    importcpp: "RectangularGridGraphicValues", header: "V3d_Viewer.hxx".}
proc SetRectangularGridGraphicValues*(this: var V3d_Viewer; XSize: Standard_Real;
                                     YSize: Standard_Real; OffSet: Standard_Real) {.
    importcpp: "SetRectangularGridGraphicValues", header: "V3d_Viewer.hxx".}
proc ShowGridEcho*(this: var V3d_Viewer; theView: handle[V3d_View];
                  thePoint: Graphic3d_Vertex) {.importcpp: "ShowGridEcho",
    header: "V3d_Viewer.hxx".}
proc HideGridEcho*(this: var V3d_Viewer; theView: handle[V3d_View]) {.
    importcpp: "HideGridEcho", header: "V3d_Viewer.hxx".}
## !!!Ignored construct:  public : ! @name deprecated methods Standard_DEPRECATED ( This constructor is deprecated ) V3d_Viewer ( const opencascade :: handle < Graphic3d_GraphicDriver > [end of template] & theDriver , const Standard_ExtString theName , const Standard_CString theDomain =  , const Standard_Real theViewSize = 1000.0 , const V3d_TypeOfOrientation theViewProj = V3d_XposYnegZpos , const Quantity_Color & theViewBackground = Quantity_NOC_GRAY30 , const V3d_TypeOfVisualization theVisualization = V3d_ZBUFFER , const Graphic3d_TypeOfShadingModel theShadingModel = Graphic3d_TOSM_VERTEX , const Standard_Boolean theComputedMode = Standard_True , const Standard_Boolean theDefaultComputedMode = Standard_True ) ;
## Error: identifier expected, but got: This constructor is deprecated!!!

## !!!Ignored construct:  ! Defines the default base colour of views attached
## ! to the Viewer by supplying the type of colour
## ! definition and the three component values. Standard_DEPRECATED ( This method is deprecated - SetDefaultBackgroundColor() taking Quantity_Color should be used instead ) void SetDefaultBackgroundColor ( const Quantity_TypeOfColor theType , const Standard_Real theV1 , const Standard_Real theV2 , const Standard_Real theV3 ) { Standard_Real aV1 = theV1 ; Standard_Real aV2 = theV2 ; Standard_Real aV3 = theV3 ; if ( aV1 < 0.0 ) aV1 = 0.0 ; else if ( aV1 > 1.0 ) aV1 = 1.0 ; if ( aV2 < 0.0 ) aV2 = 0.0 ; else if ( aV2 > 1.0 ) aV2 = 1.0 ; if ( aV3 < 0.0 ) aV3 = 0.0 ; else if ( aV3 > 1.0 ) aV3 = 1.0 ; SetDefaultBackgroundColor ( Quantity_Color ( aV1 , aV2 , aV3 , theType ) ) ; } Standard_DEPRECATED ( This method is deprecated - DefaultBackgroundColor() without arguments should be used instead ) void DefaultBackgroundColor ( const Quantity_TypeOfColor theType , Standard_Real & theV1 , Standard_Real & theV2 , Standard_Real & theV3 ) const { Quantity_Color aColor = DefaultBackgroundColor ( ) ; aColor . Values ( theV1 , theV2 , theV3 , theType ) ; } ! Initializes an internal iterator on the active views. Standard_DEPRECATED ( Deprecated method - ActiveViews() should be used instead ) void InitActiveViews ( ) { myActiveViewsIterator . Initialize ( myActiveViews ) ; } ! Returns true if there are more active view(s) to return. Standard_DEPRECATED ( Deprecated method - ActiveViews() should be used instead ) Standard_Boolean MoreActiveViews ( ) const { return myActiveViewsIterator . More ( ) ; } ! Go to the next active view (if there is not, ActiveView will raise an exception) Standard_DEPRECATED ( Deprecated method - ActiveViews() should be used instead ) void NextActiveViews ( ) { if ( ! myActiveViews . IsEmpty ( ) ) myActiveViewsIterator . Next ( ) ; } Standard_DEPRECATED ( Deprecated method - ActiveViews() should be used instead ) const opencascade :: handle < V3d_View > [end of template] & ActiveView ( ) const { return myActiveViewsIterator . Value ( ) ; } ! Initializes an internal iterator on the Defined views. Standard_DEPRECATED ( Deprecated method - DefinedViews() should be used instead ) void InitDefinedViews ( ) { myDefinedViewsIterator . Initialize ( myDefinedViews ) ; } ! returns true if there are more Defined view(s) to return. Standard_DEPRECATED ( Deprecated method - DefinedViews() should be used instead ) Standard_Boolean MoreDefinedViews ( ) const { return myDefinedViewsIterator . More ( ) ; } ! Go to the next Defined view (if there is not, DefinedView will raise an exception) Standard_DEPRECATED ( Deprecated method - DefinedViews() should be used instead ) void NextDefinedViews ( ) { if ( ! myDefinedViews . IsEmpty ( ) ) myDefinedViewsIterator . Next ( ) ; } Standard_DEPRECATED ( Deprecated method - DefinedViews() should be used instead ) const opencascade :: handle < V3d_View > [end of template] & DefinedView ( ) const { return myDefinedViewsIterator . Value ( ) ; } ! Initializes an internal iteratator on the active Lights. Standard_DEPRECATED ( Deprecated method - ActiveLights() should be used instead ) void InitActiveLights ( ) { myActiveLightsIterator . Initialize ( myActiveLights ) ; } ! returns true if there are more active Light(s) to return. Standard_DEPRECATED ( Deprecated method - ActiveLights() should be used instead ) Standard_Boolean MoreActiveLights ( ) const { return myActiveLightsIterator . More ( ) ; } ! Go to the next active Light (if there is not, ActiveLight() will raise an exception) Standard_DEPRECATED ( Deprecated method - ActiveLights() should be used instead ) void NextActiveLights ( ) { myActiveLightsIterator . Next ( ) ; } Standard_DEPRECATED ( Deprecated method - ActiveLights() should be used instead ) const opencascade :: handle < V3d_Light > [end of template] & ActiveLight ( ) const { return myActiveLightsIterator . Value ( ) ; } ! Initializes an internal iterattor on the Defined Lights. Standard_DEPRECATED ( Deprecated method - DefinedLights() should be used instead ) void InitDefinedLights ( ) { myDefinedLightsIterator . Initialize ( myDefinedLights ) ; } ! Returns true if there are more Defined Light(s) to return. Standard_DEPRECATED ( Deprecated method - DefinedLights() should be used instead ) Standard_Boolean MoreDefinedLights ( ) const { return myDefinedLightsIterator . More ( ) ; } ! Go to the next Defined Light (if there is not, DefinedLight() will raise an exception) Standard_DEPRECATED ( Deprecated method - DefinedLights() should be used instead ) void NextDefinedLights ( ) { if ( ! myDefinedLights . IsEmpty ( ) ) myDefinedLightsIterator . Next ( ) ; } Standard_DEPRECATED ( Deprecated method - DefinedLights() should be used instead ) const opencascade :: handle < V3d_Light > [end of template] & DefinedLight ( ) const { return myDefinedLightsIterator . Value ( ) ; } ! Dumps the content of me into the stream void DumpJson ( Standard_OStream & theOStream , Standard_Integer theDepth = - 1 ) const ;
## Error: identifier expected, but got: This method is deprecated - SetDefaultBackgroundColor() taking Quantity_Color should be used instead!!!

discard "forward decl of V3d_Viewer"
type
  Handle_V3d_Viewer* = handle[V3d_Viewer]
