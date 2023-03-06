import ../tcollection/tcollection_types
import ../aspect/aspect_types
import ../standard/standard_types
import ../message/message_types
import ../selectmgr/selectmgr_types
import ../tcolstd/tcolstd_types
import ../graphic3d/graphic3d_types
import opengl_types



##  Created on: 2012-01-26
##  Created by: Kirill GAVRILOV
##  Copyright (c) 2012-2014 OPEN CASCADE SAS
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

## ! Forward declarations
##  #if defined(__APPLE__)
##    #import <TargetConditionals.h>
##    #if defined(TARGET_OS_IPHONE) && TARGET_OS_IPHONE
##      #ifdef __OBJC__
##        @class EAGLContext;
##      #else
##        struct EAGLContext;
##      #endif
##    #else
##      #ifdef __OBJC__
##        @class NSOpenGLContext;
##      #else
##        struct NSOpenGLContext;
##      #endif
##    #endif
##  #endif






















proc getPowerOfTwo*(theNumber: cint; theThreshold: cint): cint {.cdecl,
    importcpp: "OpenGl_Context::GetPowerOfTwo(@)", header: "OpenGl_Context.hxx".}
# proc newOpenGlContext*(theCaps: Handle[OpenGlCaps] = nil ): OpenGlContext {.cdecl,
#     constructor, importcpp: "OpenGl_Context(@)", header: "OpenGl_Context.hxx".}
proc newOpenGlContext*(theCaps: Handle[OpenGlCaps] ): OpenGlContext {.cdecl,
    constructor, importcpp: "OpenGl_Context(@)", header: "OpenGl_Context.hxx".}
proc destroyOpenGlContext*(this: var OpenGlContext) {.cdecl,
    importcpp: "#.~OpenGl_Context()", header: "OpenGl_Context.hxx".}
proc forcedRelease*(this: var OpenGlContext) {.cdecl, importcpp: "forcedRelease",
    header: "OpenGl_Context.hxx".}
proc share*(this: var OpenGlContext; theShareCtx: Handle[OpenGlContext]) {.cdecl,
    importcpp: "Share", header: "OpenGl_Context.hxx".}
proc init*(this: var OpenGlContext; theIsCoreProfile: bool = false): bool {.cdecl,
    importcpp: "Init", header: "OpenGl_Context.hxx".}
proc isValid*(this: OpenGlContext): bool {.noSideEffect, cdecl, importcpp: "IsValid",
                                       header: "OpenGl_Context.hxx".}
proc init*(this: var OpenGlContext; theWindow: AspectDrawable;
          theDisplay: AspectDisplay; theGContext: AspectRenderingContext;
          theIsCoreProfile: bool = false): bool {.cdecl, importcpp: "Init",
    header: "OpenGl_Context.hxx".}
proc window*(this: OpenGlContext): AspectDrawable {.noSideEffect, cdecl,
    importcpp: "Window", header: "OpenGl_Context.hxx".}
proc readGlVersion*(theGlVerMajor: var cint; theGlVerMinor: var cint) {.cdecl,
    importcpp: "OpenGl_Context::ReadGlVersion(@)", header: "OpenGl_Context.hxx".}
proc checkExtension*(this: OpenGlContext; theExtName: cstring): bool {.noSideEffect,
    cdecl, importcpp: "CheckExtension", header: "OpenGl_Context.hxx".}
proc checkExtension*(theExtString: cstring; theExtName: cstring): bool {.cdecl,
    importcpp: "OpenGl_Context::CheckExtension(@)", header: "OpenGl_Context.hxx".}
proc findProcVerbose*[FuncTypeT](this: var OpenGlContext;
                                theLastFailFuncName: cstring;
                                theFuncName: cstring; theFuncPtr: var FuncTypeT): bool {.
    cdecl, importcpp: "FindProcVerbose", header: "OpenGl_Context.hxx".}
