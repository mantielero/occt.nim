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

discard "forward decl of OpenGl_GlFunctions"
discard "forward decl of OpenGl_ArbTBO"
discard "forward decl of OpenGl_ArbIns"
discard "forward decl of OpenGl_ArbDbg"
discard "forward decl of OpenGl_ArbFBO"
discard "forward decl of OpenGl_ArbFBOBlit"
discard "forward decl of OpenGl_ArbSamplerObject"
discard "forward decl of OpenGl_ArbTexBindless"
discard "forward decl of OpenGl_ExtGS"
discard "forward decl of OpenGl_TmplCore12"
type
  OpenGlGlCore12* = OpenGlTmplCore12[OpenGlGlCore11]
  OpenGlGlCore12Fwd* = OpenGlTmplCore12[OpenGlGlCore11Fwd]

discard "forward decl of OpenGl_GlCore13"
discard "forward decl of OpenGl_GlCore13Fwd"
discard "forward decl of OpenGl_TmplCore14"
type
  OpenGlGlCore14* = OpenGlTmplCore14[OpenGlGlCore13]
  OpenGlGlCore14Fwd* = OpenGlTmplCore14[OpenGlGlCore13Fwd]

discard "forward decl of OpenGl_TmplCore15"
type
  OpenGlGlCore15* = OpenGlTmplCore15[OpenGlGlCore14]
  OpenGlGlCore15Fwd* = OpenGlTmplCore15[OpenGlGlCore14Fwd]

discard "forward decl of OpenGl_TmplCore20"
type
  OpenGlGlCore20* = OpenGlTmplCore20[OpenGlGlCore15]
  OpenGlGlCore20Fwd* = OpenGlTmplCore20[OpenGlGlCore15Fwd]

discard "forward decl of OpenGl_TmplCore21"
type
  OpenGlGlCore21* = OpenGlTmplCore21[OpenGlGlCore20]
  OpenGlGlCore21Fwd* = OpenGlTmplCore21[OpenGlGlCore20Fwd]

discard "forward decl of OpenGl_TmplCore30"
type
  OpenGlGlCore30* = OpenGlTmplCore30[OpenGlGlCore21]
  OpenGlGlCore30Fwd* = OpenGlTmplCore30[OpenGlGlCore21Fwd]

discard "forward decl of OpenGl_TmplCore31"
type
  OpenGlGlCore31Back* = OpenGlTmplCore31[OpenGlGlCore30]
  OpenGlGlCore31* = OpenGlTmplCore31[OpenGlGlCore30Fwd]

discard "forward decl of OpenGl_TmplCore32"
type
  OpenGlGlCore32Back* = OpenGlTmplCore32[OpenGlGlCore31Back]
  OpenGlGlCore32* = OpenGlTmplCore32[OpenGlGlCore31]

discard "forward decl of OpenGl_TmplCore33"
type
  OpenGlGlCore33Back* = OpenGlTmplCore33[OpenGlGlCore32Back]
  OpenGlGlCore33* = OpenGlTmplCore33[OpenGlGlCore32]

discard "forward decl of OpenGl_TmplCore40"
type
  OpenGlGlCore40Back* = OpenGlTmplCore40[OpenGlGlCore33Back]
  OpenGlGlCore40* = OpenGlTmplCore40[OpenGlGlCore33]

discard "forward decl of OpenGl_TmplCore41"
type
  OpenGlGlCore41Back* = OpenGlTmplCore41[OpenGlGlCore40Back]
  OpenGlGlCore41* = OpenGlTmplCore41[OpenGlGlCore40]

discard "forward decl of OpenGl_TmplCore42"
type
  OpenGlGlCore42Back* = OpenGlTmplCore42[OpenGlGlCore41Back]
  OpenGlGlCore42* = OpenGlTmplCore42[OpenGlGlCore41]

discard "forward decl of OpenGl_TmplCore43"
type
  OpenGlGlCore43Back* = OpenGlTmplCore43[OpenGlGlCore42Back]
  OpenGlGlCore43* = OpenGlTmplCore43[OpenGlGlCore42]

discard "forward decl of OpenGl_TmplCore44"
type
  OpenGlGlCore44Back* = OpenGlTmplCore44[OpenGlGlCore43Back]
  OpenGlGlCore44* = OpenGlTmplCore44[OpenGlGlCore43]

discard "forward decl of OpenGl_TmplCore45"
type
  OpenGlGlCore45Back* = OpenGlTmplCore45[OpenGlGlCore44Back]
  OpenGlGlCore45* = OpenGlTmplCore45[OpenGlGlCore44]

discard "forward decl of Graphic3d_Camera"
discard "forward decl of Graphic3d_PresentationAttributes"
discard "forward decl of OpenGl_Aspects"
discard "forward decl of OpenGl_FrameBuffer"
discard "forward decl of OpenGl_Sampler"
discard "forward decl of OpenGl_ShaderProgram"
discard "forward decl of OpenGl_ShaderManager"
discard "forward decl of OpenGl_FrameStats"
type
  OpenGlFeatureFlag* {.size: sizeof(cint), importcpp: "OpenGl_FeatureFlag",
                      header: "OpenGl_Context.hxx".} = enum
    OpenGlFeatureNotAvailable = 0, ## !< Feature is not supported by OpenGl implementation.
    OpenGlFeatureInExtensions = 1, ## !< Feature is supported as extension.
    OpenGlFeatureInCore = 2


type
  HandleOpenGlContext* = Handle[OpenGlContext]

## ! This class generalize access to the GL context and available extensions.
## !
## ! Functions related to specific OpenGL version or extension are grouped into structures which can be accessed as fields of this class.
## ! The most simple way to check that required functionality is available - is NULL check for the group:
## ! @code
## !   if (myContext->core20 != NULL)
## !   {
## !     myGlProgram = myContext->core20->glCreateProgram();
## !     .. do more stuff ..
## !   }
## !   else
## !   {
## !     .. compatibility with outdated configurations ..
## !   }
## ! @endcode
## !
## ! Current implementation provide access to OpenGL core functionality up to 4.4 version (core12, core13, core14, core15, fields core20)
## ! as well as several extensions (arbTBO, arbFBO, etc.).
## !
## ! OpenGL context might be initialized in Core Profile. In this case deprecated functionality become unavailable.
## ! To make code easily adaptable to wide range of OpenGL versions, function sets related to each version has two kinds of suffixes:
## !  - "back" for version 3.2+.
## !     Represents function set for Backward-Compatible Profile.
## !     Function sets without this suffix represents core profile.
## !  - "fwd"  for version 3.0-.
## !     Represents non-deprecated function set of earlier OpenGL versions, which are still available within OpenGL 3.2 Core Profile.
## !     Function sets without this suffix represents complete list of functions related to specific OpenGL version.
## !
## ! To select which core** function set should be used in specific case:
## !  - Determine the minimal OpenGL version required for implemented functionality and use it to access all functions.
## !    For example, if algorithm requires OpenGL 2.1+, it is better to write core20fwd->glEnable() rather than core11fwd->glEnable() for uniformity.
## !  - If functionality will work within Core Profile, use function sets with appropriate suffix.
## !  - Validate minimal requirements at initialization/creation time and omit checks within code where algorithm should be already initialized.
## !    Properly escape code incompatible with Core Profile. The simplest way to check Core Profile is "if (core11 == NULL)".
## !
## ! Simplified extensions classification:
## !  - prefixed with NV, AMD, ATI are vendor-specific (however may be provided by other vendors in some cases);
## !  - prefixed with EXT are accepted by 2+ vendors;
## !  - prefixed with ARB are accepted by Architecture Review Board and are candidates
## !    for inclusion into GL core functionality.
## ! Some functionality can be represented in several extensions simultaneously.
## ! In this case developer should be careful because different specification may differ
## ! in aspects (like enumeration values and error-handling).
## !
## ! Notice that some systems provide mechanisms to simultaneously incorporate with GL contexts with different capabilities.
## ! For this reason OpenGl_Context should be initialized and used for each GL context independently.
## !
## ! Matrices of OpenGl transformations:
## ! model -> world -> view -> projection
## ! These matrices might be changed for local transformation, transform persistent using direct access to
## ! current matrix of ModelWorldState, WorldViewState and ProjectionState
## ! After, these matrices should be applyed using ApplyModelWorldMatrix, ApplyWorldViewMatrix,
## ! ApplyModelViewMatrix or ApplyProjectionMatrix.

