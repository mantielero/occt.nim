import ../../tkmath/gp/gp_types
import ../../tkernel/tcollection/tcollection_types
import ../../tkservice/aspect/aspect_types
import ../../tkernel/standard/standard_types
import ../../tkernel/tcolstd/tcolstd_types
import ../../tkernel/quantity/quantity_types
import v3d_types
import ../../tkmath/bnd/bnd_types
import ../../tkv3d/graphic3d/graphic3d_types
import ../../tkernel/quantity/quantity_color


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





proc newV3dView*(theViewer: Handle[V3dViewer];
                theType: V3dTypeOfView = v3dORTHOGRAPHIC): V3dView {.cdecl,
    constructor, importcpp: "V3d_View(@)", header: "V3d_View.hxx".}
proc newV3dView*(theViewer: Handle[V3dViewer]; theView: Handle[V3dView]): V3dView {.
    cdecl, constructor, importcpp: "V3d_View(@)", header: "V3d_View.hxx".}
proc destroyV3dView*(this: var V3dView) {.cdecl, importcpp: "#.~V3d_View()",
                                      header: "V3d_View.hxx".}
proc setWindow*(this: var V3dView; theWindow: Handle[AspectWindow];
               theContext: AspectRenderingContext = nil) {.cdecl,
    importcpp: "SetWindow", header: "V3d_View.hxx".}
proc setMagnify*(this: var V3dView; theWindow: Handle[AspectWindow];
                thePreviousView: Handle[V3dView]; theX1: cint; theY1: cint;
                theX2: cint; theY2: cint) {.cdecl, importcpp: "SetMagnify",
                                        header: "V3d_View.hxx".}
proc remove*(this: V3dView) {.noSideEffect, cdecl, importcpp: "Remove", header: "V3d_View.hxx".}
proc update*(this: V3dView) {.noSideEffect, cdecl, importcpp: "Update", header: "V3d_View.hxx".}
proc redraw*(this: V3dView) {.noSideEffect, cdecl, importcpp: "Redraw", header: "V3d_View.hxx".}
proc redrawImmediate*(this: V3dView) {.noSideEffect, cdecl,
                                    importcpp: "RedrawImmediate", header: "V3d_View.hxx".}
proc invalidate*(this: V3dView) {.noSideEffect, cdecl, importcpp: "Invalidate",
                               header: "V3d_View.hxx".}
proc isInvalidated*(this: V3dView): bool {.noSideEffect, cdecl,
                                       importcpp: "IsInvalidated", header: "V3d_View.hxx".}
proc isInvalidatedImmediate*(this: V3dView): bool {.noSideEffect, cdecl,
    importcpp: "IsInvalidatedImmediate", header: "V3d_View.hxx".}
proc invalidateImmediate*(this: var V3dView) {.cdecl,
    importcpp: "InvalidateImmediate", header: "V3d_View.hxx".}
proc mustBeResized*(this: var V3dView) {.cdecl, importcpp: "MustBeResized",
                                     header: "V3d_View.hxx".}
proc doMapping*(this: var V3dView) {.cdecl, importcpp: "DoMapping", header: "V3d_View.hxx".}
proc isEmpty*(this: V3dView): bool {.noSideEffect, cdecl, importcpp: "IsEmpty",
                                 header: "V3d_View.hxx".}
proc updateLights*(this: V3dView) {.noSideEffect, cdecl, importcpp: "UpdateLights",
                                 header: "V3d_View.hxx".}
proc setAutoZFitMode*(this: var V3dView; theIsOn: bool; theScaleFactor: cfloat = 1.0) {.
    cdecl, importcpp: "SetAutoZFitMode", header: "V3d_View.hxx".}
proc autoZFitMode*(this: V3dView): bool {.noSideEffect, cdecl,
                                      importcpp: "AutoZFitMode", header: "V3d_View.hxx".}
proc autoZFitScaleFactor*(this: V3dView): cfloat {.noSideEffect, cdecl,
    importcpp: "AutoZFitScaleFactor", header: "V3d_View.hxx".}
proc autoZFit*(this: V3dView) {.noSideEffect, cdecl, importcpp: "AutoZFit",
                             header: "V3d_View.hxx".}
proc zFitAll*(this: V3dView; theScaleFactor: cfloat = 1.0) {.noSideEffect, cdecl,
    importcpp: "ZFitAll", header: "V3d_View.hxx".}
