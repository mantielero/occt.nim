##  Created on: 1992-01-15
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
discard "forward decl of Aspect_Window"
discard "forward decl of Graphic3d_Group"
discard "forward decl of Graphic3d_Structure"
discard "forward decl of Graphic3d_TextureEnv"
discard "forward decl of Standard_MultiplyDefined"
discard "forward decl of Standard_TypeMismatch"
discard "forward decl of V3d_BadValue"
discard "forward decl of V3d_UnMapped"
discard "forward decl of V3d_View"
discard "forward decl of V3d_View"
type
  HandleV3dView* = Handle[V3dView]

## ! Defines the application object VIEW for the
## ! VIEWER application.
## ! The methods of this class allow the editing
## ! and inquiring the parameters linked to the view.
## ! Provides a set of services common to all types of view.
## ! Warning: The default parameters are defined by the class
## ! Viewer (Example : SetDefaultViewSize()).
## ! Certain methods are mouse oriented, and it is
## ! necessary to know the difference between the start and
## ! the continuation of this gesture in putting the method
## ! into operation.
## ! Example : Shifting the eye-view along the screen axes.
## !
## ! View->Move(10.,20.,0.,True)     (Starting motion)
## ! View->Move(15.,-5.,0.,False)    (Next motion)

type
  V3dView* {.importcpp: "V3d_View", header: "V3d_View.hxx", bycopy.} = object of StandardTransient ##
                                                                                         ## !
                                                                                         ## Initializes
                                                                                         ## the
                                                                                         ## view.
                                                                                         ##
                                                                                         ## !
                                                                                         ## @name
                                                                                         ## deprecated
                                                                                         ## methods
                                                                                         ##
                                                                                         ## !
                                                                                         ## Returns
                                                                                         ## True
                                                                                         ## if
                                                                                         ## One
                                                                                         ## light
                                                                                         ## more
                                                                                         ## can
                                                                                         ## be
                                                                                         ##
                                                                                         ## !
                                                                                         ## activated
                                                                                         ## in
                                                                                         ## this
                                                                                         ## View.
                                                                                         ##
                                                                                         ## !
                                                                                         ## Modifies
                                                                                         ## the
                                                                                         ## aspect
                                                                                         ## ratio
                                                                                         ## of
                                                                                         ## the
                                                                                         ## camera
                                                                                         ## when
                                                                                         ##
                                                                                         ## !
                                                                                         ## the
                                                                                         ## associated
                                                                                         ## window
                                                                                         ## is
                                                                                         ## defined
                                                                                         ## or
                                                                                         ## resized.


proc constructV3dView*(theViewer: Handle[V3dViewer];
                      theType: V3dTypeOfView = v3dORTHOGRAPHIC): V3dView {.
    constructor, importcpp: "V3d_View(@)", header: "V3d_View.hxx".}
proc constructV3dView*(theViewer: Handle[V3dViewer]; theView: Handle[V3dView]): V3dView {.
    constructor, importcpp: "V3d_View(@)", header: "V3d_View.hxx".}
proc destroyV3dView*(this: var V3dView) {.importcpp: "#.~V3d_View()",
                                      header: "V3d_View.hxx".}
proc setWindow*(this: var V3dView; theWindow: Handle[AspectWindow];
               theContext: AspectRenderingContext = nil) {.importcpp: "SetWindow",
    header: "V3d_View.hxx".}
proc setMagnify*(this: var V3dView; theWindow: Handle[AspectWindow];
                thePreviousView: Handle[V3dView]; theX1: int; theY1: int; theX2: int;
                theY2: int) {.importcpp: "SetMagnify", header: "V3d_View.hxx".}
proc remove*(this: V3dView) {.noSideEffect, importcpp: "Remove",
                           header: "V3d_View.hxx".}
proc update*(this: V3dView) {.noSideEffect, importcpp: "Update",
                           header: "V3d_View.hxx".}
proc redraw*(this: V3dView) {.noSideEffect, importcpp: "Redraw",
                           header: "V3d_View.hxx".}
proc redrawImmediate*(this: V3dView) {.noSideEffect, importcpp: "RedrawImmediate",
                                    header: "V3d_View.hxx".}
proc invalidate*(this: V3dView) {.noSideEffect, importcpp: "Invalidate",
                               header: "V3d_View.hxx".}
