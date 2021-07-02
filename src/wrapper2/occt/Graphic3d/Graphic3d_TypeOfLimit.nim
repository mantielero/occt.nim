type
  Graphic3dTypeOfLimit* {.size: sizeof(cint), importcpp: "Graphic3d_TypeOfLimit",
                         header: "Graphic3d_TypeOfLimit.hxx".} = enum
    Graphic3dTypeOfLimitMaxNbLights, Graphic3dTypeOfLimitMaxNbClipPlanes,
    Graphic3dTypeOfLimitMaxNbViews, Graphic3dTypeOfLimitMaxTextureSize,
    Graphic3dTypeOfLimitMaxViewDumpSizeX, Graphic3dTypeOfLimitMaxViewDumpSizeY,
    Graphic3dTypeOfLimitMaxCombinedTextureUnits, Graphic3dTypeOfLimitMaxMsaa,
    Graphic3dTypeOfLimitHasPBR, Graphic3dTypeOfLimitHasRayTracing,
    Graphic3dTypeOfLimitHasRayTracingTextures,
    Graphic3dTypeOfLimitHasRayTracingAdaptiveSampling,
    Graphic3dTypeOfLimitHasRayTracingAdaptiveSamplingAtomic,
    Graphic3dTypeOfLimitHasSRGB, Graphic3dTypeOfLimitHasBlendedOit,
    Graphic3dTypeOfLimitHasBlendedOitMsaa, Graphic3dTypeOfLimitHasFlatShading,
    Graphic3dTypeOfLimitHasMeshEdges, Graphic3dTypeOfLimitIsWorkaroundFBO,
    Graphic3dTypeOfLimitNB

