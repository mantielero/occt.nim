##  Copyright (c) 2016 OPEN CASCADE SAS
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

## ! Type of graphic resource limit.

type
  Graphic3dTypeOfLimit* {.size: sizeof(cint), importcpp: "Graphic3d_TypeOfLimit",
                         header: "Graphic3d_TypeOfLimit.hxx".} = enum
    Graphic3dTypeOfLimitMaxNbLights, ## !< maximum number of active light sources
    Graphic3dTypeOfLimitMaxNbClipPlanes, ## !< maximum number of active clipping planes
    Graphic3dTypeOfLimitMaxNbViews, ## !< maximum number of views
    Graphic3dTypeOfLimitMaxTextureSize, ## !< maximum size of texture
    Graphic3dTypeOfLimitMaxViewDumpSizeX, ## !< maximum width  for image dump
    Graphic3dTypeOfLimitMaxViewDumpSizeY, ## !< maximum height for image dump
    Graphic3dTypeOfLimitMaxCombinedTextureUnits, ## !< maximum number of combined texture units for multitexturing
    Graphic3dTypeOfLimitMaxMsaa, ## !< maximum number of MSAA samples
    Graphic3dTypeOfLimitHasPBR, ## !< indicates whether PBR metallic-roughness shading model is supported
    Graphic3dTypeOfLimitHasRayTracing, ## !< indicates whether ray tracing is supported
    Graphic3dTypeOfLimitHasRayTracingTextures, ## !< indicates whether ray tracing textures are supported
    Graphic3dTypeOfLimitHasRayTracingAdaptiveSampling, ## !< indicates whether adaptive screen sampling is supported
    Graphic3dTypeOfLimitHasRayTracingAdaptiveSamplingAtomic, ## !< indicates whether optimized adaptive screen sampling is supported (hardware supports atomic float operations)
    Graphic3dTypeOfLimitHasSRGB, ## !< indicates whether sRGB rendering is supported
    Graphic3dTypeOfLimitHasBlendedOit, ## !< indicates whether necessary GL extensions for Weighted, Blended OIT available (without MSAA).
    Graphic3dTypeOfLimitHasBlendedOitMsaa, ## !< indicates whether necessary GL extensions for Weighted, Blended OIT available (with MSAA).
    Graphic3dTypeOfLimitHasFlatShading, ## !< indicates whether Flat shading (Graphic3d_TOSM_FACET) is supported
    Graphic3dTypeOfLimitHasMeshEdges, ## !< indicates whether advanced mesh edges presentation is supported
    Graphic3dTypeOfLimitIsWorkaroundFBO, ## !< indicates whether workaround for Intel driver problem with empty FBO for images with big width is applyed.
    Graphic3dTypeOfLimitNB    ## !< number of elements in this enumeration