proc isInvalidated*(this: V3dView): bool {.noSideEffect, importcpp: "IsInvalidated",
                                       header: "V3d_View.hxx".}
proc isInvalidatedImmediate*(this: V3dView): bool {.noSideEffect,
    importcpp: "IsInvalidatedImmediate", header: "V3d_View.hxx".}
proc invalidateImmediate*(this: var V3dView) {.importcpp: "InvalidateImmediate",
    header: "V3d_View.hxx".}
proc mustBeResized*(this: var V3dView) {.importcpp: "MustBeResized",
                                     header: "V3d_View.hxx".}
proc doMapping*(this: var V3dView) {.importcpp: "DoMapping", header: "V3d_View.hxx".}
proc isEmpty*(this: V3dView): bool {.noSideEffect, importcpp: "IsEmpty",
                                 header: "V3d_View.hxx".}
proc updateLights*(this: V3dView) {.noSideEffect, importcpp: "UpdateLights",
                                 header: "V3d_View.hxx".}
proc setAutoZFitMode*(this: var V3dView; theIsOn: bool; theScaleFactor: float = 1.0) {.
    importcpp: "SetAutoZFitMode", header: "V3d_View.hxx".}
proc autoZFitMode*(this: V3dView): bool {.noSideEffect, importcpp: "AutoZFitMode",
                                      header: "V3d_View.hxx".}
proc autoZFitScaleFactor*(this: V3dView): float {.noSideEffect,
    importcpp: "AutoZFitScaleFactor", header: "V3d_View.hxx".}
proc autoZFit*(this: V3dView) {.noSideEffect, importcpp: "AutoZFit",
                             header: "V3d_View.hxx".}
proc zFitAll*(this: V3dView; theScaleFactor: float = 1.0) {.noSideEffect,
    importcpp: "ZFitAll", header: "V3d_View.hxx".}
proc setBackgroundColor*(this: var V3dView; theType: QuantityTypeOfColor;
                        theV1: float; theV2: float; theV3: float) {.
    importcpp: "SetBackgroundColor", header: "V3d_View.hxx".}
proc setBackgroundColor*(this: var V3dView; theColor: QuantityColor) {.
    importcpp: "SetBackgroundColor", header: "V3d_View.hxx".}
proc setBgGradientColors*(this: var V3dView; theColor1: QuantityColor;
                         theColor2: QuantityColor; theFillStyle: AspectGradientFillMethod = aspectGFM_HOR;
                         theToUpdate: bool = false) {.
    importcpp: "SetBgGradientColors", header: "V3d_View.hxx".}
proc setBgGradientStyle*(this: var V3dView;
                        theMethod: AspectGradientFillMethod = aspectGFM_HOR;
                        theToUpdate: bool = false) {.
    importcpp: "SetBgGradientStyle", header: "V3d_View.hxx".}
proc setBackgroundImage*(this: var V3dView; theFileName: StandardCString;
                        theFillStyle: AspectFillMethod = aspectFM_CENTERED;
                        theToUpdate: bool = false) {.
    importcpp: "SetBackgroundImage", header: "V3d_View.hxx".}
proc setBackgroundImage*(this: var V3dView; theTexture: Handle[Graphic3dTexture2D];
                        theFillStyle: AspectFillMethod = aspectFM_CENTERED;
                        theToUpdate: bool = false) {.
    importcpp: "SetBackgroundImage", header: "V3d_View.hxx".}
proc setBgImageStyle*(this: var V3dView; theFillStyle: AspectFillMethod;
                     theToUpdate: bool = false) {.importcpp: "SetBgImageStyle",
    header: "V3d_View.hxx".}
proc setBackgroundCubeMap*(this: var V3dView; theCubeMap: Handle[Graphic3dCubeMap];
                          theToUpdatePBREnv: bool = true; theToUpdate: bool = false) {.
    importcpp: "SetBackgroundCubeMap", header: "V3d_View.hxx".}
proc generatePBREnvironment*(this: var V3dView; theToUpdate: bool = false) {.
    importcpp: "GeneratePBREnvironment", header: "V3d_View.hxx".}
proc clearPBREnvironment*(this: var V3dView; theToUpdate: bool = false) {.
    importcpp: "ClearPBREnvironment", header: "V3d_View.hxx".}
proc setAxis*(this: var V3dView; x: float; y: float; z: float; vx: float; vy: float; vz: float) {.
    importcpp: "SetAxis", header: "V3d_View.hxx".}