proc findProc*[FuncTypeT](this: var OpenGlContext; theFuncName: cstring;
                         theFuncPtr: var FuncTypeT): bool {.cdecl,
    importcpp: "FindProc", header: "OpenGl_Context.hxx".}
proc isGlGreaterEqual*(this: OpenGlContext; theVerMajor: cint; theVerMinor: cint): bool {.
    noSideEffect, cdecl, importcpp: "IsGlGreaterEqual", header: "OpenGl_Context.hxx".}
proc versionMajor*(this: OpenGlContext): cint {.noSideEffect, cdecl,
    importcpp: "VersionMajor", header: "OpenGl_Context.hxx".}
proc versionMinor*(this: OpenGlContext): cint {.noSideEffect, cdecl,
    importcpp: "VersionMinor", header: "OpenGl_Context.hxx".}
proc functions*(this: OpenGlContext): ptr OpenGlGlFunctions {.noSideEffect, cdecl,
    importcpp: "Functions", header: "OpenGl_Context.hxx".}
proc resetErrors*(this: var OpenGlContext; theToPrintErrors: bool = false): bool {.cdecl,
    importcpp: "ResetErrors", header: "OpenGl_Context.hxx".}
proc isCurrent*(this: OpenGlContext): bool {.noSideEffect, cdecl,
    importcpp: "IsCurrent", header: "OpenGl_Context.hxx".}
proc makeCurrent*(this: var OpenGlContext): bool {.cdecl, importcpp: "MakeCurrent",
    header: "OpenGl_Context.hxx".}
proc swapBuffers*(this: var OpenGlContext) {.cdecl, importcpp: "SwapBuffers",
    header: "OpenGl_Context.hxx".}
proc setSwapInterval*(this: var OpenGlContext; theInterval: cint): bool {.cdecl,
    importcpp: "SetSwapInterval", header: "OpenGl_Context.hxx".}
proc isRender*(this: OpenGlContext): bool {.noSideEffect, cdecl,
                                        importcpp: "IsRender", header: "OpenGl_Context.hxx".}
proc isFeedback*(this: OpenGlContext): bool {.noSideEffect, cdecl,
    importcpp: "IsFeedback", header: "OpenGl_Context.hxx".}
proc availableMemory*(this: OpenGlContext): csize_t {.noSideEffect, cdecl,
    importcpp: "AvailableMemory", header: "OpenGl_Context.hxx".}
proc memoryInfo*(this: OpenGlContext): TCollectionAsciiString {.noSideEffect, cdecl,
    importcpp: "MemoryInfo", header: "OpenGl_Context.hxx".}
proc memoryInfo*(this: OpenGlContext;
                theDict: var TColStdIndexedDataMapOfStringString) {.noSideEffect,
    cdecl, importcpp: "MemoryInfo", header: "OpenGl_Context.hxx".}
proc diagnosticInformation*(this: OpenGlContext;
                           theDict: var TColStdIndexedDataMapOfStringString;
                           theFlags: Graphic3dDiagnosticInfo) {.noSideEffect,
    cdecl, importcpp: "DiagnosticInformation", header: "OpenGl_Context.hxx".}
proc getResource*(this: OpenGlContext; theKey: TCollectionAsciiString): Handle[
    OpenGlResource] {.noSideEffect, cdecl, importcpp: "GetResource", header: "OpenGl_Context.hxx".}
proc getResource*[TheHandleType](this: OpenGlContext;
                                theKey: TCollectionAsciiString;
                                theValue: var TheHandleType): bool {.noSideEffect,
    cdecl, importcpp: "GetResource", header: "OpenGl_Context.hxx".}
proc shareResource*(this: var OpenGlContext; theKey: TCollectionAsciiString;
                   theResource: Handle[OpenGlResource]): bool {.cdecl,
    importcpp: "ShareResource", header: "OpenGl_Context.hxx".}
proc releaseResource*(this: var OpenGlContext; theKey: TCollectionAsciiString;
                     theToDelay: bool = false) {.cdecl, importcpp: "ReleaseResource",
    header: "OpenGl_Context.hxx".}
