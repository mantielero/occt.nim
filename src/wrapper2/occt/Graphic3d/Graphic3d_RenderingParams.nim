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

import
  Graphic3d_AspectText3d, Graphic3d_TransformPers,
  Graphic3d_RenderTransparentMethod, Graphic3d_RenderingMode,
  Graphic3d_StereoMode, Graphic3d_ToneMappingMethod, Graphic3d_Vec4

## ! Helper class to store rendering parameters.

type
  Graphic3d_RenderingParams* {.importcpp: "Graphic3d_RenderingParams",
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
    Method* {.importc: "Method".}: Graphic3d_RenderingMode ## !< specifies rendering mode, Graphic3d_RM_RASTERIZATION by default
    TransparencyMethod* {.importc: "TransparencyMethod".}: Graphic3d_RenderTransparentMethod ## !< specifies rendering method for transparent graphics
    LineFeather* {.importc: "LineFeather".}: Standard_ShortReal ## !< line feater width in pixels (> 0.0), 1.0 by default;
                                                            ## !  high values produce blurred results, small values produce sharp (aliased) edges
    PbrEnvPow2Size* {.importc: "PbrEnvPow2Size".}: Standard_Integer ## !< size of IBL maps side can be calculated as 2^PbrEnvPow2Size (> 0), 9 by default
    PbrEnvSpecMapNbLevels* {.importc: "PbrEnvSpecMapNbLevels".}: Standard_Integer ## !< number of levels used in specular IBL map (> 1), 6 by default
    PbrEnvBakingDiffNbSamples* {.importc: "PbrEnvBakingDiffNbSamples".}: Standard_Integer ## !< number of samples used in Monte-Carlo integration during diffuse IBL map's
                                                                                      ## !  spherical harmonics coefficients generation (> 0), 1024 by default
    PbrEnvBakingSpecNbSamples* {.importc: "PbrEnvBakingSpecNbSamples".}: Standard_Integer ## !< number of samples used in Monte-Carlo integration during specular IBL map's generation (> 0), 256 by default
    PbrEnvBakingProbability* {.importc: "PbrEnvBakingProbability".}: Standard_ShortReal ## !< controls strength of samples reducing strategy during specular IBL map's generation
                                                                                    ## !  (see 'SpecIBLMapSamplesFactor' function for detail explanation) [0.0, 1.0], 0.99 by default
    OitDepthFactor* {.importc: "OitDepthFactor".}: Standard_ShortReal ## !< scalar factor [0-1] controlling influence of depth of a fragment to its final coverage
    NbMsaaSamples* {.importc: "NbMsaaSamples".}: Standard_Integer ## !< number of MSAA samples (should be within 0..GL_MAX_SAMPLES, power-of-two number), 0 by default
    RenderResolutionScale* {.importc: "RenderResolutionScale".}: Standard_ShortReal ## !< rendering resolution scale factor, 1 by default;
                                                                                ## !  incompatible with MSAA (e.g. NbMsaaSamples should be set to 0)
    ToEnableDepthPrepass* {.importc: "ToEnableDepthPrepass".}: Standard_Boolean ## !< enables/disables depth pre-pass, False by default
    ToEnableAlphaToCoverage* {.importc: "ToEnableAlphaToCoverage".}: Standard_Boolean ## !< enables/disables alpha to coverage, True by default
    IsGlobalIlluminationEnabled* {.importc: "IsGlobalIlluminationEnabled".}: Standard_Boolean ## !< enables/disables global illumination effects (path tracing)
    SamplesPerPixel* {.importc: "SamplesPerPixel".}: Standard_Integer ## !< number of samples per pixel (SPP)
    RaytracingDepth* {.importc: "RaytracingDepth".}: Standard_Integer ## !< maximum ray-tracing depth, 3 by default
    IsShadowEnabled* {.importc: "IsShadowEnabled".}: Standard_Boolean ## !< enables/disables shadows rendering, True by default
    IsReflectionEnabled* {.importc: "IsReflectionEnabled".}: Standard_Boolean ## !< enables/disables specular reflections, False by default
    IsAntialiasingEnabled* {.importc: "IsAntialiasingEnabled".}: Standard_Boolean ## !< enables/disables adaptive anti-aliasing, False by default
    IsTransparentShadowEnabled* {.importc: "IsTransparentShadowEnabled".}: Standard_Boolean ## !< enables/disables light propagation through transparent media, False by default
    UseEnvironmentMapBackground* {.importc: "UseEnvironmentMapBackground".}: Standard_Boolean ## !< enables/disables environment map background
    ToIgnoreNormalMapInRayTracing* {.importc: "ToIgnoreNormalMapInRayTracing".}: Standard_Boolean ## !< enables/disables normal map ignoring during path tracing; FALSE by default
    CoherentPathTracingMode* {.importc: "CoherentPathTracingMode".}: Standard_Boolean ## !< enables/disables 'coherent' tracing mode (single RNG seed within 16x16 image blocks)
    AdaptiveScreenSampling* {.importc: "AdaptiveScreenSampling".}: Standard_Boolean ## !< enables/disables adaptive screen sampling mode for path tracing, FALSE by default
    AdaptiveScreenSamplingAtomic* {.importc: "AdaptiveScreenSamplingAtomic".}: Standard_Boolean ## !< enables/disables usage of atomic float operations within adaptive screen sampling, FALSE by default
    ShowSamplingTiles* {.importc: "ShowSamplingTiles".}: Standard_Boolean ## !< enables/disables debug mode for adaptive screen sampling, FALSE by default
    TwoSidedBsdfModels* {.importc: "TwoSidedBsdfModels".}: Standard_Boolean ## !< forces path tracing to use two-sided versions of original one-sided scattering models
    RadianceClampingValue* {.importc: "RadianceClampingValue".}: Standard_ShortReal ## !< maximum radiance value used for clamping radiance estimation.
    RebuildRayTracingShaders* {.importc: "RebuildRayTracingShaders".}: Standard_Boolean ## !< forces rebuilding ray tracing shaders at the next frame
    RayTracingTileSize* {.importc: "RayTracingTileSize".}: Standard_Integer ## !< screen tile size, 32 by default (adaptive sampling mode of path tracing);
    NbRayTracingTiles* {.importc: "NbRayTracingTiles".}: Standard_Integer ## !< maximum number of screen tiles per frame, 256 by default (adaptive sampling mode of path tracing);
                                                                      ## !  this parameter limits the number of tiles to be rendered per redraw, increasing Viewer interactivity,
                                                                      ## !  but also increasing the time for achieving a good quality; -1 means no limit
    CameraApertureRadius* {.importc: "CameraApertureRadius".}: Standard_ShortReal ## !< aperture radius of perspective camera used for depth-of-field, 0.0 by default (no DOF) (path tracing only)
    CameraFocalPlaneDist* {.importc: "CameraFocalPlaneDist".}: Standard_ShortReal ## !< focal  distance of perspective camera used for depth-of field, 1.0 by default (path tracing only)
    FrustumCullingState* {.importc: "FrustumCullingState".}: Graphic3d_RenderingParamsFrustumCulling ## !< state of frustum culling optimization; FrustumCulling_On by default
    ToneMappingMethod* {.importc: "ToneMappingMethod".}: Graphic3d_ToneMappingMethod ## !< specifies tone mapping method for path tracing, Graphic3d_ToneMappingMethod_Disabled by default
    Exposure* {.importc: "Exposure".}: Standard_ShortReal ## !< exposure value used for tone mapping (path tracing), 0.0 by default
    WhitePoint* {.importc: "WhitePoint".}: Standard_ShortReal ## !< white point value used in filmic tone mapping (path tracing), 1.0 by default
    StereoMode* {.importc: "StereoMode".}: Graphic3d_StereoMode ## !< stereoscopic output mode, Graphic3d_StereoMode_QuadBuffer by default
    HmdFov2d* {.importc: "HmdFov2d".}: Standard_ShortReal ## !< sharp field of view range in degrees for displaying on-screen 2D elements, 30.0 by default;
    AnaglyphFilter* {.importc: "AnaglyphFilter".}: Graphic3d_RenderingParamsAnaglyph ## !< filter for anaglyph output, Anaglyph_RedCyan_Optimized by default
    AnaglyphLeft* {.importc: "AnaglyphLeft".}: Graphic3d_Mat4 ## !< left  anaglyph filter (in normalized colorspace), Color = AnaglyphRight * theColorRight + AnaglyphLeft * theColorLeft;
    AnaglyphRight* {.importc: "AnaglyphRight".}: Graphic3d_Mat4 ## !< right anaglyph filter (in normalized colorspace), Color = AnaglyphRight * theColorRight + AnaglyphLeft * theColorLeft;
    ToReverseStereo* {.importc: "ToReverseStereo".}: Standard_Boolean ## !< flag to reverse stereo pair, FALSE by default
    ToMirrorComposer* {.importc: "ToMirrorComposer".}: Standard_Boolean ## !< if output device is an external composer - mirror rendering results in window in addition to sending frame to composer, TRUE by default
    StatsPosition* {.importc: "StatsPosition".}: handle[Graphic3d_TransformPers] ## !< location of stats, upper-left position by default
    ChartPosition* {.importc: "ChartPosition".}: handle[Graphic3d_TransformPers] ## !< location of stats chart, upper-right position by default
    ChartSize* {.importc: "ChartSize".}: Graphic3d_Vec2i ## !< chart size in pixels, (-1, -1) by default which means that chart will occupy a portion of viewport
    StatsTextAspect* {.importc: "StatsTextAspect".}: handle[Graphic3d_AspectText3d] ## !< stats text aspect
    StatsUpdateInterval* {.importc: "StatsUpdateInterval".}: Standard_ShortReal ## !< time interval between stats updates in seconds, 1.0 second by default;
                                                                            ## !  too often updates might impact performance and will smear text within widgets
                                                                            ## !  (especially framerate, which is better averaging);
                                                                            ## !  0.0 interval will force updating on each frame
    StatsTextHeight* {.importc: "StatsTextHeight".}: Standard_Integer ## !< stats text size; 16 by default
    StatsNbFrames* {.importc: "StatsNbFrames".}: Standard_Integer ## !< number of data frames to collect history; 1 by default
    StatsMaxChartTime* {.importc: "StatsMaxChartTime".}: Standard_ShortReal ## !< upper time limit within frame chart in seconds; 0.1 seconds by default (100 ms or 10 FPS)
    CollectedStats* {.importc: "CollectedStats".}: Graphic3d_RenderingParamsPerfCounters ## !< performance counters to collect, PerfCounters_Basic by default;
                                                                                     ## !  too verbose options might impact rendering performance,
                                                                                     ## !  because some counters might lack caching optimization (and will require expensive iteration through all data structures)
    ToShowStats* {.importc: "ToShowStats".}: Standard_Boolean ## !< display performance statistics, FALSE by default;
                                                          ## !  note that counters specified within CollectedStats will be updated nevertheless
                                                          ## !  of visibility of widget managed by ToShowStats flag (e.g. stats can be retrieved by application for displaying using other methods)
    Resolution* {.importc: "Resolution".}: cuint ## !< Pixels density (PPI), defines scaling factor for parameters like text size
                                             ## !  (when defined in screen-space units rather than in 3D) to be properly displayed
                                             ## !  on device (screen / printer). 72 is default value.
                                             ## !  Note that using difference resolution in different Views in same Viewer
                                             ## !  will lead to performance regression (for example, text will be recreated every time).

  Graphic3d_RenderingParamsAnaglyph* {.size: sizeof(cint), importcpp: "Graphic3d_RenderingParams::Anaglyph",
                                      header: "Graphic3d_RenderingParams.hxx".} = enum
    Anaglyph_RedCyan_Simple,  ## !< simple    filter for Red-Cyan      glasses (R+GB)
    Anaglyph_RedCyan_Optimized, ## !< optimized filter for Red-Cyan      glasses (R+GB)
    Anaglyph_YellowBlue_Simple, ## !< simple    filter for Yellow-Blue   glasses (RG+B)
    Anaglyph_YellowBlue_Optimized, ## !< optimized filter for Yellow-Blue   glasses (RG+B)
    Anaglyph_GreenMagenta_Simple, ## !< simple    filter for Green-Magenta glasses (G+RB)
    Anaglyph_UserDefined      ## !< use externally specified matrices


type
  Graphic3d_RenderingParamsPerfCounters* {.size: sizeof(cint),
      importcpp: "Graphic3d_RenderingParams::PerfCounters",
      header: "Graphic3d_RenderingParams.hxx".} = enum
    PerfCounters_NONE = 0x000,  ## !< no stats
    PerfCounters_FrameRate = 0x001, ## !< Frame Rate,        frames per second (number of frames within elapsed time)
    PerfCounters_CPU = 0x002,   ## !< CPU utilization as frames per second (number of frames within CPU utilization time (rendering thread))
    PerfCounters_Layers = 0x004, ## !< count layers (groups of structures)
    PerfCounters_Structures = 0x008, ## !< count low-level Structures (normal unhighlighted Presentable Object is usually represented by 1 Structure)
                                  ##
    PerfCounters_Groups = 0x010, ## !< count primitive Groups (1 Structure holds 1 or more primitive Group)
    PerfCounters_GroupArrays = 0x020, ## !< count Arrays within Primitive Groups (optimal primitive Group holds 1 Array)
                                   ##
    PerfCounters_Triangles = 0x040, ## !< count Triangles
    PerfCounters_Points = 0x080, ## !< count Points
    PerfCounters_Lines = 0x100, ## !< count Line segments
                             ##
    PerfCounters_EstimMem = 0x200, ## !< estimated GPU memory usage
                                ##
    PerfCounters_FrameTime = 0x400, ## !< frame CPU utilization time (rendering thread); @sa Graphic3d_FrameStatsTimer
    PerfCounters_FrameTimeMax = 0x800, ## !< maximum frame times
                                    ##
    PerfCounters_SkipImmediate = 0x1000, ## !< do not include immediate viewer updates (e.g. lazy updates without redrawing entire view content)
                                      ## ! show basic statistics
    PerfCounters_Basic = PerfCounters_FrameRate or PerfCounters_CPU or
        PerfCounters_Layers or PerfCounters_Structures, ## ! extended (verbose) statistics
    PerfCounters_Extended = PerfCounters_Basic or PerfCounters_Groups or
        PerfCounters_GroupArrays or PerfCounters_Triangles or PerfCounters_Points or
        PerfCounters_Lines or PerfCounters_EstimMem, ## ! all counters
    PerfCounters_All = PerfCounters_Extended or PerfCounters_FrameTime or
        PerfCounters_FrameTimeMax


type
  Graphic3d_RenderingParamsFrustumCulling* {.size: sizeof(cint),
      importcpp: "Graphic3d_RenderingParams::FrustumCulling",
      header: "Graphic3d_RenderingParams.hxx".} = enum
    FrustumCulling_Off,       ## !< culling is disabled
    FrustumCulling_On,        ## !< culling is active, and the list of culled entities is automatically updated before redraw
    FrustumCulling_NoUpdate   ## !< culling is active, but the list of culled entities is not updated


proc constructGraphic3d_RenderingParams*(): Graphic3d_RenderingParams {.
    constructor, importcpp: "Graphic3d_RenderingParams(@)",
    header: "Graphic3d_RenderingParams.hxx".}
proc ResolutionRatio*(this: Graphic3d_RenderingParams): Standard_ShortReal {.
    noSideEffect, importcpp: "ResolutionRatio",
    header: "Graphic3d_RenderingParams.hxx".}
proc DumpJson*(this: Graphic3d_RenderingParams; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Graphic3d_RenderingParams.hxx".}