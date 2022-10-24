import graphic3d_types

##  Copyright (c) 2015 OPEN CASCADE SAS
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

discard "forward decl of Aspect_XRSession"
discard "forward decl of Graphic3d_CView"
discard "forward decl of Graphic3d_GraphicDriver"
discard "forward decl of Graphic3d_Layer"
discard "forward decl of Graphic3d_StructureManager"




proc newGraphic3dCView*(theMgr: Handle[Graphic3dStructureManager]): Graphic3dCView {.
    cdecl, constructor, importcpp: "Graphic3d_CView(@)", header: "Graphic3d_CView.hxx".}
proc destroyGraphic3dCView*(this: var Graphic3dCView) {.cdecl,
    importcpp: "#.~Graphic3d_CView()", header: "Graphic3d_CView.hxx".}
proc identification*(this: Graphic3dCView): cint {.noSideEffect, cdecl,
    importcpp: "Identification", header: "Graphic3d_CView.hxx".}
proc activate*(this: var Graphic3dCView) {.cdecl, importcpp: "Activate", header: "Graphic3d_CView.hxx".}
proc deactivate*(this: var Graphic3dCView) {.cdecl, importcpp: "Deactivate",
    header: "Graphic3d_CView.hxx".}
proc isActive*(this: Graphic3dCView): bool {.noSideEffect, cdecl,
    importcpp: "IsActive", header: "Graphic3d_CView.hxx".}
proc remove*(this: var Graphic3dCView) {.cdecl, importcpp: "Remove", header: "Graphic3d_CView.hxx".}
proc isRemoved*(this: Graphic3dCView): bool {.noSideEffect, cdecl,
    importcpp: "IsRemoved", header: "Graphic3d_CView.hxx".}
proc camera*(this: Graphic3dCView): Handle[Graphic3dCamera] {.noSideEffect, cdecl,
    importcpp: "Camera", header: "Graphic3d_CView.hxx".}
proc setCamera*(this: var Graphic3dCView; theCamera: Handle[Graphic3dCamera]) {.cdecl,
    importcpp: "SetCamera", header: "Graphic3d_CView.hxx".}
proc shadingModel*(this: Graphic3dCView): Graphic3dTypeOfShadingModel {.
    noSideEffect, cdecl, importcpp: "ShadingModel", header: "Graphic3d_CView.hxx".}
proc setShadingModel*(this: var Graphic3dCView;
                     theModel: Graphic3dTypeOfShadingModel) {.cdecl,
    importcpp: "SetShadingModel", header: "Graphic3d_CView.hxx".}
proc visualizationType*(this: Graphic3dCView): Graphic3dTypeOfVisualization {.
    noSideEffect, cdecl, importcpp: "VisualizationType", header: "Graphic3d_CView.hxx".}
proc setVisualizationType*(this: var Graphic3dCView;
                          theType: Graphic3dTypeOfVisualization) {.cdecl,
    importcpp: "SetVisualizationType", header: "Graphic3d_CView.hxx".}
proc setComputedMode*(this: var Graphic3dCView; theMode: bool) {.cdecl,
    importcpp: "SetComputedMode", header: "Graphic3d_CView.hxx".}
proc computedMode*(this: Graphic3dCView): bool {.noSideEffect, cdecl,
    importcpp: "ComputedMode", header: "Graphic3d_CView.hxx".}
proc reCompute*(this: var Graphic3dCView; theStructure: Handle[Graphic3dStructure]) {.
    cdecl, importcpp: "ReCompute", header: "Graphic3d_CView.hxx".}
proc update*(this: var Graphic3dCView;
            theLayerId: Graphic3dZLayerId = graphic3dZLayerIdUNKNOWN) {.cdecl,
    importcpp: "Update", header: "Graphic3d_CView.hxx".}
proc compute*(this: var Graphic3dCView) {.cdecl, importcpp: "Compute", header: "Graphic3d_CView.hxx".}
proc containsFacet*(this: Graphic3dCView): bool {.noSideEffect, cdecl,
    importcpp: "ContainsFacet", header: "Graphic3d_CView.hxx".}
proc containsFacet*(this: Graphic3dCView; theSet: Graphic3dMapOfStructure): bool {.
    noSideEffect, cdecl, importcpp: "ContainsFacet", header: "Graphic3d_CView.hxx".}
proc displayedStructures*(this: Graphic3dCView;
                         theStructures: var Graphic3dMapOfStructure) {.
    noSideEffect, cdecl, importcpp: "DisplayedStructures", header: "Graphic3d_CView.hxx".}
