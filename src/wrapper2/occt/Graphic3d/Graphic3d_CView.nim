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

import
  ../Aspect/Aspect_Handle, ../Aspect/Aspect_RenderingContext,
  ../Aspect/Aspect_Window, Graphic3d_BufferType, Graphic3d_Camera,
  Graphic3d_CubeMap, Graphic3d_CLight, Graphic3d_CStructure,
  Graphic3d_DataStructureManager, Graphic3d_DiagnosticInfo,
  Graphic3d_GraduatedTrihedron, Graphic3d_MapOfStructure,
  Graphic3d_NMapOfTransient, Graphic3d_RenderingParams,
  Graphic3d_SequenceOfHClipPlane, Graphic3d_SequenceOfStructure,
  Graphic3d_Structure, Graphic3d_Texture2Dmanual, Graphic3d_TextureEnv,
  Graphic3d_TypeOfAnswer, Graphic3d_TypeOfBackfacingModel,
  Graphic3d_TypeOfShadingModel, Graphic3d_TypeOfVisualization, Graphic3d_Vec3,
  Graphic3d_ZLayerId, Graphic3d_ZLayerSettings, ../Image/Image_PixMap,
  ../Quantity/Quantity_NameOfColor, ../Standard/Standard_Address,
  ../Standard/Standard_Transient, ../TColStd/TColStd_IndexedDataMapOfStringString

discard "forward decl of Aspect_XRSession"
discard "forward decl of Graphic3d_CView"
discard "forward decl of Graphic3d_GraphicDriver"
discard "forward decl of Graphic3d_Layer"
discard "forward decl of Graphic3d_StructureManager"
discard "forward decl of Graphic3d_CView"
type
  Handle_Graphic3d_CView* = handle[Graphic3d_CView]

## ! Base class of a graphical view that carries out rendering process for a concrete
## ! implementation of graphical driver. Provides virtual interfaces for redrawing its
## ! contents, management of displayed structures and render settings. The source code
## ! of the class itself implements functionality related to management of
## ! computed (HLR or "view-dependent") structures.

type
  Graphic3d_CView* {.importcpp: "Graphic3d_CView", header: "Graphic3d_CView.hxx",
                    bycopy.} = object of Graphic3d_DataStructureManager ## ! Constructor.
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

  Graphic3d_CViewbase_type* = Graphic3d_DataStructureManager

proc get_type_name*(): cstring {.importcpp: "Graphic3d_CView::get_type_name(@)",
                              header: "Graphic3d_CView.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Graphic3d_CView::get_type_descriptor(@)",
    header: "Graphic3d_CView.hxx".}
proc DynamicType*(this: Graphic3d_CView): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Graphic3d_CView.hxx".}
proc constructGraphic3d_CView*(theMgr: handle[Graphic3d_StructureManager]): Graphic3d_CView {.
    constructor, importcpp: "Graphic3d_CView(@)", header: "Graphic3d_CView.hxx".}
proc destroyGraphic3d_CView*(this: var Graphic3d_CView) {.
    importcpp: "#.~Graphic3d_CView()", header: "Graphic3d_CView.hxx".}
proc Identification*(this: Graphic3d_CView): Standard_Integer {.noSideEffect,
    importcpp: "Identification", header: "Graphic3d_CView.hxx".}
proc Activate*(this: var Graphic3d_CView) {.importcpp: "Activate",
                                        header: "Graphic3d_CView.hxx".}
proc Deactivate*(this: var Graphic3d_CView) {.importcpp: "Deactivate",
    header: "Graphic3d_CView.hxx".}
proc IsActive*(this: Graphic3d_CView): Standard_Boolean {.noSideEffect,
    importcpp: "IsActive", header: "Graphic3d_CView.hxx".}
proc Remove*(this: var Graphic3d_CView) {.importcpp: "Remove",
                                      header: "Graphic3d_CView.hxx".}
proc IsRemoved*(this: Graphic3d_CView): Standard_Boolean {.noSideEffect,
    importcpp: "IsRemoved", header: "Graphic3d_CView.hxx".}
