##  Created on: 2014-05-14
##  Created by: Denis BOGOLEPOV
##  Copyright (c) 2014 OPEN CASCADE SAS
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

## ! Helper class to store rendering parameters.

type
  Graphic3dRenderingParams* {.importcpp: "Graphic3d_RenderingParams",
                             header: "Graphic3d_RenderingParams.hxx", bycopy.} = object ##
                                                                                   ## !
                                                                                   ## Default
                                                                                   ## pixels
                                                                                   ## density.
                                                                                   ##
                                                                                   ## !
                                                                                   ## Creates
                                                                                   ## default
                                                                                   ## rendering
                                                                                   ## parameters.
    `method`* {.importc: "Method".}: Graphic3dRenderingMode ## !< specifies rendering mode, Graphic3d_RM_RASTERIZATION by default
    transparencyMethod* {.importc: "TransparencyMethod".}: Graphic3dRenderTransparentMethod ## !< specifies rendering method for transparent graphics
    lineFeather* {.importc: "LineFeather".}: StandardShortReal ## !< line feater width in pixels (> 0.0), 1.0 by default;
                                                           ## !  high values produce blurred results, small values produce sharp (aliased) edges
    pbrEnvPow2Size* {.importc: "PbrEnvPow2Size".}: cint ## !< size of IBL maps side can be calculated as 2^PbrEnvPow2Size (> 0), 9 by default
    pbrEnvSpecMapNbLevels* {.importc: "PbrEnvSpecMapNbLevels".}: cint ## !< number of levels used in specular IBL map (> 1), 6 by default
    pbrEnvBakingDiffNbSamples* {.importc: "PbrEnvBakingDiffNbSamples".}: cint ## !< number of samples used in Monte-Carlo integration during diffuse IBL map's
                                                                          ## !  spherical harmonics coefficients generation (> 0), 1024 by default
    pbrEnvBakingSpecNbSamples* {.importc: "PbrEnvBakingSpecNbSamples".}: cint ## !< number of samples used in Monte-Carlo integration during specular IBL map's generation (> 0), 256 by default
    pbrEnvBakingProbability* {.importc: "PbrEnvBakingProbability".}: StandardShortReal ## !< controls strength of samples reducing strategy during specular IBL map's generation
                                                                                   ## !  (see 'SpecIBLMapSamplesFactor' function for detail explanation) [0.0, 1.0], 0.99 by default
    oitDepthFactor* {.importc: "OitDepthFactor".}: StandardShortReal ## !< scalar factor [0-1] controlling influence of depth of a fragment to its final coverage
    nbMsaaSamples* {.importc: "NbMsaaSamples".}: cint ## !< number of MSAA samples (should be within 0..GL_MAX_SAMPLES, power-of-two number), 0 by default
    renderResolutionScale* {.importc: "RenderResolutionScale".}: StandardShortReal ## !< rendering resolution scale factor, 1 by default;
                                                                               ## !  incompatible with MSAA (e.g. NbMsaaSamples should be set to 0)
    toEnableDepthPrepass* {.importc: "ToEnableDepthPrepass".}: bool ## !< enables/disables depth pre-pass, False by default
    toEnableAlphaToCoverage* {.importc: "ToEnableAlphaToCoverage".}: bool ## !< enables/disables alpha to coverage, True by default
    isGlobalIlluminationEnabled* {.importc: "IsGlobalIlluminationEnabled".}: bool ## !< enables/disables global illumination effects (path tracing)
    samplesPerPixel* {.importc: "SamplesPerPixel".}: cint ## !< number of samples per pixel (SPP)
    raytracingDepth* {.importc: "RaytracingDepth".}: cint ## !< maximum ray-tracing depth, 3 by default
    isShadowEnabled* {.importc: "IsShadowEnabled".}: bool ## !< enables/disables shadows rendering, True by default
    isReflectionEnabled* {.importc: "IsReflectionEnabled".}: bool ## !< enables/disables specular reflections, False by default
    isAntialiasingEnabled* {.importc: "IsAntialiasingEnabled".}: bool ## !< enables/disables adaptive anti-aliasing, False by default
    isTransparentShadowEnabled* {.importc: "IsTransparentShadowEnabled".}: bool ## !< enables/disables light propagation through transparent media, False by default
    useEnvironmentMapBackground* {.importc: "UseEnvironmentMapBackground".}: bool ## !< enables/disables environment map background
    toIgnoreNormalMapInRayTracing* {.importc: "ToIgnoreNormalMapInRayTracing".}: bool ## !< enables/disables normal map ignoring during path tracing; FALSE by default
    coherentPathTracingMode* {.importc: "CoherentPathTracingMode".}: bool ## !< enables/disables 'coherent' tracing mode (single RNG seed within 16x16 image blocks)
    adaptiveScreenSampling* {.importc: "AdaptiveScreenSampling".}: bool ## !< enables/disables adaptive screen sampling mode for path tracing, FALSE by default
    adaptiveScreenSamplingAtomic* {.importc: "AdaptiveScreenSamplingAtomic".}: bool ## !< enables/disables usage of atomic float operations within adaptive screen sampling, FALSE by default
    showSamplingTiles* {.importc: "ShowSamplingTiles".}: bool ## !< enables/disables debug mode for adaptive screen sampling, FALSE by default
    twoSidedBsdfModels* {.importc: "TwoSidedBsdfModels".}: bool ## !< forces path tracing to use two-sided versions of original one-sided scattering models
    radianceClampingValue* {.importc: "RadianceClampingValue".}: StandardShortReal ## !< maximum radiance value used for clamping radiance estimation.
    rebuildRayTracingShaders* {.importc: "RebuildRayTracingShaders".}: bool ## !< forces rebuilding ray tracing shaders at the next frame
    rayTracingTileSize* {.importc: "RayTracingTileSize".}: cint ## !< screen tile size, 32 by default (adaptive sampling mode of path tracing);
    nbRayTracingTiles* {.importc: "NbRayTracingTiles".}: cint ## !< maximum number of screen tiles per frame, 256 by default (adaptive sampling mode of path tracing);
                                                          ## !  this parameter limits the number of tiles to be rendered per redraw, increasing Viewer interactivity,
                                                          ## !  but also increasing the time for achieving a good quality; -1 means no limit
    cameraApertureRadius* {.importc: "CameraApertureRadius".}: StandardShortReal ## !< aperture radius of perspective camera used for depth-of-field, 0.0 by default (no DOF) (path tracing only)
    cameraFocalPlaneDist* {.importc: "CameraFocalPlaneDist".}: StandardShortReal ## !< focal  distance of perspective camera used for depth-of field, 1.0 by default (path tracing only)
    frustumCullingState* {.importc: "FrustumCullingState".}: Graphic3dRenderingParamsFrustumCulling ## !< state of frustum culling optimization; FrustumCulling_On by default
    toneMappingMethod* {.importc: "ToneMappingMethod".}: Graphic3dToneMappingMethod ## !< specifies tone mapping method for path tracing, Graphic3d_ToneMappingMethod_Disabled by default
    exposure* {.importc: "Exposure".}: StandardShortReal ## !< exposure value used for tone mapping (path tracing), 0.0 by default
    whitePoint* {.importc: "WhitePoint".}: StandardShortReal ## !< white point value used in filmic tone mapping (path tracing), 1.0 by default
    stereoMode* {.importc: "StereoMode".}: Graphic3dStereoMode ## !< stereoscopic output mode, Graphic3d_StereoMode_QuadBuffer by default
    hmdFov2d* {.importc: "HmdFov2d".}: StandardShortReal ## !< sharp field of view range in degrees for displaying on-screen 2D elements, 30.0 by default;
    anaglyphFilter* {.importc: "AnaglyphFilter".}: Graphic3dRenderingParamsAnaglyph ## !< filter for anaglyph output, Anaglyph_RedCyan_Optimized by default
    anaglyphLeft* {.importc: "AnaglyphLeft".}: Graphic3dMat4 ## !< left  anaglyph filter (in normalized colorspace), Color = AnaglyphRight * theColorRight + AnaglyphLeft * theColorLeft;
    anaglyphRight* {.importc: "AnaglyphRight".}: Graphic3dMat4 ## !< right anaglyph filter (in normalized colorspace), Color = AnaglyphRight * theColorRight + AnaglyphLeft * theColorLeft;
    toReverseStereo* {.importc: "ToReverseStereo".}: bool ## !< flag to reverse stereo pair, FALSE by default
    toMirrorComposer* {.importc: "ToMirrorComposer".}: bool ## !< if output device is an external composer - mirror rendering results in window in addition to sending frame to composer, TRUE by default
    statsPosition* {.importc: "StatsPosition".}: Handle[Graphic3dTransformPers] ## !< location of stats, upper-left position by default
    chartPosition* {.importc: "ChartPosition".}: Handle[Graphic3dTransformPers] ## !< location of stats chart, upper-right position by default
    chartSize* {.importc: "ChartSize".}: Graphic3dVec2i ## !< chart size in pixels, (-1, -1) by default which means that chart will occupy a portion of viewport
    statsTextAspect* {.importc: "StatsTextAspect".}: Handle[Graphic3dAspectText3d] ## !< stats text aspect
    statsUpdateInterval* {.importc: "StatsUpdateInterval".}: StandardShortReal ## !< time interval between stats updates in seconds, 1.0 second by default;
                                                                           ## !  too often updates might impact performance and will smear text within widgets
                                                                           ## !  (especially framerate, which is better averaging);
                                                                           ## !  0.0 interval will force updating on each frame
    statsTextHeight* {.importc: "StatsTextHeight".}: cint ## !< stats text size; 16 by default
    statsNbFrames* {.importc: "StatsNbFrames".}: cint ## !< number of data frames to collect history; 1 by default
    statsMaxChartTime* {.importc: "StatsMaxChartTime".}: StandardShortReal ## !< upper time limit within frame chart in seconds; 0.1 seconds by default (100 ms or 10 FPS)
    collectedStats* {.importc: "CollectedStats".}: Graphic3dRenderingParamsPerfCounters ## !< performance counters to collect, PerfCounters_Basic by default;
                                                                                    ## !  too verbose options might impact rendering performance,
                                                                                    ## !  because some counters might lack caching optimization (and will require expensive iteration through all data structures)
    toShowStats* {.importc: "ToShowStats".}: bool ## !< display performance statistics, FALSE by default;
                                              ## !  note that counters specified within CollectedStats will be updated nevertheless
                                              ## !  of visibility of widget managed by ToShowStats flag (e.g. stats can be retrieved by application for displaying using other methods)
    resolution* {.importc: "Resolution".}: cuint ## !< Pixels density (PPI), defines scaling factor for parameters like text size
                                             ## !  (when defined in screen-space units rather than in 3D) to be properly displayed
                                             ## !  on device (screen / printer). 72 is default value.
                                             ## !  Note that using difference resolution in different Views in same Viewer
                                             ## !  will lead to performance regression (for example, text will be recreated every time).

  Graphic3dRenderingParamsAnaglyph* {.size: sizeof(cint), importcpp: "Graphic3d_RenderingParams::Anaglyph",
                                     header: "Graphic3d_RenderingParams.hxx".} = enum
    AnaglyphRedCyanSimple,    ## !< simple    filter for Red-Cyan      glasses (R+GB)
    AnaglyphRedCyanOptimized, ## !< optimized filter for Red-Cyan      glasses (R+GB)
    AnaglyphYellowBlueSimple, ## !< simple    filter for Yellow-Blue   glasses (RG+B)
    AnaglyphYellowBlueOptimized, ## !< optimized filter for Yellow-Blue   glasses (RG+B)
    AnaglyphGreenMagentaSimple, ## !< simple    filter for Green-Magenta glasses (G+RB)
    AnaglyphUserDefined       ## !< use externally specified matrices


