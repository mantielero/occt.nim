# PROVIDES: Graphic3dArrayFlags Graphic3dFresnelModel Graphic3dFresnel Graphic3dBSDF Graphic3dTypeOfAttribute Graphic3dTypeOfData Graphic3dAttribute Graphic3dBufferRange Graphic3dCameraFocusType Graphic3dCameraIODType Graphic3dCameraTile Graphic3dCappingFlags Graphic3dClipState Graphic3dCTexture Graphic3dCubeMapOrder Graphic3dValidatedCubeMapOrder Graphic3dCullingTool Graphic3dCullingToolCullingContext Graphic3dCullingToolPlane Graphic3dDiagnosticInfo Graphic3dFrameStatsCounter Graphic3dFrameStatsTimer Graphic3dAxisAspect Graphic3dGraduatedTrihedron Graphic3dGraduatedTrihedronMinMaxValuesCallback Graphic3dLightSetIterator Graphic3dMaterialAspect Graphic3dNameOfMaterial Graphic3dPBRMaterial Graphic3dPolygonOffset Graphic3dRenderingParams Graphic3dRenderingParamsAnaglyph Graphic3dRenderingParamsPerfCounters Graphic3dRenderingParamsFrustumCulling Graphic3dSequenceOfHClipPlaneIterator Graphic3dValueInterface Graphic3dUniformValueTypeID Graphic3dIndexedMapOfView Graphic3dTextureSetIterator Graphic3dTextureUnit Graphic3dTransModeFlags Graphic3dTypeOfBackground Graphic3dTypeOfLightSource Graphic3dTypeOfReflection Graphic3dTypeOfShadingModel Graphic3dVertex Graphic3dWorldViewProjState Graphic3dZLayerId Graphic3dZLayerSetting Graphic3dZLayerSettings Graphic3dCameraProjection Graphic3dClipPlaneEquation Graphic3dLightSetIterationFilter Graphic3dMediaTextureSetCallbackOnUpdateT
# DEPENDS:  Handle[Graphic3dArrayOfPrimitives]  NCollectionArray1[Graphic3dAttribute]  Handle[Graphic3dCView]  Handle[Graphic3dDataStructureManager]  Handle[Graphic3dGraphicDriver]  NCollectionShared[StandardMutex] StandardTransient  NCollectionSequence[Handle[Graphic3dShaderObject]]  NCollectionSequence[  NCollectionSequence[  Graphic3dUniformValue[cint]  Graphic3dUniformValue[Graphic3dVec2i]  Graphic3dUniformValue[Graphic3dVec3i]  Graphic3dUniformValue[Graphic3dVec4i]  Graphic3dUniformValue[StandardShortReal]  Graphic3dUniformValue[Graphic3dVec2]  Graphic3dUniformValue[Graphic3dVec3]  Graphic3dUniformValue[Graphic3dVec4]  Handle[Graphic3dStructure]  Handle[Graphic3dTexture1D]  Handle[Graphic3dTexture1Dmanual]  Handle[Graphic3dTexture1Dsegment]  Handle[Graphic3dTexture2Dplane]  Handle[Graphic3dTextureEnv] StandardTransient  Handle[Graphic3dTransformPers] Graphic3dValueInterface Graphic3dArrayOfPrimitives Graphic3dArrayOfPrimitives Graphic3dArrayOfPrimitives StandardTransient Graphic3dArrayOfPrimitives Graphic3dArrayOfPrimitives Graphic3dArrayOfPrimitives Graphic3dArrayOfPrimitives Graphic3dArrayOfPrimitives Graphic3dArrayOfPrimitives Graphic3dAspects Graphic3dAspects Graphic3dAspects StandardTransient Graphic3dAspects Graphic3dBuffer NCollectionBuffer NCollectionBuffer BVH_PrimitiveSet3d BVH_Set StandardTransient StandardTransient StandardTransient StandardTransient Graphic3dTextureMap Graphic3dCubeMap Graphic3dCubeMap Graphic3dDataStructureManager StandardTransient RootObj## Graphic3dFrameStatsData StandardTransient StandardTransient StandardTransient Graphic3dBuffer StandardTransient StandardTransient StandardTransient Graphic3dTexture2D Graphic3dTextureSet Graphic3dIndexBuffer StandardTransient StandardTransient StandardTransient StandardTransient StandardTransient  handle[Graphic3dStructure]()): Graphic3dStructure {. StandardTransient StandardTransient Graphic3dTextureMap Graphic3dTexture1D Graphic3dTexture1D Graphic3dTextureMap Graphic3dTexture2D Graphic3dTexture2D Graphic3dTextureRoot Graphic3dTextureRoot StandardTransient StandardTransient StandardTransient StandardTransient

