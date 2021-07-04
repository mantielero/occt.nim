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

import
  ../Aspect/Aspect_Background, ../Aspect/Aspect_FillMethod,
  ../Aspect/Aspect_GradientBackground, ../Aspect/Aspect_GradientFillMethod,
  ../Aspect/Aspect_Handle, ../Aspect/Aspect_RenderingContext,
  ../Aspect/Aspect_TypeOfTriedronPosition, ../Bnd/Bnd_Box, ../gp/gp_Ax3,
  ../gp/gp_Dir, ../gp/gp_Pnt, ../Graphic3d/Graphic3d_BufferType,
  ../Graphic3d/Graphic3d_Camera, ../Graphic3d/Graphic3d_ClipPlane,
  ../Graphic3d/Graphic3d_CView, ../Graphic3d/Graphic3d_GraduatedTrihedron,
  ../Graphic3d/Graphic3d_RenderingParams,
  ../Graphic3d/Graphic3d_SequenceOfHClipPlane,
  ../Graphic3d/Graphic3d_TypeOfShadingModel, ../Graphic3d/Graphic3d_Vertex,
  ../Image/Image_PixMap, ../Standard/Standard_Transient,
  ../Quantity/Quantity_TypeOfColor, ../Standard/Standard,
  ../Standard/Standard_Address, ../Standard/Standard_Boolean,
  ../Standard/Standard_CString, ../Standard/Standard_Integer,
  ../Standard/Standard_Real, ../Standard/Standard_Type,
  ../TColStd/TColStd_Array2OfReal,
  ../TColStd/TColStd_ListIteratorOfListOfTransient, V3d_ImageDumpOptions,
  V3d_Trihedron, V3d_TypeOfAxe, V3d_TypeOfBackfacingModel, V3d_TypeOfOrientation,
  V3d_TypeOfView, V3d_TypeOfVisualization, V3d_Viewer, V3d_ViewerPointer

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
  Handle_V3d_View* = handle[V3d_View]

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
  V3d_View* {.importcpp: "V3d_View", header: "V3d_View.hxx", bycopy.} = object of Standard_Transient ##
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


proc constructV3d_View*(theViewer: handle[V3d_Viewer];
                       theType: V3d_TypeOfView = V3d_ORTHOGRAPHIC): V3d_View {.
    constructor, importcpp: "V3d_View(@)", header: "V3d_View.hxx".}
proc constructV3d_View*(theViewer: handle[V3d_Viewer]; theView: handle[V3d_View]): V3d_View {.
    constructor, importcpp: "V3d_View(@)", header: "V3d_View.hxx".}
proc destroyV3d_View*(this: var V3d_View) {.importcpp: "#.~V3d_View()",
                                        header: "V3d_View.hxx".}
proc SetWindow*(this: var V3d_View; theWindow: handle[Aspect_Window];
               theContext: Aspect_RenderingContext = nil) {.importcpp: "SetWindow",
    header: "V3d_View.hxx".}
proc SetMagnify*(this: var V3d_View; theWindow: handle[Aspect_Window];
                thePreviousView: handle[V3d_View]; theX1: Standard_Integer;
                theY1: Standard_Integer; theX2: Standard_Integer;
                theY2: Standard_Integer) {.importcpp: "SetMagnify",
    header: "V3d_View.hxx".}
proc Remove*(this: V3d_View) {.noSideEffect, importcpp: "Remove",
                            header: "V3d_View.hxx".}
proc Update*(this: V3d_View) {.noSideEffect, importcpp: "Update",
                            header: "V3d_View.hxx".}
proc Redraw*(this: V3d_View) {.noSideEffect, importcpp: "Redraw",
                            header: "V3d_View.hxx".}
proc RedrawImmediate*(this: V3d_View) {.noSideEffect, importcpp: "RedrawImmediate",
                                     header: "V3d_View.hxx".}
proc Invalidate*(this: V3d_View) {.noSideEffect, importcpp: "Invalidate",
                                header: "V3d_View.hxx".}
proc IsInvalidated*(this: V3d_View): Standard_Boolean {.noSideEffect,
    importcpp: "IsInvalidated", header: "V3d_View.hxx".}
proc IsInvalidatedImmediate*(this: V3d_View): Standard_Boolean {.noSideEffect,
    importcpp: "IsInvalidatedImmediate", header: "V3d_View.hxx".}
proc InvalidateImmediate*(this: var V3d_View) {.importcpp: "InvalidateImmediate",
    header: "V3d_View.hxx".}
proc MustBeResized*(this: var V3d_View) {.importcpp: "MustBeResized",
                                      header: "V3d_View.hxx".}
proc DoMapping*(this: var V3d_View) {.importcpp: "DoMapping", header: "V3d_View.hxx".}
proc IsEmpty*(this: V3d_View): Standard_Boolean {.noSideEffect, importcpp: "IsEmpty",
    header: "V3d_View.hxx".}