proc Camera*(this: Graphic3d_CView): handle[Graphic3d_Camera] {.noSideEffect,
    importcpp: "Camera", header: "Graphic3d_CView.hxx".}
proc SetCamera*(this: var Graphic3d_CView; theCamera: handle[Graphic3d_Camera]) {.
    importcpp: "SetCamera", header: "Graphic3d_CView.hxx".}
proc ShadingModel*(this: Graphic3d_CView): Graphic3d_TypeOfShadingModel {.
    noSideEffect, importcpp: "ShadingModel", header: "Graphic3d_CView.hxx".}
proc SetShadingModel*(this: var Graphic3d_CView;
                     theModel: Graphic3d_TypeOfShadingModel) {.
    importcpp: "SetShadingModel", header: "Graphic3d_CView.hxx".}
proc VisualizationType*(this: Graphic3d_CView): Graphic3d_TypeOfVisualization {.
    noSideEffect, importcpp: "VisualizationType", header: "Graphic3d_CView.hxx".}
proc SetVisualizationType*(this: var Graphic3d_CView;
                          theType: Graphic3d_TypeOfVisualization) {.
    importcpp: "SetVisualizationType", header: "Graphic3d_CView.hxx".}
proc SetComputedMode*(this: var Graphic3d_CView; theMode: Standard_Boolean) {.
    importcpp: "SetComputedMode", header: "Graphic3d_CView.hxx".}
proc ComputedMode*(this: Graphic3d_CView): Standard_Boolean {.noSideEffect,
    importcpp: "ComputedMode", header: "Graphic3d_CView.hxx".}
proc ReCompute*(this: var Graphic3d_CView; theStructure: handle[Graphic3d_Structure]) {.
    importcpp: "ReCompute", header: "Graphic3d_CView.hxx".}
proc Update*(this: var Graphic3d_CView;
            theLayerId: Graphic3d_ZLayerId = Graphic3d_ZLayerId_UNKNOWN) {.
    importcpp: "Update", header: "Graphic3d_CView.hxx".}
proc Compute*(this: var Graphic3d_CView) {.importcpp: "Compute",
                                       header: "Graphic3d_CView.hxx".}
proc ContainsFacet*(this: Graphic3d_CView): Standard_Boolean {.noSideEffect,
    importcpp: "ContainsFacet", header: "Graphic3d_CView.hxx".}
proc ContainsFacet*(this: Graphic3d_CView; theSet: Graphic3d_MapOfStructure): Standard_Boolean {.
    noSideEffect, importcpp: "ContainsFacet", header: "Graphic3d_CView.hxx".}
proc DisplayedStructures*(this: Graphic3d_CView;
                         theStructures: var Graphic3d_MapOfStructure) {.
    noSideEffect, importcpp: "DisplayedStructures", header: "Graphic3d_CView.hxx".}
proc NumberOfDisplayedStructures*(this: Graphic3d_CView): Standard_Integer {.
    noSideEffect, importcpp: "NumberOfDisplayedStructures",
    header: "Graphic3d_CView.hxx".}
proc HiddenObjects*(this: Graphic3d_CView): handle[Graphic3d_NMapOfTransient] {.
    noSideEffect, importcpp: "HiddenObjects", header: "Graphic3d_CView.hxx".}
proc ChangeHiddenObjects*(this: var Graphic3d_CView): var handle[
    Graphic3d_NMapOfTransient] {.importcpp: "ChangeHiddenObjects",
                                header: "Graphic3d_CView.hxx".}
proc IsComputed*(this: Graphic3d_CView; theStructId: Standard_Integer;
                theComputedStruct: var handle[Graphic3d_Structure]): Standard_Boolean {.
    noSideEffect, importcpp: "IsComputed", header: "Graphic3d_CView.hxx".}
proc MinMaxValues*(this: Graphic3d_CView;
                  theToIncludeAuxiliary: Standard_Boolean = Standard_False): Bnd_Box {.
    noSideEffect, importcpp: "MinMaxValues", header: "Graphic3d_CView.hxx".}
proc MinMaxValues*(this: Graphic3d_CView; theSet: Graphic3d_MapOfStructure;
                  theToIncludeAuxiliary: Standard_Boolean = Standard_False): Bnd_Box {.
    noSideEffect, importcpp: "MinMaxValues", header: "Graphic3d_CView.hxx".}