proc setShadingModel*(this: var V3dView;
                     theShadingModel: Graphic3dTypeOfShadingModel) {.
    importcpp: "SetShadingModel", header: "V3d_View.hxx".}
proc setTextureEnv*(this: var V3dView; theTexture: Handle[Graphic3dTextureEnv]) {.
    importcpp: "SetTextureEnv", header: "V3d_View.hxx".}
proc setVisualization*(this: var V3dView; theType: V3dTypeOfVisualization) {.
    importcpp: "SetVisualization", header: "V3d_View.hxx".}
proc setLightOn*(this: var V3dView; theLight: Handle[V3dLight]) {.
    importcpp: "SetLightOn", header: "V3d_View.hxx".}
proc setLightOn*(this: var V3dView) {.importcpp: "SetLightOn", header: "V3d_View.hxx".}
proc setLightOff*(this: var V3dView; theLight: Handle[V3dLight]) {.
    importcpp: "SetLightOff", header: "V3d_View.hxx".}
proc setLightOff*(this: var V3dView) {.importcpp: "SetLightOff",
                                   header: "V3d_View.hxx".}
proc isActiveLight*(this: V3dView; theLight: Handle[V3dLight]): bool {.noSideEffect,
    importcpp: "IsActiveLight", header: "V3d_View.hxx".}
proc setImmediateUpdate*(this: var V3dView; theImmediateUpdate: bool): bool {.
    importcpp: "SetImmediateUpdate", header: "V3d_View.hxx".}
proc zBufferTriedronSetup*(this: var V3dView;
                          theXColor: QuantityColor = quantityNOC_RED;
                          theYColor: QuantityColor = quantityNOC_GREEN;
                          theZColor: QuantityColor = quantityNOC_BLUE1;
                          theSizeRatio: float = 0.8; theAxisDiametr: float = 0.05;
                          theNbFacettes: int = 12) {.
    importcpp: "ZBufferTriedronSetup", header: "V3d_View.hxx".}
proc triedronDisplay*(this: var V3dView; thePosition: AspectTypeOfTriedronPosition = aspectTOTP_CENTER;
                     theColor: QuantityColor = quantityNOC_WHITE;
                     theScale: float = 0.02;
                     theMode: V3dTypeOfVisualization = v3dWIREFRAME) {.
    importcpp: "TriedronDisplay", header: "V3d_View.hxx".}
proc triedronErase*(this: var V3dView) {.importcpp: "TriedronErase",
                                     header: "V3d_View.hxx".}
proc getGraduatedTrihedron*(this: V3dView): Graphic3dGraduatedTrihedron {.
    noSideEffect, importcpp: "GetGraduatedTrihedron", header: "V3d_View.hxx".}
proc graduatedTrihedronDisplay*(this: var V3dView;
                               theTrihedronData: Graphic3dGraduatedTrihedron) {.
    importcpp: "GraduatedTrihedronDisplay", header: "V3d_View.hxx".}
proc graduatedTrihedronErase*(this: var V3dView) {.
    importcpp: "GraduatedTrihedronErase", header: "V3d_View.hxx".}
proc setFront*(this: var V3dView) {.importcpp: "SetFront", header: "V3d_View.hxx".}
proc rotate*(this: var V3dView; ax: float; ay: float; az: float; start: bool = true) {.
    importcpp: "Rotate", header: "V3d_View.hxx".}
proc rotate*(this: var V3dView; ax: float; ay: float; az: float; x: float; y: float; z: float;
            start: bool = true) {.importcpp: "Rotate", header: "V3d_View.hxx".}
proc rotate*(this: var V3dView; axe: V3dTypeOfAxe; angle: float; x: float; y: float;
            z: float; start: bool = true) {.importcpp: "Rotate", header: "V3d_View.hxx".}
proc rotate*(this: var V3dView; axe: V3dTypeOfAxe; angle: float; start: bool = true) {.
    importcpp: "Rotate", header: "V3d_View.hxx".}
proc rotate*(this: var V3dView; angle: float; start: bool = true) {.importcpp: "Rotate",
    header: "V3d_View.hxx".}
proc move*(this: var V3dView; dx: float; dy: float; dz: float; start: bool = true) {.
    importcpp: "Move", header: "V3d_View.hxx".}