proc UpdateLights*(this: V3d_View) {.noSideEffect, importcpp: "UpdateLights",
                                  header: "V3d_View.hxx".}
proc SetAutoZFitMode*(this: var V3d_View; theIsOn: Standard_Boolean;
                     theScaleFactor: Standard_Real = 1.0) {.
    importcpp: "SetAutoZFitMode", header: "V3d_View.hxx".}
proc AutoZFitMode*(this: V3d_View): Standard_Boolean {.noSideEffect,
    importcpp: "AutoZFitMode", header: "V3d_View.hxx".}
proc AutoZFitScaleFactor*(this: V3d_View): Standard_Real {.noSideEffect,
    importcpp: "AutoZFitScaleFactor", header: "V3d_View.hxx".}
proc AutoZFit*(this: V3d_View) {.noSideEffect, importcpp: "AutoZFit",
                              header: "V3d_View.hxx".}
proc ZFitAll*(this: V3d_View; theScaleFactor: Standard_Real = 1.0) {.noSideEffect,
    importcpp: "ZFitAll", header: "V3d_View.hxx".}
proc SetBackgroundColor*(this: var V3d_View; theType: Quantity_TypeOfColor;
                        theV1: Standard_Real; theV2: Standard_Real;
                        theV3: Standard_Real) {.importcpp: "SetBackgroundColor",
    header: "V3d_View.hxx".}
proc SetBackgroundColor*(this: var V3d_View; theColor: Quantity_Color) {.
    importcpp: "SetBackgroundColor", header: "V3d_View.hxx".}
proc SetBgGradientColors*(this: var V3d_View; theColor1: Quantity_Color;
                         theColor2: Quantity_Color; theFillStyle: Aspect_GradientFillMethod = Aspect_GFM_HOR;
                         theToUpdate: Standard_Boolean = Standard_False) {.
    importcpp: "SetBgGradientColors", header: "V3d_View.hxx".}
proc SetBgGradientStyle*(this: var V3d_View;
                        theMethod: Aspect_GradientFillMethod = Aspect_GFM_HOR;
                        theToUpdate: Standard_Boolean = Standard_False) {.
    importcpp: "SetBgGradientStyle", header: "V3d_View.hxx".}
proc SetBackgroundImage*(this: var V3d_View; theFileName: Standard_CString;
                        theFillStyle: Aspect_FillMethod = Aspect_FM_CENTERED;
                        theToUpdate: Standard_Boolean = Standard_False) {.
    importcpp: "SetBackgroundImage", header: "V3d_View.hxx".}
proc SetBackgroundImage*(this: var V3d_View;
                        theTexture: handle[Graphic3d_Texture2D];
                        theFillStyle: Aspect_FillMethod = Aspect_FM_CENTERED;
                        theToUpdate: Standard_Boolean = Standard_False) {.
    importcpp: "SetBackgroundImage", header: "V3d_View.hxx".}
proc SetBgImageStyle*(this: var V3d_View; theFillStyle: Aspect_FillMethod;
                     theToUpdate: Standard_Boolean = Standard_False) {.
    importcpp: "SetBgImageStyle", header: "V3d_View.hxx".}
proc SetBackgroundCubeMap*(this: var V3d_View;
                          theCubeMap: handle[Graphic3d_CubeMap];
                          theToUpdatePBREnv: Standard_Boolean = Standard_True;
                          theToUpdate: Standard_Boolean = Standard_False) {.
    importcpp: "SetBackgroundCubeMap", header: "V3d_View.hxx".}
proc GeneratePBREnvironment*(this: var V3d_View;
                            theToUpdate: Standard_Boolean = Standard_False) {.
    importcpp: "GeneratePBREnvironment", header: "V3d_View.hxx".}
proc ClearPBREnvironment*(this: var V3d_View;
                         theToUpdate: Standard_Boolean = Standard_False) {.
    importcpp: "ClearPBREnvironment", header: "V3d_View.hxx".}
proc SetAxis*(this: var V3d_View; X: Standard_Real; Y: Standard_Real; Z: Standard_Real;
             Vx: Standard_Real; Vy: Standard_Real; Vz: Standard_Real) {.
    importcpp: "SetAxis", header: "V3d_View.hxx".}
proc SetShadingModel*(this: var V3d_View;
                     theShadingModel: Graphic3d_TypeOfShadingModel) {.
    importcpp: "SetShadingModel", header: "V3d_View.hxx".}
proc SetTextureEnv*(this: var V3d_View; theTexture: handle[Graphic3d_TextureEnv]) {.
    importcpp: "SetTextureEnv", header: "V3d_View.hxx".}
proc SetVisualization*(this: var V3d_View; theType: V3d_TypeOfVisualization) {.
    importcpp: "SetVisualization", header: "V3d_View.hxx".}
proc SetLightOn*(this: var V3d_View; theLight: handle[V3d_Light]) {.
    importcpp: "SetLightOn", header: "V3d_View.hxx".}