proc numberOfDisplayedStructures*(this: Graphic3dCView): cint {.noSideEffect, cdecl,
    importcpp: "NumberOfDisplayedStructures", header: "Graphic3d_CView.hxx".}
proc hiddenObjects*(this: Graphic3dCView): Handle[Graphic3dNMapOfTransient] {.
    noSideEffect, cdecl, importcpp: "HiddenObjects", header: "Graphic3d_CView.hxx".}
proc changeHiddenObjects*(this: var Graphic3dCView): var Handle[
    Graphic3dNMapOfTransient] {.cdecl, importcpp: "ChangeHiddenObjects",
                               header: "Graphic3d_CView.hxx".}
proc isComputed*(this: Graphic3dCView; theStructId: cint;
                theComputedStruct: var Handle[Graphic3dStructure]): bool {.
    noSideEffect, cdecl, importcpp: "IsComputed", header: "Graphic3d_CView.hxx".}
proc minMaxValues*(this: Graphic3dCView; theToIncludeAuxiliary: bool = false): BndBox {.
    noSideEffect, cdecl, importcpp: "MinMaxValues", header: "Graphic3d_CView.hxx".}
proc minMaxValues*(this: Graphic3dCView; theSet: Graphic3dMapOfStructure;
                  theToIncludeAuxiliary: bool = false): BndBox {.noSideEffect, cdecl,
    importcpp: "MinMaxValues", header: "Graphic3d_CView.hxx".}
proc structureManager*(this: Graphic3dCView): Handle[Graphic3dStructureManager] {.
    noSideEffect, cdecl, importcpp: "StructureManager", header: "Graphic3d_CView.hxx".}
proc redraw*(this: var Graphic3dCView) {.cdecl, importcpp: "Redraw", header: "Graphic3d_CView.hxx".}
proc redrawImmediate*(this: var Graphic3dCView) {.cdecl,
    importcpp: "RedrawImmediate", header: "Graphic3d_CView.hxx".}
proc invalidate*(this: var Graphic3dCView) {.cdecl, importcpp: "Invalidate",
    header: "Graphic3d_CView.hxx".}
proc isInvalidated*(this: var Graphic3dCView): bool {.cdecl,
    importcpp: "IsInvalidated", header: "Graphic3d_CView.hxx".}
proc resized*(this: var Graphic3dCView) {.cdecl, importcpp: "Resized", header: "Graphic3d_CView.hxx".}
proc setImmediateModeDrawToFront*(this: var Graphic3dCView;
                                 theDrawToFrontBuffer: bool): bool {.cdecl,
    importcpp: "SetImmediateModeDrawToFront", header: "Graphic3d_CView.hxx".}
proc setWindow*(this: var Graphic3dCView; theWindow: Handle[AspectWindow];
               theContext: AspectRenderingContext = nil) {.cdecl,
    importcpp: "SetWindow", header: "Graphic3d_CView.hxx".}
proc window*(this: Graphic3dCView): Handle[AspectWindow] {.noSideEffect, cdecl,
    importcpp: "Window", header: "Graphic3d_CView.hxx".}
proc isDefined*(this: Graphic3dCView): bool {.noSideEffect, cdecl,
    importcpp: "IsDefined", header: "Graphic3d_CView.hxx".}
proc bufferDump*(this: var Graphic3dCView; theImage: var ImagePixMap;
                theBufferType: Graphic3dBufferType): bool {.cdecl,
    importcpp: "BufferDump", header: "Graphic3d_CView.hxx".}
proc invalidateBVHData*(this: var Graphic3dCView; theLayerId: Graphic3dZLayerId) {.
    cdecl, importcpp: "InvalidateBVHData", header: "Graphic3d_CView.hxx".}
proc insertLayerBefore*(this: var Graphic3dCView; theNewLayerId: Graphic3dZLayerId;
                       theSettings: Graphic3dZLayerSettings;
                       theLayerAfter: Graphic3dZLayerId) {.cdecl,
    importcpp: "InsertLayerBefore", header: "Graphic3d_CView.hxx".}
proc insertLayerAfter*(this: var Graphic3dCView; theNewLayerId: Graphic3dZLayerId;
                      theSettings: Graphic3dZLayerSettings;
                      theLayerBefore: Graphic3dZLayerId) {.cdecl,
    importcpp: "InsertLayerAfter", header: "Graphic3d_CView.hxx".}