proc move*(this: var V3dView; axe: V3dTypeOfAxe; length: float; start: bool = true) {.
    importcpp: "Move", header: "V3d_View.hxx".}
proc move*(this: var V3dView; length: float; start: bool = true) {.importcpp: "Move",
    header: "V3d_View.hxx".}
proc translate*(this: var V3dView; dx: float; dy: float; dz: float; start: bool = true) {.
    importcpp: "Translate", header: "V3d_View.hxx".}
proc translate*(this: var V3dView; axe: V3dTypeOfAxe; length: float; start: bool = true) {.
    importcpp: "Translate", header: "V3d_View.hxx".}
proc translate*(this: var V3dView; length: float; start: bool = true) {.
    importcpp: "Translate", header: "V3d_View.hxx".}
proc place*(this: var V3dView; theXp: int; theYp: int; theZoomFactor: float = 1) {.
    importcpp: "Place", header: "V3d_View.hxx".}
proc turn*(this: var V3dView; ax: float; ay: float; az: float; start: bool = true) {.
    importcpp: "Turn", header: "V3d_View.hxx".}
proc turn*(this: var V3dView; axe: V3dTypeOfAxe; angle: float; start: bool = true) {.
    importcpp: "Turn", header: "V3d_View.hxx".}
proc turn*(this: var V3dView; angle: float; start: bool = true) {.importcpp: "Turn",
    header: "V3d_View.hxx".}
proc setTwist*(this: var V3dView; angle: float) {.importcpp: "SetTwist",
    header: "V3d_View.hxx".}
proc setEye*(this: var V3dView; x: float; y: float; z: float) {.importcpp: "SetEye",
    header: "V3d_View.hxx".}
proc setDepth*(this: var V3dView; depth: float) {.importcpp: "SetDepth",
    header: "V3d_View.hxx".}
proc setProj*(this: var V3dView; vx: float; vy: float; vz: float) {.importcpp: "SetProj",
    header: "V3d_View.hxx".}
proc setProj*(this: var V3dView; theOrientation: V3dTypeOfOrientation;
             theIsYup: bool = false) {.importcpp: "SetProj", header: "V3d_View.hxx".}
proc setAt*(this: var V3dView; x: float; y: float; z: float) {.importcpp: "SetAt",
    header: "V3d_View.hxx".}
proc setUp*(this: var V3dView; vx: float; vy: float; vz: float) {.importcpp: "SetUp",
    header: "V3d_View.hxx".}
proc setUp*(this: var V3dView; orientation: V3dTypeOfOrientation) {.
    importcpp: "SetUp", header: "V3d_View.hxx".}
proc setViewOrientationDefault*(this: var V3dView) {.
    importcpp: "SetViewOrientationDefault", header: "V3d_View.hxx".}
proc resetViewOrientation*(this: var V3dView) {.importcpp: "ResetViewOrientation",
    header: "V3d_View.hxx".}
proc panning*(this: var V3dView; theDXv: float; theDYv: float; theZoomFactor: float = 1;
             theToStart: bool = true) {.importcpp: "Panning", header: "V3d_View.hxx".}
proc setCenter*(this: var V3dView; theXp: int; theYp: int) {.importcpp: "SetCenter",
    header: "V3d_View.hxx".}
proc setSize*(this: var V3dView; theSize: float) {.importcpp: "SetSize",
    header: "V3d_View.hxx".}
proc setZSize*(this: var V3dView; setZSize: float) {.importcpp: "SetZSize",
    header: "V3d_View.hxx".}
proc setZoom*(this: var V3dView; coef: float; start: bool = true) {.importcpp: "SetZoom",
    header: "V3d_View.hxx".}
proc setScale*(this: var V3dView; coef: float) {.importcpp: "SetScale",
    header: "V3d_View.hxx".}
proc setAxialScale*(this: var V3dView; sx: float; sy: float; sz: float) {.
    importcpp: "SetAxialScale", header: "V3d_View.hxx".}
proc fitAll*(this: var V3dView; theMargin: float = 0.01; theToUpdate: bool = true) {.
    importcpp: "FitAll", header: "V3d_View.hxx".}
proc fitAll*(this: var V3dView; theBox: BndBox; theMargin: float = 0.01;
            theToUpdate: bool = true) {.importcpp: "FitAll", header: "V3d_View.hxx".}