type
  OpenGlContext* {.importcpp: "OpenGl_Context", header: "OpenGl_Context.hxx", bycopy.} = object of StandardTransient ##
                                                                                                           ## !
                                                                                                           ## Empty
                                                                                                           ## constructor.
                                                                                                           ## You
                                                                                                           ## should
                                                                                                           ## call
                                                                                                           ## Init()
                                                                                                           ## to
                                                                                                           ## perform
                                                                                                           ## initialization
                                                                                                           ## with
                                                                                                           ## bound
                                                                                                           ## GL
                                                                                                           ## context.
                                                                                                           ##
                                                                                                           ## !
                                                                                                           ## Either
                                                                                                           ## GL_CLAMP_TO_EDGE
                                                                                                           ## (1.2+)
                                                                                                           ## or
                                                                                                           ## GL_CLAMP
                                                                                                           ## (1.1).
                                                                                                           ##
                                                                                                           ## !
                                                                                                           ## @return
                                                                                                           ## messenger
                                                                                                           ## instance
                                                                                                           ##
                                                                                                           ## !
                                                                                                           ## @name
                                                                                                           ## methods
                                                                                                           ## to
                                                                                                           ## alter
                                                                                                           ## or
                                                                                                           ## retrieve
                                                                                                           ## current
                                                                                                           ## state
                                                                                                           ##
                                                                                                           ## !
                                                                                                           ## Return
                                                                                                           ## structure
                                                                                                           ## holding
                                                                                                           ## frame
                                                                                                           ## statistics.
                                                                                                           ##
                                                                                                           ## !
                                                                                                           ## Wrapper
                                                                                                           ## to
                                                                                                           ## system
                                                                                                           ## function
                                                                                                           ## to
                                                                                                           ## retrieve
                                                                                                           ## GL
                                                                                                           ## function
                                                                                                           ## pointer
                                                                                                           ## by
                                                                                                           ## name.
                                                                                                           ##
                                                                                                           ## !
                                                                                                           ## @name
                                                                                                           ## core
                                                                                                           ## profiles
                                                                                                           ##
                                                                                                           ## !
                                                                                                           ## @name
                                                                                                           ## extensions
                                                                                                           ##
                                                                                                           ## !
                                                                                                           ## @name
                                                                                                           ## public
                                                                                                           ## properties
                                                                                                           ## tracking
                                                                                                           ## current
                                                                                                           ## state
                                                                                                           ##
                                                                                                           ## system-dependent
                                                                                                           ## fields
                                                                                                           ##
                                                                                                           ## #if
                                                                                                           ## defined(HAVE_EGL)
                                                                                                           ##
                                                                                                           ## Aspect_Drawable
                                                                                                           ## myWindow;
                                                                                                           ## //!<
                                                                                                           ## EGL
                                                                                                           ## surface
                                                                                                           ## :
                                                                                                           ## EGLSurface
                                                                                                           ##
                                                                                                           ## Aspect_Display
                                                                                                           ## myDisplay;
                                                                                                           ## //!<
                                                                                                           ## EGL
                                                                                                           ## connection
                                                                                                           ## to
                                                                                                           ## the
                                                                                                           ## Display
                                                                                                           ## :
                                                                                                           ## EGLDisplay
                                                                                                           ##
                                                                                                           ## Aspect_RenderingContext
                                                                                                           ## myGContext;
                                                                                                           ## //!<
                                                                                                           ## EGL
                                                                                                           ## rendering
                                                                                                           ## context
                                                                                                           ## :
                                                                                                           ## EGLContext
                                                                                                           ##
                                                                                                           ## #elif
                                                                                                           ## defined(_WIN32)
                                                                                                           ##
                                                                                                           ## Aspect_Handle
                                                                                                           ## myWindow;
                                                                                                           ## //!<
                                                                                                           ## window
                                                                                                           ## handle
                                                                                                           ## (owner
                                                                                                           ## of
                                                                                                           ## GL
                                                                                                           ## context)
                                                                                                           ## :
                                                                                                           ## HWND
                                                                                                           ##
                                                                                                           ## Aspect_Handle
                                                                                                           ## myWindowDC;
                                                                                                           ## //!<
                                                                                                           ## Device
                                                                                                           ## Descriptor
                                                                                                           ## handle
                                                                                                           ## :
                                                                                                           ## HDC
                                                                                                           ##
                                                                                                           ## Aspect_RenderingContext
                                                                                                           ## myGContext;
                                                                                                           ## //!<
                                                                                                           ## Rendering
                                                                                                           ## Context
                                                                                                           ## handle
                                                                                                           ## :
                                                                                                           ## HGLRC
                                                                                                           ##
                                                                                                           ## #elif
                                                                                                           ## defined(__APPLE__)
                                                                                                           ## &&
                                                                                                           ## !defined(MACOSX_USE_GLX)
                                                                                                           ##
                                                                                                           ## #if
                                                                                                           ## defined(TARGET_OS_IPHONE)
                                                                                                           ## &&
                                                                                                           ## TARGET_OS_IPHONE
                                                                                                           ##
                                                                                                           ## EAGLContext*
                                                                                                           ## myGContext;
                                                                                                           ## //!<
                                                                                                           ## Rendering
                                                                                                           ## Context
                                                                                                           ## handle
                                                                                                           ##
                                                                                                           ## #else
                                                                                                           ##
                                                                                                           ## NSOpenGLContext*
                                                                                                           ## myGContext;
                                                                                                           ## //!<
                                                                                                           ## Rendering
                                                                                                           ## Context
                                                                                                           ## handle
                                                                                                           ##
                                                                                                           ## #endif
                                                                                                           ##
                                                                                                           ## #else
                                                                                                           ##
                                                                                                           ## context
                                                                                                           ## info
                                                                                                           ##
                                                                                                           ## !
                                                                                                           ## @name
                                                                                                           ## fields
                                                                                                           ## tracking
                                                                                                           ## current
                                                                                                           ## state
                                                                                                           ##
                                                                                                           ## !
                                                                                                           ## Copying
                                                                                                           ## allowed
                                                                                                           ## only
                                                                                                           ## within
                                                                                                           ## Handles
    core11* {.importc: "core11".}: ptr OpenGlGlCore11 ## !< OpenGL 1.1 core functionality
    core11fwd* {.importc: "core11fwd".}: ptr OpenGlGlCore11Fwd ## !< OpenGL 1.1 without deprecated entry points
    core15* {.importc: "core15".}: ptr OpenGlGlCore15 ## !< OpenGL 1.5 core functionality
    core15fwd* {.importc: "core15fwd".}: ptr OpenGlGlCore15Fwd ## !< OpenGL 1.5 without deprecated entry points
    core20* {.importc: "core20".}: ptr OpenGlGlCore20 ## !< OpenGL 2.0 core functionality (includes 1.5)
    core20fwd* {.importc: "core20fwd".}: ptr OpenGlGlCore20Fwd ## !< OpenGL 2.0 without deprecated entry points
    core30* {.importc: "core30".}: ptr OpenGlGlCore30 ## !< OpenGL 3.0 core functionality
    core30fwd* {.importc: "core30fwd".}: ptr OpenGlGlCore30Fwd ## !< OpenGL 3.0 without deprecated entry points
    core32* {.importc: "core32".}: ptr OpenGlGlCore32 ## !< OpenGL 3.2 core profile
    core32back* {.importc: "core32back".}: ptr OpenGlGlCore32Back ## !< OpenGL 3.2 backward compatibility profile
    core33* {.importc: "core33".}: ptr OpenGlGlCore33 ## !< OpenGL 3.3 core profile
    core33back* {.importc: "core33back".}: ptr OpenGlGlCore33Back ## !< OpenGL 3.3 backward compatibility profile
    core41* {.importc: "core41".}: ptr OpenGlGlCore41 ## !< OpenGL 4.1 core profile
    core41back* {.importc: "core41back".}: ptr OpenGlGlCore41Back ## !< OpenGL 4.1 backward compatibility profile
    core42* {.importc: "core42".}: ptr OpenGlGlCore42 ## !< OpenGL 4.2 core profile
    core42back* {.importc: "core42back".}: ptr OpenGlGlCore42Back ## !< OpenGL 4.2 backward compatibility profile
    core43* {.importc: "core43".}: ptr OpenGlGlCore43 ## !< OpenGL 4.3 core profile
    core43back* {.importc: "core43back".}: ptr OpenGlGlCore43Back ## !< OpenGL 4.3 backward compatibility profile
    core44* {.importc: "core44".}: ptr OpenGlGlCore44 ## !< OpenGL 4.4 core profile
    core44back* {.importc: "core44back".}: ptr OpenGlGlCore44Back ## !< OpenGL 4.4 backward compatibility profile
    core45* {.importc: "core45".}: ptr OpenGlGlCore45 ## !< OpenGL 4.5 core profile
    core45back* {.importc: "core45back".}: ptr OpenGlGlCore45Back ## !< OpenGL 4.5 backward compatibility profile
    caps* {.importc: "caps".}: Handle[OpenGlCaps] ## !< context options
    hasGetBufferData* {.importc: "hasGetBufferData".}: bool ## !< flag indicating if GetBufferSubData() is supported
    hasHighp* {.importc: "hasHighp".}: bool ## !< highp in GLSL ES fragment shader is supported
    hasUintIndex* {.importc: "hasUintIndex".}: bool ## !< GLuint for index buffer is supported (always available on desktop; on OpenGL ES - since 3.0 or as extension GL_OES_element_index_uint)
    hasTexRGBA8* {.importc: "hasTexRGBA8".}: bool ## !< always available on desktop; on OpenGL ES - since 3.0 or as extension GL_OES_rgb8_rgba8
    hasTexFloatLinear* {.importc: "hasTexFloatLinear".}: bool ## !< texture-filterable state for 32-bit floating texture formats (always on desktop, GL_OES_texture_float_linear within OpenGL ES)
    hasTexSRGB* {.importc: "hasTexSRGB".}: bool ## !< sRGB texture    formats (desktop OpenGL 2.1, OpenGL ES 3.0 or GL_EXT_texture_sRGB)
    hasFboSRGB* {.importc: "hasFboSRGB".}: bool ## !< sRGB FBO render targets (desktop OpenGL 2.1, OpenGL ES 3.0)
    hasSRGBControl* {.importc: "hasSRGBControl".}: bool ## !< sRGB write control (any desktop OpenGL, OpenGL ES + GL_EXT_sRGB_write_control extension)
    hasFlatShading* {.importc: "hasFlatShading".}: OpenGlFeatureFlag ## !< Complex flag indicating support of Flat shading (Graphic3d_TOSM_FACET) (always available on desktop; on OpenGL ES - since 3.0 or as extension GL_OES_standard_derivatives)
    hasGlslBitwiseOps* {.importc: "hasGlslBitwiseOps".}: OpenGlFeatureFlag ## !< GLSL supports bitwise operations; OpenGL 3.0 / OpenGL ES 3.0 (GLSL 130 / GLSL ES 300) or OpenGL 2.1 + GL_EXT_gpu_shader4
    hasDrawBuffers* {.importc: "hasDrawBuffers".}: OpenGlFeatureFlag ## !< Complex flag indicating support of multiple draw buffers (desktop OpenGL 2.0, OpenGL ES 3.0, GL_ARB_draw_buffers, GL_EXT_draw_buffers)
    hasFloatBuffer* {.importc: "hasFloatBuffer".}: OpenGlFeatureFlag ## !< Complex flag indicating support of float color buffer format (desktop OpenGL 3.0, GL_ARB_color_buffer_float, GL_EXT_color_buffer_float)
    hasHalfFloatBuffer* {.importc: "hasHalfFloatBuffer".}: OpenGlFeatureFlag ## !< Complex flag indicating support of half-float color buffer format (desktop OpenGL 3.0, GL_ARB_color_buffer_float, GL_EXT_color_buffer_half_float)
    hasSampleVariables* {.importc: "hasSampleVariables".}: OpenGlFeatureFlag ## !< Complex flag indicating support of MSAA variables in GLSL shader (desktop OpenGL 4.0, GL_ARB_sample_shading)
    hasGeometryStage* {.importc: "hasGeometryStage".}: OpenGlFeatureFlag ## !< Complex flag indicating support of Geometry shader (desktop OpenGL 3.2, OpenGL ES 3.2, GL_EXT_geometry_shader)
    arbDrawBuffers* {.importc: "arbDrawBuffers".}: bool ## !< GL_ARB_draw_buffers
    arbNPTW* {.importc: "arbNPTW".}: bool ## !< GL_ARB_texture_non_power_of_two
    arbTexRG* {.importc: "arbTexRG".}: bool ## !< GL_ARB_texture_rg
    arbTexFloat* {.importc: "arbTexFloat".}: bool ## !< GL_ARB_texture_float (on desktop OpenGL - since 3.0 or as extension GL_ARB_texture_float; on OpenGL ES - since 3.0); @sa hasTexFloatLinear for linear filtering support
    arbSamplerObject* {.importc: "arbSamplerObject".}: ptr OpenGlArbSamplerObject ## !< GL_ARB_sampler_objects (on desktop OpenGL - since 3.3 or as extension GL_ARB_sampler_objects; on OpenGL ES - since 3.0)
    arbTexBindless* {.importc: "arbTexBindless".}: ptr OpenGlArbTexBindless ## !< GL_ARB_bindless_texture
    arbTBO* {.importc: "arbTBO".}: ptr OpenGlArbTBO ## !< GL_ARB_texture_buffer_object (on desktop OpenGL - since 3.1 or as extension GL_ARB_texture_buffer_object; on OpenGL ES - since 3.2)
    arbTboRGB32* {.importc: "arbTboRGB32".}: bool ## !< GL_ARB_texture_buffer_object_rgb32 (3-component TBO), in core since 4.0
    arbIns* {.importc: "arbIns".}: ptr OpenGlArbIns ## !< GL_ARB_draw_instanced (on desktop OpenGL - since 3.1 or as extebsion GL_ARB_draw_instanced; on OpenGL ES - since 3.0 or as extension GL_ANGLE_instanced_arrays to WebGL 1.0)
    arbDbg* {.importc: "arbDbg".}: ptr OpenGlArbDbg ## !< GL_ARB_debug_output (on desktop OpenGL - since 4.3 or as extension GL_ARB_debug_output; on OpenGL ES - since 3.2 or as extension GL_KHR_debug)
    arbFBO* {.importc: "arbFBO".}: ptr OpenGlArbFBO ## !< GL_ARB_framebuffer_object
    arbFBOBlit* {.importc: "arbFBOBlit".}: ptr OpenGlArbFBOBlit ## !< glBlitFramebuffer function, moved out from OpenGl_ArbFBO structure for compatibility with OpenGL ES 2.0
    arbSampleShading* {.importc: "arbSampleShading".}: bool ## !< GL_ARB_sample_shading
    extFragDepth* {.importc: "extFragDepth".}: bool ## !< GL_EXT_frag_depth on OpenGL ES 2.0 (gl_FragDepthEXT built-in variable, before OpenGL ES 3.0)
    extDrawBuffers* {.importc: "extDrawBuffers".}: bool ## !< GL_EXT_draw_buffers
    extGS* {.importc: "extGS".}: ptr OpenGlExtGS ## !< GL_EXT_geometry_shader4
    extBgra* {.importc: "extBgra".}: bool ## !< GL_EXT_bgra or GL_EXT_texture_format_BGRA8888 on OpenGL ES
    extAnis* {.importc: "extAnis".}: bool ## !< GL_EXT_texture_filter_anisotropic
    extPDS* {.importc: "extPDS".}: bool ## !< GL_EXT_packed_depth_stencil
    atiMem* {.importc: "atiMem".}: bool ## !< GL_ATI_meminfo
    nvxMem* {.importc: "nvxMem".}: bool ## !< GL_NVX_gpu_memory_info
    oesSampleVariables* {.importc: "oesSampleVariables".}: bool ## !< GL_OES_sample_variables
    oesStdDerivatives* {.importc: "oesStdDerivatives".}: bool ## !< GL_OES_standard_derivatives
    modelWorldState* {.importc: "ModelWorldState".}: OpenGlMatrixState[
        StandardShortReal]    ## !< state of orientation matrix
    worldViewState* {.importc: "WorldViewState".}: OpenGlMatrixState[
        StandardShortReal]    ## !< state of orientation matrix
    projectionState* {.importc: "ProjectionState".}: OpenGlMatrixState[
        StandardShortReal]    ## !< state of projection  matrix
    ## !< window handle (owner of GL context) : GLXDrawable
    ## !< connection to the X-server : Display*
    ## !< X-GLX rendering context : GLXContext
    ##  #endif
    ## !< shared resources with unique identification key
    ## !< shared resources for delayed release
    ## !< stack of resources for delayed clean up
    ## !< state of clip planes
    ## !< optional handle to GL library
    ## !< mega structure for all GL functions
    ## !< map of supported texture formats
    ## !< maximum level of anisotropy texture filter
    ## !< either GL_CLAMP_TO_EDGE (1.2+) or GL_CLAMP (1.1)
    ## !< value for GL_MAX_TEXTURE_SIZE
    ## !< value for GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS
    ## !< value for GL_MAX_TEXTURE_UNITS (fixed-function pipeline only)
    ## !< maximum FBO width  for image dump
    ## !< maximum FBO height for image dump
    ## !< value for GL_MAX_CLIP_PLANES
    ## !< value for GL_MAX_SAMPLES
    ## !< value for GL_MAX_DRAW_BUFFERS
    ## !< value for GL_MAX_COLOR_ATTACHMENTS
    ## !< cached GL version major number
    ## !< cached GL version minor number
    ## !< flag indicates initialization state
    ## !< context supports stereo buffering
    ## !< GL_NORMALIZE flag
    ## !< Used to tell OpenGl that normals should be normalized
    ## !< sampler2D occSamplerPointSprite, texture unit for point sprite texture
    ## ! indicates whether ray tracing mode is supported
    ## ! indicates whether textures in ray tracing mode are supported
    ## ! indicates whether adaptive screen sampling in ray tracing mode is supported
    ## ! indicates whether atomic adaptive screen sampling in ray tracing mode is supported
    ## !< indicates whether PBR shading model is supported
    ## !< sampler2D occEnvLUT, texture unit where environment lookup table is expected to be binded (0 if PBR is not supported)
    ## !< sampler2D occDiffIBLMapSHCoeffs, texture unit where diffuse (irradiance) IBL map's spherical harmonics coefficients is expected to  be binded
    ## !  (0 if PBR is not supported)
    ## !< samplerCube occSpecIBLMap, texture unit where specular IBL map is expected to  be binded (0 if PBR is not supported)
    ## ! support object for managing shader programs
    ## !< active camera object
    ## !< structure accumulating frame statistics
    ## !< currently active GLSL program
    ## !< currently bound textures
    ## !< currently active sampler objects
    ## !< currently active mock sampler objects
    ## !< default Frame Buffer Object
    ## !< resource holding predefined hatch styles patterns
    ## !< currently activated type of polygon hatch
    ## !< current enabled state of polygon hatching rasterization
    ## !< mock black texture returning (0, 0, 0, 0)
    ## !< mock white texture returning (1, 1, 1, 1)
    ## !< current viewport
    ## !< virtual viewport
    ## !< GL_POINT_SPRITE_COORD_ORIGIN state (GL_UPPER_LEFT by default)
    ## !< value for active rendering mode
    ## !< currently used shade model (glShadeModel)
    ## !< currently used polygon rasterization mode (glPolygonMode)
    ## !< currently applied polygon offset
    ## !< back face culling mode enabled state (glIsEnabled (GL_CULL_FACE))
    ## !< current read buffer
    ## !< current draw buffers
    ## !< default Vertex Array Object
    ## !< flag indicating writing into color buffer is enabled or disabled (glColorMask)
    ## !< flag allowing   GL_SAMPLE_ALPHA_TO_COVERAGE usage
    ## !< flag indicating GL_SAMPLE_ALPHA_TO_COVERAGE state
    ## !< debug context initialization state
    ## !< indicates that window buffer is sRGB-ready
    ## !< flag indicating GL_FRAMEBUFFER_SRGB state
    ## !< Graphics Driver's vendor
    ## !< messages suppressing filter (for sources from GL_DEBUG_SOURCE_API_ARB to GL_DEBUG_SOURCE_OTHER_ARB)
    ## !< Pixels density (PPI), defines scaling factor for parameters like text size
    ## !< scaling factor for parameters like text size
    ## !  to be properly displayed on device (screen / printer)
    ## !< scaling factor for line width
    ## !< line feater width in pixels
    ## !< scaling factor for rendering resolution
    ## !< scaling factor for rendering resolution (inverted value)
    ## !< current front material state (cached to reduce GL context updates)
    ## !< current back  material state

  OpenGlContextOpenGlResourcesMap* = NCollectionShared[
      NCollectionDataMap[TCollectionAsciiString, Handle[OpenGlResource]]]