proc delayedRelease*[T](this: var OpenGlContext; theResource: var Handle[T]) {.cdecl,
    importcpp: "DelayedRelease", header: "OpenGl_Context.hxx".}
proc releaseDelayed*(this: var OpenGlContext) {.cdecl, importcpp: "ReleaseDelayed",
    header: "OpenGl_Context.hxx".}
proc sharedResources*(this: OpenGlContext): OpenGlContextOpenGlResourcesMap {.
    noSideEffect, cdecl, importcpp: "SharedResources", header: "OpenGl_Context.hxx".}
proc changeClipping*(this: var OpenGlContext): var OpenGlClipping {.cdecl,
    importcpp: "ChangeClipping", header: "OpenGl_Context.hxx".}
proc clipping*(this: OpenGlContext): OpenGlClipping {.noSideEffect, cdecl,
    importcpp: "Clipping", header: "OpenGl_Context.hxx".}
proc shaderManager*(this: OpenGlContext): Handle[OpenGlShaderManager] {.
    noSideEffect, cdecl, importcpp: "ShaderManager", header: "OpenGl_Context.hxx".}
proc textureWrapClamp*(this: OpenGlContext): cint {.noSideEffect, cdecl,
    importcpp: "TextureWrapClamp", header: "OpenGl_Context.hxx".}
proc hasTextureBaseLevel*(this: OpenGlContext): bool {.noSideEffect, cdecl,
    importcpp: "HasTextureBaseLevel", header: "OpenGl_Context.hxx".}
proc supportedTextureFormats*(this: OpenGlContext): Handle[ImageSupportedFormats] {.
    noSideEffect, cdecl, importcpp: "SupportedTextureFormats", header: "OpenGl_Context.hxx".}
proc maxDegreeOfAnisotropy*(this: OpenGlContext): cint {.noSideEffect, cdecl,
    importcpp: "MaxDegreeOfAnisotropy", header: "OpenGl_Context.hxx".}
proc maxTextureSize*(this: OpenGlContext): cint {.noSideEffect, cdecl,
    importcpp: "MaxTextureSize", header: "OpenGl_Context.hxx".}
proc maxCombinedTextureUnits*(this: OpenGlContext): cint {.noSideEffect, cdecl,
    importcpp: "MaxCombinedTextureUnits", header: "OpenGl_Context.hxx".}
proc maxTextureUnitsFFP*(this: OpenGlContext): cint {.noSideEffect, cdecl,
    importcpp: "MaxTextureUnitsFFP", header: "OpenGl_Context.hxx".}
proc spriteTextureUnit*(this: OpenGlContext): Graphic3dTextureUnit {.noSideEffect,
    cdecl, importcpp: "SpriteTextureUnit", header: "OpenGl_Context.hxx".}
proc maxMsaaSamples*(this: OpenGlContext): cint {.noSideEffect, cdecl,
    importcpp: "MaxMsaaSamples", header: "OpenGl_Context.hxx".}
proc maxDumpSizeX*(this: OpenGlContext): cint {.noSideEffect, cdecl,
    importcpp: "MaxDumpSizeX", header: "OpenGl_Context.hxx".}
proc maxDumpSizeY*(this: OpenGlContext): cint {.noSideEffect, cdecl,
    importcpp: "MaxDumpSizeY", header: "OpenGl_Context.hxx".}
proc maxDrawBuffers*(this: OpenGlContext): cint {.noSideEffect, cdecl,
    importcpp: "MaxDrawBuffers", header: "OpenGl_Context.hxx".}
proc maxColorAttachments*(this: OpenGlContext): cint {.noSideEffect, cdecl,
    importcpp: "MaxColorAttachments", header: "OpenGl_Context.hxx".}
proc maxClipPlanes*(this: OpenGlContext): cint {.noSideEffect, cdecl,
    importcpp: "MaxClipPlanes", header: "OpenGl_Context.hxx".}