proc depthFitAll*(this: var V3dView; aspect: float = 0.01; margin: float = 0.01) {.
    importcpp: "DepthFitAll", header: "V3d_View.hxx".}
proc fitAll*(this: var V3dView; theMinXv: float; theMinYv: float; theMaxXv: float;
            theMaxYv: float) {.importcpp: "FitAll", header: "V3d_View.hxx".}
proc windowFit*(this: var V3dView; theMinXp: int; theMinYp: int; theMaxXp: int;
               theMaxYp: int) {.importcpp: "WindowFit", header: "V3d_View.hxx".}
proc setViewMappingDefault*(this: var V3dView) {.importcpp: "SetViewMappingDefault",
    header: "V3d_View.hxx".}
proc resetViewMapping*(this: var V3dView) {.importcpp: "ResetViewMapping",
                                        header: "V3d_View.hxx".}
proc reset*(this: var V3dView; theToUpdate: bool = true) {.importcpp: "Reset",
    header: "V3d_View.hxx".}
proc convert*(this: V3dView; vp: int): float {.noSideEffect, importcpp: "Convert",
    header: "V3d_View.hxx".}
proc convert*(this: V3dView; xp: int; yp: int; xv: var float; yv: var float) {.noSideEffect,
    importcpp: "Convert", header: "V3d_View.hxx".}
proc convert*(this: V3dView; vv: float): int {.noSideEffect, importcpp: "Convert",
    header: "V3d_View.hxx".}
proc convert*(this: V3dView; xv: float; yv: float; xp: var int; yp: var int) {.noSideEffect,
    importcpp: "Convert", header: "V3d_View.hxx".}
proc convert*(this: V3dView; xp: int; yp: int; x: var float; y: var float; z: var float) {.
    noSideEffect, importcpp: "Convert", header: "V3d_View.hxx".}
proc convertWithProj*(this: V3dView; xp: int; yp: int; x: var float; y: var float;
                     z: var float; vx: var float; vy: var float; vz: var float) {.
    noSideEffect, importcpp: "ConvertWithProj", header: "V3d_View.hxx".}
proc convertToGrid*(this: V3dView; xp: int; yp: int; xg: var float; yg: var float;
                   zg: var float) {.noSideEffect, importcpp: "ConvertToGrid",
                                 header: "V3d_View.hxx".}
proc convertToGrid*(this: V3dView; x: float; y: float; z: float; xg: var float;
                   yg: var float; zg: var float) {.noSideEffect,
    importcpp: "ConvertToGrid", header: "V3d_View.hxx".}
proc convert*(this: V3dView; x: float; y: float; z: float; xp: var int; yp: var int) {.
    noSideEffect, importcpp: "Convert", header: "V3d_View.hxx".}
proc project*(this: V3dView; theX: float; theY: float; theZ: float; theXp: var float;
             theYp: var float) {.noSideEffect, importcpp: "Project",
                              header: "V3d_View.hxx".}
proc project*(this: V3dView; theX: float; theY: float; theZ: float; theXp: var float;
             theYp: var float; theZp: var float) {.noSideEffect, importcpp: "Project",
    header: "V3d_View.hxx".}
proc backgroundColor*(this: V3dView; `type`: QuantityTypeOfColor; v1: var float;
                     v2: var float; v3: var float) {.noSideEffect,
    importcpp: "BackgroundColor", header: "V3d_View.hxx".}
proc backgroundColor*(this: V3dView): QuantityColor {.noSideEffect,
    importcpp: "BackgroundColor", header: "V3d_View.hxx".}
proc gradientBackgroundColors*(this: V3dView; theColor1: var QuantityColor;
                              theColor2: var QuantityColor) {.noSideEffect,
    importcpp: "GradientBackgroundColors", header: "V3d_View.hxx".}
proc gradientBackground*(this: V3dView): AspectGradientBackground {.noSideEffect,
    importcpp: "GradientBackground", header: "V3d_View.hxx".}
proc scale*(this: V3dView): float {.noSideEffect, importcpp: "Scale",
                                header: "V3d_View.hxx".}
proc axialScale*(this: V3dView; sx: var float; sy: var float; sz: var float) {.noSideEffect,
    importcpp: "AxialScale", header: "V3d_View.hxx".}
proc size*(this: V3dView; width: var float; height: var float) {.noSideEffect,
    importcpp: "Size", header: "V3d_View.hxx".}