proc SetLightOn*(this: var V3d_View) {.importcpp: "SetLightOn", header: "V3d_View.hxx".}
proc SetLightOff*(this: var V3d_View; theLight: handle[V3d_Light]) {.
    importcpp: "SetLightOff", header: "V3d_View.hxx".}
proc SetLightOff*(this: var V3d_View) {.importcpp: "SetLightOff",
                                    header: "V3d_View.hxx".}
proc IsActiveLight*(this: V3d_View; theLight: handle[V3d_Light]): Standard_Boolean {.
    noSideEffect, importcpp: "IsActiveLight", header: "V3d_View.hxx".}
proc SetImmediateUpdate*(this: var V3d_View; theImmediateUpdate: Standard_Boolean): Standard_Boolean {.
    importcpp: "SetImmediateUpdate", header: "V3d_View.hxx".}
proc ZBufferTriedronSetup*(this: var V3d_View;
                          theXColor: Quantity_Color = Quantity_NOC_RED;
                          theYColor: Quantity_Color = Quantity_NOC_GREEN;
                          theZColor: Quantity_Color = Quantity_NOC_BLUE1;
                          theSizeRatio: Standard_Real = 0.8;
                          theAxisDiametr: Standard_Real = 0.05;
                          theNbFacettes: Standard_Integer = 12) {.
    importcpp: "ZBufferTriedronSetup", header: "V3d_View.hxx".}
proc TriedronDisplay*(this: var V3d_View; thePosition: Aspect_TypeOfTriedronPosition = Aspect_TOTP_CENTER;
                     theColor: Quantity_Color = Quantity_NOC_WHITE;
                     theScale: Standard_Real = 0.02;
                     theMode: V3d_TypeOfVisualization = V3d_WIREFRAME) {.
    importcpp: "TriedronDisplay", header: "V3d_View.hxx".}
proc TriedronErase*(this: var V3d_View) {.importcpp: "TriedronErase",
                                      header: "V3d_View.hxx".}
proc GetGraduatedTrihedron*(this: V3d_View): Graphic3d_GraduatedTrihedron {.
    noSideEffect, importcpp: "GetGraduatedTrihedron", header: "V3d_View.hxx".}
proc GraduatedTrihedronDisplay*(this: var V3d_View;
                               theTrihedronData: Graphic3d_GraduatedTrihedron) {.
    importcpp: "GraduatedTrihedronDisplay", header: "V3d_View.hxx".}
proc GraduatedTrihedronErase*(this: var V3d_View) {.
    importcpp: "GraduatedTrihedronErase", header: "V3d_View.hxx".}
proc SetFront*(this: var V3d_View) {.importcpp: "SetFront", header: "V3d_View.hxx".}
proc Rotate*(this: var V3d_View; Ax: Standard_Real; Ay: Standard_Real;
            Az: Standard_Real; Start: Standard_Boolean = Standard_True) {.
    importcpp: "Rotate", header: "V3d_View.hxx".}
proc Rotate*(this: var V3d_View; Ax: Standard_Real; Ay: Standard_Real;
            Az: Standard_Real; X: Standard_Real; Y: Standard_Real; Z: Standard_Real;
            Start: Standard_Boolean = Standard_True) {.importcpp: "Rotate",
    header: "V3d_View.hxx".}
proc Rotate*(this: var V3d_View; Axe: V3d_TypeOfAxe; Angle: Standard_Real;
            X: Standard_Real; Y: Standard_Real; Z: Standard_Real;
            Start: Standard_Boolean = Standard_True) {.importcpp: "Rotate",
    header: "V3d_View.hxx".}
proc Rotate*(this: var V3d_View; Axe: V3d_TypeOfAxe; Angle: Standard_Real;
            Start: Standard_Boolean = Standard_True) {.importcpp: "Rotate",
    header: "V3d_View.hxx".}
proc Rotate*(this: var V3d_View; Angle: Standard_Real;
            Start: Standard_Boolean = Standard_True) {.importcpp: "Rotate",
    header: "V3d_View.hxx".}
proc Move*(this: var V3d_View; Dx: Standard_Real; Dy: Standard_Real; Dz: Standard_Real;
          Start: Standard_Boolean = Standard_True) {.importcpp: "Move",
    header: "V3d_View.hxx".}
proc Move*(this: var V3d_View; Axe: V3d_TypeOfAxe; Length: Standard_Real;
          Start: Standard_Boolean = Standard_True) {.importcpp: "Move",
    header: "V3d_View.hxx".}
proc Move*(this: var V3d_View; Length: Standard_Real;
          Start: Standard_Boolean = Standard_True) {.importcpp: "Move",
    header: "V3d_View.hxx".}
proc Translate*(this: var V3d_View; Dx: Standard_Real; Dy: Standard_Real;
               Dz: Standard_Real; Start: Standard_Boolean = Standard_True) {.
    importcpp: "Translate", header: "V3d_View.hxx".}
proc Translate*(this: var V3d_View; Axe: V3d_TypeOfAxe; Length: Standard_Real;
               Start: Standard_Boolean = Standard_True) {.importcpp: "Translate",
    header: "V3d_View.hxx".}