proc hasRayTracing*(this: OpenGlContext): bool {.noSideEffect, cdecl,
    importcpp: "HasRayTracing", header: "OpenGl_Context.hxx".}
proc hasRayTracingTextures*(this: OpenGlContext): bool {.noSideEffect, cdecl,
    importcpp: "HasRayTracingTextures", header: "OpenGl_Context.hxx".}
proc hasRayTracingAdaptiveSampling*(this: OpenGlContext): bool {.noSideEffect, cdecl,
    importcpp: "HasRayTracingAdaptiveSampling", header: "OpenGl_Context.hxx".}
proc hasRayTracingAdaptiveSamplingAtomic*(this: OpenGlContext): bool {.noSideEffect,
    cdecl, importcpp: "HasRayTracingAdaptiveSamplingAtomic", header: "OpenGl_Context.hxx".}
proc hasSRGB*(this: OpenGlContext): bool {.noSideEffect, cdecl, importcpp: "HasSRGB",
                                       header: "OpenGl_Context.hxx".}
proc toRenderSRGB*(this: OpenGlContext): bool {.noSideEffect, cdecl,
    importcpp: "ToRenderSRGB", header: "OpenGl_Context.hxx".}
proc isWindowSRGB*(this: OpenGlContext): bool {.noSideEffect, cdecl,
    importcpp: "IsWindowSRGB", header: "OpenGl_Context.hxx".}
proc setWindowSRGB*(this: var OpenGlContext; theIsSRgb: bool) {.cdecl,
    importcpp: "SetWindowSRGB", header: "OpenGl_Context.hxx".}
proc vec4FromQuantityColor*(this: OpenGlContext; theColor: OpenGlVec4): OpenGlVec4 {.
    noSideEffect, cdecl, importcpp: "Vec4FromQuantityColor", header: "OpenGl_Context.hxx".}
proc vec4LinearFromQuantityColor*(this: OpenGlContext; theColor: OpenGlVec4): OpenGlVec4 {.
    noSideEffect, cdecl, importcpp: "Vec4LinearFromQuantityColor", header: "OpenGl_Context.hxx".}
proc vec4sRGBFromQuantityColor*(this: OpenGlContext; theColor: OpenGlVec4): OpenGlVec4 {.
    noSideEffect, cdecl, importcpp: "Vec4sRGBFromQuantityColor", header: "OpenGl_Context.hxx".}
proc hasPBR*(this: OpenGlContext): bool {.noSideEffect, cdecl, importcpp: "HasPBR",
                                      header: "OpenGl_Context.hxx".}
proc pBREnvLUTTexUnit*(this: OpenGlContext): Graphic3dTextureUnit {.noSideEffect,
    cdecl, importcpp: "PBREnvLUTTexUnit", header: "OpenGl_Context.hxx".}
proc pBRDiffIBLMapSHTexUnit*(this: OpenGlContext): Graphic3dTextureUnit {.
    noSideEffect, cdecl, importcpp: "PBRDiffIBLMapSHTexUnit", header: "OpenGl_Context.hxx".}
proc pBRSpecIBLMapTexUnit*(this: OpenGlContext): Graphic3dTextureUnit {.
    noSideEffect, cdecl, importcpp: "PBRSpecIBLMapTexUnit", header: "OpenGl_Context.hxx".}
proc toUseVbo*(this: OpenGlContext): bool {.noSideEffect, cdecl,
                                        importcpp: "ToUseVbo", header: "OpenGl_Context.hxx".}
proc isGlNormalizeEnabled*(this: OpenGlContext): bool {.noSideEffect, cdecl,
    importcpp: "IsGlNormalizeEnabled", header: "OpenGl_Context.hxx".}
proc setGlNormalizeEnabled*(this: var OpenGlContext; isEnabled: bool): bool {.cdecl,
    importcpp: "SetGlNormalizeEnabled", header: "OpenGl_Context.hxx".}
proc polygonMode*(this: OpenGlContext): cint {.noSideEffect, cdecl,
    importcpp: "PolygonMode", header: "OpenGl_Context.hxx".}
