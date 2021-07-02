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
discard "forward decl of Graphic3d_CView"
type
  HandleGraphic3dCView* = Handle[Graphic3dCView]

## ! Base class of a graphical view that carries out rendering process for a concrete
## ! implementation of graphical driver. Provides virtual interfaces for redrawing its
## ! contents, management of displayed structures and render settings. The source code
## ! of the class itself implements functionality related to management of
## ! computed (HLR or "view-dependent") structures.

type
  Graphic3dCView* {.importcpp: "Graphic3d_CView", header: "Graphic3d_CView.hxx",
                   bycopy.} = object of Graphic3dDataStructureManager ## ! Constructor.
                                                                 ## ! Returns default Shading Model of the view;
                                                                 ## Graphic3d_TOSM_FRAGMENT by default.
                                                                 ## ! Is it possible to display the structure in the view?
                                                                 ## ! Redraw content of the view.
                                                                 ## ! Copy visualization settings from another view.
                                                                 ## ! Method is used for cloning views in viewer when its required to create view
                                                                 ## ! with same view properties.
                                                                 ## ! Return unit scale factor defined as scale factor for m (meters); 1.0 by default.
                                                                 ## ! Normally, view definition is unitless, however some operations like VR input requires proper units mapping.
                                                                 ## ! @name obsolete Graduated Trihedron functionality
                                                                 ## ! Returns data of a graduated trihedron
                                                                 ## ! Adds the structure to display lists of the view.
    ## !< camera projection parameters to restore after closing XR session (FOV, aspect and similar)
    ## !< neutral camera orientation defining coordinate system in which head tracking is defined
    ## !< transient XR camera orientation with tracked head orientation applied (based on myBaseXRCamera)
    ## !< neutral camera orientation copy at the beginning of processing input
    ## !< unit scale factor defined as scale factor for m (meters)

  Graphic3dCViewbaseType* = Graphic3dDataStructureManager

proc getTypeName*(): cstring {.importcpp: "Graphic3d_CView::get_type_name(@)",
                            header: "Graphic3d_CView.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Graphic3d_CView::get_type_descriptor(@)",
    header: "Graphic3d_CView.hxx".}
proc dynamicType*(this: Graphic3dCView): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Graphic3d_CView.hxx".}
proc constructGraphic3dCView*(theMgr: Handle[Graphic3dStructureManager]): Graphic3dCView {.
    constructor, importcpp: "Graphic3d_CView(@)", header: "Graphic3d_CView.hxx".}
proc destroyGraphic3dCView*(this: var Graphic3dCView) {.
    importcpp: "#.~Graphic3d_CView()", header: "Graphic3d_CView.hxx".}
proc identification*(this: Graphic3dCView): StandardInteger {.noSideEffect,
    importcpp: "Identification", header: "Graphic3d_CView.hxx".}
proc activate*(this: var Graphic3dCView) {.importcpp: "Activate",
                                       header: "Graphic3d_CView.hxx".}
proc deactivate*(this: var Graphic3dCView) {.importcpp: "Deactivate",
    header: "Graphic3d_CView.hxx".}
proc isActive*(this: Graphic3dCView): StandardBoolean {.noSideEffect,
    importcpp: "IsActive", header: "Graphic3d_CView.hxx".}
proc remove*(this: var Graphic3dCView) {.importcpp: "Remove",
                                     header: "Graphic3d_CView.hxx".}
proc isRemoved*(this: Graphic3dCView): StandardBoolean {.noSideEffect,
    importcpp: "IsRemoved", header: "Graphic3d_CView.hxx".}
proc camera*(this: Graphic3dCView): Handle[Graphic3dCamera] {.noSideEffect,
    importcpp: "Camera", header: "Graphic3d_CView.hxx".}
proc setCamera*(this: var Graphic3dCView; theCamera: Handle[Graphic3dCamera]) {.
    importcpp: "SetCamera", header: "Graphic3d_CView.hxx".}