proc zLayerMax*(this: Graphic3dCView): cint {.noSideEffect, cdecl,
    importcpp: "ZLayerMax", header: "Graphic3d_CView.hxx".}
proc layers*(this: Graphic3dCView): NCollectionList[Handle[Graphic3dLayer]] {.
    noSideEffect, cdecl, importcpp: "Layers", header: "Graphic3d_CView.hxx".}
proc layer*(this: Graphic3dCView; theLayerId: Graphic3dZLayerId): Handle[
    Graphic3dLayer] {.noSideEffect, cdecl, importcpp: "Layer", header: "Graphic3d_CView.hxx".}
proc invalidateZLayerBoundingBox*(this: var Graphic3dCView;
                                 theLayerId: Graphic3dZLayerId) {.cdecl,
    importcpp: "InvalidateZLayerBoundingBox", header: "Graphic3d_CView.hxx".}
proc removeZLayer*(this: var Graphic3dCView; theLayerId: Graphic3dZLayerId) {.cdecl,
    importcpp: "RemoveZLayer", header: "Graphic3d_CView.hxx".}
proc setZLayerSettings*(this: var Graphic3dCView; theLayerId: Graphic3dZLayerId;
                       theSettings: Graphic3dZLayerSettings) {.cdecl,
    importcpp: "SetZLayerSettings", header: "Graphic3d_CView.hxx".}
proc considerZoomPersistenceObjects*(this: var Graphic3dCView): cfloat {.cdecl,
    importcpp: "ConsiderZoomPersistenceObjects", header: "Graphic3d_CView.hxx".}
proc fbo*(this: Graphic3dCView): Handle[StandardTransient] {.noSideEffect, cdecl,
    importcpp: "FBO", header: "Graphic3d_CView.hxx".}
proc setFBO*(this: var Graphic3dCView; theFbo: Handle[StandardTransient]) {.cdecl,
    importcpp: "SetFBO", header: "Graphic3d_CView.hxx".}
proc fBOCreate*(this: var Graphic3dCView; theWidth: cint; theHeight: cint): Handle[
    StandardTransient] {.cdecl, importcpp: "FBOCreate", header: "Graphic3d_CView.hxx".}
proc fBORelease*(this: var Graphic3dCView; theFbo: var Handle[StandardTransient]) {.
    cdecl, importcpp: "FBORelease", header: "Graphic3d_CView.hxx".}
proc fBOGetDimensions*(this: var Graphic3dCView; theFbo: Handle[StandardTransient];
                      theWidth: var cint; theHeight: var cint; theWidthMax: var cint;
                      theHeightMax: var cint) {.cdecl,
    importcpp: "FBOGetDimensions", header: "Graphic3d_CView.hxx".}
proc fBOChangeViewport*(this: var Graphic3dCView; theFbo: Handle[StandardTransient];
                       theWidth: cint; theHeight: cint) {.cdecl,
    importcpp: "FBOChangeViewport", header: "Graphic3d_CView.hxx".}
proc copySettings*(this: var Graphic3dCView; theOther: Handle[Graphic3dCView]) {.
    cdecl, importcpp: "CopySettings", header: "Graphic3d_CView.hxx".}
proc renderingParams*(this: Graphic3dCView): Graphic3dRenderingParams {.
    noSideEffect, cdecl, importcpp: "RenderingParams", header: "Graphic3d_CView.hxx".}
proc changeRenderingParams*(this: var Graphic3dCView): var Graphic3dRenderingParams {.
    cdecl, importcpp: "ChangeRenderingParams", header: "Graphic3d_CView.hxx".}
proc background*(this: Graphic3dCView): AspectBackground {.noSideEffect, cdecl,
    importcpp: "Background", header: "Graphic3d_CView.hxx".}
proc setBackground*(this: var Graphic3dCView; theBackground: AspectBackground) {.
    cdecl, importcpp: "SetBackground", header: "Graphic3d_CView.hxx".}
proc gradientBackground*(this: Graphic3dCView): AspectGradientBackground {.
    noSideEffect, cdecl, importcpp: "GradientBackground", header: "Graphic3d_CView.hxx".}
proc setGradientBackground*(this: var Graphic3dCView;
                           theBackground: AspectGradientBackground) {.cdecl,
    importcpp: "SetGradientBackground", header: "Graphic3d_CView.hxx".}
proc backgroundImage*(this: var Graphic3dCView): Handle[Graphic3dTextureMap] {.cdecl,
    importcpp: "BackgroundImage", header: "Graphic3d_CView.hxx".}