type
  Graphic3dRenderingParamsPerfCounters* {.size: sizeof(cint),
      importcpp: "Graphic3d_RenderingParams::PerfCounters",
      header: "Graphic3d_RenderingParams.hxx".} = enum
    PerfCountersNONE = 0x000,   ## !< no stats
    PerfCountersFrameRate = 0x001, ## !< Frame Rate,        frames per second (number of frames within elapsed time)
    PerfCountersCPU = 0x002,    ## !< CPU utilization as frames per second (number of frames within CPU utilization time (rendering thread))
    PerfCountersLayers = 0x004, ## !< count layers (groups of structures)
    PerfCountersStructures = 0x008, ## !< count low-level Structures (normal unhighlighted Presentable Object is usually represented by 1 Structure)
                                 ##
    PerfCountersGroups = 0x010, ## !< count primitive Groups (1 Structure holds 1 or more primitive Group)
    PerfCountersGroupArrays = 0x020, ## !< count Arrays within Primitive Groups (optimal primitive Group holds 1 Array)
                                  ##
    PerfCountersTriangles = 0x040, ## !< count Triangles
    PerfCountersPoints = 0x080, ## !< count Points
    PerfCountersLines = 0x100,  ## !< count Line segments
                            ##
    PerfCountersEstimMem = 0x200, ## !< estimated GPU memory usage
                               ##
    PerfCountersFrameTime = 0x400, ## !< frame CPU utilization time (rendering thread); @sa Graphic3d_FrameStatsTimer
    PerfCountersFrameTimeMax = 0x800, ## !< maximum frame times
                                   ##
    PerfCountersSkipImmediate = 0x1000, ## !< do not include immediate viewer updates (e.g. lazy updates without redrawing entire view content)
                                     ## ! show basic statistics
    PerfCountersBasic = perfCountersFrameRate or perfCountersCPU or
        perfCountersLayers or perfCountersStructures, ## ! extended (verbose) statistics
    PerfCountersExtended = perfCountersBasic or perfCountersGroups or
        perfCountersGroupArrays or perfCountersTriangles or perfCountersPoints or
        perfCountersLines or perfCountersEstimMem, ## ! all counters
    PerfCountersAll = perfCountersExtended or perfCountersFrameTime or
        perfCountersFrameTimeMax


type
  Graphic3dRenderingParamsFrustumCulling* {.size: sizeof(cint),
      importcpp: "Graphic3d_RenderingParams::FrustumCulling",
      header: "Graphic3d_RenderingParams.hxx".} = enum
    FrustumCullingOff,        ## !< culling is disabled
    FrustumCullingOn,         ## !< culling is active, and the list of culled entities is automatically updated before redraw
    FrustumCullingNoUpdate    ## !< culling is active, but the list of culled entities is not updated


proc constructGraphic3dRenderingParams*(): Graphic3dRenderingParams {.constructor,
    importcpp: "Graphic3d_RenderingParams(@)",
    header: "Graphic3d_RenderingParams.hxx".}
proc resolutionRatio*(this: Graphic3dRenderingParams): StandardShortReal {.
    noSideEffect, importcpp: "ResolutionRatio",
    header: "Graphic3d_RenderingParams.hxx".}
proc dumpJson*(this: Graphic3dRenderingParams; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, importcpp: "DumpJson",
                                 header: "Graphic3d_RenderingParams.hxx".}

