proc Translate*(this: var V3d_View; Length: Standard_Real;
               Start: Standard_Boolean = Standard_True) {.importcpp: "Translate",
    header: "V3d_View.hxx".}
proc Place*(this: var V3d_View; theXp: Standard_Integer; theYp: Standard_Integer;
           theZoomFactor: Standard_Real = 1) {.importcpp: "Place",
    header: "V3d_View.hxx".}
proc Turn*(this: var V3d_View; Ax: Standard_Real; Ay: Standard_Real; Az: Standard_Real;
          Start: Standard_Boolean = Standard_True) {.importcpp: "Turn",
    header: "V3d_View.hxx".}
proc Turn*(this: var V3d_View; Axe: V3d_TypeOfAxe; Angle: Standard_Real;
          Start: Standard_Boolean = Standard_True) {.importcpp: "Turn",
    header: "V3d_View.hxx".}
proc Turn*(this: var V3d_View; Angle: Standard_Real;
          Start: Standard_Boolean = Standard_True) {.importcpp: "Turn",
    header: "V3d_View.hxx".}
proc SetTwist*(this: var V3d_View; Angle: Standard_Real) {.importcpp: "SetTwist",
    header: "V3d_View.hxx".}
proc SetEye*(this: var V3d_View; X: Standard_Real; Y: Standard_Real; Z: Standard_Real) {.
    importcpp: "SetEye", header: "V3d_View.hxx".}
proc SetDepth*(this: var V3d_View; Depth: Standard_Real) {.importcpp: "SetDepth",
    header: "V3d_View.hxx".}
proc SetProj*(this: var V3d_View; Vx: Standard_Real; Vy: Standard_Real;
             Vz: Standard_Real) {.importcpp: "SetProj", header: "V3d_View.hxx".}
proc SetProj*(this: var V3d_View; theOrientation: V3d_TypeOfOrientation;
             theIsYup: Standard_Boolean = Standard_False) {.importcpp: "SetProj",
    header: "V3d_View.hxx".}
proc SetAt*(this: var V3d_View; X: Standard_Real; Y: Standard_Real; Z: Standard_Real) {.
    importcpp: "SetAt", header: "V3d_View.hxx".}
proc SetUp*(this: var V3d_View; Vx: Standard_Real; Vy: Standard_Real; Vz: Standard_Real) {.
    importcpp: "SetUp", header: "V3d_View.hxx".}
proc SetUp*(this: var V3d_View; Orientation: V3d_TypeOfOrientation) {.
    importcpp: "SetUp", header: "V3d_View.hxx".}
proc SetViewOrientationDefault*(this: var V3d_View) {.
    importcpp: "SetViewOrientationDefault", header: "V3d_View.hxx".}
proc ResetViewOrientation*(this: var V3d_View) {.importcpp: "ResetViewOrientation",
    header: "V3d_View.hxx".}
proc Panning*(this: var V3d_View; theDXv: Standard_Real; theDYv: Standard_Real;
             theZoomFactor: Standard_Real = 1;
             theToStart: Standard_Boolean = Standard_True) {.importcpp: "Panning",
    header: "V3d_View.hxx".}
proc SetCenter*(this: var V3d_View; theXp: Standard_Integer; theYp: Standard_Integer) {.
    importcpp: "SetCenter", header: "V3d_View.hxx".}
proc SetSize*(this: var V3d_View; theSize: Standard_Real) {.importcpp: "SetSize",
    header: "V3d_View.hxx".}
proc SetZSize*(this: var V3d_View; SetZSize: Standard_Real) {.importcpp: "SetZSize",
    header: "V3d_View.hxx".}
proc SetZoom*(this: var V3d_View; Coef: Standard_Real;
             Start: Standard_Boolean = Standard_True) {.importcpp: "SetZoom",
    header: "V3d_View.hxx".}
proc SetScale*(this: var V3d_View; Coef: Standard_Real) {.importcpp: "SetScale",
    header: "V3d_View.hxx".}
proc SetAxialScale*(this: var V3d_View; Sx: Standard_Real; Sy: Standard_Real;
                   Sz: Standard_Real) {.importcpp: "SetAxialScale",
                                      header: "V3d_View.hxx".}
proc FitAll*(this: var V3d_View; theMargin: Standard_Real = 0.01;
            theToUpdate: Standard_Boolean = Standard_True) {.importcpp: "FitAll",
    header: "V3d_View.hxx".}
proc FitAll*(this: var V3d_View; theBox: Bnd_Box; theMargin: Standard_Real = 0.01;
            theToUpdate: Standard_Boolean = Standard_True) {.importcpp: "FitAll",
    header: "V3d_View.hxx".}
proc DepthFitAll*(this: var V3d_View; Aspect: Standard_Real = 0.01;
                 Margin: Standard_Real = 0.01) {.importcpp: "DepthFitAll",
    header: "V3d_View.hxx".}