proc getPowerOfTwo*(theNumber: cint; theThreshold: cint): cint {.cdecl,
    importcpp: "OpenGl_Context::GetPowerOfTwo(@)", dynlib: tkkxbase.}
proc newOpenGlContext*(theCaps: Handle[OpenGlCaps] = nil): OpenGlContext {.cdecl,
    constructor, importcpp: "OpenGl_Context(@)", dynlib: tkkxbase.}
proc destroyOpenGlContext*(this: var OpenGlContext) {.cdecl,
    importcpp: "#.~OpenGl_Context()", dynlib: tkkxbase.}
proc forcedRelease*(this: var OpenGlContext) {.cdecl, importcpp: "forcedRelease",
    dynlib: tkkxbase.}
proc share*(this: var OpenGlContext; theShareCtx: Handle[OpenGlContext]) {.cdecl,
    importcpp: "Share", dynlib: tkkxbase.}
proc init*(this: var OpenGlContext; theIsCoreProfile: bool = false): bool {.cdecl,
    importcpp: "Init", dynlib: tkkxbase.}
proc isValid*(this: OpenGlContext): bool {.noSideEffect, cdecl, importcpp: "IsValid",
                                       dynlib: tkkxbase.}
proc init*(this: var OpenGlContext; theWindow: AspectDrawable;
          theDisplay: AspectDisplay; theGContext: AspectRenderingContext;
          theIsCoreProfile: bool = false): bool {.cdecl, importcpp: "Init",
    dynlib: tkkxbase.}