proc shadingModel*(this: Graphic3dCView): Graphic3dTypeOfShadingModel {.
    noSideEffect, importcpp: "ShadingModel", header: "Graphic3d_CView.hxx".}
proc setShadingModel*(this: var Graphic3dCView;
                     theModel: Graphic3dTypeOfShadingModel) {.
    importcpp: "SetShadingModel", header: "Graphic3d_CView.hxx".}
proc visualizationType*(this: Graphic3dCView): Graphic3dTypeOfVisualization {.
    noSideEffect, importcpp: "VisualizationType", header: "Graphic3d_CView.hxx".}
proc setVisualizationType*(this: var Graphic3dCView;
                          theType: Graphic3dTypeOfVisualization) {.
    importcpp: "SetVisualizationType", header: "Graphic3d_CView.hxx".}
proc setComputedMode*(this: var Graphic3dCView; theMode: StandardBoolean) {.
    importcpp: "SetComputedMode", header: "Graphic3d_CView.hxx".}
proc computedMode*(this: Graphic3dCView): StandardBoolean {.noSideEffect,
    importcpp: "ComputedMode", header: "Graphic3d_CView.hxx".}
proc reCompute*(this: var Graphic3dCView; theStructure: Handle[Graphic3dStructure]) {.
    importcpp: "ReCompute", header: "Graphic3d_CView.hxx".}
proc update*(this: var Graphic3dCView;
            theLayerId: Graphic3dZLayerId = graphic3dZLayerIdUNKNOWN) {.
    importcpp: "Update", header: "Graphic3d_CView.hxx".}
proc compute*(this: var Graphic3dCView) {.importcpp: "Compute",
                                      header: "Graphic3d_CView.hxx".}
proc containsFacet*(this: Graphic3dCView): StandardBoolean {.noSideEffect,
    importcpp: "ContainsFacet", header: "Graphic3d_CView.hxx".}
proc containsFacet*(this: Graphic3dCView; theSet: Graphic3dMapOfStructure): StandardBoolean {.
    noSideEffect, importcpp: "ContainsFacet", header: "Graphic3d_CView.hxx".}
proc displayedStructures*(this: Graphic3dCView;
                         theStructures: var Graphic3dMapOfStructure) {.
    noSideEffect, importcpp: "DisplayedStructures", header: "Graphic3d_CView.hxx".}
proc numberOfDisplayedStructures*(this: Graphic3dCView): StandardInteger {.
    noSideEffect, importcpp: "NumberOfDisplayedStructures",
    header: "Graphic3d_CView.hxx".}
proc hiddenObjects*(this: Graphic3dCView): Handle[Graphic3dNMapOfTransient] {.
    noSideEffect, importcpp: "HiddenObjects", header: "Graphic3d_CView.hxx".}
proc changeHiddenObjects*(this: var Graphic3dCView): var Handle[
    Graphic3dNMapOfTransient] {.importcpp: "ChangeHiddenObjects",
                               header: "Graphic3d_CView.hxx".}
proc isComputed*(this: Graphic3dCView; theStructId: StandardInteger;
                theComputedStruct: var Handle[Graphic3dStructure]): StandardBoolean {.
    noSideEffect, importcpp: "IsComputed", header: "Graphic3d_CView.hxx".}
proc minMaxValues*(this: Graphic3dCView;
                  theToIncludeAuxiliary: StandardBoolean = standardFalse): BndBox {.
    noSideEffect, importcpp: "MinMaxValues", header: "Graphic3d_CView.hxx".}
proc minMaxValues*(this: Graphic3dCView; theSet: Graphic3dMapOfStructure;
                  theToIncludeAuxiliary: StandardBoolean = standardFalse): BndBox {.
    noSideEffect, importcpp: "MinMaxValues", header: "Graphic3d_CView.hxx".}
proc structureManager*(this: Graphic3dCView): Handle[Graphic3dStructureManager] {.
    noSideEffect, importcpp: "StructureManager", header: "Graphic3d_CView.hxx".}