proc FitAll*(this: var V3d_View; theMinXv: Standard_Real; theMinYv: Standard_Real;
            theMaxXv: Standard_Real; theMaxYv: Standard_Real) {.importcpp: "FitAll",
    header: "V3d_View.hxx".}
proc WindowFit*(this: var V3d_View; theMinXp: Standard_Integer;
               theMinYp: Standard_Integer; theMaxXp: Standard_Integer;
               theMaxYp: Standard_Integer) {.importcpp: "WindowFit",
    header: "V3d_View.hxx".}
proc SetViewMappingDefault*(this: var V3d_View) {.
    importcpp: "SetViewMappingDefault", header: "V3d_View.hxx".}
proc ResetViewMapping*(this: var V3d_View) {.importcpp: "ResetViewMapping",
    header: "V3d_View.hxx".}
proc Reset*(this: var V3d_View; theToUpdate: Standard_Boolean = Standard_True) {.
    importcpp: "Reset", header: "V3d_View.hxx".}
proc Convert*(this: V3d_View; Vp: Standard_Integer): Standard_Real {.noSideEffect,
    importcpp: "Convert", header: "V3d_View.hxx".}
proc Convert*(this: V3d_View; Xp: Standard_Integer; Yp: Standard_Integer;
             Xv: var Standard_Real; Yv: var Standard_Real) {.noSideEffect,
    importcpp: "Convert", header: "V3d_View.hxx".}
proc Convert*(this: V3d_View; Vv: Standard_Real): Standard_Integer {.noSideEffect,
    importcpp: "Convert", header: "V3d_View.hxx".}
proc Convert*(this: V3d_View; Xv: Standard_Real; Yv: Standard_Real;
             Xp: var Standard_Integer; Yp: var Standard_Integer) {.noSideEffect,
    importcpp: "Convert", header: "V3d_View.hxx".}
proc Convert*(this: V3d_View; Xp: Standard_Integer; Yp: Standard_Integer;
             X: var Standard_Real; Y: var Standard_Real; Z: var Standard_Real) {.
    noSideEffect, importcpp: "Convert", header: "V3d_View.hxx".}
proc ConvertWithProj*(this: V3d_View; Xp: Standard_Integer; Yp: Standard_Integer;
                     X: var Standard_Real; Y: var Standard_Real; Z: var Standard_Real;
                     Vx: var Standard_Real; Vy: var Standard_Real;
                     Vz: var Standard_Real) {.noSideEffect,
    importcpp: "ConvertWithProj", header: "V3d_View.hxx".}
proc ConvertToGrid*(this: V3d_View; Xp: Standard_Integer; Yp: Standard_Integer;
                   Xg: var Standard_Real; Yg: var Standard_Real; Zg: var Standard_Real) {.
    noSideEffect, importcpp: "ConvertToGrid", header: "V3d_View.hxx".}
proc ConvertToGrid*(this: V3d_View; X: Standard_Real; Y: Standard_Real;
                   Z: Standard_Real; Xg: var Standard_Real; Yg: var Standard_Real;
                   Zg: var Standard_Real) {.noSideEffect,
    importcpp: "ConvertToGrid", header: "V3d_View.hxx".}
proc Convert*(this: V3d_View; X: Standard_Real; Y: Standard_Real; Z: Standard_Real;
             Xp: var Standard_Integer; Yp: var Standard_Integer) {.noSideEffect,
    importcpp: "Convert", header: "V3d_View.hxx".}
proc Project*(this: V3d_View; theX: Standard_Real; theY: Standard_Real;
             theZ: Standard_Real; theXp: var Standard_Real; theYp: var Standard_Real) {.
    noSideEffect, importcpp: "Project", header: "V3d_View.hxx".}
proc Project*(this: V3d_View; theX: Standard_Real; theY: Standard_Real;
             theZ: Standard_Real; theXp: var Standard_Real; theYp: var Standard_Real;
             theZp: var Standard_Real) {.noSideEffect, importcpp: "Project",
                                      header: "V3d_View.hxx".}
proc BackgroundColor*(this: V3d_View; Type: Quantity_TypeOfColor;
                     V1: var Standard_Real; V2: var Standard_Real;
                     V3: var Standard_Real) {.noSideEffect,
    importcpp: "BackgroundColor", header: "V3d_View.hxx".}
proc BackgroundColor*(this: V3d_View): Quantity_Color {.noSideEffect,
    importcpp: "BackgroundColor", header: "V3d_View.hxx".}
proc GradientBackgroundColors*(this: V3d_View; theColor1: var Quantity_Color;
                              theColor2: var Quantity_Color) {.noSideEffect,
    importcpp: "GradientBackgroundColors", header: "V3d_View.hxx".}
proc GradientBackground*(this: V3d_View): Aspect_GradientBackground {.noSideEffect,
    importcpp: "GradientBackground", header: "V3d_View.hxx".}
proc Scale*(this: V3d_View): Standard_Real {.noSideEffect, importcpp: "Scale",
    header: "V3d_View.hxx".}