proc setPolygonMode*(this: var OpenGlContext; theMode: cint): cint {.cdecl,
    importcpp: "SetPolygonMode", header: "OpenGl_Context.hxx".}
proc isPolygonHatchEnabled*(this: OpenGlContext): bool {.noSideEffect, cdecl,
    importcpp: "IsPolygonHatchEnabled", header: "OpenGl_Context.hxx".}
proc setPolygonHatchEnabled*(this: var OpenGlContext; theIsEnabled: bool): bool {.
    cdecl, importcpp: "SetPolygonHatchEnabled", header: "OpenGl_Context.hxx".}
proc polygonHatchStyle*(this: OpenGlContext): cint {.noSideEffect, cdecl,
    importcpp: "PolygonHatchStyle", header: "OpenGl_Context.hxx".}
proc setPolygonHatchStyle*(this: var OpenGlContext;
                          theStyle: Handle[Graphic3dHatchStyle]): cint {.cdecl,
    importcpp: "SetPolygonHatchStyle", header: "OpenGl_Context.hxx".}
proc setPolygonOffset*(this: var OpenGlContext; theOffset: Graphic3dPolygonOffset) {.
    cdecl, importcpp: "SetPolygonOffset", header: "OpenGl_Context.hxx".}
proc polygonOffset*(this: OpenGlContext): Graphic3dPolygonOffset {.noSideEffect,
    cdecl, importcpp: "PolygonOffset", header: "OpenGl_Context.hxx".}
proc camera*(this: OpenGlContext): Handle[Graphic3dCamera] {.noSideEffect, cdecl,
    importcpp: "Camera", header: "OpenGl_Context.hxx".}
proc setCamera*(this: var OpenGlContext; theCamera: Handle[Graphic3dCamera]) {.cdecl,
    importcpp: "SetCamera", header: "OpenGl_Context.hxx".}
proc applyModelWorldMatrix*(this: var OpenGlContext) {.cdecl,
    importcpp: "ApplyModelWorldMatrix", header: "OpenGl_Context.hxx".}
proc applyWorldViewMatrix*(this: var OpenGlContext) {.cdecl,
    importcpp: "ApplyWorldViewMatrix", header: "OpenGl_Context.hxx".}
proc applyModelViewMatrix*(this: var OpenGlContext) {.cdecl,
    importcpp: "ApplyModelViewMatrix", header: "OpenGl_Context.hxx".}
proc applyProjectionMatrix*(this: var OpenGlContext) {.cdecl,
    importcpp: "ApplyProjectionMatrix", header: "OpenGl_Context.hxx".}
proc messenger*(this: OpenGlContext): Handle[MessageMessenger] {.noSideEffect, cdecl,
    importcpp: "Messenger", header: "OpenGl_Context.hxx".}
proc pushMessage*(this: var OpenGlContext; theSource: cuint; theType: cuint;
                 theId: cuint; theSeverity: cuint;
                 theMessage: TCollectionExtendedString) {.cdecl,
    importcpp: "PushMessage", header: "OpenGl_Context.hxx".}
proc excludeMessage*(this: var OpenGlContext; theSource: cuint; theId: cuint): bool {.
    cdecl, importcpp: "ExcludeMessage", header: "OpenGl_Context.hxx".}
proc includeMessage*(this: var OpenGlContext; theSource: cuint; theId: cuint): bool {.
    cdecl, importcpp: "IncludeMessage", header: "OpenGl_Context.hxx".}
proc hasStereoBuffers*(this: OpenGlContext): bool {.noSideEffect, cdecl,
    importcpp: "HasStereoBuffers", header: "OpenGl_Context.hxx".}
proc frameStats*(this: OpenGlContext): Handle[OpenGlFrameStats] {.noSideEffect,
    cdecl, importcpp: "FrameStats", header: "OpenGl_Context.hxx".}