proc window*(this: OpenGlContext): AspectDrawable {.noSideEffect, cdecl,
    importcpp: "Window", dynlib: tkkxbase.}
proc readGlVersion*(theGlVerMajor: var cint; theGlVerMinor: var cint) {.cdecl,
    importcpp: "OpenGl_Context::ReadGlVersion(@)", dynlib: tkkxbase.}
proc checkExtension*(this: OpenGlContext; theExtName: cstring): bool {.noSideEffect,
    cdecl, importcpp: "CheckExtension", dynlib: tkkxbase.}
proc checkExtension*(theExtString: cstring; theExtName: cstring): bool {.cdecl,
    importcpp: "OpenGl_Context::CheckExtension(@)", dynlib: tkkxbase.}
proc findProcVerbose*[FuncTypeT](this: var OpenGlContext;
                                theLastFailFuncName: cstring;
                                theFuncName: cstring; theFuncPtr: var FuncTypeT): bool {.
    cdecl, importcpp: "FindProcVerbose", dynlib: tkkxbase.}
proc findProc*[FuncTypeT](this: var OpenGlContext; theFuncName: cstring;
                         theFuncPtr: var FuncTypeT): bool {.cdecl,
    importcpp: "FindProc", dynlib: tkkxbase.}
proc isGlGreaterEqual*(this: OpenGlContext; theVerMajor: cint; theVerMinor: cint): bool {.
    noSideEffect, cdecl, importcpp: "IsGlGreaterEqual", dynlib: tkkxbase.}