proc AxialScale*(this: V3d_View; Sx: var Standard_Real; Sy: var Standard_Real;
                Sz: var Standard_Real) {.noSideEffect, importcpp: "AxialScale",
                                      header: "V3d_View.hxx".}
proc Size*(this: V3d_View; Width: var Standard_Real; Height: var Standard_Real) {.
    noSideEffect, importcpp: "Size", header: "V3d_View.hxx".}
proc ZSize*(this: V3d_View): Standard_Real {.noSideEffect, importcpp: "ZSize",
    header: "V3d_View.hxx".}
proc Eye*(this: V3d_View; X: var Standard_Real; Y: var Standard_Real;
         Z: var Standard_Real) {.noSideEffect, importcpp: "Eye",
                              header: "V3d_View.hxx".}
proc FocalReferencePoint*(this: V3d_View; X: var Standard_Real; Y: var Standard_Real;
                         Z: var Standard_Real) {.noSideEffect,
    importcpp: "FocalReferencePoint", header: "V3d_View.hxx".}
proc ProjReferenceAxe*(this: V3d_View; Xpix: Standard_Integer;
                      Ypix: Standard_Integer; XP: var Standard_Real;
                      YP: var Standard_Real; ZP: var Standard_Real;
                      VX: var Standard_Real; VY: var Standard_Real;
                      VZ: var Standard_Real) {.noSideEffect,
    importcpp: "ProjReferenceAxe", header: "V3d_View.hxx".}
proc Depth*(this: V3d_View): Standard_Real {.noSideEffect, importcpp: "Depth",
    header: "V3d_View.hxx".}
proc Proj*(this: V3d_View; Vx: var Standard_Real; Vy: var Standard_Real;
          Vz: var Standard_Real) {.noSideEffect, importcpp: "Proj",
                                header: "V3d_View.hxx".}
proc At*(this: V3d_View; X: var Standard_Real; Y: var Standard_Real; Z: var Standard_Real) {.
    noSideEffect, importcpp: "At", header: "V3d_View.hxx".}
proc Up*(this: V3d_View; Vx: var Standard_Real; Vy: var Standard_Real;
        Vz: var Standard_Real) {.noSideEffect, importcpp: "Up", header: "V3d_View.hxx".}
proc Twist*(this: V3d_View): Standard_Real {.noSideEffect, importcpp: "Twist",
    header: "V3d_View.hxx".}
proc ShadingModel*(this: V3d_View): Graphic3d_TypeOfShadingModel {.noSideEffect,
    importcpp: "ShadingModel", header: "V3d_View.hxx".}
proc TextureEnv*(this: V3d_View): handle[Graphic3d_TextureEnv] {.noSideEffect,
    importcpp: "TextureEnv", header: "V3d_View.hxx".}
proc Visualization*(this: V3d_View): V3d_TypeOfVisualization {.noSideEffect,
    importcpp: "Visualization", header: "V3d_View.hxx".}
proc ActiveLights*(this: V3d_View): V3d_ListOfLight {.noSideEffect,
    importcpp: "ActiveLights", header: "V3d_View.hxx".}
proc ActiveLightIterator*(this: V3d_View): V3d_ListOfLightIterator {.noSideEffect,
    importcpp: "ActiveLightIterator", header: "V3d_View.hxx".}
proc LightLimit*(this: V3d_View): Standard_Integer {.noSideEffect,
    importcpp: "LightLimit", header: "V3d_View.hxx".}
proc Viewer*(this: V3d_View): handle[V3d_Viewer] {.noSideEffect, importcpp: "Viewer",
    header: "V3d_View.hxx".}
proc IfWindow*(this: V3d_View): Standard_Boolean {.noSideEffect,
    importcpp: "IfWindow", header: "V3d_View.hxx".}
proc Window*(this: V3d_View): handle[Aspect_Window] {.noSideEffect,
    importcpp: "Window", header: "V3d_View.hxx".}
proc Type*(this: V3d_View): V3d_TypeOfView {.noSideEffect, importcpp: "Type",
    header: "V3d_View.hxx".}
proc Pan*(this: var V3d_View; theDXp: Standard_Integer; theDYp: Standard_Integer;
         theZoomFactor: Standard_Real = 1;
         theToStart: Standard_Boolean = Standard_True) {.importcpp: "Pan",
    header: "V3d_View.hxx".}
proc Zoom*(this: var V3d_View; theXp1: Standard_Integer; theYp1: Standard_Integer;
          theXp2: Standard_Integer; theYp2: Standard_Integer) {.importcpp: "Zoom",
    header: "V3d_View.hxx".}
proc StartZoomAtPoint*(this: var V3d_View; theXp: Standard_Integer;
                      theYp: Standard_Integer) {.importcpp: "StartZoomAtPoint",
    header: "V3d_View.hxx".}