proc setBackgroundColor*(this: var V3dView; theType: QuantityTypeOfColor;
                        theV1: cfloat; theV2: cfloat; theV3: cfloat) {.cdecl,
    importcpp: "SetBackgroundColor", header: "V3d_View.hxx".}
proc setBackgroundColor*(this: var V3dView; theColor: QuantityColor) {.cdecl,
    importcpp: "SetBackgroundColor", header: "V3d_View.hxx".}
#proc setBgGradientColors*(this: var V3dView; theColor1: QuantityColor;
#                         theColor2: QuantityColor; theFillStyle: AspectGradientFillMethod = aspectGFM_HOR;
#                         theToUpdate: bool = false) {.cdecl,
#    importcpp: "SetBgGradientColors", header: "V3d_View.hxx".}
#proc setBgGradientStyle*(this: var V3dView;
#                        theMethod: AspectGradientFillMethod = aspectGFM_HOR;
#                        theToUpdate: bool = false) {.cdecl,
#    importcpp: "SetBgGradientStyle", header: "V3d_View.hxx".}
#proc setBackgroundImage*(this: var V3dView; theFileName: cstring;
#                        theFillStyle: AspectFillMethod = aspectFM_CENTERED;
#                        theToUpdate: bool = false) {.cdecl,
#    importcpp: "SetBackgroundImage", header: "V3d_View.hxx".}
#proc setBackgroundImage*(this: var V3dView; theTexture: Handle[Graphic3dTexture2D];
#                        theFillStyle: AspectFillMethod = aspectFM_CENTERED;
#                        theToUpdate: bool = false) {.cdecl,
#    importcpp: "SetBackgroundImage", header: "V3d_View.hxx".}
#proc setBgImageStyle*(this: var V3dView; theFillStyle: AspectFillMethod;
#                     theToUpdate: bool = false) {.cdecl,
#    importcpp: "SetBgImageStyle", header: "V3d_View.hxx".}
#proc setBackgroundCubeMap*(this: var V3dView; theCubeMap: Handle[Graphic3dCubeMap];
#                          theToUpdatePBREnv: bool = true; theToUpdate: bool = false) {.
#    cdecl, importcpp: "SetBackgroundCubeMap", header: "V3d_View.hxx".}
#proc generatePBREnvironment*(this: var V3dView; theToUpdate: bool = false) {.cdecl,
#    importcpp: "GeneratePBREnvironment", header: "V3d_View.hxx".}
#proc clearPBREnvironment*(this: var V3dView; theToUpdate: bool = false) {.cdecl,
#    importcpp: "ClearPBREnvironment", header: "V3d_View.hxx".}
#proc setAxis*(this: var V3dView; x: cfloat; y: cfloat; z: cfloat; vx: cfloat; vy: cfloat;
#             vz: cfloat) {.cdecl, importcpp: "SetAxis", header: "V3d_View.hxx".}
proc setShadingModel*(this: var V3dView;
                     theShadingModel: Graphic3dTypeOfShadingModel) {.cdecl,
    importcpp: "SetShadingModel", header: "V3d_View.hxx".}
#proc setTextureEnv*(this: var V3dView; theTexture: Handle[Graphic3dTextureEnv]) {.
#    cdecl, importcpp: "SetTextureEnv", header: "V3d_View.hxx".}
#proc setVisualization*(this: var V3dView; theType: V3dTypeOfVisualization) {.cdecl,
#    importcpp: "SetVisualization", header: "V3d_View.hxx".}
#proc setLightOn*(this: var V3dView; theLight: Handle[V3dLight]) {.cdecl,
#    importcpp: "SetLightOn", header: "V3d_View.hxx".}
#proc setLightOn*(this: var V3dView) {.cdecl, importcpp: "SetLightOn", header: "V3d_View.hxx".}
#proc setLightOff*(this: var V3dView; theLight: Handle[V3dLight]) {.cdecl,
#    importcpp: "SetLightOff", header: "V3d_View.hxx".}
#proc setLightOff*(this: var V3dView) {.cdecl, importcpp: "SetLightOff", header: "V3d_View.hxx".}
#proc isActiveLight*(this: V3dView; theLight: Handle[V3dLight]): bool {.noSideEffect,
#    cdecl, importcpp: "IsActiveLight", header: "V3d_View.hxx".}
proc setImmediateUpdate*(this: var V3dView; theImmediateUpdate: bool): bool {.cdecl,
    importcpp: "SetImmediateUpdate", header: "V3d_View.hxx".}