proc redraw*(this: var Graphic3dCView) {.importcpp: "Redraw",
                                     header: "Graphic3d_CView.hxx".}
proc redrawImmediate*(this: var Graphic3dCView) {.importcpp: "RedrawImmediate",
    header: "Graphic3d_CView.hxx".}
proc invalidate*(this: var Graphic3dCView) {.importcpp: "Invalidate",
    header: "Graphic3d_CView.hxx".}
proc isInvalidated*(this: var Graphic3dCView): StandardBoolean {.
    importcpp: "IsInvalidated", header: "Graphic3d_CView.hxx".}
proc resized*(this: var Graphic3dCView) {.importcpp: "Resized",
                                      header: "Graphic3d_CView.hxx".}
proc setImmediateModeDrawToFront*(this: var Graphic3dCView;
                                 theDrawToFrontBuffer: StandardBoolean): StandardBoolean {.
    importcpp: "SetImmediateModeDrawToFront", header: "Graphic3d_CView.hxx".}
proc setWindow*(this: var Graphic3dCView; theWindow: Handle[AspectWindow];
               theContext: AspectRenderingContext = nil) {.importcpp: "SetWindow",
    header: "Graphic3d_CView.hxx".}
proc window*(this: Graphic3dCView): Handle[AspectWindow] {.noSideEffect,
    importcpp: "Window", header: "Graphic3d_CView.hxx".}
proc isDefined*(this: Graphic3dCView): StandardBoolean {.noSideEffect,
    importcpp: "IsDefined", header: "Graphic3d_CView.hxx".}
proc bufferDump*(this: var Graphic3dCView; theImage: var ImagePixMap;
                theBufferType: Graphic3dBufferType): StandardBoolean {.
    importcpp: "BufferDump", header: "Graphic3d_CView.hxx".}
proc invalidateBVHData*(this: var Graphic3dCView; theLayerId: Graphic3dZLayerId) {.
    importcpp: "InvalidateBVHData", header: "Graphic3d_CView.hxx".}
proc insertLayerBefore*(this: var Graphic3dCView; theNewLayerId: Graphic3dZLayerId;
                       theSettings: Graphic3dZLayerSettings;
                       theLayerAfter: Graphic3dZLayerId) {.
    importcpp: "InsertLayerBefore", header: "Graphic3d_CView.hxx".}
proc insertLayerAfter*(this: var Graphic3dCView; theNewLayerId: Graphic3dZLayerId;
                      theSettings: Graphic3dZLayerSettings;
                      theLayerBefore: Graphic3dZLayerId) {.
    importcpp: "InsertLayerAfter", header: "Graphic3d_CView.hxx".}
proc zLayerMax*(this: Graphic3dCView): StandardInteger {.noSideEffect,
    importcpp: "ZLayerMax", header: "Graphic3d_CView.hxx".}
proc layers*(this: Graphic3dCView): NCollectionList[Handle[Graphic3dLayer]] {.
    noSideEffect, importcpp: "Layers", header: "Graphic3d_CView.hxx".}
proc layer*(this: Graphic3dCView; theLayerId: Graphic3dZLayerId): Handle[
    Graphic3dLayer] {.noSideEffect, importcpp: "Layer",
                     header: "Graphic3d_CView.hxx".}
proc invalidateZLayerBoundingBox*(this: var Graphic3dCView;
                                 theLayerId: Graphic3dZLayerId) {.
    importcpp: "InvalidateZLayerBoundingBox", header: "Graphic3d_CView.hxx".}
proc removeZLayer*(this: var Graphic3dCView; theLayerId: Graphic3dZLayerId) {.
    importcpp: "RemoveZLayer", header: "Graphic3d_CView.hxx".}
proc setZLayerSettings*(this: var Graphic3dCView; theLayerId: Graphic3dZLayerId;
                       theSettings: Graphic3dZLayerSettings) {.
    importcpp: "SetZLayerSettings", header: "Graphic3d_CView.hxx".}