proc versionMajor*(this: OpenGlContext): cint {.noSideEffect, cdecl,
    importcpp: "VersionMajor", dynlib: tkkxbase.}
proc versionMinor*(this: OpenGlContext): cint {.noSideEffect, cdecl,
    importcpp: "VersionMinor", dynlib: tkkxbase.}
proc functions*(this: OpenGlContext): ptr OpenGlGlFunctions {.noSideEffect, cdecl,
    importcpp: "Functions", dynlib: tkkxbase.}
proc resetErrors*(this: var OpenGlContext; theToPrintErrors: bool = false): bool {.cdecl,
    importcpp: "ResetErrors", dynlib: tkkxbase.}
proc isCurrent*(this: OpenGlContext): bool {.noSideEffect, cdecl,
    importcpp: "IsCurrent", dynlib: tkkxbase.}
proc makeCurrent*(this: var OpenGlContext): bool {.cdecl, importcpp: "MakeCurrent",
    dynlib: tkkxbase.}
proc swapBuffers*(this: var OpenGlContext) {.cdecl, importcpp: "SwapBuffers",
    dynlib: tkkxbase.}
proc setSwapInterval*(this: var OpenGlContext; theInterval: cint): bool {.cdecl,
    importcpp: "SetSwapInterval", dynlib: tkkxbase.}
proc isRender*(this: OpenGlContext): bool {.noSideEffect, cdecl,
                                        importcpp: "IsRender", dynlib: tkkxbase.}
proc isFeedback*(this: OpenGlContext): bool {.noSideEffect, cdecl,
    importcpp: "IsFeedback", dynlib: tkkxbase.}
proc availableMemory*(this: OpenGlContext): csize_t {.noSideEffect, cdecl,
    importcpp: "AvailableMemory", dynlib: tkkxbase.}
proc memoryInfo*(this: OpenGlContext): TCollectionAsciiString {.noSideEffect, cdecl,
    importcpp: "MemoryInfo", dynlib: tkkxbase.}
proc memoryInfo*(this: OpenGlContext;
                theDict: var TColStdIndexedDataMapOfStringString) {.noSideEffect,
    cdecl, importcpp: "MemoryInfo", dynlib: tkkxbase.}
proc diagnosticInformation*(this: OpenGlContext;
                           theDict: var TColStdIndexedDataMapOfStringString;
                           theFlags: Graphic3dDiagnosticInfo) {.noSideEffect,
    cdecl, importcpp: "DiagnosticInformation", dynlib: tkkxbase.}
proc getResource*(this: OpenGlContext; theKey: TCollectionAsciiString): Handle[
    OpenGlResource] {.noSideEffect, cdecl, importcpp: "GetResource", dynlib: tkkxbase.}
proc getResource*[TheHandleType](this: OpenGlContext;
                                theKey: TCollectionAsciiString;
                                theValue: var TheHandleType): bool {.noSideEffect,
    cdecl, importcpp: "GetResource", dynlib: tkkxbase.}
proc shareResource*(this: var OpenGlContext; theKey: TCollectionAsciiString;
                   theResource: Handle[OpenGlResource]): bool {.cdecl,
    importcpp: "ShareResource", dynlib: tkkxbase.}
proc releaseResource*(this: var OpenGlContext; theKey: TCollectionAsciiString;
                     theToDelay: bool = false) {.cdecl, importcpp: "ReleaseResource",
    dynlib: tkkxbase.}
proc delayedRelease*[T](this: var OpenGlContext; theResource: var Handle[T]) {.cdecl,
    importcpp: "DelayedRelease", dynlib: tkkxbase.}
proc releaseDelayed*(this: var OpenGlContext) {.cdecl, importcpp: "ReleaseDelayed",
    dynlib: tkkxbase.}
proc sharedResources*(this: OpenGlContext): OpenGlContextOpenGlResourcesMap {.
    noSideEffect, cdecl, importcpp: "SharedResources", dynlib: tkkxbase.}