proc setBackgroundImage*(this: var Graphic3dCView;
                        theTextureMap: Handle[Graphic3dTextureMap];
                        theToUpdatePBREnv: bool = true) {.cdecl,
    importcpp: "SetBackgroundImage", header: "Graphic3d_CView.hxx".}
proc backgroundImageStyle*(this: Graphic3dCView): AspectFillMethod {.noSideEffect,
    cdecl, importcpp: "BackgroundImageStyle", header: "Graphic3d_CView.hxx".}
proc setBackgroundImageStyle*(this: var Graphic3dCView;
                             theFillStyle: AspectFillMethod) {.cdecl,
    importcpp: "SetBackgroundImageStyle", header: "Graphic3d_CView.hxx".}
proc backgroundCubeMap*(this: Graphic3dCView): Handle[Graphic3dCubeMap] {.
    noSideEffect, cdecl, importcpp: "BackgroundCubeMap", header: "Graphic3d_CView.hxx".}
proc generatePBREnvironment*(this: var Graphic3dCView) {.cdecl,
    importcpp: "GeneratePBREnvironment", header: "Graphic3d_CView.hxx".}
proc clearPBREnvironment*(this: var Graphic3dCView) {.cdecl,
    importcpp: "ClearPBREnvironment", header: "Graphic3d_CView.hxx".}
proc textureEnv*(this: Graphic3dCView): Handle[Graphic3dTextureEnv] {.noSideEffect,
    cdecl, importcpp: "TextureEnv", header: "Graphic3d_CView.hxx".}
proc setTextureEnv*(this: var Graphic3dCView;
                   theTextureEnv: Handle[Graphic3dTextureEnv]) {.cdecl,
    importcpp: "SetTextureEnv", header: "Graphic3d_CView.hxx".}
proc backfacingModel*(this: Graphic3dCView): Graphic3dTypeOfBackfacingModel {.
    noSideEffect, cdecl, importcpp: "BackfacingModel", header: "Graphic3d_CView.hxx".}
proc setBackfacingModel*(this: var Graphic3dCView;
                        theModel: Graphic3dTypeOfBackfacingModel) {.cdecl,
    importcpp: "SetBackfacingModel", header: "Graphic3d_CView.hxx".}
proc lights*(this: Graphic3dCView): Handle[Graphic3dLightSet] {.noSideEffect, cdecl,
    importcpp: "Lights", header: "Graphic3d_CView.hxx".}
proc setLights*(this: var Graphic3dCView; theLights: Handle[Graphic3dLightSet]) {.
    cdecl, importcpp: "SetLights", header: "Graphic3d_CView.hxx".}
proc clipPlanes*(this: Graphic3dCView): Handle[Graphic3dSequenceOfHClipPlane] {.
    noSideEffect, cdecl, importcpp: "ClipPlanes", header: "Graphic3d_CView.hxx".}
proc setClipPlanes*(this: var Graphic3dCView;
                   thePlanes: Handle[Graphic3dSequenceOfHClipPlane]) {.cdecl,
    importcpp: "SetClipPlanes", header: "Graphic3d_CView.hxx".}
proc diagnosticInformation*(this: Graphic3dCView;
                           theDict: var TColStdIndexedDataMapOfStringString;
                           theFlags: Graphic3dDiagnosticInfo) {.noSideEffect,
    cdecl, importcpp: "DiagnosticInformation", header: "Graphic3d_CView.hxx".}
proc statisticInformation*(this: Graphic3dCView): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "StatisticInformation", header: "Graphic3d_CView.hxx".}
proc statisticInformation*(this: Graphic3dCView;
                          theDict: var TColStdIndexedDataMapOfStringString) {.
    noSideEffect, cdecl, importcpp: "StatisticInformation", header: "Graphic3d_CView.hxx".}
proc unitFactor*(this: Graphic3dCView): cfloat {.noSideEffect, cdecl,
    importcpp: "UnitFactor", header: "Graphic3d_CView.hxx".}
proc setUnitFactor*(this: var Graphic3dCView; theFactor: cfloat) {.cdecl,
    importcpp: "SetUnitFactor", header: "Graphic3d_CView.hxx".}
proc xRSession*(this: Graphic3dCView): Handle[AspectXRSession] {.noSideEffect, cdecl,
    importcpp: "XRSession", header: "Graphic3d_CView.hxx".}
proc setXRSession*(this: var Graphic3dCView; theSession: Handle[AspectXRSession]) {.
    cdecl, importcpp: "SetXRSession", header: "Graphic3d_CView.hxx".}