proc setFrameStats*(this: var OpenGlContext; theStats: Handle[OpenGlFrameStats]) {.
    cdecl, importcpp: "SetFrameStats", header: "OpenGl_Context.hxx".}
proc viewport*(this: OpenGlContext): ptr cint {.noSideEffect, cdecl,
    importcpp: "Viewport", header: "OpenGl_Context.hxx".}
proc resizeViewport*(this: var OpenGlContext; theRect: array[4, cint]) {.cdecl,
    importcpp: "ResizeViewport", header: "OpenGl_Context.hxx".}
proc virtualViewport*(this: OpenGlContext): ptr cint {.noSideEffect, cdecl,
    importcpp: "VirtualViewport", header: "OpenGl_Context.hxx".}
proc readBuffer*(this: var OpenGlContext): cint {.cdecl, importcpp: "ReadBuffer",
    header: "OpenGl_Context.hxx".}
proc setReadBuffer*(this: var OpenGlContext; theReadBuffer: cint) {.cdecl,
    importcpp: "SetReadBuffer", header: "OpenGl_Context.hxx".}
proc drawBuffer*(this: OpenGlContext; theIndex: cint = 0): cint {.noSideEffect, cdecl,
    importcpp: "DrawBuffer", header: "OpenGl_Context.hxx".}
proc setDrawBuffer*(this: var OpenGlContext; theDrawBuffer: cint) {.cdecl,
    importcpp: "SetDrawBuffer", header: "OpenGl_Context.hxx".}
proc setDrawBuffers*(this: var OpenGlContext; theNb: cint; theDrawBuffers: ptr cint) {.
    cdecl, importcpp: "SetDrawBuffers", header: "OpenGl_Context.hxx".}
proc setReadDrawBuffer*(this: var OpenGlContext; theBuffer: cint) {.cdecl,
    importcpp: "SetReadDrawBuffer", header: "OpenGl_Context.hxx".}
proc isFrameBufferSRGB*(this: OpenGlContext): bool {.noSideEffect, cdecl,
    importcpp: "IsFrameBufferSRGB", header: "OpenGl_Context.hxx".}
proc setFrameBufferSRGB*(this: var OpenGlContext; theIsFbo: bool;
                        theIsFboSRgb: bool = true) {.cdecl,
    importcpp: "SetFrameBufferSRGB", header: "OpenGl_Context.hxx".}
proc colorMask*(this: OpenGlContext): bool {.noSideEffect, cdecl,
    importcpp: "ColorMask", header: "OpenGl_Context.hxx".}
proc setColorMask*(this: var OpenGlContext; theToWriteColor: bool): bool {.cdecl,
    importcpp: "SetColorMask", header: "OpenGl_Context.hxx".}
proc allowSampleAlphaToCoverage*(this: OpenGlContext): bool {.noSideEffect, cdecl,
    importcpp: "AllowSampleAlphaToCoverage", header: "OpenGl_Context.hxx".}
proc setAllowSampleAlphaToCoverage*(this: var OpenGlContext; theToEnable: bool) {.
    cdecl, importcpp: "SetAllowSampleAlphaToCoverage", header: "OpenGl_Context.hxx".}
proc sampleAlphaToCoverage*(this: OpenGlContext): bool {.noSideEffect, cdecl,
    importcpp: "SampleAlphaToCoverage", header: "OpenGl_Context.hxx".}
proc setSampleAlphaToCoverage*(this: var OpenGlContext; theToEnable: bool): bool {.
    cdecl, importcpp: "SetSampleAlphaToCoverage", header: "OpenGl_Context.hxx".}
proc toCullBackFaces*(this: OpenGlContext): bool {.noSideEffect, cdecl,
    importcpp: "ToCullBackFaces", header: "OpenGl_Context.hxx".}
proc setCullBackFaces*(this: var OpenGlContext; theToEnable: bool) {.cdecl,
    importcpp: "SetCullBackFaces", header: "OpenGl_Context.hxx".}
proc fetchState*(this: var OpenGlContext) {.cdecl, importcpp: "FetchState",
                                        header: "OpenGl_Context.hxx".}