proc changeClipping*(this: var OpenGlContext): var OpenGlClipping {.cdecl,
    importcpp: "ChangeClipping", dynlib: tkkxbase.}
proc clipping*(this: OpenGlContext): OpenGlClipping {.noSideEffect, cdecl,
    importcpp: "Clipping", dynlib: tkkxbase.}
proc shaderManager*(this: OpenGlContext): Handle[OpenGlShaderManager] {.
    noSideEffect, cdecl, importcpp: "ShaderManager", dynlib: tkkxbase.}
proc textureWrapClamp*(this: OpenGlContext): cint {.noSideEffect, cdecl,
    importcpp: "TextureWrapClamp", dynlib: tkkxbase.}
proc hasTextureBaseLevel*(this: OpenGlContext): bool {.noSideEffect, cdecl,
    importcpp: "HasTextureBaseLevel", dynlib: tkkxbase.}
proc supportedTextureFormats*(this: OpenGlContext): Handle[ImageSupportedFormats] {.
    noSideEffect, cdecl, importcpp: "SupportedTextureFormats", dynlib: tkkxbase.}
proc maxDegreeOfAnisotropy*(this: OpenGlContext): cint {.noSideEffect, cdecl,
    importcpp: "MaxDegreeOfAnisotropy", dynlib: tkkxbase.}
proc maxTextureSize*(this: OpenGlContext): cint {.noSideEffect, cdecl,
    importcpp: "MaxTextureSize", dynlib: tkkxbase.}
proc maxCombinedTextureUnits*(this: OpenGlContext): cint {.noSideEffect, cdecl,
    importcpp: "MaxCombinedTextureUnits", dynlib: tkkxbase.}
proc maxTextureUnitsFFP*(this: OpenGlContext): cint {.noSideEffect, cdecl,
    importcpp: "MaxTextureUnitsFFP", dynlib: tkkxbase.}
proc spriteTextureUnit*(this: OpenGlContext): Graphic3dTextureUnit {.noSideEffect,
    cdecl, importcpp: "SpriteTextureUnit", dynlib: tkkxbase.}
proc maxMsaaSamples*(this: OpenGlContext): cint {.noSideEffect, cdecl,
    importcpp: "MaxMsaaSamples", dynlib: tkkxbase.}
proc maxDumpSizeX*(this: OpenGlContext): cint {.noSideEffect, cdecl,
    importcpp: "MaxDumpSizeX", dynlib: tkkxbase.}
proc maxDumpSizeY*(this: OpenGlContext): cint {.noSideEffect, cdecl,
    importcpp: "MaxDumpSizeY", dynlib: tkkxbase.}
proc maxDrawBuffers*(this: OpenGlContext): cint {.noSideEffect, cdecl,
    importcpp: "MaxDrawBuffers", dynlib: tkkxbase.}
proc maxColorAttachments*(this: OpenGlContext): cint {.noSideEffect, cdecl,
    importcpp: "MaxColorAttachments", dynlib: tkkxbase.}
proc maxClipPlanes*(this: OpenGlContext): cint {.noSideEffect, cdecl,
    importcpp: "MaxClipPlanes", dynlib: tkkxbase.}
proc hasRayTracing*(this: OpenGlContext): bool {.noSideEffect, cdecl,
    importcpp: "HasRayTracing", dynlib: tkkxbase.}
proc hasRayTracingTextures*(this: OpenGlContext): bool {.noSideEffect, cdecl,
    importcpp: "HasRayTracingTextures", dynlib: tkkxbase.}
proc hasRayTracingAdaptiveSampling*(this: OpenGlContext): bool {.noSideEffect, cdecl,
    importcpp: "HasRayTracingAdaptiveSampling", dynlib: tkkxbase.}
proc hasRayTracingAdaptiveSamplingAtomic*(this: OpenGlContext): bool {.noSideEffect,
    cdecl, importcpp: "HasRayTracingAdaptiveSamplingAtomic", dynlib: tkkxbase.}
proc hasSRGB*(this: OpenGlContext): bool {.noSideEffect, cdecl, importcpp: "HasSRGB",
                                       dynlib: tkkxbase.}
proc toRenderSRGB*(this: OpenGlContext): bool {.noSideEffect, cdecl,
    importcpp: "ToRenderSRGB", dynlib: tkkxbase.}
proc isWindowSRGB*(this: OpenGlContext): bool {.noSideEffect, cdecl,
    importcpp: "IsWindowSRGB", dynlib: tkkxbase.}
proc setWindowSRGB*(this: var OpenGlContext; theIsSRgb: bool) {.cdecl,
    importcpp: "SetWindowSRGB", dynlib: tkkxbase.}
proc vec4FromQuantityColor*(this: OpenGlContext; theColor: OpenGlVec4): OpenGlVec4 {.
    noSideEffect, cdecl, importcpp: "Vec4FromQuantityColor", dynlib: tkkxbase.}
proc vec4LinearFromQuantityColor*(this: OpenGlContext; theColor: OpenGlVec4): OpenGlVec4 {.
    noSideEffect, cdecl, importcpp: "Vec4LinearFromQuantityColor", dynlib: tkkxbase.}
proc vec4sRGBFromQuantityColor*(this: OpenGlContext; theColor: OpenGlVec4): OpenGlVec4 {.
    noSideEffect, cdecl, importcpp: "Vec4sRGBFromQuantityColor", dynlib: tkkxbase.}
proc hasPBR*(this: OpenGlContext): bool {.noSideEffect, cdecl, importcpp: "HasPBR",
                                      dynlib: tkkxbase.}
proc pBREnvLUTTexUnit*(this: OpenGlContext): Graphic3dTextureUnit {.noSideEffect,
    cdecl, importcpp: "PBREnvLUTTexUnit", dynlib: tkkxbase.}
proc pBRDiffIBLMapSHTexUnit*(this: OpenGlContext): Graphic3dTextureUnit {.
    noSideEffect, cdecl, importcpp: "PBRDiffIBLMapSHTexUnit", dynlib: tkkxbase.}
proc pBRSpecIBLMapTexUnit*(this: OpenGlContext): Graphic3dTextureUnit {.
    noSideEffect, cdecl, importcpp: "PBRSpecIBLMapTexUnit", dynlib: tkkxbase.}
proc toUseVbo*(this: OpenGlContext): bool {.noSideEffect, cdecl,
                                        importcpp: "ToUseVbo", dynlib: tkkxbase.}
proc isGlNormalizeEnabled*(this: OpenGlContext): bool {.noSideEffect, cdecl,
    importcpp: "IsGlNormalizeEnabled", dynlib: tkkxbase.}
proc setGlNormalizeEnabled*(this: var OpenGlContext; isEnabled: bool): bool {.cdecl,
    importcpp: "SetGlNormalizeEnabled", dynlib: tkkxbase.}
proc polygonMode*(this: OpenGlContext): cint {.noSideEffect, cdecl,
    importcpp: "PolygonMode", dynlib: tkkxbase.}
proc setPolygonMode*(this: var OpenGlContext; theMode: cint): cint {.cdecl,
    importcpp: "SetPolygonMode", dynlib: tkkxbase.}
proc isPolygonHatchEnabled*(this: OpenGlContext): bool {.noSideEffect, cdecl,
    importcpp: "IsPolygonHatchEnabled", dynlib: tkkxbase.}
