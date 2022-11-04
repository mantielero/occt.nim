import ../../tkmath/bvh/bvh_types
import ../../tkernel/ncollection/ncollection_types
import ../../tkernel/standard/standard_types
import ../../tkservice/aspect/aspect_types

type
  Graphic3dMapOfAspectsToAspects* = object # FIXME

  Graphic3dAlphaMode* {.size: sizeof(cint), importcpp: "Graphic3d_AlphaMode",
                       header: "Graphic3d_AlphaMode.hxx".} = enum
    Graphic3dAlphaModeBlendAuto = -1, 
    Graphic3dAlphaModeOpaque = 0, 
    Graphic3dAlphaModeMask,   
    Graphic3dAlphaModeBlend   

  Graphic3dBufferType* {.size: sizeof(cint), importcpp: "Graphic3d_BufferType",
                        header: "Graphic3d_BufferType.hxx".} = enum
    Graphic3dBT_RGB,          
    Graphic3dBT_RGBA,         
    Graphic3dBT_Depth,        
    Graphic3dBT_RGB_RayTraceHdrLeft, 
    Graphic3dBT_Red           

  Graphic3dCubeMapSide* {.size: sizeof(cint), importcpp: "Graphic3d_CubeMapSide",
                         header: "Graphic3d_CubeMapSide.hxx".} = enum
    Graphic3dCMS_POS_X,       
    Graphic3dCMS_NEG_X,       
    Graphic3dCMS_POS_Y,       
    Graphic3dCMS_NEG_Y,       
    Graphic3dCMS_POS_Z,       
    Graphic3dCMS_NEG_Z        

  Graphic3dGroupAspect* {.size: sizeof(cint), importcpp: "Graphic3d_GroupAspect",
                         header: "Graphic3d_GroupAspect.hxx".} = enum
    Graphic3dASPECT_LINE, Graphic3dASPECT_TEXT, Graphic3dASPECT_MARKER,
    Graphic3dASPECT_FILL_AREA

  Graphic3dHorizontalTextAlignment* {.size: sizeof(cint), importcpp: "Graphic3d_HorizontalTextAlignment", header: "Graphic3d_HorizontalTextAlignment.hxx".} = enum
    Graphic3dHTA_LEFT, Graphic3dHTA_CENTER, Graphic3dHTA_RIGHT

  Graphic3dLevelOfTextureAnisotropy* {.size: sizeof(cint), importcpp: "Graphic3d_LevelOfTextureAnisotropy", header: "Graphic3d_LevelOfTextureAnisotropy.hxx".} = enum
    Graphic3dLOTA_OFF, Graphic3dLOTA_FAST, Graphic3dLOTA_MIDDLE,
    Graphic3dLOTA_QUALITY

  Graphic3dMapOfStructure*[HandleGraphic3dStructure] {.importcpp:"NCollection_Map<'0>", header:"Graphic3d_MapOfStructure.hxx", bycopy.} = object

  Graphic3dNameOfTexture1D* {.size: sizeof(cint),
                             importcpp: "Graphic3d_NameOfTexture1D",
                             header: "Graphic3d_NameOfTexture1D.hxx".} = enum
    Graphic3dNOT_1D_ELEVATION, Graphic3dNOT_1D_UNKNOWN

  Graphic3dNameOfTexture2D* {.size: sizeof(cint),
                             importcpp: "Graphic3d_NameOfTexture2D",
                             header: "Graphic3d_NameOfTexture2D.hxx".} = enum
    Graphic3dNOT_2D_MATRA, Graphic3dNOT_2D_ALIENSKIN, Graphic3dNOT_2D_BLUE_ROCK,
    Graphic3dNOT_2D_BLUEWHITE_PAPER, Graphic3dNOT_2D_BRUSHED,
    Graphic3dNOT_2D_BUBBLES, Graphic3dNOT_2D_BUMP, Graphic3dNOT_2D_CAST,
    Graphic3dNOT_2D_CHIPBD, Graphic3dNOT_2D_CLOUDS, Graphic3dNOT_2D_FLESH,
    Graphic3dNOT_2D_FLOOR, Graphic3dNOT_2D_GALVNISD, Graphic3dNOT_2D_GRASS,
    Graphic3dNOT_2D_ALUMINUM, Graphic3dNOT_2D_ROCK, Graphic3dNOT_2D_KNURL,
    Graphic3dNOT_2D_MAPLE, Graphic3dNOT_2D_MARBLE, Graphic3dNOT_2D_MOTTLED,
    Graphic3dNOT_2D_RAIN, Graphic3dNOT_2D_CHESS, Graphic3dNOT_2D_UNKNOWN

  Graphic3dNameOfTextureEnv* {.size: sizeof(cint),
                              importcpp: "Graphic3d_NameOfTextureEnv",
                              header: "Graphic3d_NameOfTextureEnv.hxx".} = enum
    Graphic3dNOT_ENV_CLOUDS, Graphic3dNOT_ENV_CV, Graphic3dNOT_ENV_MEDIT,
    Graphic3dNOT_ENV_PEARL, Graphic3dNOT_ENV_SKY1, Graphic3dNOT_ENV_SKY2,
    Graphic3dNOT_ENV_LINES, Graphic3dNOT_ENV_ROAD, Graphic3dNOT_ENV_UNKNOWN

  Graphic3dNameOfTexturePlane* {.size: sizeof(cint),
                                importcpp: "Graphic3d_NameOfTexturePlane",
                                header: "Graphic3d_NameOfTexturePlane.hxx".} = enum
    Graphic3dNOTP_XY, Graphic3dNOTP_YZ, Graphic3dNOTP_ZX, Graphic3dNOTP_UNKNOWN

  Graphic3dNMapOfTransient* {.importcpp:"NCollection_Shared< NCollection_Map<const Standard_Transient* > >", header:"Graphic3d_NMapOfTransient.hxx",bycopy.} = object

  Graphic3dRenderingMode* {.size: sizeof(cint),
                           importcpp: "Graphic3d_RenderingMode",
                           header: "Graphic3d_RenderingMode.hxx".} = enum
    Graphic3dRM_RASTERIZATION, Graphic3dRM_RAYTRACING

  Graphic3dRenderTransparentMethod* {.size: sizeof(cint), importcpp: "Graphic3d_RenderTransparentMethod", header: "Graphic3d_RenderTransparentMethod.hxx".} = enum
    Graphic3dRTM_BLEND_UNORDERED, 
    Graphic3dRTM_BLEND_OIT    

  Graphic3dStereoMode* {.size: sizeof(cint), importcpp: "Graphic3d_StereoMode",
                        header: "Graphic3d_StereoMode.hxx".} = enum
    Graphic3dStereoModeQuadBuffer, 
    Graphic3dStereoModeAnaglyph, 
    Graphic3dStereoModeRowInterlaced, 
    Graphic3dStereoModeColumnInterlaced, 
    Graphic3dStereoModeChessBoard, 
    Graphic3dStereoModeSideBySide, 
    Graphic3dStereoModeOverUnder, 
    Graphic3dStereoModeSoftPageFlip, 
    Graphic3dStereoModeOpenVR, 
    Graphic3dStereoModeNB     

  Graphic3dTextPath* {.size: sizeof(cint), importcpp: "Graphic3d_TextPath",
                      header: "Graphic3d_TextPath.hxx".} = enum
    Graphic3dTP_UP, Graphic3dTP_DOWN, Graphic3dTP_LEFT, Graphic3dTP_RIGHT

  Graphic3dToneMappingMethod* {.size: sizeof(cint),
                               importcpp: "Graphic3d_ToneMappingMethod",
                               header: "Graphic3d_ToneMappingMethod.hxx".} = enum
    Graphic3dToneMappingMethodDisabled, 
    Graphic3dToneMappingMethodFilmic 

  Graphic3dTypeOfAnswer* {.size: sizeof(cint), importcpp: "Graphic3d_TypeOfAnswer",
                          header: "Graphic3d_TypeOfAnswer.hxx".} = enum
    Graphic3dTOA_YES, Graphic3dTOA_NO, Graphic3dTOA_COMPUTE

  Graphic3dTypeOfBackfacingModel* {.size: sizeof(cint), importcpp: "Graphic3d_TypeOfBackfacingModel", header: "Graphic3d_TypeOfBackfacingModel.hxx".} = enum
    Graphic3dTOBM_AUTOMATIC, Graphic3dTOBM_FORCE, Graphic3dTOBM_DISABLE

  Graphic3dTypeOfComposition* {.size: sizeof(cint),
                               importcpp: "Graphic3d_TypeOfComposition",
                               header: "Graphic3d_TypeOfComposition.hxx".} = enum
    Graphic3dTOC_REPLACE, Graphic3dTOC_POSTCONCATENATE

  Graphic3dTypeOfConnection* {.size: sizeof(cint),
                              importcpp: "Graphic3d_TypeOfConnection",
                              header: "Graphic3d_TypeOfConnection.hxx".} = enum
    Graphic3dTOC_ANCESTOR, Graphic3dTOC_DESCENDANT

  Graphic3dTypeOfLimit* {.size: sizeof(cint), importcpp: "Graphic3d_TypeOfLimit",
                         header: "Graphic3d_TypeOfLimit.hxx".} = enum
    Graphic3dTypeOfLimitMaxNbLights, 
    Graphic3dTypeOfLimitMaxNbClipPlanes, 
    Graphic3dTypeOfLimitMaxNbViews, 
    Graphic3dTypeOfLimitMaxTextureSize, 
    Graphic3dTypeOfLimitMaxViewDumpSizeX, 
    Graphic3dTypeOfLimitMaxViewDumpSizeY, 
    Graphic3dTypeOfLimitMaxCombinedTextureUnits, 
    Graphic3dTypeOfLimitMaxMsaa, 
    Graphic3dTypeOfLimitHasPBR, 
    Graphic3dTypeOfLimitHasRayTracing, 
    Graphic3dTypeOfLimitHasRayTracingTextures, 
    Graphic3dTypeOfLimitHasRayTracingAdaptiveSampling, 
    Graphic3dTypeOfLimitHasRayTracingAdaptiveSamplingAtomic, 
    Graphic3dTypeOfLimitHasSRGB, 
    Graphic3dTypeOfLimitHasBlendedOit, 
    Graphic3dTypeOfLimitHasBlendedOitMsaa, 
    Graphic3dTypeOfLimitHasFlatShading, 
    Graphic3dTypeOfLimitHasMeshEdges, 
    Graphic3dTypeOfLimitIsWorkaroundFBO, 
    Graphic3dTypeOfLimitNB    

  Graphic3dTypeOfMaterial* {.size: sizeof(cint),
                            importcpp: "Graphic3d_TypeOfMaterial",
                            header: "Graphic3d_TypeOfMaterial.hxx".} = enum
    graphic3dMATERIAL_ASPECT, 
    graphic3dMATERIAL_PHYSIC  

  Graphic3dTypeOfPrimitiveArray* {.size: sizeof(cint),
                                  importcpp: "Graphic3d_TypeOfPrimitiveArray",
                                  header: "Graphic3d_TypeOfPrimitiveArray.hxx".} = enum
    Graphic3dTOPA_UNDEFINED,  
    Graphic3dTOPA_POINTS,     
    Graphic3dTOPA_SEGMENTS,   
    Graphic3dTOPA_POLYLINES,  
    Graphic3dTOPA_TRIANGLES,  
    Graphic3dTOPA_TRIANGLESTRIPS, 
    Graphic3dTOPA_TRIANGLEFANS, 
    Graphic3dTOPA_LINES_ADJACENCY, 
    Graphic3dTOPA_LINE_STRIP_ADJACENCY, 
    Graphic3dTOPA_TRIANGLES_ADJACENCY, 
    Graphic3dTOPA_TRIANGLE_STRIP_ADJACENCY, 
    Graphic3dTOPA_QUADRANGLES, 
    Graphic3dTOPA_QUADRANGLESTRIPS, 
    Graphic3dTOPA_POLYGONS 

  Graphic3dTypeOfShaderObject* {.size: sizeof(cint),
                                importcpp: "Graphic3d_TypeOfShaderObject",
                                header: "Graphic3d_TypeOfShaderObject.hxx".} = enum 
    Graphic3dTOS_VERTEX = 0x01, 
    Graphic3dTOS_TESS_CONTROL = 0x02, 
    Graphic3dTOS_TESS_EVALUATION = 0x04, 
    Graphic3dTOS_GEOMETRY = 0x08, 
    Graphic3dTOS_FRAGMENT = 0x10, 
    Graphic3dTOS_COMPUTE = 0x20

  Graphic3dTypeOfStructure* {.size: sizeof(cint),
                             importcpp: "Graphic3d_TypeOfStructure",
                             header: "Graphic3d_TypeOfStructure.hxx".} = enum
    Graphic3dTOS_WIREFRAME, Graphic3dTOS_SHADING, Graphic3dTOS_COMPUTED,
    Graphic3dTOS_ALL

  Graphic3dTypeOfTexture* {.size: sizeof(cint),
                           importcpp: "Graphic3d_TypeOfTexture",
                           header: "Graphic3d_TypeOfTexture.hxx".} = enum
    Graphic3dTOT_1D, Graphic3dTOT_2D, Graphic3dTOT_2D_MIPMAP, Graphic3dTOT_CUBEMAP

  Graphic3dTypeOfTextureFilter* {.size: sizeof(cint),
                                 importcpp: "Graphic3d_TypeOfTextureFilter",
                                 header: "Graphic3d_TypeOfTextureFilter.hxx".} = enum
    Graphic3dTOTF_NEAREST, Graphic3dTOTF_BILINEAR, Graphic3dTOTF_TRILINEAR

  Graphic3dTypeOfTextureMode* {.size: sizeof(cint),
                               importcpp: "Graphic3d_TypeOfTextureMode",
                               header: "Graphic3d_TypeOfTextureMode.hxx".} = enum
    Graphic3dTOTM_OBJECT, Graphic3dTOTM_SPHERE, Graphic3dTOTM_EYE,
    Graphic3dTOTM_MANUAL, Graphic3dTOTM_SPRITE

  Graphic3dTypeOfVisualization* {.size: sizeof(cint),
                                 importcpp: "Graphic3d_TypeOfVisualization",
                                 header: "Graphic3d_TypeOfVisualization.hxx".} = enum
    Graphic3dTOV_WIREFRAME, Graphic3dTOV_SHADING

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

  Graphic3dLightSetIterationFilter* {.size: sizeof(cint), importcpp: "Graphic3d_LightSet::IterationFilter",
                                     header: "Graphic3d_LightSet.hxx".} = enum
    iterationFilterNone = 0x0000, 
    iterationFilterExcludeAmbient = 0x0002, 
    iterationFilterExcludeDisabled = 0x0004 

  Graphic3dMediaTextureSetCallbackOnUpdateT* = proc (theUserPtr: pointer) {.cdecl.}

  Graphic3dFrameStatsData* {.importcpp: "Graphic3d_FrameStatsData",
                            header: "Graphic3d_FrameStatsData.hxx", bycopy.} = object of RootObj

  Graphic3dVerticalTextAlignment* {.size: sizeof(cint), importcpp: "Graphic3d_VerticalTextAlignment", header: "Graphic3d_VerticalTextAlignment.hxx".} = enum
    Graphic3dVTA_BOTTOM,      
    Graphic3dVTA_CENTER,      
    Graphic3dVTA_TOP,         
    Graphic3dVTA_TOPFIRSTLINE 

  Graphic3dBndBox3d* = BVH_Box[cfloat, 3]

  Graphic3dBndBox4d* = BVH_Box[cfloat, 4]

  Graphic3dBndBox4f* = BVH_Box[StandardShortReal, 4]

  Graphic3dMat4* = NCollectionMat4[StandardShortReal]

  Graphic3dMat4d* = NCollectionMat4[cfloat]

  Graphic3dSequenceOfGroup* = NCollectionSequence[Handle[Graphic3dGroup]]

  Graphic3dSequenceOfStructure* = NCollectionSequence[Handle[Graphic3dStructure]]

  graphic3dTextureSetBits* {.size: sizeof(cint),
                            importcpp: "Graphic3d_TextureSetBits",
                            header: "Graphic3d_TextureSetBits.hxx".} = enum
    graphic3dTextureSetBitsNONE = 0, 
    graphic3dTextureSetBitsBaseColor = cast[cuint]((1 shl 1))  
    graphic3dTextureSetBitsEmissive = cast[cuint]((1 shl 2))   
    graphic3dTextureSetBitsOcclusion = cast[cuint]((1 shl 3))  
    graphic3dTextureSetBitsNormal = cast[cuint]((1 shl 4))     
    graphic3dTextureSetBitsMetallicRoughness = cast[cuint]((1 shl 5)) 

  Graphic3dArray1OfAttribute* = NCollectionArray1[Graphic3dAttribute]


  Graphic3dDataStructureManager* {.importcpp: "Graphic3d_DataStructureManager",
                                  header: "Graphic3d_DataStructureManager.hxx",
                                  bycopy.} = object of StandardTransient ## ! Initializes the manager <me>.


  HandleGraphic3dDataStructureManager* = Handle[Graphic3dDataStructureManager]

  MediaHMutex* = NCollectionShared[StandardMutex]

  Graphic3dSequenceOfHClipPlane* {.importcpp: "Graphic3d_SequenceOfHClipPlane",
                                  header: "Graphic3d_SequenceOfHClipPlane.hxx",
                                  bycopy.} = object of StandardTransient 

  Graphic3dShaderObjectList* = NCollectionSequence[Handle[Graphic3dShaderObject]]

  Graphic3dShaderVariableList* = NCollectionSequence[
      Handle[Graphic3dShaderVariable]]

  Graphic3dShaderAttributeList* = NCollectionSequence[
      Handle[Graphic3dShaderAttribute]]

  Graphic3dTextureSet* {.importcpp: "Graphic3d_TextureSet",
                        header: "Graphic3d_TextureSet.hxx", bycopy.} = object of StandardTransient 

  Graphic3dUniformValue*[T] {.importcpp: "Graphic3d_UniformValue<\'0>",
                             header: "Graphic3d_ShaderVariable.hxx", bycopy.} = object of Graphic3dValueInterface 
    value* {.importc: "Value".}: T

  Graphic3dUniformFloat* = Graphic3dUniformValue[StandardShortReal]

  Graphic3dUniformInt* = Graphic3dUniformValue[cint]

  Graphic3dArrayOfPrimitives* {.importcpp: "Graphic3d_ArrayOfPrimitives",
                               header: "Graphic3d_ArrayOfPrimitives.hxx", bycopy.} = object of StandardTransient 

  Graphic3dArrayOfPolylines* {.importcpp: "Graphic3d_ArrayOfPolylines",
                              header: "Graphic3d_ArrayOfPolylines.hxx", bycopy.} = object of Graphic3dArrayOfPrimitives 

  Graphic3dArrayOfPolygons* {.importcpp: "Graphic3d_ArrayOfPolygons",
                             header: "Graphic3d_ArrayOfPolygons.hxx", bycopy.} = object of Graphic3dArrayOfPrimitives 

  Graphic3dArrayOfPoints* {.importcpp: "Graphic3d_ArrayOfPoints",
                           header: "Graphic3d_ArrayOfPoints.hxx", bycopy.} = object of Graphic3dArrayOfPrimitives 

  HandleGraphic3dArrayOfPrimitives* = Handle[Graphic3dArrayOfPrimitives]

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

  Graphic3dAspects* {.importcpp: "Graphic3d_Aspects",
                     header: "Graphic3d_Aspects.hxx", bycopy.} = object of StandardTransient 

  Graphic3dAspectMarker3d* {.importcpp: "Graphic3d_AspectMarker3d",
                            header: "Graphic3d_AspectMarker3d.hxx", bycopy.} = object of Graphic3dAspects 

  Graphic3dAspectLine3d* {.importcpp: "Graphic3d_AspectLine3d",
                          header: "Graphic3d_AspectLine3d.hxx", bycopy.} = object of Graphic3dAspects 

  Graphic3dAspectFillArea3d* {.importcpp: "Graphic3d_AspectFillArea3d",
                              header: "Graphic3d_AspectFillArea3d.hxx", bycopy.} = object of Graphic3dAspects 

  Graphic3dAspectText3d* {.importcpp: "Graphic3d_AspectText3d",
                          header: "Graphic3d_AspectText3d.hxx", bycopy.} = object of Graphic3dAspects 

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

  Graphic3dAttribBuffer* {.importcpp: "Graphic3d_AttribBuffer",
                          header: "Graphic3d_AttribBuffer.hxx", bycopy.} = object of Graphic3dBuffer 

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

  Graphic3dCView* {.importcpp: "Graphic3d_CView", header: "Graphic3d_CView.hxx",
                   bycopy.} = object of Graphic3dDataStructureManager 

  HandleGraphic3dCView* = Handle[Graphic3dCView]

  Graphic3dFrameStats* {.importcpp: "Graphic3d_FrameStats",
                        header: "Graphic3d_FrameStats.hxx", bycopy.} = object of StandardTransient 

  Graphic3dFrameStatsDataTmp* {.importcpp: "Graphic3d_FrameStatsDataTmp",
                               header: "Graphic3d_FrameStatsData.hxx", bycopy.} = object of Graphic3dFrameStatsData 

  Graphic3dGraphicDriver* {.importcpp: "Graphic3d_GraphicDriver",
                           header: "Graphic3d_GraphicDriver.hxx", bycopy.} = object of StandardTransient 

  HandleGraphic3dGraphicDriver* = Handle[Graphic3dGraphicDriver]

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

  HandleGraphic3dStructure* = Handle[Graphic3dStructure]

  Graphic3dStructureManager* {.importcpp: "Graphic3d_StructureManager",
                              header: "Graphic3d_StructureManager.hxx", bycopy.} = object of StandardTransient 

  Graphic3dText* {.importcpp: "Graphic3d_Text", header: "Graphic3d_Text.hxx", bycopy.} = object of StandardTransient 

  Graphic3dTextureParams* {.importcpp: "Graphic3d_TextureParams",
                           header: "Graphic3d_TextureParams.hxx", bycopy.} = object of StandardTransient 

  Graphic3dTextureRoot* {.importcpp: "Graphic3d_TextureRoot",
                         header: "Graphic3d_TextureRoot.hxx", bycopy.} = object of StandardTransient 

  Graphic3dTextureMap* {.importcpp: "Graphic3d_TextureMap",
                        header: "Graphic3d_TextureMap.hxx", bycopy.} = object of Graphic3dTextureRoot 

  Graphic3dCTexture* {.importcpp: "Graphic3d_CTexture",
                      header: "Graphic3d_CTexture.hxx", bycopy.} = object
    textureMap* {.importc: "TextureMap".}: Handle[Graphic3dTextureMap] 
    doTextureMap* {.importc: "doTextureMap".}: cint 

  Graphic3dCubeMap* {.importcpp: "Graphic3d_CubeMap",
                     header: "Graphic3d_CubeMap.hxx", bycopy.} = object of Graphic3dTextureMap 

  Graphic3dCubeMapPacked* {.importcpp: "Graphic3d_CubeMapPacked",
                           header: "Graphic3d_CubeMapPacked.hxx", bycopy.} = object of Graphic3dCubeMap 

  Graphic3dCubeMapSeparate* {.importcpp: "Graphic3d_CubeMapSeparate",
                             header: "Graphic3d_CubeMapSeparate.hxx", bycopy.} = object of Graphic3dCubeMap 

  Graphic3dTexture1D* {.importcpp: "Graphic3d_Texture1D",
                       header: "Graphic3d_Texture1D.hxx", bycopy.} = object of Graphic3dTextureMap 

  HandleGraphic3dTexture1D* = Handle[Graphic3dTexture1D]

  Graphic3dTexture1Dmanual* {.importcpp: "Graphic3d_Texture1Dmanual",
                             header: "Graphic3d_Texture1Dmanual.hxx", bycopy.} = object of Graphic3dTexture1D 

  HandleGraphic3dTexture1Dmanual* = Handle[Graphic3dTexture1Dmanual]

  Graphic3dTexture1Dsegment* {.importcpp: "Graphic3d_Texture1Dsegment",
                              header: "Graphic3d_Texture1Dsegment.hxx", bycopy.} = object of Graphic3dTexture1D 

  HandleGraphic3dTexture1Dsegment* = Handle[Graphic3dTexture1Dsegment]

  Graphic3dTexture2D* {.importcpp: "Graphic3d_Texture2D",
                       header: "Graphic3d_Texture2D.hxx", bycopy.} = object of Graphic3dTextureMap 

  Graphic3dMediaTexture* {.importcpp: "Graphic3d_MediaTexture",
                          header: "Graphic3d_MediaTexture.hxx", bycopy.} = object of Graphic3dTexture2D 

  Graphic3dTexture2Dmanual* {.importcpp: "Graphic3d_Texture2Dmanual",
                             header: "Graphic3d_Texture2Dmanual.hxx", bycopy.} = object of Graphic3dTexture2D 

  Graphic3dTexture2Dplane* {.importcpp: "Graphic3d_Texture2Dplane",
                            header: "Graphic3d_Texture2Dplane.hxx", bycopy.} = object of Graphic3dTexture2D 

  HandleGraphic3dTexture2Dplane* = Handle[Graphic3dTexture2Dplane]

  Graphic3dTextureEnv* {.importcpp: "Graphic3d_TextureEnv",
                        header: "Graphic3d_TextureEnv.hxx", bycopy.} = object of Graphic3dTextureRoot 

  HandleGraphic3dTextureEnv* = Handle[Graphic3dTextureEnv]

  Graphic3dTransformPers* {.importcpp: "Graphic3d_TransformPers",
                           header: "Graphic3d_TransformPers.hxx", bycopy.} = object of StandardTransient 

  HandleGraphic3dTransformPers* = Handle[Graphic3dTransformPers]

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

  Graphic3dViewAffinity* {.importcpp: "Graphic3d_ViewAffinity",
                          header: "Graphic3d_ViewAffinity.hxx", bycopy.} = object of StandardTransient 

  Graphic3dVec2* = NCollectionVec2[StandardShortReal]

  Graphic3dUniformVec2* = Graphic3dUniformValue[Graphic3dVec2]

  Graphic3dVec2d* = NCollectionVec2[cfloat]

  Graphic3dVec2i* = NCollectionVec2[cint]

  Graphic3dUniformVec2i* = Graphic3dUniformValue[Graphic3dVec2i]

  Graphic3dVec2u* = NCollectionVec2[cuint]

  Graphic3dVec2ub* = NCollectionVec2[StandardByte]

  Graphic3dVec2b* = NCollectionVec2[cchar]

  Graphic3dVec3* = NCollectionVec3[StandardShortReal]

  Graphic3dUniformVec3* = Graphic3dUniformValue[Graphic3dVec3]

  Graphic3dVec3d* = NCollectionVec3[cfloat]

  Graphic3dVec3i* = NCollectionVec3[cint]

  Graphic3dUniformVec3i* = Graphic3dUniformValue[Graphic3dVec3i]

  Graphic3dVec3u* = NCollectionVec3[cuint]

  Graphic3dVec3ub* = NCollectionVec3[StandardByte]

  Graphic3dVec3b* = NCollectionVec3[cchar]

  Graphic3dVec4* = NCollectionVec4[StandardShortReal]

  Graphic3dUniformVec4* = Graphic3dUniformValue[Graphic3dVec4]

  Graphic3dVec4d* = NCollectionVec4[cfloat]

  Graphic3dClipPlaneEquation* = Graphic3dVec4d

  Graphic3dVec4i* = NCollectionVec4[cint]

  Graphic3dUniformVec4i* = Graphic3dUniformValue[Graphic3dVec4i]

  Graphic3dVec4u* = NCollectionVec4[cuint]

  Graphic3dVec4ub* = NCollectionVec4[StandardByte]

  Graphic3dVec4b* = NCollectionVec4[cchar]