#proc zBufferTriedronSetup*(this: var V3dView;
#                          theXColor: QuantityColor = quantityNOC_RED;
#                          theYColor: QuantityColor = quantityNOC_GREEN;
#                          theZColor: QuantityColor = quantityNOC_BLUE1;
#                          theSizeRatio: cfloat = 0.8; theAxisDiametr: cfloat = 0.05;
#                          theNbFacettes: cint = 12) {.cdecl,
#    importcpp: "ZBufferTriedronSetup", header: "V3d_View.hxx".}
proc triedronDisplay*(this: var V3dView; thePosition: AspectTypeOfTriedronPosition = aspectTOTP_CENTER;
                     theColor: QuantityColor = newQuantityColor( quantityNOC_WHITE );
                     theScale: cfloat = 0.02;
                     theMode: V3dTypeOfVisualization = v3dWIREFRAME) {.cdecl,
    importcpp: "TriedronDisplay", header: "V3d_View.hxx".}
#proc triedronErase*(this: var V3dView) {.cdecl, importcpp: "TriedronErase",
#                                     header: "V3d_View.hxx".}
#proc getGraduatedTrihedron*(this: V3dView): Graphic3dGraduatedTrihedron {.
#    noSideEffect, cdecl, importcpp: "GetGraduatedTrihedron", header: "V3d_View.hxx".}
#proc graduatedTrihedronDisplay*(this: var V3dView;
#                               theTrihedronData: Graphic3dGraduatedTrihedron) {.
#    cdecl, importcpp: "GraduatedTrihedronDisplay", header: "V3d_View.hxx".}
#proc graduatedTrihedronErase*(this: var V3dView) {.cdecl,
#    importcpp: "GraduatedTrihedronErase", header: "V3d_View.hxx".}
proc setFront*(this: var V3dView) {.cdecl, importcpp: "SetFront", header: "V3d_View.hxx".}
proc rotate*(this: var V3dView; ax: cfloat; ay: cfloat; az: cfloat; start: bool = true) {.
    cdecl, importcpp: "Rotate", header: "V3d_View.hxx".}
proc rotate*(this: var V3dView; ax: cfloat; ay: cfloat; az: cfloat; x: cfloat; y: cfloat;
            z: cfloat; start: bool = true) {.cdecl, importcpp: "Rotate", header: "V3d_View.hxx".}
proc rotate*(this: var V3dView; axe: V3dTypeOfAxe; angle: cfloat; x: cfloat; y: cfloat;
            z: cfloat; start: bool = true) {.cdecl, importcpp: "Rotate", header: "V3d_View.hxx".}
proc rotate*(this: var V3dView; axe: V3dTypeOfAxe; angle: cfloat; start: bool = true) {.
    cdecl, importcpp: "Rotate", header: "V3d_View.hxx".}
proc rotate*(this: var V3dView; angle: cfloat; start: bool = true) {.cdecl,
    importcpp: "Rotate", header: "V3d_View.hxx".}
proc move*(this: var V3dView; dx: cfloat; dy: cfloat; dz: cfloat; start: bool = true) {.cdecl,
    importcpp: "Move", header: "V3d_View.hxx".}
proc move*(this: var V3dView; axe: V3dTypeOfAxe; length: cfloat; start: bool = true) {.
    cdecl, importcpp: "Move", header: "V3d_View.hxx".}
proc move*(this: var V3dView; length: cfloat; start: bool = true) {.cdecl,
    importcpp: "Move", header: "V3d_View.hxx".}
proc translate*(this: var V3dView; dx: cfloat; dy: cfloat; dz: cfloat; start: bool = true) {.
    cdecl, importcpp: "Translate", header: "V3d_View.hxx".}
proc translate*(this: var V3dView; axe: V3dTypeOfAxe; length: cfloat; start: bool = true) {.
    cdecl, importcpp: "Translate", header: "V3d_View.hxx".}
proc translate*(this: var V3dView; length: cfloat; start: bool = true) {.cdecl,
    importcpp: "Translate", header: "V3d_View.hxx".}