proc isActiveXR*(this: Graphic3dCView): bool {.noSideEffect, cdecl,
    importcpp: "IsActiveXR", header: "Graphic3d_CView.hxx".}
proc initXR*(this: var Graphic3dCView): bool {.cdecl, importcpp: "InitXR", header: "Graphic3d_CView.hxx".}
proc releaseXR*(this: var Graphic3dCView) {.cdecl, importcpp: "ReleaseXR",
                                        header: "Graphic3d_CView.hxx".}
proc processXRInput*(this: var Graphic3dCView) {.cdecl, importcpp: "ProcessXRInput",
    header: "Graphic3d_CView.hxx".}
proc setupXRPosedCamera*(this: var Graphic3dCView) {.cdecl,
    importcpp: "SetupXRPosedCamera", header: "Graphic3d_CView.hxx".}
proc unsetXRPosedCamera*(this: var Graphic3dCView) {.cdecl,
    importcpp: "UnsetXRPosedCamera", header: "Graphic3d_CView.hxx".}
proc posedXRCamera*(this: Graphic3dCView): Handle[Graphic3dCamera] {.noSideEffect,
    cdecl, importcpp: "PosedXRCamera", header: "Graphic3d_CView.hxx".}
proc setPosedXRCamera*(this: var Graphic3dCView; theCamera: Handle[Graphic3dCamera]) {.
    cdecl, importcpp: "SetPosedXRCamera", header: "Graphic3d_CView.hxx".}
proc baseXRCamera*(this: Graphic3dCView): Handle[Graphic3dCamera] {.noSideEffect,
    cdecl, importcpp: "BaseXRCamera", header: "Graphic3d_CView.hxx".}
proc setBaseXRCamera*(this: var Graphic3dCView; theCamera: Handle[Graphic3dCamera]) {.
    cdecl, importcpp: "SetBaseXRCamera", header: "Graphic3d_CView.hxx".}
proc poseXRToWorld*(this: Graphic3dCView; thePoseXR: TrsfObj): TrsfObj {.noSideEffect, cdecl,
    importcpp: "PoseXRToWorld", header: "Graphic3d_CView.hxx".}
proc synchronizeXRBaseToPosedCamera*(this: var Graphic3dCView) {.cdecl,
    importcpp: "SynchronizeXRBaseToPosedCamera", header: "Graphic3d_CView.hxx".}
proc synchronizeXRPosedToBaseCamera*(this: var Graphic3dCView) {.cdecl,
    importcpp: "SynchronizeXRPosedToBaseCamera", header: "Graphic3d_CView.hxx".}
proc computeXRPosedCameraFromBase*(this: Graphic3dCView;
                                  theCam: var Graphic3dCamera; theXRTrsf: TrsfObj) {.
    noSideEffect, cdecl, importcpp: "ComputeXRPosedCameraFromBase", header: "Graphic3d_CView.hxx".}
proc computeXRBaseCameraFromPosed*(this: var Graphic3dCView;
                                  theCamPosed: Graphic3dCamera; thePoseTrsf: TrsfObj) {.
    cdecl, importcpp: "ComputeXRBaseCameraFromPosed", header: "Graphic3d_CView.hxx".}
proc turnViewXRCamera*(this: var Graphic3dCView; theTrsfTurn: TrsfObj) {.cdecl,
    importcpp: "TurnViewXRCamera", header: "Graphic3d_CView.hxx".}
proc getGraduatedTrihedron*(this: var Graphic3dCView): Graphic3dGraduatedTrihedron {.
    cdecl, importcpp: "GetGraduatedTrihedron", header: "Graphic3d_CView.hxx".}
proc graduatedTrihedronDisplay*(this: var Graphic3dCView;
                               theTrihedronData: Graphic3dGraduatedTrihedron) {.
    cdecl, importcpp: "GraduatedTrihedronDisplay", header: "Graphic3d_CView.hxx".}
proc graduatedTrihedronErase*(this: var Graphic3dCView) {.cdecl,
    importcpp: "GraduatedTrihedronErase", header: "Graphic3d_CView.hxx".}
proc graduatedTrihedronMinMaxValues*(this: var Graphic3dCView;
                                    theMin: Graphic3dVec3; theMax: Graphic3dVec3) {.
    cdecl, importcpp: "GraduatedTrihedronMinMaxValues", header: "Graphic3d_CView.hxx".}
proc dumpJson*(this: Graphic3dCView; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "Graphic3d_CView.hxx".}