proc activeTextures*(this: OpenGlContext): Handle[OpenGlTextureSet] {.noSideEffect,
    cdecl, importcpp: "ActiveTextures", header: "OpenGl_Context.hxx".}
proc bindTextures*(this: var OpenGlContext; theTextures: Handle[OpenGlTextureSet]): Handle[
    OpenGlTextureSet] {.cdecl, importcpp: "BindTextures", header: "OpenGl_Context.hxx".}
proc bindTextures*(this: var OpenGlContext; theTextures: Handle[OpenGlTextureSet];
                  theProgram: Handle[OpenGlShaderProgram]): Handle[
    OpenGlTextureSet] {.cdecl, importcpp: "BindTextures", header: "OpenGl_Context.hxx".}
proc activeProgram*(this: OpenGlContext): Handle[OpenGlShaderProgram] {.
    noSideEffect, cdecl, importcpp: "ActiveProgram", header: "OpenGl_Context.hxx".}
proc bindProgram*(this: var OpenGlContext; theProgram: Handle[OpenGlShaderProgram]): bool {.
    cdecl, importcpp: "BindProgram", header: "OpenGl_Context.hxx".}
proc setShadingMaterial*(this: var OpenGlContext; theAspect: ptr OpenGlAspects;
                        theHighlight: Handle[Graphic3dPresentationAttributes]) {.
    cdecl, importcpp: "SetShadingMaterial", header: "OpenGl_Context.hxx".}
proc checkIsTransparent*(theAspect: ptr OpenGlAspects;
                        theHighlight: Handle[Graphic3dPresentationAttributes];
                        theAlphaFront: var StandardShortReal;
                        theAlphaBack: var StandardShortReal): bool {.cdecl,
    importcpp: "OpenGl_Context::CheckIsTransparent(@)", header: "OpenGl_Context.hxx".}
proc checkIsTransparent*(theAspect: ptr OpenGlAspects;
                        theHighlight: Handle[Graphic3dPresentationAttributes]): bool {.
    cdecl, importcpp: "OpenGl_Context::CheckIsTransparent(@)", header: "OpenGl_Context.hxx".}
proc setColor4fv*(this: var OpenGlContext; theColor: OpenGlVec4) {.cdecl,
    importcpp: "SetColor4fv", header: "OpenGl_Context.hxx".}
proc setTypeOfLine*(this: var OpenGlContext; theType: AspectTypeOfLine;
                   theFactor: StandardShortReal = 1.0f) {.cdecl,
    importcpp: "SetTypeOfLine", header: "OpenGl_Context.hxx".}
proc setLineStipple*(this: var OpenGlContext; thePattern: uint16) {.cdecl,
    importcpp: "SetLineStipple", header: "OpenGl_Context.hxx".}
proc setLineStipple*(this: var OpenGlContext; theFactor: StandardShortReal;
                    thePattern: uint16) {.cdecl, importcpp: "SetLineStipple",
    header: "OpenGl_Context.hxx".}
proc setLineWidth*(this: var OpenGlContext; theWidth: StandardShortReal) {.cdecl,
    importcpp: "SetLineWidth", header: "OpenGl_Context.hxx".}
proc setPointSize*(this: var OpenGlContext; theSize: StandardShortReal) {.cdecl,
    importcpp: "SetPointSize", header: "OpenGl_Context.hxx".}
proc setPointSpriteOrigin*(this: var OpenGlContext) {.cdecl,
    importcpp: "SetPointSpriteOrigin", header: "OpenGl_Context.hxx".}
proc setTextureMatrix*(this: var OpenGlContext;
                      theParams: Handle[Graphic3dTextureParams];
                      theIsTopDown: bool) {.cdecl, importcpp: "SetTextureMatrix",
    header: "OpenGl_Context.hxx".}
proc bindDefaultVao*(this: var OpenGlContext) {.cdecl, importcpp: "BindDefaultVao",
    header: "OpenGl_Context.hxx".}