proc place*(this: var V3dView; theXp: cint; theYp: cint; theZoomFactor: cfloat = 1) {.cdecl,
    importcpp: "Place", header: "V3d_View.hxx".}
proc turn*(this: var V3dView; ax: cfloat; ay: cfloat; az: cfloat; start: bool = true) {.cdecl,
    importcpp: "Turn", header: "V3d_View.hxx".}
proc turn*(this: var V3dView; axe: V3dTypeOfAxe; angle: cfloat; start: bool = true) {.cdecl,
    importcpp: "Turn", header: "V3d_View.hxx".}
proc turn*(this: var V3dView; angle: cfloat; start: bool = true) {.cdecl,
    importcpp: "Turn", header: "V3d_View.hxx".}
proc setTwist*(this: var V3dView; angle: cfloat) {.cdecl, importcpp: "SetTwist",
    header: "V3d_View.hxx".}
proc setEye*(this: var V3dView; x: cfloat; y: cfloat; z: cfloat) {.cdecl,
    importcpp: "SetEye", header: "V3d_View.hxx".}
proc setDepth*(this: var V3dView; depth: cfloat) {.cdecl, importcpp: "SetDepth",
    header: "V3d_View.hxx".}
proc setProj*(this: var V3dView; vx: cfloat; vy: cfloat; vz: cfloat) {.cdecl,
    importcpp: "SetProj", header: "V3d_View.hxx".}
proc setProj*(this: var V3dView; theOrientation: V3dTypeOfOrientation;
             theIsYup: bool = false) {.cdecl, importcpp: "SetProj", header: "V3d_View.hxx".}
proc setAt*(this: var V3dView; x: cfloat; y: cfloat; z: cfloat) {.cdecl,
    importcpp: "SetAt", header: "V3d_View.hxx".}
proc setUp*(this: var V3dView; vx: cfloat; vy: cfloat; vz: cfloat) {.cdecl,
    importcpp: "SetUp", header: "V3d_View.hxx".}
proc setUp*(this: var V3dView; orientation: V3dTypeOfOrientation) {.cdecl,
    importcpp: "SetUp", header: "V3d_View.hxx".}
proc setViewOrientationDefault*(this: var V3dView) {.cdecl,
    importcpp: "SetViewOrientationDefault", header: "V3d_View.hxx".}
proc resetViewOrientation*(this: var V3dView) {.cdecl,
    importcpp: "ResetViewOrientation", header: "V3d_View.hxx".}
proc panning*(this: var V3dView; theDXv: cfloat; theDYv: cfloat;
             theZoomFactor: cfloat = 1; theToStart: bool = true) {.cdecl,
    importcpp: "Panning", header: "V3d_View.hxx".}
proc setCenter*(this: var V3dView; theXp: cint; theYp: cint) {.cdecl,
    importcpp: "SetCenter", header: "V3d_View.hxx".}
proc setSize*(this: var V3dView; theSize: cfloat) {.cdecl, importcpp: "SetSize",
    header: "V3d_View.hxx".}
proc setZSize*(this: var V3dView; setZSize: cfloat) {.cdecl, importcpp: "SetZSize",
    header: "V3d_View.hxx".}
proc setZoom*(this: var V3dView; coef: cfloat; start: bool = true) {.cdecl,
    importcpp: "SetZoom", header: "V3d_View.hxx".}
proc setScale*(this: var V3dView; coef: cfloat) {.cdecl, importcpp: "SetScale",
    header: "V3d_View.hxx".}
proc setAxialScale*(this: var V3dView; sx: cfloat; sy: cfloat; sz: cfloat) {.cdecl,
    importcpp: "SetAxialScale", header: "V3d_View.hxx".}
proc fitAll*(this: var V3dView; theMargin: cfloat = 0.01; theToUpdate: bool = true) {.cdecl,
    importcpp: "FitAll", header: "V3d_View.hxx".}
proc fitAll*(this: var V3dView; theBox: BndBox; theMargin: cfloat = 0.01;
            theToUpdate: bool = true) {.cdecl, importcpp: "FitAll", header: "V3d_View.hxx".}
proc depthFitAll*(this: var V3dView; aspect: cfloat = 0.01; margin: cfloat = 0.01) {.cdecl,
    importcpp: "DepthFitAll", header: "V3d_View.hxx".}