proc StructureManager*(this: Graphic3d_CView): handle[Graphic3d_StructureManager] {.
    noSideEffect, importcpp: "StructureManager", header: "Graphic3d_CView.hxx".}
proc Redraw*(this: var Graphic3d_CView) {.importcpp: "Redraw",
                                      header: "Graphic3d_CView.hxx".}
proc RedrawImmediate*(this: var Graphic3d_CView) {.importcpp: "RedrawImmediate",
    header: "Graphic3d_CView.hxx".}
proc Invalidate*(this: var Graphic3d_CView) {.importcpp: "Invalidate",
    header: "Graphic3d_CView.hxx".}
proc IsInvalidated*(this: var Graphic3d_CView): Standard_Boolean {.
    importcpp: "IsInvalidated", header: "Graphic3d_CView.hxx".}
proc Resized*(this: var Graphic3d_CView) {.importcpp: "Resized",
                                       header: "Graphic3d_CView.hxx".}
proc SetImmediateModeDrawToFront*(this: var Graphic3d_CView;
                                 theDrawToFrontBuffer: Standard_Boolean): Standard_Boolean {.
    importcpp: "SetImmediateModeDrawToFront", header: "Graphic3d_CView.hxx".}
proc SetWindow*(this: var Graphic3d_CView; theWindow: handle[Aspect_Window];
               theContext: Aspect_RenderingContext = nil) {.importcpp: "SetWindow",
    header: "Graphic3d_CView.hxx".}
proc Window*(this: Graphic3d_CView): handle[Aspect_Window] {.noSideEffect,
    importcpp: "Window", header: "Graphic3d_CView.hxx".}
proc IsDefined*(this: Graphic3d_CView): Standard_Boolean {.noSideEffect,
    importcpp: "IsDefined", header: "Graphic3d_CView.hxx".}
proc BufferDump*(this: var Graphic3d_CView; theImage: var Image_PixMap;
                theBufferType: Graphic3d_BufferType): Standard_Boolean {.
    importcpp: "BufferDump", header: "Graphic3d_CView.hxx".}
proc InvalidateBVHData*(this: var Graphic3d_CView; theLayerId: Graphic3d_ZLayerId) {.
    importcpp: "InvalidateBVHData", header: "Graphic3d_CView.hxx".}
proc InsertLayerBefore*(this: var Graphic3d_CView;
                       theNewLayerId: Graphic3d_ZLayerId;
                       theSettings: Graphic3d_ZLayerSettings;
                       theLayerAfter: Graphic3d_ZLayerId) {.
    importcpp: "InsertLayerBefore", header: "Graphic3d_CView.hxx".}
proc InsertLayerAfter*(this: var Graphic3d_CView; theNewLayerId: Graphic3d_ZLayerId;
                      theSettings: Graphic3d_ZLayerSettings;
                      theLayerBefore: Graphic3d_ZLayerId) {.
    importcpp: "InsertLayerAfter", header: "Graphic3d_CView.hxx".}
proc ZLayerMax*(this: Graphic3d_CView): Standard_Integer {.noSideEffect,
    importcpp: "ZLayerMax", header: "Graphic3d_CView.hxx".}
proc Layers*(this: Graphic3d_CView): NCollection_List[handle[Graphic3d_Layer]] {.
    noSideEffect, importcpp: "Layers", header: "Graphic3d_CView.hxx".}
proc Layer*(this: Graphic3d_CView; theLayerId: Graphic3d_ZLayerId): handle[
    Graphic3d_Layer] {.noSideEffect, importcpp: "Layer",
                      header: "Graphic3d_CView.hxx".}
proc InvalidateZLayerBoundingBox*(this: var Graphic3d_CView;
                                 theLayerId: Graphic3d_ZLayerId) {.
    importcpp: "InvalidateZLayerBoundingBox", header: "Graphic3d_CView.hxx".}
proc RemoveZLayer*(this: var Graphic3d_CView; theLayerId: Graphic3d_ZLayerId) {.
    importcpp: "RemoveZLayer", header: "Graphic3d_CView.hxx".}