proc setPolygonHatchEnabled*(this: var OpenGlContext; theIsEnabled: bool): bool {.
    cdecl, importcpp: "SetPolygonHatchEnabled", dynlib: tkkxbase.}
proc polygonHatchStyle*(this: OpenGlContext): cint {.noSideEffect, cdecl,
    importcpp: "PolygonHatchStyle", dynlib: tkkxbase.}
proc setPolygonHatchStyle*(this: var OpenGlContext;
                          theStyle: Handle[Graphic3dHatchStyle]): cint {.cdecl,
    importcpp: "SetPolygonHatchStyle", dynlib: tkkxbase.}
proc setPolygonOffset*(this: var OpenGlContext; theOffset: Graphic3dPolygonOffset) {.
    cdecl, importcpp: "SetPolygonOffset", dynlib: tkkxbase.}
proc polygonOffset*(this: OpenGlContext): Graphic3dPolygonOffset {.noSideEffect,
    cdecl, importcpp: "PolygonOffset", dynlib: tkkxbase.}
proc camera*(this: OpenGlContext): Handle[Graphic3dCamera] {.noSideEffect, cdecl,
    importcpp: "Camera", dynlib: tkkxbase.}
proc setCamera*(this: var OpenGlContext; theCamera: Handle[Graphic3dCamera]) {.cdecl,
    importcpp: "SetCamera", dynlib: tkkxbase.}
proc applyModelWorldMatrix*(this: var OpenGlContext) {.cdecl,
    importcpp: "ApplyModelWorldMatrix", dynlib: tkkxbase.}
proc applyWorldViewMatrix*(this: var OpenGlContext) {.cdecl,
    importcpp: "ApplyWorldViewMatrix", dynlib: tkkxbase.}
proc applyModelViewMatrix*(this: var OpenGlContext) {.cdecl,
    importcpp: "ApplyModelViewMatrix", dynlib: tkkxbase.}
proc applyProjectionMatrix*(this: var OpenGlContext) {.cdecl,
    importcpp: "ApplyProjectionMatrix", dynlib: tkkxbase.}
proc messenger*(this: OpenGlContext): Handle[MessageMessenger] {.noSideEffect, cdecl,
    importcpp: "Messenger", dynlib: tkkxbase.}
proc pushMessage*(this: var OpenGlContext; theSource: cuint; theType: cuint;
                 theId: cuint; theSeverity: cuint;
                 theMessage: TCollectionExtendedString) {.cdecl,
    importcpp: "PushMessage", dynlib: tkkxbase.}
proc excludeMessage*(this: var OpenGlContext; theSource: cuint; theId: cuint): bool {.
    cdecl, importcpp: "ExcludeMessage", dynlib: tkkxbase.}
proc includeMessage*(this: var OpenGlContext; theSource: cuint; theId: cuint): bool {.
    cdecl, importcpp: "IncludeMessage", dynlib: tkkxbase.}
proc hasStereoBuffers*(this: OpenGlContext): bool {.noSideEffect, cdecl,
    importcpp: "HasStereoBuffers", dynlib: tkkxbase.}
proc frameStats*(this: OpenGlContext): Handle[OpenGlFrameStats] {.noSideEffect,
    cdecl, importcpp: "FrameStats", dynlib: tkkxbase.}
proc setFrameStats*(this: var OpenGlContext; theStats: Handle[OpenGlFrameStats]) {.
    cdecl, importcpp: "SetFrameStats", dynlib: tkkxbase.}
proc viewport*(this: OpenGlContext): ptr cint {.noSideEffect, cdecl,
    importcpp: "Viewport", dynlib: tkkxbase.}
proc resizeViewport*(this: var OpenGlContext; theRect: array[4, cint]) {.cdecl,
    importcpp: "ResizeViewport", dynlib: tkkxbase.}
proc virtualViewport*(this: OpenGlContext): ptr cint {.noSideEffect, cdecl,
    importcpp: "VirtualViewport", dynlib: tkkxbase.}
proc readBuffer*(this: var OpenGlContext): cint {.cdecl, importcpp: "ReadBuffer",
    dynlib: tkkxbase.}
proc setReadBuffer*(this: var OpenGlContext; theReadBuffer: cint) {.cdecl,
    importcpp: "SetReadBuffer", dynlib: tkkxbase.}
proc drawBuffer*(this: OpenGlContext; theIndex: cint = 0): cint {.noSideEffect, cdecl,
    importcpp: "DrawBuffer", dynlib: tkkxbase.}
proc setDrawBuffer*(this: var OpenGlContext; theDrawBuffer: cint) {.cdecl,
    importcpp: "SetDrawBuffer", dynlib: tkkxbase.}
proc setDrawBuffers*(this: var OpenGlContext; theNb: cint; theDrawBuffers: ptr cint) {.
    cdecl, importcpp: "SetDrawBuffers", dynlib: tkkxbase.}
proc setReadDrawBuffer*(this: var OpenGlContext; theBuffer: cint) {.cdecl,
    importcpp: "SetReadDrawBuffer", dynlib: tkkxbase.}
proc isFrameBufferSRGB*(this: OpenGlContext): bool {.noSideEffect, cdecl,
    importcpp: "IsFrameBufferSRGB", dynlib: tkkxbase.}
proc setFrameBufferSRGB*(this: var OpenGlContext; theIsFbo: bool;
                        theIsFboSRgb: bool = true) {.cdecl,
    importcpp: "SetFrameBufferSRGB", dynlib: tkkxbase.}
proc colorMask*(this: OpenGlContext): bool {.noSideEffect, cdecl,
    importcpp: "ColorMask", dynlib: tkkxbase.}
proc setColorMask*(this: var OpenGlContext; theToWriteColor: bool): bool {.cdecl,
    importcpp: "SetColorMask", dynlib: tkkxbase.}
proc allowSampleAlphaToCoverage*(this: OpenGlContext): bool {.noSideEffect, cdecl,
    importcpp: "AllowSampleAlphaToCoverage", dynlib: tkkxbase.}
proc setAllowSampleAlphaToCoverage*(this: var OpenGlContext; theToEnable: bool) {.
    cdecl, importcpp: "SetAllowSampleAlphaToCoverage", dynlib: tkkxbase.}
proc sampleAlphaToCoverage*(this: OpenGlContext): bool {.noSideEffect, cdecl,
    importcpp: "SampleAlphaToCoverage", dynlib: tkkxbase.}
proc setSampleAlphaToCoverage*(this: var OpenGlContext; theToEnable: bool): bool {.
    cdecl, importcpp: "SetSampleAlphaToCoverage", dynlib: tkkxbase.}
proc toCullBackFaces*(this: OpenGlContext): bool {.noSideEffect, cdecl,
    importcpp: "ToCullBackFaces", dynlib: tkkxbase.}
proc setCullBackFaces*(this: var OpenGlContext; theToEnable: bool) {.cdecl,
    importcpp: "SetCullBackFaces", dynlib: tkkxbase.}
proc fetchState*(this: var OpenGlContext) {.cdecl, importcpp: "FetchState",
                                        dynlib: tkkxbase.}
proc activeTextures*(this: OpenGlContext): Handle[OpenGlTextureSet] {.noSideEffect,
    cdecl, importcpp: "ActiveTextures", dynlib: tkkxbase.}