proc fitAll*(this: var V3dView; theMinXv: cfloat; theMinYv: cfloat; theMaxXv: cfloat;
            theMaxYv: cfloat) {.cdecl, importcpp: "FitAll", header: "V3d_View.hxx".}
proc windowFit*(this: var V3dView; theMinXp: cint; theMinYp: cint; theMaxXp: cint;
               theMaxYp: cint) {.cdecl, importcpp: "WindowFit", header: "V3d_View.hxx".}
proc setViewMappingDefault*(this: var V3dView) {.cdecl,
    importcpp: "SetViewMappingDefault", header: "V3d_View.hxx".}
proc resetViewMapping*(this: var V3dView) {.cdecl, importcpp: "ResetViewMapping",
                                        header: "V3d_View.hxx".}
proc reset*(this: var V3dView; theToUpdate: bool = true) {.cdecl, importcpp: "Reset",
    header: "V3d_View.hxx".}
proc convert*(this: V3dView; vp: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "Convert", header: "V3d_View.hxx".}
proc convert*(this: V3dView; xp: cint; yp: cint; xv: var cfloat; yv: var cfloat) {.
    noSideEffect, cdecl, importcpp: "Convert", header: "V3d_View.hxx".}
proc convert*(this: V3dView; vv: cfloat): cint {.noSideEffect, cdecl,
    importcpp: "Convert", header: "V3d_View.hxx".}
proc convert*(this: V3dView; xv: cfloat; yv: cfloat; xp: var cint; yp: var cint) {.
    noSideEffect, cdecl, importcpp: "Convert", header: "V3d_View.hxx".}
proc convert*(this: V3dView; xp: cint; yp: cint; x: var cfloat; y: var cfloat; z: var cfloat) {.
    noSideEffect, cdecl, importcpp: "Convert", header: "V3d_View.hxx".}
proc convertWithProj*(this: V3dView; xp: cint; yp: cint; x: var cfloat; y: var cfloat;
                     z: var cfloat; vx: var cfloat; vy: var cfloat; vz: var cfloat) {.
    noSideEffect, cdecl, importcpp: "ConvertWithProj", header: "V3d_View.hxx".}
proc convertToGrid*(this: V3dView; xp: cint; yp: cint; xg: var cfloat; yg: var cfloat;
                   zg: var cfloat) {.noSideEffect, cdecl, importcpp: "ConvertToGrid",
                                  header: "V3d_View.hxx".}
proc convertToGrid*(this: V3dView; x: cfloat; y: cfloat; z: cfloat; xg: var cfloat;
                   yg: var cfloat; zg: var cfloat) {.noSideEffect, cdecl,
    importcpp: "ConvertToGrid", header: "V3d_View.hxx".}
proc convert*(this: V3dView; x: cfloat; y: cfloat; z: cfloat; xp: var cint; yp: var cint) {.
    noSideEffect, cdecl, importcpp: "Convert", header: "V3d_View.hxx".}
proc project*(this: V3dView; theX: cfloat; theY: cfloat; theZ: cfloat; theXp: var cfloat;
             theYp: var cfloat) {.noSideEffect, cdecl, importcpp: "Project",
                               header: "V3d_View.hxx".}
proc project*(this: V3dView; theX: cfloat; theY: cfloat; theZ: cfloat; theXp: var cfloat;
             theYp: var cfloat; theZp: var cfloat) {.noSideEffect, cdecl,
    importcpp: "Project", header: "V3d_View.hxx".}
proc backgroundColor*(this: V3dView; `type`: QuantityTypeOfColor; v1: var cfloat;
                     v2: var cfloat; v3: var cfloat) {.noSideEffect, cdecl,
    importcpp: "BackgroundColor", header: "V3d_View.hxx".}
proc backgroundColor*(this: V3dView): QuantityColor {.noSideEffect, cdecl,
    importcpp: "BackgroundColor", header: "V3d_View.hxx".}
proc gradientBackgroundColors*(this: V3dView; theColor1: var QuantityColor;
                              theColor2: var QuantityColor) {.noSideEffect, cdecl,
    importcpp: "GradientBackgroundColors", header: "V3d_View.hxx".}