proc SetZLayerSettings*(this: var Graphic3d_CView; theLayerId: Graphic3d_ZLayerId;
                       theSettings: Graphic3d_ZLayerSettings) {.
    importcpp: "SetZLayerSettings", header: "Graphic3d_CView.hxx".}
proc ConsiderZoomPersistenceObjects*(this: var Graphic3d_CView): Standard_Real {.
    importcpp: "ConsiderZoomPersistenceObjects", header: "Graphic3d_CView.hxx".}
proc FBO*(this: Graphic3d_CView): handle[Standard_Transient] {.noSideEffect,
    importcpp: "FBO", header: "Graphic3d_CView.hxx".}
proc SetFBO*(this: var Graphic3d_CView; theFbo: handle[Standard_Transient]) {.
    importcpp: "SetFBO", header: "Graphic3d_CView.hxx".}
proc FBOCreate*(this: var Graphic3d_CView; theWidth: Standard_Integer;
               theHeight: Standard_Integer): handle[Standard_Transient] {.
    importcpp: "FBOCreate", header: "Graphic3d_CView.hxx".}
proc FBORelease*(this: var Graphic3d_CView; theFbo: var handle[Standard_Transient]) {.
    importcpp: "FBORelease", header: "Graphic3d_CView.hxx".}
proc FBOGetDimensions*(this: var Graphic3d_CView;
                      theFbo: handle[Standard_Transient];
                      theWidth: var Standard_Integer;
                      theHeight: var Standard_Integer;
                      theWidthMax: var Standard_Integer;
                      theHeightMax: var Standard_Integer) {.
    importcpp: "FBOGetDimensions", header: "Graphic3d_CView.hxx".}
proc FBOChangeViewport*(this: var Graphic3d_CView;
                       theFbo: handle[Standard_Transient];
                       theWidth: Standard_Integer; theHeight: Standard_Integer) {.
    importcpp: "FBOChangeViewport", header: "Graphic3d_CView.hxx".}
proc CopySettings*(this: var Graphic3d_CView; theOther: handle[Graphic3d_CView]) {.
    importcpp: "CopySettings", header: "Graphic3d_CView.hxx".}
proc RenderingParams*(this: Graphic3d_CView): Graphic3d_RenderingParams {.
    noSideEffect, importcpp: "RenderingParams", header: "Graphic3d_CView.hxx".}
proc ChangeRenderingParams*(this: var Graphic3d_CView): var Graphic3d_RenderingParams {.
    importcpp: "ChangeRenderingParams", header: "Graphic3d_CView.hxx".}
proc Background*(this: Graphic3d_CView): Aspect_Background {.noSideEffect,
    importcpp: "Background", header: "Graphic3d_CView.hxx".}
proc SetBackground*(this: var Graphic3d_CView; theBackground: Aspect_Background) {.
    importcpp: "SetBackground", header: "Graphic3d_CView.hxx".}
proc GradientBackground*(this: Graphic3d_CView): Aspect_GradientBackground {.
    noSideEffect, importcpp: "GradientBackground", header: "Graphic3d_CView.hxx".}
proc SetGradientBackground*(this: var Graphic3d_CView;
                           theBackground: Aspect_GradientBackground) {.
    importcpp: "SetGradientBackground", header: "Graphic3d_CView.hxx".}
proc BackgroundImage*(this: var Graphic3d_CView): handle[Graphic3d_TextureMap] {.
    importcpp: "BackgroundImage", header: "Graphic3d_CView.hxx".}
proc SetBackgroundImage*(this: var Graphic3d_CView;
                        theTextureMap: handle[Graphic3d_TextureMap];
                        theToUpdatePBREnv: Standard_Boolean = Standard_True) {.
    importcpp: "SetBackgroundImage", header: "Graphic3d_CView.hxx".}
proc BackgroundImageStyle*(this: Graphic3d_CView): Aspect_FillMethod {.noSideEffect,
    importcpp: "BackgroundImageStyle", header: "Graphic3d_CView.hxx".}