import tkmath/bvh/bvh_types
import tkv3d/graphic3d/graphic3d_types
import tkernel/ncollection/ncollection_types
import tkernel/standard/standard_types
type
  Graphic3dArrayFlags* = cint

  Graphic3dFresnelModel* {.size: sizeof(cint), importcpp: "Graphic3d_FresnelModel",
                          header: "Graphic3d_BSDF.hxx".} = enum
    Graphic3dFM_SCHLICK = 0, Graphic3dFM_CONSTANT = 1, Graphic3dFM_CONDUCTOR = 2,
    Graphic3dFM_DIELECTRIC = 3

  Graphic3dFresnel* {.importcpp: "Graphic3d_Fresnel", header: "Graphic3d_BSDF.hxx",
                     bycopy.} = object 
                                    
                                    
                                    
    

  Graphic3dBSDF* {.importcpp: "Graphic3d_BSDF", header: "Graphic3d_BSDF.hxx", bycopy.} = object 
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
    kc* {.importc: "Kc".}: Graphic3dVec4 
    kd* {.importc: "Kd".}: Graphic3dVec3 
    ks* {.importc: "Ks".}: Graphic3dVec4 
    kt* {.importc: "Kt".}: Graphic3dVec3 
    le* {.importc: "Le".}: Graphic3dVec3 
    absorption* {.importc: "Absorption".}: Graphic3dVec4 
    fresnelCoat* {.importc: "FresnelCoat".}: Graphic3dFresnel 
    fresnelBase* {.importc: "FresnelBase".}: Graphic3dFresnel

  Graphic3dTypeOfAttribute* {.size: sizeof(cint),
                             importcpp: "Graphic3d_TypeOfAttribute",
                             header: "Graphic3d_Buffer.hxx".} = enum
    Graphic3dTOA_POS = 0,       
    Graphic3dTOA_NORM,        
    Graphic3dTOA_UV,          
    Graphic3dTOA_COLOR,       
    Graphic3dTOA_CUSTOM       

  Graphic3dTypeOfData* {.size: sizeof(cint), importcpp: "Graphic3d_TypeOfData",
                        header: "Graphic3d_Buffer.hxx".} = enum
    Graphic3dTOD_USHORT,      
    Graphic3dTOD_UINT,        
    Graphic3dTOD_VEC2,        
    Graphic3dTOD_VEC3,        
    Graphic3dTOD_VEC4,        
    Graphic3dTOD_VEC4UB,      
    Graphic3dTOD_FLOAT        

  Graphic3dAttribute* {.importcpp: "Graphic3d_Attribute",
                       header: "Graphic3d_Buffer.hxx", bycopy.} = object
    id* {.importc: "Id".}: Graphic3dTypeOfAttribute 
    dataType* {.importc: "DataType".}: Graphic3dTypeOfData 

  Graphic3dBufferRange* {.importcpp: "Graphic3d_BufferRange",
                         header: "Graphic3d_BufferRange.hxx", bycopy.} = object
    start* {.importc: "Start".}: cint 
    length* {.importc: "Length".}: cint 
                                    

  Graphic3dCameraFocusType* {.size: sizeof(cint),
                             importcpp: "Graphic3d_Camera::FocusType",
                             header: "Graphic3d_Camera.hxx".} = enum
    FocusTypeAbsolute, FocusTypeRelative

  Graphic3dCameraIODType* {.size: sizeof(cint),
                           importcpp: "Graphic3d_Camera::IODType",
                           header: "Graphic3d_Camera.hxx".} = enum
    IODTypeAbsolute, IODTypeRelative

  Graphic3dCameraTile* {.importcpp: "Graphic3d_CameraTile",
                        header: "Graphic3d_CameraTile.hxx", bycopy.} = object 
                                                                         
                                                                         
                                                                         
                                                                         
                                                                         
                                                                         
                                                                         
                                                                         
                                                                         
    totalSize* {.importc: "TotalSize".}: Graphic3dVec2i 
    tileSize* {.importc: "TileSize".}: Graphic3dVec2i 
    offset* {.importc: "Offset".}: Graphic3dVec2i 
    isTopDown* {.importc: "IsTopDown".}: bool 

  Graphic3dCappingFlags* {.size: sizeof(cint), importcpp: "Graphic3d_CappingFlags",
                          header: "Graphic3d_CappingFlags.hxx".} = enum
    graphic3dCappingFlagsNone = 0x0000, 
    graphic3dCappingFlagsObjectMaterial = 0x0001, 
    graphic3dCappingFlagsObjectTexture = 0x0002, 
    graphic3dCappingFlagsObjectShader = 0x0008 

  Graphic3dClipState* {.size: sizeof(cint), importcpp: "Graphic3d_ClipState",
                       header: "Graphic3d_ClipPlane.hxx".} = enum
    Graphic3dClipStateOut,    
    Graphic3dClipStateIn,     
    Graphic3dClipStateOn      

  Graphic3dCTexture* {.importcpp: "Graphic3d_CTexture",
                      header: "Graphic3d_CTexture.hxx", bycopy.} = object
    textureMap* {.importc: "TextureMap".}: Handle[Graphic3dTextureMap] 
    doTextureMap* {.importc: "doTextureMap".}: cint 

  Graphic3dCubeMapOrder* {.importcpp: "Graphic3d_CubeMapOrder",
                          header: "Graphic3d_CubeMapOrder.hxx", bycopy.} = object 
                                                                             
                                                                             
                                                                             
                                                                             
                                                                             
                                                                             
                                                                             
                                                                             
                                                                             
                                                                             
                                                                             
                                                                             
                                                                             
                                                                             
                                                                             
                                                                             
                                                                             
                                                                             
                                                                             
                                                                             
                                                                             
                                                                             
                                                                             
                                                                             
                                                                             
                                                                             
                                                                             
                                                                             
                                                                             
                                                                             
                                                                             
                                                                             
                                                                             
                                                                             
                                                                             
                                                                             
                                                                             
                                                                             
                                                                             
                                                                             
    
    

  Graphic3dValidatedCubeMapOrder* {.importcpp: "Graphic3d_ValidatedCubeMapOrder",
                                   header: "Graphic3d_CubeMapOrder.hxx", bycopy.} = object 
                                                                                      
                                                                                      
                                                                                      
                                                                                      
                                                                                      
                                                                                      
                                                                                      
                                                                                      
                                                                                      
    order* {.importc: "Order".}: Graphic3dCubeMapOrder 

  Graphic3dCullingTool* {.importcpp: "Graphic3d_CullingTool",
                         header: "Graphic3d_CullingTool.hxx", bycopy.} = object 
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

  Graphic3dCullingToolCullingContext* {.importcpp: "Graphic3d_CullingTool::CullingContext",
                                       header: "Graphic3d_CullingTool.hxx", bycopy.} = object
    distCull* {.importc: "DistCull".}: cfloat 
    sizeCull2* {.importc: "SizeCull2".}: cfloat 
                                            

  Graphic3dCullingToolPlane* {.importcpp: "Graphic3d_CullingTool::Plane",
                              header: "Graphic3d_CullingTool.hxx", bycopy.} = object 
                                                                                
                                                                                
                                                                                
                                                                                
    origin* {.importc: "Origin".}: Graphic3dVec3d
    normal* {.importc: "Normal".}: Graphic3dVec3d

  Graphic3dDiagnosticInfo* {.size: sizeof(cint),
                            importcpp: "Graphic3d_DiagnosticInfo",
                            header: "Graphic3d_DiagnosticInfo.hxx".} = enum
    graphic3dDiagnosticInfoDevice = 0x001, 
    graphic3dDiagnosticInfoFrameBuffer = 0x002, 
    graphic3dDiagnosticInfoLimits = 0x004, 
    graphic3dDiagnosticInfoMemory = 0x008, 
    graphic3dDiagnosticInfoNativePlatform = 0x010, 
    graphic3dDiagnosticInfoExtensions = 0x020 
                                            

  Graphic3dFrameStatsCounter* {.size: sizeof(cint),
                               importcpp: "Graphic3d_FrameStatsCounter",
                               header: "Graphic3d_FrameStatsCounter.hxx".} = enum 
    graphic3dFrameStatsCounterNbLayers = 0, 
    graphic3dFrameStatsCounterNbStructs, 
    graphic3dFrameStatsCounterEstimatedBytesGeom, 
    graphic3dFrameStatsCounterEstimatedBytesFbos, 
    graphic3dFrameStatsCounterEstimatedBytesTextures, 
                                                     
    graphic3dFrameStatsCounterNbLayersNotCulled, 
    graphic3dFrameStatsCounterNbStructsNotCulled, 
    graphic3dFrameStatsCounterNbGroupsNotCulled, 
    graphic3dFrameStatsCounterNbElemsNotCulled, 
    graphic3dFrameStatsCounterNbElemsFillNotCulled, 
    graphic3dFrameStatsCounterNbElemsLineNotCulled, 
    graphic3dFrameStatsCounterNbElemsPointNotCulled, 
    graphic3dFrameStatsCounterNbElemsTextNotCulled, 
    graphic3dFrameStatsCounterNbTrianglesNotCulled, 
    graphic3dFrameStatsCounterNbLinesNotCulled, 
    graphic3dFrameStatsCounterNbPointsNotCulled, 
                                                
                                                
    graphic3dFrameStatsCounterNbLayersImmediate, 
    graphic3dFrameStatsCounterNbStructsImmediate, 
    graphic3dFrameStatsCounterNbGroupsImmediate, 
    graphic3dFrameStatsCounterNbElemsImmediate, 
    graphic3dFrameStatsCounterNbElemsFillImmediate, 
    graphic3dFrameStatsCounterNbElemsLineImmediate, 
    graphic3dFrameStatsCounterNbElemsPointImmediate, 
    graphic3dFrameStatsCounterNbElemsTextImmediate, 
    graphic3dFrameStatsCounterNbTrianglesImmediate, 
    graphic3dFrameStatsCounterNbLinesImmediate, 
    graphic3dFrameStatsCounterNbPointsImmediate 

  Graphic3dFrameStatsTimer* {.size: sizeof(cint),
                             importcpp: "Graphic3d_FrameStatsTimer",
                             header: "Graphic3d_FrameStatsTimer.hxx".} = enum
    graphic3dFrameStatsTimerElapsedFrame, graphic3dFrameStatsTimerCpuFrame,
    graphic3dFrameStatsTimerCpuCulling, graphic3dFrameStatsTimerCpuPicking,
    graphic3dFrameStatsTimerCpuDynamics

  Graphic3dAxisAspect* {.importcpp: "Graphic3d_AxisAspect",
                        header: "Graphic3d_GraduatedTrihedron.hxx", bycopy.} = object
    
    
    
    
    

  Graphic3dGraduatedTrihedron* {.importcpp: "Graphic3d_GraduatedTrihedron",
                                header: "Graphic3d_GraduatedTrihedron.hxx", bycopy.} = object 
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
    cubicAxesCallback* {.importc: "CubicAxesCallback".}: Graphic3dGraduatedTrihedronMinMaxValuesCallback 
    ptrView* {.importc: "PtrView".}: ptr Graphic3dCView
    
    
    
    
    
    
    

  Graphic3dGraduatedTrihedronMinMaxValuesCallback* = proc (a1: ptr Graphic3dCView) {.
      cdecl.}

  Graphic3dLightSetIterator* {.importcpp: "Graphic3d_LightSet::Iterator",
                              header: "Graphic3d_LightSet.hxx", bycopy.} = object 
                                                                             
                                                                             
                                                                             
                                                                             
                                                                             
                                                                             

  Graphic3dMaterialAspect* {.importcpp: "Graphic3d_MaterialAspect",
                            header: "Graphic3d_MaterialAspect.hxx", bycopy.} = object 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 

  Graphic3dNameOfMaterial* {.size: sizeof(cint),
                            importcpp: "Graphic3d_NameOfMaterial",
                            header: "Graphic3d_NameOfMaterial.hxx".} = enum
    graphic3dNameOfMaterialBrass, 
    graphic3dNameOfMaterialBronze, 
    graphic3dNameOfMaterialCopper, 
    graphic3dNameOfMaterialGold, 
    graphic3dNameOfMaterialPewter, 
    graphic3dNameOfMaterialPlastered, 
    graphic3dNameOfMaterialPlastified, 
    graphic3dNameOfMaterialSilver, 
    graphic3dNameOfMaterialSteel, 
    graphic3dNameOfMaterialStone, 
    graphic3dNameOfMaterialShinyPlastified, 
    graphic3dNameOfMaterialSatin, 
    graphic3dNameOfMaterialMetalized, 
    graphic3dNameOfMaterialIonized, 
    graphic3dNameOfMaterialChrome, 
    graphic3dNameOfMaterialAluminum, 
    graphic3dNameOfMaterialObsidian, 
    graphic3dNameOfMaterialNeon, 
    graphic3dNameOfMaterialJade, 
    graphic3dNameOfMaterialCharcoal, 
    graphic3dNameOfMaterialWater, 
    graphic3dNameOfMaterialGlass, 
    graphic3dNameOfMaterialDiamond, 
    graphic3dNameOfMaterialTransparent, 
    graphic3dNameOfMaterialDEFAULT, 
                                   
    graphic3dNameOfMaterialUserDefined 
                                       
                                       

  Graphic3dPBRMaterial* {.importcpp: "Graphic3d_PBRMaterial",
                         header: "Graphic3d_PBRMaterial.hxx", bycopy.} = object 
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
    
    
    
    
    

  Graphic3dPolygonOffset* {.importcpp: "Graphic3d_PolygonOffset",
                           header: "Graphic3d_PolygonOffset.hxx", bycopy.} = object
    mode* {.importc: "Mode".}: AspectPolygonOffsetMode
    factor* {.importc: "Factor".}: StandardShortReal
    units* {.importc: "Units".}: StandardShortReal 

  Graphic3dRenderingParams* {.importcpp: "Graphic3d_RenderingParams",
                             header: "Graphic3d_RenderingParams.hxx", bycopy.} = object 
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
    `method`* {.importc: "Method".}: Graphic3dRenderingMode 
    transparencyMethod* {.importc: "TransparencyMethod".}: Graphic3dRenderTransparentMethod 
    lineFeather* {.importc: "LineFeather".}: StandardShortReal 
                                                           
    pbrEnvPow2Size* {.importc: "PbrEnvPow2Size".}: cint 
    pbrEnvSpecMapNbLevels* {.importc: "PbrEnvSpecMapNbLevels".}: cint 
    pbrEnvBakingDiffNbSamples* {.importc: "PbrEnvBakingDiffNbSamples".}: cint 
                                                                          
    pbrEnvBakingSpecNbSamples* {.importc: "PbrEnvBakingSpecNbSamples".}: cint 
    pbrEnvBakingProbability* {.importc: "PbrEnvBakingProbability".}: StandardShortReal 
                                                                                   
    oitDepthFactor* {.importc: "OitDepthFactor".}: StandardShortReal 
    nbMsaaSamples* {.importc: "NbMsaaSamples".}: cint 
    renderResolutionScale* {.importc: "RenderResolutionScale".}: StandardShortReal 
                                                                               
    toEnableDepthPrepass* {.importc: "ToEnableDepthPrepass".}: bool 
    toEnableAlphaToCoverage* {.importc: "ToEnableAlphaToCoverage".}: bool 
    isGlobalIlluminationEnabled* {.importc: "IsGlobalIlluminationEnabled".}: bool 
    samplesPerPixel* {.importc: "SamplesPerPixel".}: cint 
    raytracingDepth* {.importc: "RaytracingDepth".}: cint 
    isShadowEnabled* {.importc: "IsShadowEnabled".}: bool 
    isReflectionEnabled* {.importc: "IsReflectionEnabled".}: bool 
    isAntialiasingEnabled* {.importc: "IsAntialiasingEnabled".}: bool 
    isTransparentShadowEnabled* {.importc: "IsTransparentShadowEnabled".}: bool 
    useEnvironmentMapBackground* {.importc: "UseEnvironmentMapBackground".}: bool 
    toIgnoreNormalMapInRayTracing* {.importc: "ToIgnoreNormalMapInRayTracing".}: bool 
    coherentPathTracingMode* {.importc: "CoherentPathTracingMode".}: bool 
    adaptiveScreenSampling* {.importc: "AdaptiveScreenSampling".}: bool 
    adaptiveScreenSamplingAtomic* {.importc: "AdaptiveScreenSamplingAtomic".}: bool 
    showSamplingTiles* {.importc: "ShowSamplingTiles".}: bool 
    twoSidedBsdfModels* {.importc: "TwoSidedBsdfModels".}: bool 
    radianceClampingValue* {.importc: "RadianceClampingValue".}: StandardShortReal 
    rebuildRayTracingShaders* {.importc: "RebuildRayTracingShaders".}: bool 
    rayTracingTileSize* {.importc: "RayTracingTileSize".}: cint 
    nbRayTracingTiles* {.importc: "NbRayTracingTiles".}: cint 
                                                          
                                                          
    cameraApertureRadius* {.importc: "CameraApertureRadius".}: StandardShortReal 
    cameraFocalPlaneDist* {.importc: "CameraFocalPlaneDist".}: StandardShortReal 
    frustumCullingState* {.importc: "FrustumCullingState".}: Graphic3dRenderingParamsFrustumCulling 
    toneMappingMethod* {.importc: "ToneMappingMethod".}: Graphic3dToneMappingMethod 
    exposure* {.importc: "Exposure".}: StandardShortReal 
    whitePoint* {.importc: "WhitePoint".}: StandardShortReal 
    stereoMode* {.importc: "StereoMode".}: Graphic3dStereoMode 
    hmdFov2d* {.importc: "HmdFov2d".}: StandardShortReal 
    anaglyphFilter* {.importc: "AnaglyphFilter".}: Graphic3dRenderingParamsAnaglyph 
    anaglyphLeft* {.importc: "AnaglyphLeft".}: Graphic3dMat4 
    anaglyphRight* {.importc: "AnaglyphRight".}: Graphic3dMat4 
    toReverseStereo* {.importc: "ToReverseStereo".}: bool 
    toMirrorComposer* {.importc: "ToMirrorComposer".}: bool 
    statsPosition* {.importc: "StatsPosition".}: Handle[Graphic3dTransformPers] 
    chartPosition* {.importc: "ChartPosition".}: Handle[Graphic3dTransformPers] 
    chartSize* {.importc: "ChartSize".}: Graphic3dVec2i 
    statsTextAspect* {.importc: "StatsTextAspect".}: Handle[Graphic3dAspectText3d] 
    statsUpdateInterval* {.importc: "StatsUpdateInterval".}: StandardShortReal 
                                                                           
                                                                           
                                                                           
    statsTextHeight* {.importc: "StatsTextHeight".}: cint 
    statsNbFrames* {.importc: "StatsNbFrames".}: cint 
    statsMaxChartTime* {.importc: "StatsMaxChartTime".}: StandardShortReal 
    collectedStats* {.importc: "CollectedStats".}: Graphic3dRenderingParamsPerfCounters 
                                                                                    
                                                                                    
    toShowStats* {.importc: "ToShowStats".}: bool 
                                              
                                              
    resolution* {.importc: "Resolution".}: cuint 
                                             
                                             
                                             
                                             

  Graphic3dRenderingParamsAnaglyph* {.size: sizeof(cint), importcpp: "Graphic3d_RenderingParams::Anaglyph",
                                     header: "Graphic3d_RenderingParams.hxx".} = enum
    AnaglyphRedCyanSimple,    
    AnaglyphRedCyanOptimized, 
    AnaglyphYellowBlueSimple, 
    AnaglyphYellowBlueOptimized, 
    AnaglyphGreenMagentaSimple, 
    AnaglyphUserDefined       

  Graphic3dRenderingParamsPerfCounters* {.size: sizeof(cint),
      importcpp: "Graphic3d_RenderingParams::PerfCounters",
      header: "Graphic3d_RenderingParams.hxx".} = enum
    perfCountersNONE = 0x000,   
    perfCountersFrameRate = 0x001, 
    perfCountersCPU = 0x002,    
    perfCountersLayers = 0x004, 
    perfCountersStructures = 0x008, 
                                 
    perfCountersGroups = 0x010, 
    perfCountersGroupArrays = 0x020, 
                                  
    perfCountersTriangles = 0x040, 
    perfCountersPoints = 0x080, 
    perfCountersLines = 0x100,  
                            
    perfCountersEstimMem = 0x200, 
                               
    perfCountersFrameTime = 0x400, 
    perfCountersFrameTimeMax = 0x800, 
                                   
    perfCountersSkipImmediate = 0x1000 
                                     

  Graphic3dRenderingParamsFrustumCulling* {.size: sizeof(cint),
      importcpp: "Graphic3d_RenderingParams::FrustumCulling",
      header: "Graphic3d_RenderingParams.hxx".} = enum
    FrustumCullingOff,        
    FrustumCullingOn,         
    FrustumCullingNoUpdate    

  Graphic3dSequenceOfHClipPlaneIterator* {.
      importcpp: "Graphic3d_SequenceOfHClipPlane::Iterator",
      header: "Graphic3d_SequenceOfHClipPlane.hxx", bycopy.} = object of RootObj

  Graphic3dValueInterface* {.importcpp: "Graphic3d_ValueInterface",
                            header: "Graphic3d_ShaderVariable.hxx", bycopy.} = object of RootObj 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 

  Graphic3dUniformValueTypeID*[T] {.importcpp: "Graphic3d_UniformValueTypeID<\'0>",
                                   header: "Graphic3d_ShaderVariable.hxx", bycopy.} = object 

  Graphic3dIndexedMapOfView* {.importcpp:"NCollection_IndexedMap<ptr Graphic3dCView>", header:"Graphic3d_StructureManager.hxx", bycopy.} = object

  Graphic3dTextureSetIterator* {.importcpp: "Graphic3d_TextureSet::Iterator",
                                header: "Graphic3d_TextureSet.hxx", bycopy.} = object of RootObj 

  Graphic3dTextureUnit* {.size: sizeof(cint), importcpp: "Graphic3d_TextureUnit",
                         header: "Graphic3d_TextureUnit.hxx".} = enum 
    graphic3dTextureUnitPbrEnvironmentLUT = -3, 
                                             
                                             
    graphic3dTextureUnitPbrIblDiffuseSH = -2, 
                                           
                                           
    graphic3dTextureUnitPbrIblSpecular = -1, graphic3dTextureUnit0,
    graphic3dTextureUnit1, graphic3dTextureUnit2, graphic3dTextureUnit3,
    graphic3dTextureUnit4, graphic3dTextureUnit5, graphic3dTextureUnit6,
    graphic3dTextureUnit7, graphic3dTextureUnit8, graphic3dTextureUnit9,
    graphic3dTextureUnit10, graphic3dTextureUnit11, graphic3dTextureUnit12,
    graphic3dTextureUnit13, graphic3dTextureUnit14, graphic3dTextureUnit15 
                                                                         
                                                                         

  Graphic3dTransModeFlags* {.size: sizeof(cint),
                            importcpp: "Graphic3d_TransModeFlags",
                            header: "Graphic3d_TransModeFlags.hxx".} = enum
    graphic3dTMF_None = 0x0000, 
    graphic3dTMF_ZoomPers = 0x0002, 
    graphic3dTMF_RotatePers = 0x0008, 
    graphic3dTMF_TriedronPers = 0x0020, 
    graphic3dTMF_2d = 0x0040   

  Graphic3dTypeOfBackground* {.size: sizeof(cint),
                              importcpp: "Graphic3d_TypeOfBackground",
                              header: "Graphic3d_TypeOfBackground.hxx".} = enum
    graphic3dTOB_NONE = -1, graphic3dTOB_GRADIENT, graphic3dTOB_TEXTURE,
    graphic3dTOB_CUBEMAP

  Graphic3dTypeOfLightSource* {.size: sizeof(cint),
                               importcpp: "Graphic3d_TypeOfLightSource",
                               header: "Graphic3d_TypeOfLightSource.hxx".} = enum
    graphic3dTOLS_AMBIENT,    
    graphic3dTOLS_DIRECTIONAL, 
    graphic3dTOLS_POSITIONAL, 
    graphic3dTOLS_SPOT       

  Graphic3dTypeOfReflection* {.size: sizeof(cint),
                              importcpp: "Graphic3d_TypeOfReflection",
                              header: "Graphic3d_TypeOfReflection.hxx".} = enum
    Graphic3dTOR_AMBIENT = 0, Graphic3dTOR_DIFFUSE, Graphic3dTOR_SPECULAR,
    Graphic3dTOR_EMISSION

  Graphic3dTypeOfShadingModel* {.size: sizeof(cint),
                                importcpp: "Graphic3d_TypeOfShadingModel",
                                header: "Graphic3d_TypeOfShadingModel.hxx".} = enum 
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
    graphic3dTOSM_DEFAULT = -1, 
                             
                             
    graphic3dTOSM_UNLIT = 0, 
                          
                          
                          
    graphic3dTOSM_FACET, 
                        
                        
                        
                        
    graphic3dTOSM_VERTEX, 
                         
                         
    graphic3dTOSM_FRAGMENT,   
    graphic3dTOSM_PBR,        
    graphic3dTOSM_PBR_FACET  

  Graphic3dVertex* {.importcpp: "Graphic3d_Vertex", header: "Graphic3d_Vertex.hxx",
                    bycopy.} = object 
    xyz* {.importc: "xyz".}: array[3, cfloat]

  Graphic3dWorldViewProjState* {.importcpp: "Graphic3d_WorldViewProjState",
                                header: "Graphic3d_WorldViewProjState.hxx", bycopy.} = object 
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         

  Graphic3dZLayerId* = cint

  Graphic3dZLayerSetting* {.size: sizeof(cint),
                           importcpp: "Graphic3d_ZLayerSetting",
                           header: "Graphic3d_ZLayerSettings.hxx".} = enum
    Graphic3dZLayerDepthTest = 1, Graphic3dZLayerDepthWrite = 2,
    Graphic3dZLayerDepthClear = 4, Graphic3dZLayerDepthOffset = 8

  Graphic3dZLayerSettings* {.importcpp: "Graphic3d_ZLayerSettings",
                            header: "Graphic3d_ZLayerSettings.hxx", bycopy.} = object 
                                                                                 
                                                                                 
                                                                                 
    
    
    
    
    
    
    
    
    
    
    
    
    
    

  Graphic3dCameraProjection* {.size: sizeof(cint),
                              importcpp: "Graphic3d_Camera::Projection",
                              header: "Graphic3d_Camera.hxx".} = enum
    ProjectionOrthographic, ProjectionPerspective, ProjectionStereo,
    ProjectionMonoLeftEye, ProjectionMonoRightEye

  Graphic3dClipPlaneEquation* = Graphic3dVec4d

  Graphic3dLightSetIterationFilter* {.size: sizeof(cint), importcpp: "Graphic3d_LightSet::IterationFilter",
                                     header: "Graphic3d_LightSet.hxx".} = enum
    iterationFilterNone = 0x0000, 
    iterationFilterExcludeAmbient = 0x0002, 
    iterationFilterExcludeDisabled = 0x0004 

  Graphic3dMediaTextureSetCallbackOnUpdateT* = proc (theUserPtr: pointer) {.cdecl.}

  HandleGraphic3dArrayOfPrimitives* = Handle[Graphic3dArrayOfPrimitives]


































  Graphic3dArray1OfAttribute* = NCollectionArray1[Graphic3dAttribute]




  HandleGraphic3dCView* = Handle[Graphic3dCView]








  HandleGraphic3dDataStructureManager* = Handle[Graphic3dDataStructureManager]







  HandleGraphic3dGraphicDriver* = Handle[Graphic3dGraphicDriver]





  MediaHMutex* = NCollectionShared[StandardMutex]




  Graphic3dSequenceOfHClipPlane* {.importcpp: "Graphic3d_SequenceOfHClipPlane",
                                  header: "Graphic3d_SequenceOfHClipPlane.hxx",
                                  bycopy.} = object of StandardTransient 
                                                                    


  Graphic3dShaderObjectList* = NCollectionSequence[Handle[Graphic3dShaderObject]]




  Graphic3dShaderVariableList* = NCollectionSequence[
      Handle[Graphic3dShaderVariable]]




  Graphic3dShaderAttributeList* = NCollectionSequence[
      Handle[Graphic3dShaderAttribute]]




  Graphic3dUniformInt* = Graphic3dUniformValue[cint]




  Graphic3dUniformVec2i* = Graphic3dUniformValue[Graphic3dVec2i]




  Graphic3dUniformVec3i* = Graphic3dUniformValue[Graphic3dVec3i]




  Graphic3dUniformVec4i* = Graphic3dUniformValue[Graphic3dVec4i]




  Graphic3dUniformFloat* = Graphic3dUniformValue[StandardShortReal]




  Graphic3dUniformVec2* = Graphic3dUniformValue[Graphic3dVec2]




  Graphic3dUniformVec3* = Graphic3dUniformValue[Graphic3dVec3]




  Graphic3dUniformVec4* = Graphic3dUniformValue[Graphic3dVec4]




  HandleGraphic3dStructure* = Handle[Graphic3dStructure]






  HandleGraphic3dTexture1D* = Handle[Graphic3dTexture1D]




  HandleGraphic3dTexture1Dmanual* = Handle[Graphic3dTexture1Dmanual]





  HandleGraphic3dTexture1Dsegment* = Handle[Graphic3dTexture1Dsegment]







  HandleGraphic3dTexture2Dplane* = Handle[Graphic3dTexture2Dplane]





  HandleGraphic3dTextureEnv* = Handle[Graphic3dTextureEnv]




  Graphic3dTextureSet* {.importcpp: "Graphic3d_TextureSet",
                        header: "Graphic3d_TextureSet.hxx", bycopy.} = object of StandardTransient 
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            


  HandleGraphic3dTransformPers* = Handle[Graphic3dTransformPers]


















  Graphic3dUniformValue*[T] {.importcpp: "Graphic3d_UniformValue<\'0>",
                             header: "Graphic3d_ShaderVariable.hxx", bycopy.} = object of Graphic3dValueInterface 
                                                                                                           
                                                                                                           
                                                                                                           
                                                                                                           
                                                                                                           
    value* {.importc: "Value".}: T



  Graphic3dArrayOfPoints* {.importcpp: "Graphic3d_ArrayOfPoints",
                           header: "Graphic3d_ArrayOfPoints.hxx", bycopy.} = object of Graphic3dArrayOfPrimitives 
                                                                                                           
                                                                                                           
                                                                                                           
                                                                                                           
                                                                                                           
                                                                                                           
                                                                                                           
                                                                                                           
                                                                                                           
                                                                                                           
                                                                                                           
                                                                                                           
                                                                                                           
                                                                                                           
                                                                                                           
                                                                                                           
                                                                                                           
                                                                                                           
                                                                                                           
                                                                                                           
                                                                                                           
                                                                                                           
                                                                                                           
                                                                                                           
                                                                                                           
                                                                                                           
                                                                                                           
                                                                                                           
                                                                                                           
                                                                                                           
                                                                                                           
                                                                                                           



  Graphic3dArrayOfPolygons* {.importcpp: "Graphic3d_ArrayOfPolygons",
                             header: "Graphic3d_ArrayOfPolygons.hxx", bycopy.} = object of Graphic3dArrayOfPrimitives 
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               



  Graphic3dArrayOfPolylines* {.importcpp: "Graphic3d_ArrayOfPolylines",
                              header: "Graphic3d_ArrayOfPolylines.hxx", bycopy.} = object of Graphic3dArrayOfPrimitives 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 



  Graphic3dArrayOfPrimitives* {.importcpp: "Graphic3d_ArrayOfPrimitives",
                               header: "Graphic3d_ArrayOfPrimitives.hxx", bycopy.} = object of StandardTransient 
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          



  Graphic3dArrayOfQuadrangles* {.importcpp: "Graphic3d_ArrayOfQuadrangles",
                                header: "Graphic3d_ArrayOfQuadrangles.hxx", bycopy.} = object of Graphic3dArrayOfPrimitives 
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     



  Graphic3dArrayOfQuadrangleStrips* {.importcpp: "Graphic3d_ArrayOfQuadrangleStrips", header: "Graphic3d_ArrayOfQuadrangleStrips.hxx",
                                     bycopy.} = object of Graphic3dArrayOfPrimitives 
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                



  Graphic3dArrayOfSegments* {.importcpp: "Graphic3d_ArrayOfSegments",
                             header: "Graphic3d_ArrayOfSegments.hxx", bycopy.} = object of Graphic3dArrayOfPrimitives 
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               



  Graphic3dArrayOfTriangleFans* {.importcpp: "Graphic3d_ArrayOfTriangleFans",
                                 header: "Graphic3d_ArrayOfTriangleFans.hxx",
                                 bycopy.} = object of Graphic3dArrayOfPrimitives 
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            



  Graphic3dArrayOfTriangles* {.importcpp: "Graphic3d_ArrayOfTriangles",
                              header: "Graphic3d_ArrayOfTriangles.hxx", bycopy.} = object of Graphic3dArrayOfPrimitives 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 
                                                                                                                 



  Graphic3dArrayOfTriangleStrips* {.importcpp: "Graphic3d_ArrayOfTriangleStrips", header: "Graphic3d_ArrayOfTriangleStrips.hxx",
                                   bycopy.} = object of Graphic3dArrayOfPrimitives 
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              



  Graphic3dAspectFillArea3d* {.importcpp: "Graphic3d_AspectFillArea3d",
                              header: "Graphic3d_AspectFillArea3d.hxx", bycopy.} = object of Graphic3dAspects 
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       



  Graphic3dAspectLine3d* {.importcpp: "Graphic3d_AspectLine3d",
                          header: "Graphic3d_AspectLine3d.hxx", bycopy.} = object of Graphic3dAspects 
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               



  Graphic3dAspectMarker3d* {.importcpp: "Graphic3d_AspectMarker3d",
                            header: "Graphic3d_AspectMarker3d.hxx", bycopy.} = object of Graphic3dAspects 
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   



  Graphic3dAspects* {.importcpp: "Graphic3d_Aspects",
                     header: "Graphic3d_Aspects.hxx", bycopy.} = object of StandardTransient 
                                                                                      
                                                                                      
                                                                                      
                                                                                      
                                                                                      
                                                                                      
                                                                                      
                                                                                      
                                                                                      
                                                                                      
                                                                                      
                                                                                      
                                                                                      
                                                                                      
                                                                                      
                                                                                      
                                                                                      
                                                                                      
                                                                                      
                                                                                      
                                                                                      
                                                                                      
                                                                                      
                                                                                      
                                                                                      
                                                                                      
                                                                                      
                                                                                      
                                                                                      
                                                                                      
                                                                                      
                                                                                      
                                                                                      
                                                                                      
                                                                                      
                                                                                      
                                                                                      
                                                                                      
                                                                                      
                                                                                      
                                                                                      
                                                                                      
                                                                                      
                                                                                      
                                                                                      
                                                                                      
                                                                                      
                                                                                      
                                                                                      
                                                                                      
                                                                                      
                                                                                      
                                                                                      
                                                                                      
                                                                                      
                                                                                      
                                                                                      
                                                                                      
                                                                                      
                                                                                      
                                                                                      
                                                                                      
                                                                                      
                                                                                      
                                                                                      
                                                                                      
                                                                                      
                                                                                      
                                                                                      
                                                                                      
                                                                                      



  Graphic3dAspectText3d* {.importcpp: "Graphic3d_AspectText3d",
                          header: "Graphic3d_AspectText3d.hxx", bycopy.} = object of Graphic3dAspects 
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               



  Graphic3dAttribBuffer* {.importcpp: "Graphic3d_AttribBuffer",
                          header: "Graphic3d_AttribBuffer.hxx", bycopy.} = object of Graphic3dBuffer 
                                                                                              
                                                                                              
                                                                                              
    
    
    



  Graphic3dBoundBuffer* {.importcpp: "Graphic3d_BoundBuffer",
                         header: "Graphic3d_BoundBuffer.hxx", bycopy.} = object of NCollectionBuffer 
                                                                                              
                                                                                              
                                                                                              
    colors* {.importc: "Colors".}: ptr Graphic3dVec4 
    bounds* {.importc: "Bounds".}: ptr cint 
    nbBounds* {.importc: "NbBounds".}: cint 
    nbMaxBounds* {.importc: "NbMaxBounds".}: cint 



  Graphic3dBuffer* {.importcpp: "Graphic3d_Buffer", header: "Graphic3d_Buffer.hxx",
                    bycopy.} = object of NCollectionBuffer 
                                                      
                                                      
                                                      
                                                      
    stride* {.importc: "Stride".}: cint 
    nbElements* {.importc: "NbElements".}: cint 
    nbAttributes* {.importc: "NbAttributes".}: cint 



  Graphic3dBvhCStructureSet* {.importcpp: "Graphic3d_BvhCStructureSet",
                              header: "Graphic3d_BvhCStructureSet.hxx", bycopy.} = object of BVH_PrimitiveSet3d 
                                                                                                         
                                                                                                         
                                                                                                         
                                                                                                         
                                                                                                         
                                                                                                         
                                                                                                         
                                                                                                         
                                                                                                         
    




  Graphic3dBvhCStructureSetTrsfPers* {.importcpp: "Graphic3d_BvhCStructureSetTrsfPers", header: "Graphic3d_BvhCStructureSetTrsfPers.hxx",
                                      bycopy.} = object of BVH_Set[cfloat, 3] 
                                                                        
                                                                        
                                                                        
                                                                        
    
    
    
    
    
    
    



  Graphic3dCamera* {.importcpp: "Graphic3d_Camera", header: "Graphic3d_Camera.hxx",
                    bycopy.} = object of StandardTransient 
                                                      
                                                      
                                                      
                                                      
                                                      
                                                      
                                                      
                                                      
                                                      
                                                      
                                                      
                                                      
                                                      
                                                      
                                                      
                                                      
                                                      
                                                      
                                                      
                                                      
                                                      
                                                      
                                                      
                                                      
                                                      
                                                      
                                                      
                                                      
                                                      
                                                      
                                                      
                                                      
                                                      
                                                      
                                                      
                                                      
                                                      
                                                      
                                                      
                                                      
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    


  Graphic3dCLight* {.importcpp: "Graphic3d_CLight", header: "Graphic3d_CLight.hxx",
                    bycopy.} = object of StandardTransient 
                                                      
                                                      
                                                      
                                                      
                                                      
                                                      
                                                      
    
    
    
    
    
    
    
    
    
    
    
    



  Graphic3dClipPlane* {.importcpp: "Graphic3d_ClipPlane",
                       header: "Graphic3d_ClipPlane.hxx", bycopy.} = object of StandardTransient 
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
    
    
    
    
    
    
    
    
    
    
    
    
    


  Graphic3dCStructure* {.importcpp: "Graphic3d_CStructure",
                        header: "Graphic3d_CStructure.hxx", bycopy.} = object of StandardTransient 
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
    id* {.importc: "Id".}: cint
    myZLayer* {.importc: "myZLayer".}: Graphic3dZLayerId
    priority* {.importc: "Priority".}: cint
    previousPriority* {.importc: "PreviousPriority".}: cint
    containsFacet* {.importc: "ContainsFacet".}: cint
    viewAffinity* {.importc: "ViewAffinity".}: Handle[Graphic3dViewAffinity] 
    isInfinite* {.importc: "IsInfinite", bitsize: 1.}: cuint
    stick* {.importc: "stick", bitsize: 1.}: cuint 
    highlight* {.importc: "highlight", bitsize: 1.}: cuint
    visible* {.importc: "visible", bitsize: 1.}: cuint 
    hLRValidation* {.importc: "HLRValidation", bitsize: 1.}: cuint
    isForHighlight* {.importc: "IsForHighlight", bitsize: 1.}: cuint
    isMutable* {.importc: "IsMutable", bitsize: 1.}: cuint
    is2dText* {.importc: "Is2dText", bitsize: 1.}: cuint
    
    
    



  Graphic3dCubeMap* {.importcpp: "Graphic3d_CubeMap",
                     header: "Graphic3d_CubeMap.hxx", bycopy.} = object of Graphic3dTextureMap 
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
    
    
    
    



  Graphic3dCubeMapPacked* {.importcpp: "Graphic3d_CubeMapPacked",
                           header: "Graphic3d_CubeMapPacked.hxx", bycopy.} = object of Graphic3dCubeMap 
                                                                                                 
                                                                                                 
                                                                                                 
                                                                                                 
                                                                                                 
                                                                                                 
                                                                                                 
                                                                                                 
                                                                                                 
                                                                                                 
                                                                                                 
                                                                                                 
                                                                                                 
                                                                                                 
                                                                                                 
                                                                                                 
                                                                                                 
                                                                                                 
                                                                                                 
                                                                                                 
                                                                                                 
                                                                                                 
                                                                                                 
                                                                                                 
                                                                                                 
                                                                                                 
                                                                                                 
                                                                                                 
                                                                                                 
                                                                                                 
                                                                                                 
                                                                                                 
                                                                                                 
                                                                                                 
                                                                                                 
                                                                                                 
                                                                                                 
                                                                                                 
                                                                                                 
                                                                                                 
                                                                                                 
                                                                                                 
                                                                                                 
                                                                                                 
    
    



  Graphic3dCubeMapSeparate* {.importcpp: "Graphic3d_CubeMapSeparate",
                             header: "Graphic3d_CubeMapSeparate.hxx", bycopy.} = object of Graphic3dCubeMap 
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     
    
    
    
    



  Graphic3dCView* {.importcpp: "Graphic3d_CView", header: "Graphic3d_CView.hxx",
                   bycopy.} = object of Graphic3dDataStructureManager 
                                                                 
                                                                 
                                                                 
                                                                 
                                                                 
                                                                 
                                                                 
                                                                 
                                                                 
                                                                 
                                                                 
                                                                 
    
    
    
    
    



  Graphic3dFrameStats* {.importcpp: "Graphic3d_FrameStats",
                        header: "Graphic3d_FrameStats.hxx", bycopy.} = object of StandardTransient 
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
    
    
    
    
    
    
    
    
    
    



  Graphic3dFrameStatsData* {.importcpp: "Graphic3d_FrameStatsData",
                            header: "Graphic3d_FrameStatsData.hxx", bycopy.} = object of RootObj
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
    
    
    
    
    
    
    
    



  Graphic3dFrameStatsDataTmp* {.importcpp: "Graphic3d_FrameStatsDataTmp",
                               header: "Graphic3d_FrameStatsData.hxx", bycopy.} = object of Graphic3dFrameStatsData 
                                                                                                             
                                                                                                             
                                                                                                             
    
    



  Graphic3dGraphicDriver* {.importcpp: "Graphic3d_GraphicDriver",
                           header: "Graphic3d_GraphicDriver.hxx", bycopy.} = object of StandardTransient 
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  



  Graphic3dGroup* {.importcpp: "Graphic3d_Group", header: "Graphic3d_Group.hxx",
                   bycopy.} = object of StandardTransient 
                                                     
                                                     
                                                     
                                                     
                                                     
                                                     
                                                     
                                                     
                                                     
                                                     
                                                     
                                                     
                                                     
                                                     
                                                     
                                                     
                                                     
                                                     
                                                     
    
    
    
    



  Graphic3dHatchStyle* {.importcpp: "Graphic3d_HatchStyle",
                        header: "Graphic3d_HatchStyle.hxx", bycopy.} = object of StandardTransient 
                                                                                            
                                                                                            
    
    



  Graphic3dIndexBuffer* {.importcpp: "Graphic3d_IndexBuffer",
                         header: "Graphic3d_IndexBuffer.hxx", bycopy.} = object of Graphic3dBuffer 
                                                                                            
                                                                                            
                                                                                            



  Graphic3dLayer* {.importcpp: "Graphic3d_Layer", header: "Graphic3d_Layer.hxx",
                   bycopy.} = object of StandardTransient 
                                                     
                                                     
                                                     
    
    
    
    
    
    
    
    
    
    
    



  Graphic3dLightSet* {.importcpp: "Graphic3d_LightSet",
                      header: "Graphic3d_LightSet.hxx", bycopy.} = object of StandardTransient 
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
    
    
    
    
    
    
    
    
    


  Graphic3dMarkerImage* {.importcpp: "Graphic3d_MarkerImage",
                         header: "Graphic3d_MarkerImage.hxx", bycopy.} = object of StandardTransient 
                                                                                              
                                                                                              
                                                                                              
                                                                                              
                                                                                              
                                                                                              
                                                                                              
                                                                                              
                                                                                              
    
    
    
    
    
    
    
    



  Graphic3dMediaTexture* {.importcpp: "Graphic3d_MediaTexture",
                          header: "Graphic3d_MediaTexture.hxx", bycopy.} = object of Graphic3dTexture2D 
                                                                                                 
                                                                                                 
                                                                                                 



  Graphic3dMediaTextureSet* {.importcpp: "Graphic3d_MediaTextureSet",
                             header: "Graphic3d_MediaTextureSet.hxx", bycopy.} = object of Graphic3dTextureSet 
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    


  Graphic3dMutableIndexBuffer* {.importcpp: "Graphic3d_MutableIndexBuffer",
                                header: "Graphic3d_MutableIndexBuffer.hxx", bycopy.} = object of Graphic3dIndexBuffer 
                                                                                                               
                                                                                                               
                                                                                                               
    



  Graphic3dPresentationAttributes* {.importcpp: "Graphic3d_PresentationAttributes", header: "Graphic3d_PresentationAttributes.hxx",
                                    bycopy.} = object of StandardTransient 
                                                                      
    
    
    
    
    



  Graphic3dShaderAttribute* {.importcpp: "Graphic3d_ShaderAttribute",
                             header: "Graphic3d_ShaderAttribute.hxx", bycopy.} = object of StandardTransient 
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
    
    



  Graphic3dShaderObject* {.importcpp: "Graphic3d_ShaderObject",
                          header: "Graphic3d_ShaderObject.hxx", bycopy.} = object of StandardTransient 
                                                                                                
                                                                                                
                                                                                                
                                                                                                
                                                                                                
                                                                                                
                                                                                                
                                                                                                
                                                                                                
                                                                                                
                                                                                                
                                                                                                
                                                                                                
                                                                                                
                                                                                                
                                                                                                
                                                                                                
                                                                                                
                                                                                                
                                                                                                
                                                                                                
                                                                                                
    
    
    



  Graphic3dShaderProgram* {.importcpp: "Graphic3d_ShaderProgram",
                           header: "Graphic3d_ShaderProgram.hxx", bycopy.} = object of StandardTransient 
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
    
    
    
    
    
    
    
    
    
    
    
    
    



  Graphic3dShaderVariable* {.importcpp: "Graphic3d_ShaderVariable",
                            header: "Graphic3d_ShaderVariable.hxx", bycopy.} = object of StandardTransient 
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
    



  Graphic3dStructure* {.importcpp: "Graphic3d_Structure",
                       header: "Graphic3d_Structure.hxx", bycopy.} = object of StandardTransient 
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          






  Graphic3dStructureManager* {.importcpp: "Graphic3d_StructureManager",
                              header: "Graphic3d_StructureManager.hxx", bycopy.} = object of StandardTransient 
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        



  Graphic3dText* {.importcpp: "Graphic3d_Text", header: "Graphic3d_Text.hxx", bycopy.} = object of StandardTransient 
                                                                                                           
                                                                                                           
                                                                                                           
                                                                                                           
                                                                                                           
    
    
    
    
    
    
    
    



  Graphic3dTexture1D* {.importcpp: "Graphic3d_Texture1D",
                       header: "Graphic3d_Texture1D.hxx", bycopy.} = object of Graphic3dTextureMap 
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            



  Graphic3dTexture1Dmanual* {.importcpp: "Graphic3d_Texture1Dmanual",
                             header: "Graphic3d_Texture1Dmanual.hxx", bycopy.} = object of Graphic3dTexture1D 
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       



  Graphic3dTexture1Dsegment* {.importcpp: "Graphic3d_Texture1Dsegment",
                              header: "Graphic3d_Texture1Dsegment.hxx", bycopy.} = object of Graphic3dTexture1D 
                                                                                                         
                                                                                                         
                                                                                                         
                                                                                                         
                                                                                                         
                                                                                                         
                                                                                                         



  Graphic3dTexture2D* {.importcpp: "Graphic3d_Texture2D",
                       header: "Graphic3d_Texture2D.hxx", bycopy.} = object of Graphic3dTextureMap 
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            



  Graphic3dTexture2Dmanual* {.importcpp: "Graphic3d_Texture2Dmanual",
                             header: "Graphic3d_Texture2Dmanual.hxx", bycopy.} = object of Graphic3dTexture2D 
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       



  Graphic3dTexture2Dplane* {.importcpp: "Graphic3d_Texture2Dplane",
                            header: "Graphic3d_Texture2Dplane.hxx", bycopy.} = object of Graphic3dTexture2D 
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     



  Graphic3dTextureEnv* {.importcpp: "Graphic3d_TextureEnv",
                        header: "Graphic3d_TextureEnv.hxx", bycopy.} = object of Graphic3dTextureRoot 
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               



  Graphic3dTextureMap* {.importcpp: "Graphic3d_TextureMap",
                        header: "Graphic3d_TextureMap.hxx", bycopy.} = object of Graphic3dTextureRoot 
                                                                                               
                                                                                               
                                                                                               
                                                                                               



  Graphic3dTextureParams* {.importcpp: "Graphic3d_TextureParams",
                           header: "Graphic3d_TextureParams.hxx", bycopy.} = object of StandardTransient 
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
    
    
    
    
    
    
    
    
    
    
    
    
    
    



  Graphic3dTextureRoot* {.importcpp: "Graphic3d_TextureRoot",
                         header: "Graphic3d_TextureRoot.hxx", bycopy.} = object of StandardTransient 
                                                                                              
                                                                                              
                                                                                              
                                                                                              
                                                                                              
                                                                                              
                                                                                              
                                                                                              
                                                                                              
                                                                                              
                                                                                              
                                                                                              
                                                                                              
                                                                                              
                                                                                              
                                                                                              
                                                                                              
                                                                                              
                                                                                              
                                                                                              
                                                                                              
                                                                                              
                                                                                              
                                                                                              
                                                                                              
                                                                                              
                                                                                              
                                                                                              
                                                                                              
                                                                                              
                                                                                              
                                                                                              
                                                                                              
                                                                                              
                                                                                              
                                                                                              
                                                                                              
                                                                                              
                                                                                              
                                                                                              
                                                                                              
                                                                                              
                                                                                              
                                                                                              
                                                                                              
                                                                                              
                                                                                              
                                                                                              
                                                                                              
                                                                                              
                                                                                              
    
    
    
    
    
    
    
    



  Graphic3dTransformPers* {.importcpp: "Graphic3d_TransformPers",
                           header: "Graphic3d_TransformPers.hxx", bycopy.} = object of StandardTransient 
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
    




  Graphic3dViewAffinity* {.importcpp: "Graphic3d_ViewAffinity",
                          header: "Graphic3d_ViewAffinity.hxx", bycopy.} = object of StandardTransient 
                                                                                                
                                                                                                
                                                                                                
    