#proc gradientBackground*(this: V3dView): AspectGradientBackground {.noSideEffect,
#    cdecl, importcpp: "GradientBackground", header: "V3d_View.hxx".}
proc scale*(this: V3dView): cfloat {.noSideEffect, cdecl, importcpp: "Scale",
                                 header: "V3d_View.hxx".}
proc axialScale*(this: V3dView; sx: var cfloat; sy: var cfloat; sz: var cfloat) {.
    noSideEffect, cdecl, importcpp: "AxialScale", header: "V3d_View.hxx".}
proc size*(this: V3dView; width: var cfloat; height: var cfloat) {.noSideEffect, cdecl,
    importcpp: "Size", header: "V3d_View.hxx".}
proc zSize*(this: V3dView): cfloat {.noSideEffect, cdecl, importcpp: "ZSize",
                                 header: "V3d_View.hxx".}
proc eye*(this: V3dView; x: var cfloat; y: var cfloat; z: var cfloat) {.noSideEffect, cdecl,
    importcpp: "Eye", header: "V3d_View.hxx".}
proc focalReferencePoint*(this: V3dView; x: var cfloat; y: var cfloat; z: var cfloat) {.
    noSideEffect, cdecl, importcpp: "FocalReferencePoint", header: "V3d_View.hxx".}
proc projReferenceAxe*(this: V3dView; xpix: cint; ypix: cint; xp: var cfloat;
                      yp: var cfloat; zp: var cfloat; vx: var cfloat; vy: var cfloat;
                      vz: var cfloat) {.noSideEffect, cdecl,
                                     importcpp: "ProjReferenceAxe", header: "V3d_View.hxx".}
proc depth*(this: V3dView): cfloat {.noSideEffect, cdecl, importcpp: "Depth",
                                 header: "V3d_View.hxx".}
proc proj*(this: V3dView; vx: var cfloat; vy: var cfloat; vz: var cfloat) {.noSideEffect,
    cdecl, importcpp: "Proj", header: "V3d_View.hxx".}
proc at*(this: V3dView; x: var cfloat; y: var cfloat; z: var cfloat) {.noSideEffect, cdecl,
    importcpp: "At", header: "V3d_View.hxx".}
proc up*(this: V3dView; vx: var cfloat; vy: var cfloat; vz: var cfloat) {.noSideEffect,
    cdecl, importcpp: "Up", header: "V3d_View.hxx".}
proc twist*(this: V3dView): cfloat {.noSideEffect, cdecl, importcpp: "Twist",
                                 header: "V3d_View.hxx".}
#proc shadingModel*(this: V3dView): Graphic3dTypeOfShadingModel {.noSideEffect, cdecl,
#    importcpp: "ShadingModel", header: "V3d_View.hxx".}
#proc textureEnv*(this: V3dView): Handle[Graphic3dTextureEnv] {.noSideEffect, cdecl,
#    importcpp: "TextureEnv", header: "V3d_View.hxx".}
proc visualization*(this: V3dView): V3dTypeOfVisualization {.noSideEffect, cdecl,
    importcpp: "Visualization", header: "V3d_View.hxx".}
proc activeLights*(this: V3dView): V3dListOfLight {.noSideEffect, cdecl,
    importcpp: "ActiveLights", header: "V3d_View.hxx".}
proc activeLightIterator*(this: V3dView): V3dListOfLightIterator {.noSideEffect,
    cdecl, importcpp: "ActiveLightIterator", header: "V3d_View.hxx".}
proc lightLimit*(this: V3dView): cint {.noSideEffect, cdecl, importcpp: "LightLimit",
                                    header: "V3d_View.hxx".}
proc viewer*(this: V3dView): Handle[V3dViewer] {.noSideEffect, cdecl,
    importcpp: "Viewer", header: "V3d_View.hxx".}
proc ifWindow*(this: V3dView): bool {.noSideEffect, cdecl, importcpp: "IfWindow",
                                  header: "V3d_View.hxx".}
proc window*(this: V3dView): Handle[AspectWindow] {.noSideEffect, cdecl,
    importcpp: "Window", header: "V3d_View.hxx".}
proc `type`*(this: V3dView): V3dTypeOfView {.noSideEffect, cdecl, importcpp: "Type",
    header: "V3d_View.hxx".}
proc pan*(this: var V3dView; theDXp: cint; theDYp: cint; theZoomFactor: cfloat = 1;
         theToStart: bool = true) {.cdecl, importcpp: "Pan", header: "V3d_View.hxx".}