proc zSize*(this: V3dView): float {.noSideEffect, importcpp: "ZSize",
                                header: "V3d_View.hxx".}
proc eye*(this: V3dView; x: var float; y: var float; z: var float) {.noSideEffect,
    importcpp: "Eye", header: "V3d_View.hxx".}
proc focalReferencePoint*(this: V3dView; x: var float; y: var float; z: var float) {.
    noSideEffect, importcpp: "FocalReferencePoint", header: "V3d_View.hxx".}
proc projReferenceAxe*(this: V3dView; xpix: int; ypix: int; xp: var float; yp: var float;
                      zp: var float; vx: var float; vy: var float; vz: var float) {.
    noSideEffect, importcpp: "ProjReferenceAxe", header: "V3d_View.hxx".}
proc depth*(this: V3dView): float {.noSideEffect, importcpp: "Depth",
                                header: "V3d_View.hxx".}
proc proj*(this: V3dView; vx: var float; vy: var float; vz: var float) {.noSideEffect,
    importcpp: "Proj", header: "V3d_View.hxx".}
proc at*(this: V3dView; x: var float; y: var float; z: var float) {.noSideEffect,
    importcpp: "At", header: "V3d_View.hxx".}
proc up*(this: V3dView; vx: var float; vy: var float; vz: var float) {.noSideEffect,
    importcpp: "Up", header: "V3d_View.hxx".}
proc twist*(this: V3dView): float {.noSideEffect, importcpp: "Twist",
                                header: "V3d_View.hxx".}
proc shadingModel*(this: V3dView): Graphic3dTypeOfShadingModel {.noSideEffect,
    importcpp: "ShadingModel", header: "V3d_View.hxx".}
proc textureEnv*(this: V3dView): Handle[Graphic3dTextureEnv] {.noSideEffect,
    importcpp: "TextureEnv", header: "V3d_View.hxx".}
proc visualization*(this: V3dView): V3dTypeOfVisualization {.noSideEffect,
    importcpp: "Visualization", header: "V3d_View.hxx".}
proc activeLights*(this: V3dView): V3dListOfLight {.noSideEffect,
    importcpp: "ActiveLights", header: "V3d_View.hxx".}
proc activeLightIterator*(this: V3dView): V3dListOfLightIterator {.noSideEffect,
    importcpp: "ActiveLightIterator", header: "V3d_View.hxx".}
proc lightLimit*(this: V3dView): int {.noSideEffect, importcpp: "LightLimit",
                                   header: "V3d_View.hxx".}
proc viewer*(this: V3dView): Handle[V3dViewer] {.noSideEffect, importcpp: "Viewer",
    header: "V3d_View.hxx".}
proc ifWindow*(this: V3dView): bool {.noSideEffect, importcpp: "IfWindow",
                                  header: "V3d_View.hxx".}
proc window*(this: V3dView): Handle[AspectWindow] {.noSideEffect,
    importcpp: "Window", header: "V3d_View.hxx".}
proc `type`*(this: V3dView): V3dTypeOfView {.noSideEffect, importcpp: "Type",
    header: "V3d_View.hxx".}
proc pan*(this: var V3dView; theDXp: int; theDYp: int; theZoomFactor: float = 1;
         theToStart: bool = true) {.importcpp: "Pan", header: "V3d_View.hxx".}
proc zoom*(this: var V3dView; theXp1: int; theYp1: int; theXp2: int; theYp2: int) {.
    importcpp: "Zoom", header: "V3d_View.hxx".}
proc startZoomAtPoint*(this: var V3dView; theXp: int; theYp: int) {.
    importcpp: "StartZoomAtPoint", header: "V3d_View.hxx".}
proc zoomAtPoint*(this: var V3dView; theMouseStartX: int; theMouseStartY: int;
                 theMouseEndX: int; theMouseEndY: int) {.importcpp: "ZoomAtPoint",
    header: "V3d_View.hxx".}
proc axialScale*(this: var V3dView; dx: int; dy: int; axis: V3dTypeOfAxe) {.
    importcpp: "AxialScale", header: "V3d_View.hxx".}
proc startRotation*(this: var V3dView; x: int; y: int; zRotationThreshold: float = 0.0) {.
    importcpp: "StartRotation", header: "V3d_View.hxx".}