proc ZoomAtPoint*(this: var V3d_View; theMouseStartX: Standard_Integer;
                 theMouseStartY: Standard_Integer; theMouseEndX: Standard_Integer;
                 theMouseEndY: Standard_Integer) {.importcpp: "ZoomAtPoint",
    header: "V3d_View.hxx".}
proc AxialScale*(this: var V3d_View; Dx: Standard_Integer; Dy: Standard_Integer;
                Axis: V3d_TypeOfAxe) {.importcpp: "AxialScale",
                                     header: "V3d_View.hxx".}
proc StartRotation*(this: var V3d_View; X: Standard_Integer; Y: Standard_Integer;
                   zRotationThreshold: Standard_Real = 0.0) {.
    importcpp: "StartRotation", header: "V3d_View.hxx".}
proc Rotation*(this: var V3d_View; X: Standard_Integer; Y: Standard_Integer) {.
    importcpp: "Rotation", header: "V3d_View.hxx".}
proc SetFocale*(this: var V3d_View; Focale: Standard_Real) {.importcpp: "SetFocale",
    header: "V3d_View.hxx".}
proc Focale*(this: V3d_View): Standard_Real {.noSideEffect, importcpp: "Focale",
    header: "V3d_View.hxx".}
proc View*(this: V3d_View): handle[Graphic3d_CView] {.noSideEffect,
    importcpp: "View", header: "V3d_View.hxx".}
proc SetComputedMode*(this: var V3d_View; theMode: Standard_Boolean) {.
    importcpp: "SetComputedMode", header: "V3d_View.hxx".}
proc ComputedMode*(this: V3d_View): Standard_Boolean {.noSideEffect,
    importcpp: "ComputedMode", header: "V3d_View.hxx".}
proc WindowFitAll*(this: var V3d_View; Xmin: Standard_Integer; Ymin: Standard_Integer;
                  Xmax: Standard_Integer; Ymax: Standard_Integer) {.
    importcpp: "WindowFitAll", header: "V3d_View.hxx".}
proc FitMinMax*(this: V3d_View; theCamera: handle[Graphic3d_Camera]; theBox: Bnd_Box;
               theMargin: Standard_Real; theResolution: Standard_Real = 0.0;
               theToEnlargeIfLine: Standard_Boolean = Standard_True): Standard_Boolean {.
    noSideEffect, importcpp: "FitMinMax", header: "V3d_View.hxx".}
proc SetGrid*(this: var V3d_View; aPlane: gp_Ax3; aGrid: handle[Aspect_Grid]) {.
    importcpp: "SetGrid", header: "V3d_View.hxx".}
proc SetGridActivity*(this: var V3d_View; aFlag: Standard_Boolean) {.
    importcpp: "SetGridActivity", header: "V3d_View.hxx".}
proc Dump*(this: var V3d_View; theFile: Standard_CString;
          theBufferType: Graphic3d_BufferType = Graphic3d_BT_RGB): Standard_Boolean {.
    importcpp: "Dump", header: "V3d_View.hxx".}
proc ToPixMap*(this: var V3d_View; theImage: var Image_PixMap;
              theParams: V3d_ImageDumpOptions): Standard_Boolean {.
    importcpp: "ToPixMap", header: "V3d_View.hxx".}
proc ToPixMap*(this: var V3d_View; theImage: var Image_PixMap;
              theWidth: Standard_Integer; theHeight: Standard_Integer;
              theBufferType: Graphic3d_BufferType = Graphic3d_BT_RGB;
              theToAdjustAspect: Standard_Boolean = Standard_True;
              theStereoOptions: V3d_StereoDumpOptions = V3d_SDO_MONO): Standard_Boolean {.
    importcpp: "ToPixMap", header: "V3d_View.hxx".}
proc SetBackFacingModel*(this: var V3d_View; theModel: V3d_TypeOfBackfacingModel = V3d_TOBM_AUTOMATIC) {.
    importcpp: "SetBackFacingModel", header: "V3d_View.hxx".}
proc BackFacingModel*(this: V3d_View): V3d_TypeOfBackfacingModel {.noSideEffect,
    importcpp: "BackFacingModel", header: "V3d_View.hxx".}
proc AddClipPlane*(this: var V3d_View; thePlane: handle[Graphic3d_ClipPlane]) {.
    importcpp: "AddClipPlane", header: "V3d_View.hxx".}
proc RemoveClipPlane*(this: var V3d_View; thePlane: handle[Graphic3d_ClipPlane]) {.
    importcpp: "RemoveClipPlane", header: "V3d_View.hxx".}
proc SetClipPlanes*(this: var V3d_View;
                   thePlanes: handle[Graphic3d_SequenceOfHClipPlane]) {.
    importcpp: "SetClipPlanes", header: "V3d_View.hxx".}