proc bindTextures*(this: var OpenGlContext; theTextures: Handle[OpenGlTextureSet]): Handle[
    OpenGlTextureSet] {.cdecl, importcpp: "BindTextures", dynlib: tkkxbase.}
proc bindTextures*(this: var OpenGlContext; theTextures: Handle[OpenGlTextureSet];
                  theProgram: Handle[OpenGlShaderProgram]): Handle[
    OpenGlTextureSet] {.cdecl, importcpp: "BindTextures", dynlib: tkkxbase.}
proc activeProgram*(this: OpenGlContext): Handle[OpenGlShaderProgram] {.
    noSideEffect, cdecl, importcpp: "ActiveProgram", dynlib: tkkxbase.}
proc bindProgram*(this: var OpenGlContext; theProgram: Handle[OpenGlShaderProgram]): bool {.
    cdecl, importcpp: "BindProgram", dynlib: tkkxbase.}
proc setShadingMaterial*(this: var OpenGlContext; theAspect: ptr OpenGlAspects;
                        theHighlight: Handle[Graphic3dPresentationAttributes]) {.
    cdecl, importcpp: "SetShadingMaterial", dynlib: tkkxbase.}
proc checkIsTransparent*(theAspect: ptr OpenGlAspects;
                        theHighlight: Handle[Graphic3dPresentationAttributes];
                        theAlphaFront: var StandardShortReal;
                        theAlphaBack: var StandardShortReal): bool {.cdecl,
    importcpp: "OpenGl_Context::CheckIsTransparent(@)", dynlib: tkkxbase.}
proc checkIsTransparent*(theAspect: ptr OpenGlAspects;
                        theHighlight: Handle[Graphic3dPresentationAttributes]): bool {.
    cdecl, importcpp: "OpenGl_Context::CheckIsTransparent(@)", dynlib: tkkxbase.}
proc setColor4fv*(this: var OpenGlContext; theColor: OpenGlVec4) {.cdecl,
    importcpp: "SetColor4fv", dynlib: tkkxbase.}
proc setTypeOfLine*(this: var OpenGlContext; theType: AspectTypeOfLine;
                   theFactor: StandardShortReal = 1.0f) {.cdecl,
    importcpp: "SetTypeOfLine", dynlib: tkkxbase.}
proc setLineStipple*(this: var OpenGlContext; thePattern: uint16T) {.cdecl,
    importcpp: "SetLineStipple", dynlib: tkkxbase.}
proc setLineStipple*(this: var OpenGlContext; theFactor: StandardShortReal;
                    thePattern: uint16T) {.cdecl, importcpp: "SetLineStipple",
    dynlib: tkkxbase.}
proc setLineWidth*(this: var OpenGlContext; theWidth: StandardShortReal) {.cdecl,
    importcpp: "SetLineWidth", dynlib: tkkxbase.}
proc setPointSize*(this: var OpenGlContext; theSize: StandardShortReal) {.cdecl,
    importcpp: "SetPointSize", dynlib: tkkxbase.}
proc setPointSpriteOrigin*(this: var OpenGlContext) {.cdecl,
    importcpp: "SetPointSpriteOrigin", dynlib: tkkxbase.}
proc setTextureMatrix*(this: var OpenGlContext;
                      theParams: Handle[Graphic3dTextureParams];
                      theIsTopDown: bool) {.cdecl, importcpp: "SetTextureMatrix",
    dynlib: tkkxbase.}
proc bindDefaultVao*(this: var OpenGlContext) {.cdecl, importcpp: "BindDefaultVao",
    dynlib: tkkxbase.}
proc defaultFrameBuffer*(this: OpenGlContext): Handle[OpenGlFrameBuffer] {.
    noSideEffect, cdecl, importcpp: "DefaultFrameBuffer", dynlib: tkkxbase.}
proc setDefaultFrameBuffer*(this: var OpenGlContext;
                           theFbo: Handle[OpenGlFrameBuffer]): Handle[
    OpenGlFrameBuffer] {.cdecl, importcpp: "SetDefaultFrameBuffer", dynlib: tkkxbase.}
proc isDebugContext*(this: OpenGlContext): bool {.noSideEffect, cdecl,
    importcpp: "IsDebugContext", dynlib: tkkxbase.}
proc enableFeatures*(this: OpenGlContext) {.noSideEffect, cdecl,
    importcpp: "EnableFeatures", dynlib: tkkxbase.}
proc disableFeatures*(this: OpenGlContext) {.noSideEffect, cdecl,
    importcpp: "DisableFeatures", dynlib: tkkxbase.}
proc resolution*(this: OpenGlContext): cuint {.noSideEffect, cdecl,
    importcpp: "Resolution", dynlib: tkkxbase.}
proc resolutionRatio*(this: OpenGlContext): StandardShortReal {.noSideEffect, cdecl,
    importcpp: "ResolutionRatio", dynlib: tkkxbase.}
proc renderScale*(this: OpenGlContext): StandardShortReal {.noSideEffect, cdecl,
    importcpp: "RenderScale", dynlib: tkkxbase.}
proc hasRenderScale*(this: OpenGlContext): bool {.noSideEffect, cdecl,
    importcpp: "HasRenderScale", dynlib: tkkxbase.}
proc renderScaleInv*(this: OpenGlContext): StandardShortReal {.noSideEffect, cdecl,
    importcpp: "RenderScaleInv", dynlib: tkkxbase.}
proc lineWidthScale*(this: OpenGlContext): StandardShortReal {.noSideEffect, cdecl,
    importcpp: "LineWidthScale", dynlib: tkkxbase.}
proc setResolution*(this: var OpenGlContext; theResolution: cuint;
                   theRatio: StandardShortReal; theScale: StandardShortReal) {.
    cdecl, importcpp: "SetResolution", dynlib: tkkxbase.}
proc setResolutionRatio*(this: var OpenGlContext; theRatio: StandardShortReal) {.
    cdecl, importcpp: "SetResolutionRatio", dynlib: tkkxbase.}
proc lineFeather*(this: OpenGlContext): StandardShortReal {.noSideEffect, cdecl,
    importcpp: "LineFeather", dynlib: tkkxbase.}
proc setLineFeather*(this: var OpenGlContext; theValue: StandardShortReal) {.cdecl,
    importcpp: "SetLineFeather", dynlib: tkkxbase.}
proc getBufferSubData*(this: var OpenGlContext; theTarget: GLenum;
                      theOffset: GLintptr; theSize: GLsizeiptr; theData: pointer): bool {.
    cdecl, importcpp: "GetBufferSubData", dynlib: tkkxbase.}
proc vendor*(this: OpenGlContext): TCollectionAsciiString {.noSideEffect, cdecl,
    importcpp: "Vendor", dynlib: tkkxbase.}
proc dumpJson*(this: OpenGlContext; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 dynlib: tkkxbase.}
proc dumpJsonOpenGlState*(theOStream: var StandardOStream; theDepth: cint = -1) {.cdecl,
    importcpp: "OpenGl_Context::DumpJsonOpenGlState(@)", dynlib: tkkxbase.}
proc setShadeModel*(this: var OpenGlContext; theModel: Graphic3dTypeOfShadingModel) {.
    cdecl, importcpp: "SetShadeModel", dynlib: tkkxbase.}