proc rotation*(this: var V3dView; x: int; y: int) {.importcpp: "Rotation",
    header: "V3d_View.hxx".}
proc setFocale*(this: var V3dView; focale: float) {.importcpp: "SetFocale",
    header: "V3d_View.hxx".}
proc focale*(this: V3dView): float {.noSideEffect, importcpp: "Focale",
                                 header: "V3d_View.hxx".}
proc view*(this: V3dView): Handle[Graphic3dCView] {.noSideEffect, importcpp: "View",
    header: "V3d_View.hxx".}
proc setComputedMode*(this: var V3dView; theMode: bool) {.
    importcpp: "SetComputedMode", header: "V3d_View.hxx".}
proc computedMode*(this: V3dView): bool {.noSideEffect, importcpp: "ComputedMode",
                                      header: "V3d_View.hxx".}
proc windowFitAll*(this: var V3dView; xmin: int; ymin: int; xmax: int; ymax: int) {.
    importcpp: "WindowFitAll", header: "V3d_View.hxx".}
proc fitMinMax*(this: V3dView; theCamera: Handle[Graphic3dCamera]; theBox: BndBox;
               theMargin: float; theResolution: float = 0.0;
               theToEnlargeIfLine: bool = true): bool {.noSideEffect,
    importcpp: "FitMinMax", header: "V3d_View.hxx".}
proc setGrid*(this: var V3dView; aPlane: Ax3; aGrid: Handle[AspectGrid]) {.
    importcpp: "SetGrid", header: "V3d_View.hxx".}
proc setGridActivity*(this: var V3dView; aFlag: bool) {.importcpp: "SetGridActivity",
    header: "V3d_View.hxx".}
proc dump*(this: var V3dView; theFile: StandardCString;
          theBufferType: Graphic3dBufferType = graphic3dBT_RGB): bool {.
    importcpp: "Dump", header: "V3d_View.hxx".}
proc toPixMap*(this: var V3dView; theImage: var ImagePixMap;
              theParams: V3dImageDumpOptions): bool {.importcpp: "ToPixMap",
    header: "V3d_View.hxx".}
proc toPixMap*(this: var V3dView; theImage: var ImagePixMap; theWidth: int;
              theHeight: int;
              theBufferType: Graphic3dBufferType = graphic3dBT_RGB;
              theToAdjustAspect: bool = true;
              theStereoOptions: V3dStereoDumpOptions = v3dSDO_MONO): bool {.
    importcpp: "ToPixMap", header: "V3d_View.hxx".}
proc setBackFacingModel*(this: var V3dView;
                        theModel: V3dTypeOfBackfacingModel = v3dTOBM_AUTOMATIC) {.
    importcpp: "SetBackFacingModel", header: "V3d_View.hxx".}
proc backFacingModel*(this: V3dView): V3dTypeOfBackfacingModel {.noSideEffect,
    importcpp: "BackFacingModel", header: "V3d_View.hxx".}
proc addClipPlane*(this: var V3dView; thePlane: Handle[Graphic3dClipPlane]) {.
    importcpp: "AddClipPlane", header: "V3d_View.hxx".}
proc removeClipPlane*(this: var V3dView; thePlane: Handle[Graphic3dClipPlane]) {.
    importcpp: "RemoveClipPlane", header: "V3d_View.hxx".}
proc setClipPlanes*(this: var V3dView;
                   thePlanes: Handle[Graphic3dSequenceOfHClipPlane]) {.
    importcpp: "SetClipPlanes", header: "V3d_View.hxx".}
## !!!Ignored construct:  Standard_DEPRECATED ( This method is deprecated - overload taking Handle should be used instead ) void SetClipPlanes ( const Graphic3d_SequenceOfHClipPlane & thePlanes ) { opencascade :: handle < Graphic3d_SequenceOfHClipPlane > [end of template] aPlanes = new Graphic3d_SequenceOfHClipPlane ( thePlanes ) ; SetClipPlanes ( aPlanes ) ; } ! Get clip planes.
## ! @return sequence clip planes that have been set for the view const opencascade :: handle < Graphic3d_SequenceOfHClipPlane > [end of template] & ClipPlanes ( ) const ;
## Error: identifier expected, but got: This method is deprecated - overload taking Handle should be used instead!!!

proc planeLimit*(this: V3dView): int {.noSideEffect, importcpp: "PlaneLimit",
                                   header: "V3d_View.hxx".}