proc considerZoomPersistenceObjects*(this: var Graphic3dCView): StandardReal {.
    importcpp: "ConsiderZoomPersistenceObjects", header: "Graphic3d_CView.hxx".}
proc fbo*(this: Graphic3dCView): Handle[StandardTransient] {.noSideEffect,
    importcpp: "FBO", header: "Graphic3d_CView.hxx".}
proc setFBO*(this: var Graphic3dCView; theFbo: Handle[StandardTransient]) {.
    importcpp: "SetFBO", header: "Graphic3d_CView.hxx".}
proc fBOCreate*(this: var Graphic3dCView; theWidth: StandardInteger;
               theHeight: StandardInteger): Handle[StandardTransient] {.
    importcpp: "FBOCreate", header: "Graphic3d_CView.hxx".}
proc fBORelease*(this: var Graphic3dCView; theFbo: var Handle[StandardTransient]) {.
    importcpp: "FBORelease", header: "Graphic3d_CView.hxx".}
proc fBOGetDimensions*(this: var Graphic3dCView; theFbo: Handle[StandardTransient];
                      theWidth: var StandardInteger;
                      theHeight: var StandardInteger;
                      theWidthMax: var StandardInteger;
                      theHeightMax: var StandardInteger) {.
    importcpp: "FBOGetDimensions", header: "Graphic3d_CView.hxx".}
proc fBOChangeViewport*(this: var Graphic3dCView; theFbo: Handle[StandardTransient];
                       theWidth: StandardInteger; theHeight: StandardInteger) {.
    importcpp: "FBOChangeViewport", header: "Graphic3d_CView.hxx".}
proc copySettings*(this: var Graphic3dCView; theOther: Handle[Graphic3dCView]) {.
    importcpp: "CopySettings", header: "Graphic3d_CView.hxx".}
proc renderingParams*(this: Graphic3dCView): Graphic3dRenderingParams {.
    noSideEffect, importcpp: "RenderingParams", header: "Graphic3d_CView.hxx".}
proc changeRenderingParams*(this: var Graphic3dCView): var Graphic3dRenderingParams {.
    importcpp: "ChangeRenderingParams", header: "Graphic3d_CView.hxx".}
proc background*(this: Graphic3dCView): AspectBackground {.noSideEffect,
    importcpp: "Background", header: "Graphic3d_CView.hxx".}
proc setBackground*(this: var Graphic3dCView; theBackground: AspectBackground) {.
    importcpp: "SetBackground", header: "Graphic3d_CView.hxx".}
proc gradientBackground*(this: Graphic3dCView): AspectGradientBackground {.
    noSideEffect, importcpp: "GradientBackground", header: "Graphic3d_CView.hxx".}
proc setGradientBackground*(this: var Graphic3dCView;
                           theBackground: AspectGradientBackground) {.
    importcpp: "SetGradientBackground", header: "Graphic3d_CView.hxx".}
proc backgroundImage*(this: var Graphic3dCView): Handle[Graphic3dTextureMap] {.
    importcpp: "BackgroundImage", header: "Graphic3d_CView.hxx".}
proc setBackgroundImage*(this: var Graphic3dCView;
                        theTextureMap: Handle[Graphic3dTextureMap];
                        theToUpdatePBREnv: StandardBoolean = standardTrue) {.
    importcpp: "SetBackgroundImage", header: "Graphic3d_CView.hxx".}
proc backgroundImageStyle*(this: Graphic3dCView): AspectFillMethod {.noSideEffect,
    importcpp: "BackgroundImageStyle", header: "Graphic3d_CView.hxx".}
proc setBackgroundImageStyle*(this: var Graphic3dCView;
                             theFillStyle: AspectFillMethod) {.
    importcpp: "SetBackgroundImageStyle", header: "Graphic3d_CView.hxx".}