proc zoom*(this: var V3dView; theXp1: cint; theYp1: cint; theXp2: cint; theYp2: cint) {.
    cdecl, importcpp: "Zoom", header: "V3d_View.hxx".}
proc startZoomAtPoint*(this: var V3dView; theXp: cint; theYp: cint) {.cdecl,
    importcpp: "StartZoomAtPoint", header: "V3d_View.hxx".}
proc zoomAtPoint*(this: var V3dView; theMouseStartX: cint; theMouseStartY: cint;
                 theMouseEndX: cint; theMouseEndY: cint) {.cdecl,
    importcpp: "ZoomAtPoint", header: "V3d_View.hxx".}
proc axialScale*(this: var V3dView; dx: cint; dy: cint; axis: V3dTypeOfAxe) {.cdecl,
    importcpp: "AxialScale", header: "V3d_View.hxx".}
proc startRotation*(this: var V3dView; x: cint; y: cint;
                   zRotationThreshold: cfloat = 0.0) {.cdecl,
    importcpp: "StartRotation", header: "V3d_View.hxx".}
proc rotation*(this: var V3dView; x: cint; y: cint) {.cdecl, importcpp: "Rotation",
    header: "V3d_View.hxx".}
proc setFocale*(this: var V3dView; focale: cfloat) {.cdecl, importcpp: "SetFocale",
    header: "V3d_View.hxx".}
proc focale*(this: V3dView): cfloat {.noSideEffect, cdecl, importcpp: "Focale",
                                  header: "V3d_View.hxx".}
#proc view*(this: V3dView): Handle[Graphic3dCView] {.noSideEffect, cdecl,
#    importcpp: "View", header: "V3d_View.hxx".}
proc setComputedMode*(this: var V3dView; theMode: bool) {.cdecl,
    importcpp: "SetComputedMode", header: "V3d_View.hxx".}
proc computedMode*(this: V3dView): bool {.noSideEffect, cdecl,
                                      importcpp: "ComputedMode", header: "V3d_View.hxx".}
proc windowFitAll*(this: var V3dView; xmin: cint; ymin: cint; xmax: cint; ymax: cint) {.
    cdecl, importcpp: "WindowFitAll", header: "V3d_View.hxx".}
#proc fitMinMax*(this: V3dView; theCamera: Handle[Graphic3dCamera]; theBox: BndBox;
#               theMargin: cfloat; theResolution: cfloat = 0.0;
#               theToEnlargeIfLine: bool = true): bool {.noSideEffect, cdecl,
#    importcpp: "FitMinMax", header: "V3d_View.hxx".}
#proc setGrid*(this: var V3dView; aPlane: Ax3Obj; aGrid: Handle[AspectGrid]) {.cdecl,
#    importcpp: "SetGrid", header: "V3d_View.hxx".}
#proc setGridActivity*(this: var V3dView; aFlag: bool) {.cdecl,
#    importcpp: "SetGridActivity", header: "V3d_View.hxx".}
#proc dump*(this: var V3dView; theFile: cstring;
#          theBufferType: Graphic3dBufferType = graphic3dBT_RGB): bool {.cdecl,
#    importcpp: "Dump", header: "V3d_View.hxx".}
#proc toPixMap*(this: var V3dView; theImage: var ImagePixMap;
#              theParams: V3dImageDumpOptions): bool {.cdecl, importcpp: "ToPixMap",
#    header: "V3d_View.hxx".}
#proc toPixMap*(this: var V3dView; theImage: var ImagePixMap; theWidth: cint;
#              theHeight: cint;
#              theBufferType: Graphic3dBufferType = graphic3dBT_RGB;
#              theToAdjustAspect: bool = true;
#              theStereoOptions: V3dStereoDumpOptions = v3dSDO_MONO): bool {.cdecl,
#    importcpp: "ToPixMap", header: "V3d_View.hxx".}
#proc setBackFacingModel*(this: var V3dView;
#                        theModel: V3dTypeOfBackfacingModel = v3dTOBM_AUTOMATIC) {.
#    cdecl, importcpp: "SetBackFacingModel", header: "V3d_View.hxx".}
proc backFacingModel*(this: V3dView): V3dTypeOfBackfacingModel {.noSideEffect, cdecl,
    importcpp: "BackFacingModel", header: "V3d_View.hxx".}