proc setCamera*(this: var V3dView; theCamera: Handle[Graphic3dCamera]) {.
    importcpp: "SetCamera", header: "V3d_View.hxx".}
proc camera*(this: V3dView): Handle[Graphic3dCamera] {.noSideEffect,
    importcpp: "Camera", header: "V3d_View.hxx".}
proc defaultCamera*(this: V3dView): Handle[Graphic3dCamera] {.noSideEffect,
    importcpp: "DefaultCamera", header: "V3d_View.hxx".}
proc renderingParams*(this: V3dView): Graphic3dRenderingParams {.noSideEffect,
    importcpp: "RenderingParams", header: "V3d_View.hxx".}
proc changeRenderingParams*(this: var V3dView): var Graphic3dRenderingParams {.
    importcpp: "ChangeRenderingParams", header: "V3d_View.hxx".}
proc isCullingEnabled*(this: V3dView): bool {.noSideEffect,
    importcpp: "IsCullingEnabled", header: "V3d_View.hxx".}
proc setFrustumCulling*(this: var V3dView; theMode: bool) {.
    importcpp: "SetFrustumCulling", header: "V3d_View.hxx".}
proc diagnosticInformation*(this: V3dView;
                           theDict: var TColStdIndexedDataMapOfStringString;
                           theFlags: Graphic3dDiagnosticInfo) {.noSideEffect,
    importcpp: "DiagnosticInformation", header: "V3d_View.hxx".}
proc statisticInformation*(this: V3dView): TCollectionAsciiString {.noSideEffect,
    importcpp: "StatisticInformation", header: "V3d_View.hxx".}
proc statisticInformation*(this: V3dView;
                          theDict: var TColStdIndexedDataMapOfStringString) {.
    noSideEffect, importcpp: "StatisticInformation", header: "V3d_View.hxx".}
proc gravityPoint*(this: V3dView): Pnt {.noSideEffect, importcpp: "GravityPoint",
                                     header: "V3d_View.hxx".}
proc dumpJson*(this: V3dView; theOStream: var StandardOStream; theDepth: int = -1) {.
    noSideEffect, importcpp: "DumpJson", header: "V3d_View.hxx".}
type
  V3dViewbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "V3d_View::get_type_name(@)",
                            header: "V3d_View.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "V3d_View::get_type_descriptor(@)", header: "V3d_View.hxx".}
proc dynamicType*(this: V3dView): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "V3d_View.hxx".}
## !!!Ignored construct:  public : ! @name deprecated methods ! Returns True if One light more can be
## ! activated in this View. Standard_DEPRECATED ( Deprecated method - ActiveLights() should be used instead ) Standard_Boolean IfMoreLights ( ) const ;
## Error: identifier expected, but got: Deprecated method - ActiveLights() should be used instead!!!

## !!!Ignored construct:  ! initializes an iteration on the active Lights. Standard_DEPRECATED ( Deprecated method - ActiveLights() should be used instead ) void InitActiveLights ( ) { myActiveLightsIterator . Initialize ( myActiveLights ) ; } ! returns true if there are more active Light(s) to return. Standard_DEPRECATED ( Deprecated method - ActiveLights() should be used instead ) Standard_Boolean MoreActiveLights ( ) const { return myActiveLightsIterator . More ( ) ; } ! Go to the next active Light (if there is not, ActiveLight will raise an exception) Standard_DEPRECATED ( Deprecated method - ActiveLights() should be used instead ) void NextActiveLights ( ) { myActiveLightsIterator . Next ( ) ; } Standard_DEPRECATED ( Deprecated method - ActiveLights() should be used instead ) const opencascade :: handle < V3d_Light > [end of template] & ActiveLight ( ) const { return myActiveLightsIterator . Value ( ) ; } protected : void ImmediateUpdate ( ) const ;
## Error: identifier expected, but got: Deprecated method - ActiveLights() should be used instead!!!

proc scale*(this: V3dView; theCamera: Handle[Graphic3dCamera]; theSizeXv: float;
           theSizeYv: float) {.noSideEffect, importcpp: "Scale",
                             header: "V3d_View.hxx".}
proc translate*(this: V3dView; theCamera: Handle[Graphic3dCamera]; theDXv: float;
               theDYv: float) {.noSideEffect, importcpp: "Translate",
                              header: "V3d_View.hxx".}