proc backgroundCubeMap*(this: Graphic3dCView): Handle[Graphic3dCubeMap] {.
    noSideEffect, importcpp: "BackgroundCubeMap", header: "Graphic3d_CView.hxx".}
proc generatePBREnvironment*(this: var Graphic3dCView) {.
    importcpp: "GeneratePBREnvironment", header: "Graphic3d_CView.hxx".}
proc clearPBREnvironment*(this: var Graphic3dCView) {.
    importcpp: "ClearPBREnvironment", header: "Graphic3d_CView.hxx".}
proc textureEnv*(this: Graphic3dCView): Handle[Graphic3dTextureEnv] {.noSideEffect,
    importcpp: "TextureEnv", header: "Graphic3d_CView.hxx".}
proc setTextureEnv*(this: var Graphic3dCView;
                   theTextureEnv: Handle[Graphic3dTextureEnv]) {.
    importcpp: "SetTextureEnv", header: "Graphic3d_CView.hxx".}
proc backfacingModel*(this: Graphic3dCView): Graphic3dTypeOfBackfacingModel {.
    noSideEffect, importcpp: "BackfacingModel", header: "Graphic3d_CView.hxx".}
proc setBackfacingModel*(this: var Graphic3dCView;
                        theModel: Graphic3dTypeOfBackfacingModel) {.
    importcpp: "SetBackfacingModel", header: "Graphic3d_CView.hxx".}
proc lights*(this: Graphic3dCView): Handle[Graphic3dLightSet] {.noSideEffect,
    importcpp: "Lights", header: "Graphic3d_CView.hxx".}
proc setLights*(this: var Graphic3dCView; theLights: Handle[Graphic3dLightSet]) {.
    importcpp: "SetLights", header: "Graphic3d_CView.hxx".}
proc clipPlanes*(this: Graphic3dCView): Handle[Graphic3dSequenceOfHClipPlane] {.
    noSideEffect, importcpp: "ClipPlanes", header: "Graphic3d_CView.hxx".}
proc setClipPlanes*(this: var Graphic3dCView;
                   thePlanes: Handle[Graphic3dSequenceOfHClipPlane]) {.
    importcpp: "SetClipPlanes", header: "Graphic3d_CView.hxx".}
proc diagnosticInformation*(this: Graphic3dCView;
                           theDict: var TColStdIndexedDataMapOfStringString;
                           theFlags: Graphic3dDiagnosticInfo) {.noSideEffect,
    importcpp: "DiagnosticInformation", header: "Graphic3d_CView.hxx".}
proc statisticInformation*(this: Graphic3dCView): TCollectionAsciiString {.
    noSideEffect, importcpp: "StatisticInformation", header: "Graphic3d_CView.hxx".}
proc statisticInformation*(this: Graphic3dCView;
                          theDict: var TColStdIndexedDataMapOfStringString) {.
    noSideEffect, importcpp: "StatisticInformation", header: "Graphic3d_CView.hxx".}
proc unitFactor*(this: Graphic3dCView): StandardReal {.noSideEffect,
    importcpp: "UnitFactor", header: "Graphic3d_CView.hxx".}
proc setUnitFactor*(this: var Graphic3dCView; theFactor: StandardReal) {.
    importcpp: "SetUnitFactor", header: "Graphic3d_CView.hxx".}
proc xRSession*(this: Graphic3dCView): Handle[AspectXRSession] {.noSideEffect,
    importcpp: "XRSession", header: "Graphic3d_CView.hxx".}
proc setXRSession*(this: var Graphic3dCView; theSession: Handle[AspectXRSession]) {.
    importcpp: "SetXRSession", header: "Graphic3d_CView.hxx".}
proc isActiveXR*(this: Graphic3dCView): bool {.noSideEffect, importcpp: "IsActiveXR",
    header: "Graphic3d_CView.hxx".}
proc initXR*(this: var Graphic3dCView): bool {.importcpp: "InitXR",
    header: "Graphic3d_CView.hxx".}