proc SetBackgroundImageStyle*(this: var Graphic3d_CView;
                             theFillStyle: Aspect_FillMethod) {.
    importcpp: "SetBackgroundImageStyle", header: "Graphic3d_CView.hxx".}
proc BackgroundCubeMap*(this: Graphic3d_CView): handle[Graphic3d_CubeMap] {.
    noSideEffect, importcpp: "BackgroundCubeMap", header: "Graphic3d_CView.hxx".}
proc GeneratePBREnvironment*(this: var Graphic3d_CView) {.
    importcpp: "GeneratePBREnvironment", header: "Graphic3d_CView.hxx".}
proc ClearPBREnvironment*(this: var Graphic3d_CView) {.
    importcpp: "ClearPBREnvironment", header: "Graphic3d_CView.hxx".}
proc TextureEnv*(this: Graphic3d_CView): handle[Graphic3d_TextureEnv] {.
    noSideEffect, importcpp: "TextureEnv", header: "Graphic3d_CView.hxx".}
proc SetTextureEnv*(this: var Graphic3d_CView;
                   theTextureEnv: handle[Graphic3d_TextureEnv]) {.
    importcpp: "SetTextureEnv", header: "Graphic3d_CView.hxx".}
proc BackfacingModel*(this: Graphic3d_CView): Graphic3d_TypeOfBackfacingModel {.
    noSideEffect, importcpp: "BackfacingModel", header: "Graphic3d_CView.hxx".}
proc SetBackfacingModel*(this: var Graphic3d_CView;
                        theModel: Graphic3d_TypeOfBackfacingModel) {.
    importcpp: "SetBackfacingModel", header: "Graphic3d_CView.hxx".}
proc Lights*(this: Graphic3d_CView): handle[Graphic3d_LightSet] {.noSideEffect,
    importcpp: "Lights", header: "Graphic3d_CView.hxx".}
proc SetLights*(this: var Graphic3d_CView; theLights: handle[Graphic3d_LightSet]) {.
    importcpp: "SetLights", header: "Graphic3d_CView.hxx".}
proc ClipPlanes*(this: Graphic3d_CView): handle[Graphic3d_SequenceOfHClipPlane] {.
    noSideEffect, importcpp: "ClipPlanes", header: "Graphic3d_CView.hxx".}
proc SetClipPlanes*(this: var Graphic3d_CView;
                   thePlanes: handle[Graphic3d_SequenceOfHClipPlane]) {.
    importcpp: "SetClipPlanes", header: "Graphic3d_CView.hxx".}
proc DiagnosticInformation*(this: Graphic3d_CView;
                           theDict: var TColStd_IndexedDataMapOfStringString;
                           theFlags: Graphic3d_DiagnosticInfo) {.noSideEffect,
    importcpp: "DiagnosticInformation", header: "Graphic3d_CView.hxx".}
proc StatisticInformation*(this: Graphic3d_CView): TCollection_AsciiString {.
    noSideEffect, importcpp: "StatisticInformation", header: "Graphic3d_CView.hxx".}
proc StatisticInformation*(this: Graphic3d_CView;
                          theDict: var TColStd_IndexedDataMapOfStringString) {.
    noSideEffect, importcpp: "StatisticInformation", header: "Graphic3d_CView.hxx".}
proc UnitFactor*(this: Graphic3d_CView): Standard_Real {.noSideEffect,
    importcpp: "UnitFactor", header: "Graphic3d_CView.hxx".}
proc SetUnitFactor*(this: var Graphic3d_CView; theFactor: Standard_Real) {.
    importcpp: "SetUnitFactor", header: "Graphic3d_CView.hxx".}
proc XRSession*(this: Graphic3d_CView): handle[Aspect_XRSession] {.noSideEffect,
    importcpp: "XRSession", header: "Graphic3d_CView.hxx".}
proc SetXRSession*(this: var Graphic3d_CView; theSession: handle[Aspect_XRSession]) {.
    importcpp: "SetXRSession", header: "Graphic3d_CView.hxx".}
proc IsActiveXR*(this: Graphic3d_CView): bool {.noSideEffect,
    importcpp: "IsActiveXR", header: "Graphic3d_CView.hxx".}