#proc addClipPlane*(this: var V3dView; thePlane: Handle[Graphic3dClipPlane]) {.cdecl,
#    importcpp: "AddClipPlane", header: "V3d_View.hxx".}
#proc removeClipPlane*(this: var V3dView; thePlane: Handle[Graphic3dClipPlane]) {.
#    cdecl, importcpp: "RemoveClipPlane", header: "V3d_View.hxx".}
#proc setClipPlanes*(this: var V3dView;
#                   thePlanes: Handle[Graphic3dSequenceOfHClipPlane]) {.cdecl,
#    importcpp: "SetClipPlanes", header: "V3d_View.hxx".}
#proc setClipPlanes*(this: var V3dView; thePlanes: Graphic3dSequenceOfHClipPlane) {.
#    cdecl, importcpp: "SetClipPlanes", header: "V3d_View.hxx".}
#proc clipPlanes*(this: V3dView): Handle[Graphic3dSequenceOfHClipPlane] {.
#    noSideEffect, cdecl, importcpp: "ClipPlanes", header: "V3d_View.hxx".}
proc planeLimit*(this: V3dView): cint {.noSideEffect, cdecl, importcpp: "PlaneLimit",
                                    header: "V3d_View.hxx".}
#proc setCamera*(this: var V3dView; theCamera: Handle[Graphic3dCamera]) {.cdecl,
#    importcpp: "SetCamera", header: "V3d_View.hxx".}
proc camera*(this: V3dView): Handle[Graphic3dCamera] {.noSideEffect, cdecl,
    importcpp: "Camera", header: "V3d_View.hxx".}
#proc defaultCamera*(this: V3dView): Handle[Graphic3dCamera] {.noSideEffect, cdecl,
#    importcpp: "DefaultCamera", header: "V3d_View.hxx".}
#proc renderingParams*(this: V3dView): Graphic3dRenderingParams {.noSideEffect, cdecl,
#    importcpp: "RenderingParams", header: "V3d_View.hxx".}
#proc changeRenderingParams*(this: var V3dView): var Graphic3dRenderingParams {.cdecl,
#    importcpp: "ChangeRenderingParams", header: "V3d_View.hxx".}
proc isCullingEnabled*(this: V3dView): bool {.noSideEffect, cdecl,
    importcpp: "IsCullingEnabled", header: "V3d_View.hxx".}
proc setFrustumCulling*(this: var V3dView; theMode: bool) {.cdecl,
    importcpp: "SetFrustumCulling", header: "V3d_View.hxx".}
#proc diagnosticInformation*(this: V3dView;
#                           theDict: var TColStdIndexedDataMapOfStringString;
#                           theFlags: Graphic3dDiagnosticInfo) {.noSideEffect,
#    cdecl, importcpp: "DiagnosticInformation", header: "V3d_View.hxx".}
proc statisticInformation*(this: V3dView): TCollectionAsciiString {.noSideEffect,
    cdecl, importcpp: "StatisticInformation", header: "V3d_View.hxx".}
proc statisticInformation*(this: V3dView;
                          theDict: var TColStdIndexedDataMapOfStringString) {.
    noSideEffect, cdecl, importcpp: "StatisticInformation", header: "V3d_View.hxx".}
proc gravityPoint*(this: V3dView): PntObj {.noSideEffect, cdecl,
                                     importcpp: "GravityPoint", header: "V3d_View.hxx".}
proc dumpJson*(this: V3dView; theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson", header: "V3d_View.hxx".}
proc ifMoreLights*(this: V3dView): bool {.noSideEffect, cdecl,
                                      importcpp: "IfMoreLights", header: "V3d_View.hxx".}
proc initActiveLights*(this: var V3dView) {.cdecl, importcpp: "InitActiveLights",
                                        header: "V3d_View.hxx".}
proc moreActiveLights*(this: V3dView): bool {.noSideEffect, cdecl,
    importcpp: "MoreActiveLights", header: "V3d_View.hxx".}
proc nextActiveLights*(this: var V3dView) {.cdecl, importcpp: "NextActiveLights",
                                        header: "V3d_View.hxx".}
proc activeLight*(this: V3dView): Handle[V3dLight] {.noSideEffect, cdecl,
    importcpp: "ActiveLight", header: "V3d_View.hxx".}