proc releaseXR*(this: var Graphic3dCView) {.importcpp: "ReleaseXR",
                                        header: "Graphic3d_CView.hxx".}
proc processXRInput*(this: var Graphic3dCView) {.importcpp: "ProcessXRInput",
    header: "Graphic3d_CView.hxx".}
proc setupXRPosedCamera*(this: var Graphic3dCView) {.
    importcpp: "SetupXRPosedCamera", header: "Graphic3d_CView.hxx".}
proc unsetXRPosedCamera*(this: var Graphic3dCView) {.
    importcpp: "UnsetXRPosedCamera", header: "Graphic3d_CView.hxx".}
proc posedXRCamera*(this: Graphic3dCView): Handle[Graphic3dCamera] {.noSideEffect,
    importcpp: "PosedXRCamera", header: "Graphic3d_CView.hxx".}
proc setPosedXRCamera*(this: var Graphic3dCView; theCamera: Handle[Graphic3dCamera]) {.
    importcpp: "SetPosedXRCamera", header: "Graphic3d_CView.hxx".}
proc baseXRCamera*(this: Graphic3dCView): Handle[Graphic3dCamera] {.noSideEffect,
    importcpp: "BaseXRCamera", header: "Graphic3d_CView.hxx".}
proc setBaseXRCamera*(this: var Graphic3dCView; theCamera: Handle[Graphic3dCamera]) {.
    importcpp: "SetBaseXRCamera", header: "Graphic3d_CView.hxx".}
proc poseXRToWorld*(this: Graphic3dCView; thePoseXR: GpTrsf): GpTrsf {.noSideEffect,
    importcpp: "PoseXRToWorld", header: "Graphic3d_CView.hxx".}
proc synchronizeXRBaseToPosedCamera*(this: var Graphic3dCView) {.
    importcpp: "SynchronizeXRBaseToPosedCamera", header: "Graphic3d_CView.hxx".}
proc synchronizeXRPosedToBaseCamera*(this: var Graphic3dCView) {.
    importcpp: "SynchronizeXRPosedToBaseCamera", header: "Graphic3d_CView.hxx".}
proc computeXRPosedCameraFromBase*(this: Graphic3dCView;
                                  theCam: var Graphic3dCamera; theXRTrsf: GpTrsf) {.
    noSideEffect, importcpp: "ComputeXRPosedCameraFromBase",
    header: "Graphic3d_CView.hxx".}
proc computeXRBaseCameraFromPosed*(this: var Graphic3dCView;
                                  theCamPosed: Graphic3dCamera;
                                  thePoseTrsf: GpTrsf) {.
    importcpp: "ComputeXRBaseCameraFromPosed", header: "Graphic3d_CView.hxx".}
proc turnViewXRCamera*(this: var Graphic3dCView; theTrsfTurn: GpTrsf) {.
    importcpp: "TurnViewXRCamera", header: "Graphic3d_CView.hxx".}
proc getGraduatedTrihedron*(this: var Graphic3dCView): Graphic3dGraduatedTrihedron {.
    importcpp: "GetGraduatedTrihedron", header: "Graphic3d_CView.hxx".}
proc graduatedTrihedronDisplay*(this: var Graphic3dCView;
                               theTrihedronData: Graphic3dGraduatedTrihedron) {.
    importcpp: "GraduatedTrihedronDisplay", header: "Graphic3d_CView.hxx".}
proc graduatedTrihedronErase*(this: var Graphic3dCView) {.
    importcpp: "GraduatedTrihedronErase", header: "Graphic3d_CView.hxx".}
proc graduatedTrihedronMinMaxValues*(this: var Graphic3dCView;
                                    theMin: Graphic3dVec3; theMax: Graphic3dVec3) {.
    importcpp: "GraduatedTrihedronMinMaxValues", header: "Graphic3d_CView.hxx".}
proc dumpJson*(this: Graphic3dCView; theOStream: var StandardOStream;
              theDepth: StandardInteger = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Graphic3d_CView.hxx".}