proc defaultFrameBuffer*(this: OpenGlContext): Handle[OpenGlFrameBuffer] {.
    noSideEffect, cdecl, importcpp: "DefaultFrameBuffer", header: "OpenGl_Context.hxx".}
proc setDefaultFrameBuffer*(this: var OpenGlContext;
                           theFbo: Handle[OpenGlFrameBuffer]): Handle[
    OpenGlFrameBuffer] {.cdecl, importcpp: "SetDefaultFrameBuffer", header: "OpenGl_Context.hxx".}
proc isDebugContext*(this: OpenGlContext): bool {.noSideEffect, cdecl,
    importcpp: "IsDebugContext", header: "OpenGl_Context.hxx".}
proc enableFeatures*(this: OpenGlContext) {.noSideEffect, cdecl,
    importcpp: "EnableFeatures", header: "OpenGl_Context.hxx".}
proc disableFeatures*(this: OpenGlContext) {.noSideEffect, cdecl,
    importcpp: "DisableFeatures", header: "OpenGl_Context.hxx".}
proc resolution*(this: OpenGlContext): cuint {.noSideEffect, cdecl,
    importcpp: "Resolution", header: "OpenGl_Context.hxx".}
proc resolutionRatio*(this: OpenGlContext): StandardShortReal {.noSideEffect, cdecl,
    importcpp: "ResolutionRatio", header: "OpenGl_Context.hxx".}
proc renderScale*(this: OpenGlContext): StandardShortReal {.noSideEffect, cdecl,
    importcpp: "RenderScale", header: "OpenGl_Context.hxx".}
proc hasRenderScale*(this: OpenGlContext): bool {.noSideEffect, cdecl,
    importcpp: "HasRenderScale", header: "OpenGl_Context.hxx".}
proc renderScaleInv*(this: OpenGlContext): StandardShortReal {.noSideEffect, cdecl,
    importcpp: "RenderScaleInv", header: "OpenGl_Context.hxx".}
proc lineWidthScale*(this: OpenGlContext): StandardShortReal {.noSideEffect, cdecl,
    importcpp: "LineWidthScale", header: "OpenGl_Context.hxx".}
proc setResolution*(this: var OpenGlContext; theResolution: cuint;
                   theRatio: StandardShortReal; theScale: StandardShortReal) {.
    cdecl, importcpp: "SetResolution", header: "OpenGl_Context.hxx".}
proc setResolutionRatio*(this: var OpenGlContext; theRatio: StandardShortReal) {.
    cdecl, importcpp: "SetResolutionRatio", header: "OpenGl_Context.hxx".}
proc lineFeather*(this: OpenGlContext): StandardShortReal {.noSideEffect, cdecl,
    importcpp: "LineFeather", header: "OpenGl_Context.hxx".}
proc setLineFeather*(this: var OpenGlContext; theValue: StandardShortReal) {.cdecl,
    importcpp: "SetLineFeather", header: "OpenGl_Context.hxx".}
proc getBufferSubData*(this: var OpenGlContext; theTarget: GLenum;
                      theOffset: GLintptr; theSize: GLsizeiptr; theData: pointer): bool {.
    cdecl, importcpp: "GetBufferSubData", header: "OpenGl_Context.hxx".}
proc vendor*(this: OpenGlContext): TCollectionAsciiString {.noSideEffect, cdecl,
    importcpp: "Vendor", header: "OpenGl_Context.hxx".}
proc dumpJson*(this: OpenGlContext; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "OpenGl_Context.hxx".}
proc dumpJsonOpenGlState*(theOStream: var StandardOStream; theDepth: cint = -1) {.cdecl,
    importcpp: "OpenGl_Context::DumpJsonOpenGlState(@)", header: "OpenGl_Context.hxx".}
proc setShadeModel*(this: var OpenGlContext; theModel: Graphic3dTypeOfShadingModel) {.
    cdecl, importcpp: "SetShadeModel", header: "OpenGl_Context.hxx".}