## !!!Ignored construct:  Standard_DEPRECATED ( This method is deprecated - overload taking Handle should be used instead ) void SetClipPlanes ( const Graphic3d_SequenceOfHClipPlane & thePlanes ) { opencascade :: handle < Graphic3d_SequenceOfHClipPlane > [end of template] aPlanes = new Graphic3d_SequenceOfHClipPlane ( thePlanes ) ; SetClipPlanes ( aPlanes ) ; } ! Get clip planes.
## ! @return sequence clip planes that have been set for the view const opencascade :: handle < Graphic3d_SequenceOfHClipPlane > [end of template] & ClipPlanes ( ) const ;
## Error: identifier expected, but got: This method is deprecated - overload taking Handle should be used instead!!!

proc PlaneLimit*(this: V3d_View): Standard_Integer {.noSideEffect,
    importcpp: "PlaneLimit", header: "V3d_View.hxx".}
proc SetCamera*(this: var V3d_View; theCamera: handle[Graphic3d_Camera]) {.
    importcpp: "SetCamera", header: "V3d_View.hxx".}
proc Camera*(this: V3d_View): handle[Graphic3d_Camera] {.noSideEffect,
    importcpp: "Camera", header: "V3d_View.hxx".}
proc DefaultCamera*(this: V3d_View): handle[Graphic3d_Camera] {.noSideEffect,
    importcpp: "DefaultCamera", header: "V3d_View.hxx".}
proc RenderingParams*(this: V3d_View): Graphic3d_RenderingParams {.noSideEffect,
    importcpp: "RenderingParams", header: "V3d_View.hxx".}
proc ChangeRenderingParams*(this: var V3d_View): var Graphic3d_RenderingParams {.
    importcpp: "ChangeRenderingParams", header: "V3d_View.hxx".}
proc IsCullingEnabled*(this: V3d_View): Standard_Boolean {.noSideEffect,
    importcpp: "IsCullingEnabled", header: "V3d_View.hxx".}
proc SetFrustumCulling*(this: var V3d_View; theMode: Standard_Boolean) {.
    importcpp: "SetFrustumCulling", header: "V3d_View.hxx".}
proc DiagnosticInformation*(this: V3d_View;
                           theDict: var TColStd_IndexedDataMapOfStringString;
                           theFlags: Graphic3d_DiagnosticInfo) {.noSideEffect,
    importcpp: "DiagnosticInformation", header: "V3d_View.hxx".}
proc StatisticInformation*(this: V3d_View): TCollection_AsciiString {.noSideEffect,
    importcpp: "StatisticInformation", header: "V3d_View.hxx".}
proc StatisticInformation*(this: V3d_View;
                          theDict: var TColStd_IndexedDataMapOfStringString) {.
    noSideEffect, importcpp: "StatisticInformation", header: "V3d_View.hxx".}
proc GravityPoint*(this: V3d_View): gp_Pnt {.noSideEffect, importcpp: "GravityPoint",
    header: "V3d_View.hxx".}
proc DumpJson*(this: V3d_View; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "V3d_View.hxx".}
type
  V3d_Viewbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "V3d_View::get_type_name(@)",
                              header: "V3d_View.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "V3d_View::get_type_descriptor(@)", header: "V3d_View.hxx".}
proc DynamicType*(this: V3d_View): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "V3d_View.hxx".}
## !!!Ignored construct:  public : ! @name deprecated methods ! Returns True if One light more can be
## ! activated in this View. Standard_DEPRECATED ( Deprecated method - ActiveLights() should be used instead ) Standard_Boolean IfMoreLights ( ) const ;
## Error: identifier expected, but got: Deprecated method - ActiveLights() should be used instead!!!

## !!!Ignored construct:  ! initializes an iteration on the active Lights. Standard_DEPRECATED ( Deprecated method - ActiveLights() should be used instead ) void InitActiveLights ( ) { myActiveLightsIterator . Initialize ( myActiveLights ) ; } ! returns true if there are more active Light(s) to return. Standard_DEPRECATED ( Deprecated method - ActiveLights() should be used instead ) Standard_Boolean MoreActiveLights ( ) const { return myActiveLightsIterator . More ( ) ; } ! Go to the next active Light (if there is not, ActiveLight will raise an exception) Standard_DEPRECATED ( Deprecated method - ActiveLights() should be used instead ) void NextActiveLights ( ) { myActiveLightsIterator . Next ( ) ; } Standard_DEPRECATED ( Deprecated method - ActiveLights() should be used instead ) const opencascade :: handle < V3d_Light > [end of template] & ActiveLight ( ) const { return myActiveLightsIterator . Value ( ) ; } protected : void ImmediateUpdate ( ) const ;
## Error: identifier expected, but got: Deprecated method - ActiveLights() should be used instead!!!

proc Scale*(this: V3d_View; theCamera: handle[Graphic3d_Camera];
           theSizeXv: Standard_Real; theSizeYv: Standard_Real) {.noSideEffect,
    importcpp: "Scale", header: "V3d_View.hxx".}
proc Translate*(this: V3d_View; theCamera: handle[Graphic3d_Camera];
               theDXv: Standard_Real; theDYv: Standard_Real) {.noSideEffect,
    importcpp: "Translate", header: "V3d_View.hxx".}