proc InitXR*(this: var Graphic3d_CView): bool {.importcpp: "InitXR",
    header: "Graphic3d_CView.hxx".}
proc ReleaseXR*(this: var Graphic3d_CView) {.importcpp: "ReleaseXR",
    header: "Graphic3d_CView.hxx".}
proc ProcessXRInput*(this: var Graphic3d_CView) {.importcpp: "ProcessXRInput",
    header: "Graphic3d_CView.hxx".}
proc SetupXRPosedCamera*(this: var Graphic3d_CView) {.
    importcpp: "SetupXRPosedCamera", header: "Graphic3d_CView.hxx".}
proc UnsetXRPosedCamera*(this: var Graphic3d_CView) {.
    importcpp: "UnsetXRPosedCamera", header: "Graphic3d_CView.hxx".}
proc PosedXRCamera*(this: Graphic3d_CView): handle[Graphic3d_Camera] {.noSideEffect,
    importcpp: "PosedXRCamera", header: "Graphic3d_CView.hxx".}
proc SetPosedXRCamera*(this: var Graphic3d_CView;
                      theCamera: handle[Graphic3d_Camera]) {.
    importcpp: "SetPosedXRCamera", header: "Graphic3d_CView.hxx".}
proc BaseXRCamera*(this: Graphic3d_CView): handle[Graphic3d_Camera] {.noSideEffect,
    importcpp: "BaseXRCamera", header: "Graphic3d_CView.hxx".}
proc SetBaseXRCamera*(this: var Graphic3d_CView; theCamera: handle[Graphic3d_Camera]) {.
    importcpp: "SetBaseXRCamera", header: "Graphic3d_CView.hxx".}
proc PoseXRToWorld*(this: Graphic3d_CView; thePoseXR: gp_Trsf): gp_Trsf {.
    noSideEffect, importcpp: "PoseXRToWorld", header: "Graphic3d_CView.hxx".}
proc SynchronizeXRBaseToPosedCamera*(this: var Graphic3d_CView) {.
    importcpp: "SynchronizeXRBaseToPosedCamera", header: "Graphic3d_CView.hxx".}
proc SynchronizeXRPosedToBaseCamera*(this: var Graphic3d_CView) {.
    importcpp: "SynchronizeXRPosedToBaseCamera", header: "Graphic3d_CView.hxx".}
proc ComputeXRPosedCameraFromBase*(this: Graphic3d_CView;
                                  theCam: var Graphic3d_Camera; theXRTrsf: gp_Trsf) {.
    noSideEffect, importcpp: "ComputeXRPosedCameraFromBase",
    header: "Graphic3d_CView.hxx".}
proc ComputeXRBaseCameraFromPosed*(this: var Graphic3d_CView;
                                  theCamPosed: Graphic3d_Camera;
                                  thePoseTrsf: gp_Trsf) {.
    importcpp: "ComputeXRBaseCameraFromPosed", header: "Graphic3d_CView.hxx".}
proc TurnViewXRCamera*(this: var Graphic3d_CView; theTrsfTurn: gp_Trsf) {.
    importcpp: "TurnViewXRCamera", header: "Graphic3d_CView.hxx".}
proc GetGraduatedTrihedron*(this: var Graphic3d_CView): Graphic3d_GraduatedTrihedron {.
    importcpp: "GetGraduatedTrihedron", header: "Graphic3d_CView.hxx".}
proc GraduatedTrihedronDisplay*(this: var Graphic3d_CView;
                               theTrihedronData: Graphic3d_GraduatedTrihedron) {.
    importcpp: "GraduatedTrihedronDisplay", header: "Graphic3d_CView.hxx".}
proc GraduatedTrihedronErase*(this: var Graphic3d_CView) {.
    importcpp: "GraduatedTrihedronErase", header: "Graphic3d_CView.hxx".}
proc GraduatedTrihedronMinMaxValues*(this: var Graphic3d_CView;
                                    theMin: Graphic3d_Vec3; theMax: Graphic3d_Vec3) {.
    importcpp: "GraduatedTrihedronMinMaxValues", header: "Graphic3d_CView.hxx".}
proc DumpJson*(this: Graphic3d_CView; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Graphic3d_CView.hxx".}