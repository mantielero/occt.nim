##  Created on: 2013-09-19
##  Created by: Denis BOGOLEPOV
##  Copyright (c) 2013-2014 OPEN CASCADE SAS
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

discard "forward decl of OpenGl_ShaderProgram"
discard "forward decl of OpenGl_ShaderProgram"
type
  HandleOpenGlShaderProgram* = Handle[OpenGlShaderProgram]

## ! The enumeration of OCCT-specific OpenGL/GLSL variables.

type
  OpenGlStateVariable* {.size: sizeof(cint), importcpp: "OpenGl_StateVariable",
                        header: "OpenGl_ShaderProgram.hxx".} = enum ##  OpenGL matrix state
    OpenGlOCC_MODEL_WORLD_MATRIX, OpenGlOCC_WORLD_VIEW_MATRIX,
    OpenGlOCC_PROJECTION_MATRIX, OpenGlOCC_MODEL_WORLD_MATRIX_INVERSE,
    OpenGlOCC_WORLD_VIEW_MATRIX_INVERSE, OpenGlOCC_PROJECTION_MATRIX_INVERSE,
    OpenGlOCC_MODEL_WORLD_MATRIX_TRANSPOSE,
    OpenGlOCC_WORLD_VIEW_MATRIX_TRANSPOSE, OpenGlOCC_PROJECTION_MATRIX_TRANSPOSE,
    OpenGlOCC_MODEL_WORLD_MATRIX_INVERSE_TRANSPOSE,
    OpenGlOCC_WORLD_VIEW_MATRIX_INVERSE_TRANSPOSE, OpenGlOCC_PROJECTION_MATRIX_INVERSE_TRANSPOSE, ##  OpenGL clip planes state
    OpenGlOCC_CLIP_PLANE_EQUATIONS, OpenGlOCC_CLIP_PLANE_CHAINS, OpenGlOCC_CLIP_PLANE_COUNT, ##  OpenGL light state
    OpenGlOCC_LIGHT_SOURCE_COUNT, OpenGlOCC_LIGHT_SOURCE_TYPES,
    OpenGlOCC_LIGHT_SOURCE_PARAMS, OpenGlOCC_LIGHT_AMBIENT, ##  Material state
    OpenGlOCCT_TEXTURE_ENABLE, OpenGlOCCT_DISTINGUISH_MODE,
    OpenGlOCCT_PBR_FRONT_MATERIAL, OpenGlOCCT_PBR_BACK_MATERIAL,
    OpenGlOCCT_COMMON_FRONT_MATERIAL, OpenGlOCCT_COMMON_BACK_MATERIAL,
    OpenGlOCCT_ALPHA_CUTOFF, OpenGlOCCT_COLOR, ##  Weighted, Blended Order-Independent Transparency rendering state
    OpenGlOCCT_OIT_OUTPUT, OpenGlOCCT_OIT_DEPTH_FACTOR, ##  Context-dependent state
    OpenGlOCCT_TEXTURE_TRSF2D, OpenGlOCCT_POINT_SIZE, ##  Wireframe state
    OpenGlOCCT_VIEWPORT, OpenGlOCCT_LINE_WIDTH, OpenGlOCCT_LINE_FEATHER, OpenGlOCCT_LINE_STIPPLE_PATTERN, ##  occStipplePattern
    OpenGlOCCT_LINE_STIPPLE_FACTOR, ##  occStippleFactor
    OpenGlOCCT_WIREFRAME_COLOR, OpenGlOCCT_QUAD_MODE_STATE, ##  Parameters of outline (silhouette) shader
    OpenGlOCCT_ORTHO_SCALE, OpenGlOCCT_SILHOUETTE_THICKNESS, ##  PBR state
    OpenGlOCCT_NB_SPEC_IBL_LEVELS, ##  DON'T MODIFY THIS ITEM (insert new items before it)
    OpenGlOCCT_NUMBER_OF_STATE_VARIABLES


## ! Interface for generic setter of user-defined uniform variables.

type
  OpenGlSetterInterface* {.importcpp: "OpenGl_SetterInterface",
                          header: "OpenGl_ShaderProgram.hxx", bycopy.} = object ## ! Sets
                                                                           ## user-defined
                                                                           ## uniform
                                                                           ## variable to
                                                                           ## specified
                                                                           ## program.


proc set*(this: var OpenGlSetterInterface; theCtx: Handle[OpenGlContext];
         theVariable: Handle[Graphic3dShaderVariable];
         theProgram: ptr OpenGlShaderProgram) {.importcpp: "Set",
    header: "OpenGl_ShaderProgram.hxx".}
proc destroyOpenGlSetterInterface*(this: var OpenGlSetterInterface) {.
    importcpp: "#.~OpenGl_SetterInterface()", header: "OpenGl_ShaderProgram.hxx".}
## ! List of OpenGL shader objects.

type
  OpenGlShaderList* = NCollectionSequence[Handle[OpenGlShaderObject]]

## ! List of shader variable setters.

type
  OpenGlSetterList* = NCollectionDataMap[csize_t, ptr OpenGlSetterInterface]

## ! Support tool for setting user-defined uniform variables.

type
  OpenGlVariableSetterSelector* {.importcpp: "OpenGl_VariableSetterSelector",
                                 header: "OpenGl_ShaderProgram.hxx", bycopy.} = object ##
                                                                                  ## !
                                                                                  ## Creates
                                                                                  ## new
                                                                                  ## setter
                                                                                  ## selector.
                                                                                  ##
                                                                                  ## !
                                                                                  ## List
                                                                                  ## of
                                                                                  ## variable
                                                                                  ## setters.


proc constructOpenGlVariableSetterSelector*(): OpenGlVariableSetterSelector {.
    constructor, importcpp: "OpenGl_VariableSetterSelector(@)",
    header: "OpenGl_ShaderProgram.hxx".}
proc destroyOpenGlVariableSetterSelector*(this: var OpenGlVariableSetterSelector) {.
    importcpp: "#.~OpenGl_VariableSetterSelector()",
    header: "OpenGl_ShaderProgram.hxx".}
proc set*(this: OpenGlVariableSetterSelector; theCtx: Handle[OpenGlContext];
         theVariable: Handle[Graphic3dShaderVariable];
         theProgram: ptr OpenGlShaderProgram) {.noSideEffect, importcpp: "Set",
    header: "OpenGl_ShaderProgram.hxx".}
## ! Defines types of uniform state variables.

type
  OpenGlUniformStateType* {.size: sizeof(cint),
                           importcpp: "OpenGl_UniformStateType",
                           header: "OpenGl_ShaderProgram.hxx".} = enum
    OpenGlLIGHT_SOURCES_STATE, OpenGlCLIP_PLANES_STATE, OpenGlMODEL_WORLD_STATE,
    OpenGlWORLD_VIEW_STATE, OpenGlPROJECTION_STATE, OpenGlMATERIAL_STATE,
    OpenGlSURF_DETAIL_STATE, OpenGL_OIT_STATE, OpenGlUniformStateTypeNB


## ! Simple class represents GLSL program variable location.

type
  OpenGlShaderUniformLocation* {.importcpp: "OpenGl_ShaderUniformLocation",
                                header: "OpenGl_ShaderProgram.hxx", bycopy.} = object ##
                                                                                 ## !
                                                                                 ## Invalid
                                                                                 ## location
                                                                                 ## of
                                                                                 ## uniform/attribute
                                                                                 ## variable.
                                                                                 ##
                                                                                 ## !
                                                                                 ## Construct
                                                                                 ## an
                                                                                 ## invalid
                                                                                 ## location.


proc constructOpenGlShaderUniformLocation*(): OpenGlShaderUniformLocation {.
    constructor, importcpp: "OpenGl_ShaderUniformLocation(@)",
    header: "OpenGl_ShaderProgram.hxx".}
proc constructOpenGlShaderUniformLocation*(theLocation: GLint): OpenGlShaderUniformLocation {.
    constructor, importcpp: "OpenGl_ShaderUniformLocation(@)",
    header: "OpenGl_ShaderProgram.hxx".}
proc isValid*(this: OpenGlShaderUniformLocation): bool {.noSideEffect,
    importcpp: "IsValid", header: "OpenGl_ShaderProgram.hxx".}
converter `bool`*(this: OpenGlShaderUniformLocation): bool {.noSideEffect,
    importcpp: "OpenGl_ShaderUniformLocation::operator bool",
    header: "OpenGl_ShaderProgram.hxx".}
converter `gLint`*(this: OpenGlShaderUniformLocation): GLint {.noSideEffect,
    importcpp: "OpenGl_ShaderUniformLocation::operator GLint",
    header: "OpenGl_ShaderProgram.hxx".}
## ! Wrapper for OpenGL program object.

type
  OpenGlShaderProgram* {.importcpp: "OpenGl_ShaderProgram",
                        header: "OpenGl_ShaderProgram.hxx", bycopy.} = object of OpenGlNamedResource ##
                                                                                              ## !
                                                                                              ## Non-valid
                                                                                              ## shader
                                                                                              ## name.
                                                                                              ##
                                                                                              ## !
                                                                                              ## Releases
                                                                                              ## resources
                                                                                              ## of
                                                                                              ## shader
                                                                                              ## program.
                                                                                              ##
                                                                                              ## !
                                                                                              ## Return
                                                                                              ## TRUE
                                                                                              ## if
                                                                                              ## program
                                                                                              ## defines
                                                                                              ## tessellation
                                                                                              ## stage.
                                                                                              ##
                                                                                              ## !
                                                                                              ## Returns
                                                                                              ## index
                                                                                              ## of
                                                                                              ## last
                                                                                              ## modification
                                                                                              ## of
                                                                                              ## variables
                                                                                              ## of
                                                                                              ## specified
                                                                                              ## state
                                                                                              ## type.
                                                                                              ##
                                                                                              ## !
                                                                                              ## Returns
                                                                                              ## location
                                                                                              ## of
                                                                                              ## the
                                                                                              ## specific
                                                                                              ## uniform
                                                                                              ## variable.
                                                                                              ##
                                                                                              ## !
                                                                                              ## Returns
                                                                                              ## the
                                                                                              ## value
                                                                                              ## of
                                                                                              ## the
                                                                                              ## integer
                                                                                              ## uniform
                                                                                              ## variable.
                                                                                              ##
                                                                                              ## !
                                                                                              ## Returns
                                                                                              ## the
                                                                                              ## integer
                                                                                              ## vertex
                                                                                              ## attribute.
                                                                                              ##
                                                                                              ## !
                                                                                              ## Wrapper
                                                                                              ## for
                                                                                              ## glBindAttribLocation()
                                                                                              ##
                                                                                              ## !
                                                                                              ## Specifies
                                                                                              ## the
                                                                                              ## value
                                                                                              ## of
                                                                                              ## the
                                                                                              ## integer
                                                                                              ## uniform
                                                                                              ## variable.
                                                                                              ##
                                                                                              ## !
                                                                                              ## Specifies
                                                                                              ## the
                                                                                              ## value
                                                                                              ## of
                                                                                              ## the
                                                                                              ## unsigned
                                                                                              ## integer
                                                                                              ## uniform
                                                                                              ## 2D
                                                                                              ## vector
                                                                                              ## (uvec2).
                                                                                              ##
                                                                                              ## !
                                                                                              ## Specifies
                                                                                              ## the
                                                                                              ## value
                                                                                              ## of
                                                                                              ## the
                                                                                              ## float
                                                                                              ## uniform
                                                                                              ## variable.
                                                                                              ##
                                                                                              ## !
                                                                                              ## Specifies
                                                                                              ## the
                                                                                              ## value
                                                                                              ## of
                                                                                              ## the
                                                                                              ## float
                                                                                              ## uniform
                                                                                              ## 4x4
                                                                                              ## matrix.
                                                                                              ##
                                                                                              ## !
                                                                                              ## Specifies
                                                                                              ## the
                                                                                              ## value
                                                                                              ## of
                                                                                              ## the
                                                                                              ## sampler
                                                                                              ## uniform
                                                                                              ## variable.
                                                                                              ##
                                                                                              ## !
                                                                                              ## Update
                                                                                              ## the
                                                                                              ## shader
                                                                                              ## program
                                                                                              ## from
                                                                                              ## external
                                                                                              ## files
                                                                                              ## (per
                                                                                              ## shader
                                                                                              ## stage)
                                                                                              ## in
                                                                                              ## the
                                                                                              ## following
                                                                                              ## way:
                                                                                              ##
                                                                                              ## !
                                                                                              ## 1)
                                                                                              ## If
                                                                                              ## external
                                                                                              ## file
                                                                                              ## does
                                                                                              ## not
                                                                                              ## exist,
                                                                                              ## then
                                                                                              ## it
                                                                                              ## will
                                                                                              ## be
                                                                                              ## created
                                                                                              ## (current
                                                                                              ## source
                                                                                              ## code
                                                                                              ## will
                                                                                              ## be
                                                                                              ## dumped,
                                                                                              ## no
                                                                                              ## recompilation)
                                                                                              ## and
                                                                                              ## FALSE
                                                                                              ## will
                                                                                              ## be
                                                                                              ## returned.
                                                                                              ##
                                                                                              ## !
                                                                                              ## 2)
                                                                                              ## If
                                                                                              ## external
                                                                                              ## file
                                                                                              ## exists
                                                                                              ## and
                                                                                              ## it
                                                                                              ## has
                                                                                              ## the
                                                                                              ## same
                                                                                              ## timestamp
                                                                                              ## as
                                                                                              ## myDumpDate,
                                                                                              ## nothing
                                                                                              ## will
                                                                                              ## be
                                                                                              ## done
                                                                                              ## and
                                                                                              ## FALSE
                                                                                              ## will
                                                                                              ## be
                                                                                              ## returned.
                                                                                              ##
                                                                                              ## !
                                                                                              ## 3)
                                                                                              ## If
                                                                                              ## external
                                                                                              ## file
                                                                                              ## exists
                                                                                              ## and
                                                                                              ## it
                                                                                              ## has
                                                                                              ## newer
                                                                                              ## timestamp
                                                                                              ## than
                                                                                              ## myDumpDate,
                                                                                              ## shader
                                                                                              ## will
                                                                                              ## be
                                                                                              ## recompiled
                                                                                              ## and
                                                                                              ## relinked
                                                                                              ## and
                                                                                              ## TRUE
                                                                                              ## will
                                                                                              ## be
                                                                                              ## returned.
                                                                                              ##
                                                                                              ## !
                                                                                              ## @param
                                                                                              ## theCtx
                                                                                              ## OpenGL
                                                                                              ## context
                                                                                              ## bound
                                                                                              ## to
                                                                                              ## this
                                                                                              ## working
                                                                                              ## thread
                                                                                              ##
                                                                                              ## !
                                                                                              ## @param
                                                                                              ## theFolder
                                                                                              ## folder
                                                                                              ## to
                                                                                              ## store
                                                                                              ## files;
                                                                                              ## when
                                                                                              ## unspecified,
                                                                                              ## $CSF_ShadersDirectoryDump
                                                                                              ## or
                                                                                              ## current
                                                                                              ## folder
                                                                                              ## will
                                                                                              ## be
                                                                                              ## used
                                                                                              ## instead
                                                                                              ##
                                                                                              ## !
                                                                                              ## @param
                                                                                              ## theToBeautify
                                                                                              ## flag
                                                                                              ## improving
                                                                                              ## formatting
                                                                                              ## (add
                                                                                              ## extra
                                                                                              ## newlines)
                                                                                              ##
                                                                                              ## !
                                                                                              ## @param
                                                                                              ## theToReset
                                                                                              ## when
                                                                                              ## TRUE,
                                                                                              ## existing
                                                                                              ## dumps
                                                                                              ## will
                                                                                              ## be
                                                                                              ## overridden
                                                                                              ##
                                                                                              ## !
                                                                                              ## Increments
                                                                                              ## counter
                                                                                              ## of
                                                                                              ## users.
                                                                                              ##
                                                                                              ## !
                                                                                              ## Used
                                                                                              ## by
                                                                                              ## OpenGl_ShaderManager.
                                                                                              ##
                                                                                              ## !
                                                                                              ## @return
                                                                                              ## true
                                                                                              ## when
                                                                                              ## resource
                                                                                              ## has
                                                                                              ## been
                                                                                              ## restored
                                                                                              ## from
                                                                                              ## delayed
                                                                                              ## release
                                                                                              ## queue
    ## !< Handle of OpenGL shader program
    ## !< List of attached shader objects
    ## !< Proxy shader program (from application layer)
    ## !< program users count, initialized with 1 (already shared by one user)
    ## !< length of array of light sources (THE_MAX_LIGHTS)
    ## !< length of array of clipping planes (THE_MAX_CLIP_PLANES)
    ## !< length of array of Fragment Shader outputs (THE_NB_FRAG_OUTPUTS)
    ## !< texture units declared within the program, @sa Graphic3d_TextureSetBits
    ## !< flag indicating that Fragment Shader should perform alpha-test
    ## !< flag indicating that Fragment Shader includes weighted OIT coverage
    ## !< flag indicating that program defines tessellation stage
    ## !< defines last modification for variables of each state type
    ## ! Stores locations of OCCT state uniform variables.

  OpenGlShaderProgrambaseType* = OpenGlNamedResource

proc getTypeName*(): cstring {.importcpp: "OpenGl_ShaderProgram::get_type_name(@)",
                            header: "OpenGl_ShaderProgram.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "OpenGl_ShaderProgram::get_type_descriptor(@)",
    header: "OpenGl_ShaderProgram.hxx".}
proc dynamicType*(this: OpenGlShaderProgram): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "OpenGl_ShaderProgram.hxx".}
proc compileShaderVerbose*(theCtx: Handle[OpenGlContext];
                          theShader: Handle[OpenGlShaderObject];
                          theSource: TCollectionAsciiString;
                          theToPrintSource: bool = true): bool {.
    importcpp: "OpenGl_ShaderProgram::compileShaderVerbose(@)",
    header: "OpenGl_ShaderProgram.hxx".}
proc constructOpenGlShaderProgram*(theProxy: Handle[Graphic3dShaderProgram] = nil;
                                  theId: TCollectionAsciiString = ""): OpenGlShaderProgram {.
    constructor, importcpp: "OpenGl_ShaderProgram(@)",
    header: "OpenGl_ShaderProgram.hxx".}
proc destroyOpenGlShaderProgram*(this: var OpenGlShaderProgram) {.
    importcpp: "#.~OpenGl_ShaderProgram()", header: "OpenGl_ShaderProgram.hxx".}
proc create*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext]): StandardBoolean {.
    importcpp: "Create", header: "OpenGl_ShaderProgram.hxx".}
proc release*(this: var OpenGlShaderProgram; theCtx: ptr OpenGlContext) {.
    importcpp: "Release", header: "OpenGl_ShaderProgram.hxx".}
proc estimatedDataSize*(this: OpenGlShaderProgram): StandardSize {.noSideEffect,
    importcpp: "EstimatedDataSize", header: "OpenGl_ShaderProgram.hxx".}
proc attachShader*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                  theShader: Handle[OpenGlShaderObject]): StandardBoolean {.
    importcpp: "AttachShader", header: "OpenGl_ShaderProgram.hxx".}
proc detachShader*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                  theShader: Handle[OpenGlShaderObject]): StandardBoolean {.
    importcpp: "DetachShader", header: "OpenGl_ShaderProgram.hxx".}
proc initialize*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                theShaders: Graphic3dShaderObjectList): StandardBoolean {.
    importcpp: "Initialize", header: "OpenGl_ShaderProgram.hxx".}
proc link*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
          theIsVerbose: bool = true): StandardBoolean {.importcpp: "Link",
    header: "OpenGl_ShaderProgram.hxx".}
proc fetchInfoLog*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                  theLog: var TCollectionAsciiString): StandardBoolean {.
    importcpp: "FetchInfoLog", header: "OpenGl_ShaderProgram.hxx".}
proc applyVariables*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext]): StandardBoolean {.
    importcpp: "ApplyVariables", header: "OpenGl_ShaderProgram.hxx".}
proc proxy*(this: OpenGlShaderProgram): Handle[Graphic3dShaderProgram] {.
    noSideEffect, importcpp: "Proxy", header: "OpenGl_ShaderProgram.hxx".}
proc isValid*(this: OpenGlShaderProgram): bool {.noSideEffect, importcpp: "IsValid",
    header: "OpenGl_ShaderProgram.hxx".}
proc programId*(this: OpenGlShaderProgram): GLuint {.noSideEffect,
    importcpp: "ProgramId", header: "OpenGl_ShaderProgram.hxx".}
proc hasTessellationStage*(this: OpenGlShaderProgram): StandardBoolean {.
    noSideEffect, importcpp: "HasTessellationStage",
    header: "OpenGl_ShaderProgram.hxx".}
proc nbLightsMax*(this: OpenGlShaderProgram): StandardInteger {.noSideEffect,
    importcpp: "NbLightsMax", header: "OpenGl_ShaderProgram.hxx".}
proc nbClipPlanesMax*(this: OpenGlShaderProgram): StandardInteger {.noSideEffect,
    importcpp: "NbClipPlanesMax", header: "OpenGl_ShaderProgram.hxx".}
proc nbFragmentOutputs*(this: OpenGlShaderProgram): StandardInteger {.noSideEffect,
    importcpp: "NbFragmentOutputs", header: "OpenGl_ShaderProgram.hxx".}
proc hasAlphaTest*(this: OpenGlShaderProgram): StandardBoolean {.noSideEffect,
    importcpp: "HasAlphaTest", header: "OpenGl_ShaderProgram.hxx".}
proc hasWeightOitOutput*(this: OpenGlShaderProgram): StandardBoolean {.noSideEffect,
    importcpp: "HasWeightOitOutput", header: "OpenGl_ShaderProgram.hxx".}
proc textureSetBits*(this: OpenGlShaderProgram): StandardInteger {.noSideEffect,
    importcpp: "TextureSetBits", header: "OpenGl_ShaderProgram.hxx".}
proc getUniformLocation*(this: OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                        theName: ptr GLchar): OpenGlShaderUniformLocation {.
    noSideEffect, importcpp: "GetUniformLocation",
    header: "OpenGl_ShaderProgram.hxx".}
proc getAttributeLocation*(this: OpenGlShaderProgram;
                          theCtx: Handle[OpenGlContext]; theName: ptr GLchar): GLint {.
    noSideEffect, importcpp: "GetAttributeLocation",
    header: "OpenGl_ShaderProgram.hxx".}
proc getStateLocation*(this: OpenGlShaderProgram; theVariable: OpenGlStateVariable): OpenGlShaderUniformLocation {.
    noSideEffect, importcpp: "GetStateLocation", header: "OpenGl_ShaderProgram.hxx".}
proc getUniform*(this: OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                theName: ptr GLchar; theValue: var OpenGlVec4i): StandardBoolean {.
    noSideEffect, importcpp: "GetUniform", header: "OpenGl_ShaderProgram.hxx".}
proc getUniform*(this: OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                theLocation: GLint; theValue: var OpenGlVec4i): StandardBoolean {.
    noSideEffect, importcpp: "GetUniform", header: "OpenGl_ShaderProgram.hxx".}
proc getUniform*(this: OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                theName: ptr GLchar; theValue: var OpenGlVec4): StandardBoolean {.
    noSideEffect, importcpp: "GetUniform", header: "OpenGl_ShaderProgram.hxx".}
proc getUniform*(this: OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                theLocation: GLint; theValue: var OpenGlVec4): StandardBoolean {.
    noSideEffect, importcpp: "GetUniform", header: "OpenGl_ShaderProgram.hxx".}
proc getAttribute*(this: OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                  theName: ptr GLchar; theValue: var OpenGlVec4i): StandardBoolean {.
    noSideEffect, importcpp: "GetAttribute", header: "OpenGl_ShaderProgram.hxx".}
proc getAttribute*(this: OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                  theIndex: GLint; theValue: var OpenGlVec4i): StandardBoolean {.
    noSideEffect, importcpp: "GetAttribute", header: "OpenGl_ShaderProgram.hxx".}
proc getAttribute*(this: OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                  theName: ptr GLchar; theValue: var OpenGlVec4): StandardBoolean {.
    noSideEffect, importcpp: "GetAttribute", header: "OpenGl_ShaderProgram.hxx".}
proc getAttribute*(this: OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                  theIndex: GLint; theValue: var OpenGlVec4): StandardBoolean {.
    noSideEffect, importcpp: "GetAttribute", header: "OpenGl_ShaderProgram.hxx".}
proc setAttributeName*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                      theIndex: GLint; theName: ptr GLchar): StandardBoolean {.
    importcpp: "SetAttributeName", header: "OpenGl_ShaderProgram.hxx".}
proc setAttribute*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                  theName: ptr GLchar; theValue: GLfloat): StandardBoolean {.
    importcpp: "SetAttribute", header: "OpenGl_ShaderProgram.hxx".}
proc setAttribute*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                  theIndex: GLint; theValue: GLfloat): StandardBoolean {.
    importcpp: "SetAttribute", header: "OpenGl_ShaderProgram.hxx".}
proc setAttribute*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                  theName: ptr GLchar; theValue: OpenGlVec2): StandardBoolean {.
    importcpp: "SetAttribute", header: "OpenGl_ShaderProgram.hxx".}
proc setAttribute*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                  theIndex: GLint; theValue: OpenGlVec2): StandardBoolean {.
    importcpp: "SetAttribute", header: "OpenGl_ShaderProgram.hxx".}
proc setAttribute*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                  theName: ptr GLchar; theValue: OpenGlVec3): StandardBoolean {.
    importcpp: "SetAttribute", header: "OpenGl_ShaderProgram.hxx".}
proc setAttribute*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                  theIndex: GLint; theValue: OpenGlVec3): StandardBoolean {.
    importcpp: "SetAttribute", header: "OpenGl_ShaderProgram.hxx".}
proc setAttribute*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                  theName: ptr GLchar; theValue: OpenGlVec4): StandardBoolean {.
    importcpp: "SetAttribute", header: "OpenGl_ShaderProgram.hxx".}
proc setAttribute*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                  theIndex: GLint; theValue: OpenGlVec4): StandardBoolean {.
    importcpp: "SetAttribute", header: "OpenGl_ShaderProgram.hxx".}
proc setUniform*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                theName: ptr GLchar; theValue: GLint): StandardBoolean {.
    importcpp: "SetUniform", header: "OpenGl_ShaderProgram.hxx".}
proc setUniform*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                theLocation: GLint; theValue: GLint): StandardBoolean {.
    importcpp: "SetUniform", header: "OpenGl_ShaderProgram.hxx".}
proc setUniform*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                theName: ptr GLchar; theValue: OpenGlVec2i): StandardBoolean {.
    importcpp: "SetUniform", header: "OpenGl_ShaderProgram.hxx".}
proc setUniform*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                theLocation: GLint; theValue: OpenGlVec2i): StandardBoolean {.
    importcpp: "SetUniform", header: "OpenGl_ShaderProgram.hxx".}
proc setUniform*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                theName: ptr GLchar; theValue: OpenGlVec3i): StandardBoolean {.
    importcpp: "SetUniform", header: "OpenGl_ShaderProgram.hxx".}
proc setUniform*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                theLocation: GLint; theValue: OpenGlVec3i): StandardBoolean {.
    importcpp: "SetUniform", header: "OpenGl_ShaderProgram.hxx".}
proc setUniform*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                theName: ptr GLchar; theValue: OpenGlVec4i): StandardBoolean {.
    importcpp: "SetUniform", header: "OpenGl_ShaderProgram.hxx".}
proc setUniform*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                theLocation: GLint; theValue: OpenGlVec4i): StandardBoolean {.
    importcpp: "SetUniform", header: "OpenGl_ShaderProgram.hxx".}
proc setUniform*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                theName: ptr GLchar; theValue: OpenGlVec2u): StandardBoolean {.
    importcpp: "SetUniform", header: "OpenGl_ShaderProgram.hxx".}
proc setUniform*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                theLocation: GLint; theValue: OpenGlVec2u): StandardBoolean {.
    importcpp: "SetUniform", header: "OpenGl_ShaderProgram.hxx".}
proc setUniform*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                theName: ptr GLchar; theCount: GLsizei; theValue: ptr OpenGlVec2u): StandardBoolean {.
    importcpp: "SetUniform", header: "OpenGl_ShaderProgram.hxx".}
proc setUniform*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                theLocation: GLint; theCount: GLsizei; theValue: ptr OpenGlVec2u): StandardBoolean {.
    importcpp: "SetUniform", header: "OpenGl_ShaderProgram.hxx".}
proc setUniform*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                theName: ptr GLchar; theValue: GLfloat): StandardBoolean {.
    importcpp: "SetUniform", header: "OpenGl_ShaderProgram.hxx".}
proc setUniform*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                theLocation: GLint; theValue: GLfloat): StandardBoolean {.
    importcpp: "SetUniform", header: "OpenGl_ShaderProgram.hxx".}
proc setUniform*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                theName: ptr GLchar; theValue: OpenGlVec2): StandardBoolean {.
    importcpp: "SetUniform", header: "OpenGl_ShaderProgram.hxx".}
proc setUniform*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                theLocation: GLint; theValue: OpenGlVec2): StandardBoolean {.
    importcpp: "SetUniform", header: "OpenGl_ShaderProgram.hxx".}
proc setUniform*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                theName: ptr GLchar; theValue: OpenGlVec3): StandardBoolean {.
    importcpp: "SetUniform", header: "OpenGl_ShaderProgram.hxx".}
proc setUniform*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                theLocation: GLint; theValue: OpenGlVec3): StandardBoolean {.
    importcpp: "SetUniform", header: "OpenGl_ShaderProgram.hxx".}
proc setUniform*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                theName: ptr GLchar; theValue: OpenGlVec4): StandardBoolean {.
    importcpp: "SetUniform", header: "OpenGl_ShaderProgram.hxx".}
proc setUniform*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                theLocation: GLint; theValue: OpenGlVec4): StandardBoolean {.
    importcpp: "SetUniform", header: "OpenGl_ShaderProgram.hxx".}
proc setUniform*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                theName: ptr GLchar; theValue: OpenGlMat4;
                theTranspose: GLboolean = gl_False): StandardBoolean {.
    importcpp: "SetUniform", header: "OpenGl_ShaderProgram.hxx".}
proc setUniform*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                theLocation: GLint; theValue: OpenGlMat4;
                theTranspose: GLboolean = gl_False): StandardBoolean {.
    importcpp: "SetUniform", header: "OpenGl_ShaderProgram.hxx".}
proc setUniform*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                theName: ptr GLchar; theValue: OpenGlMatrix;
                theTranspose: GLboolean = gl_False): StandardBoolean {.
    importcpp: "SetUniform", header: "OpenGl_ShaderProgram.hxx".}
proc setUniform*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                theLocation: GLint; theValue: OpenGlMatrix;
                theTranspose: GLboolean = gl_False): StandardBoolean {.
    importcpp: "SetUniform", header: "OpenGl_ShaderProgram.hxx".}
proc setUniform*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                theLocation: GLint; theCount: GLuint; theData: ptr StandardShortReal): StandardBoolean {.
    importcpp: "SetUniform", header: "OpenGl_ShaderProgram.hxx".}
proc setUniform*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                theLocation: GLint; theCount: GLuint; theData: ptr OpenGlVec2): StandardBoolean {.
    importcpp: "SetUniform", header: "OpenGl_ShaderProgram.hxx".}
proc setUniform*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                theLocation: GLint; theCount: GLuint; theData: ptr OpenGlVec3): StandardBoolean {.
    importcpp: "SetUniform", header: "OpenGl_ShaderProgram.hxx".}
proc setUniform*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                theLocation: GLint; theCount: GLuint; theData: ptr OpenGlVec4): StandardBoolean {.
    importcpp: "SetUniform", header: "OpenGl_ShaderProgram.hxx".}
proc setUniform*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                theLocation: GLint; theCount: GLuint; theData: ptr StandardInteger): StandardBoolean {.
    importcpp: "SetUniform", header: "OpenGl_ShaderProgram.hxx".}
proc setUniform*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                theLocation: GLint; theCount: GLuint; theData: ptr OpenGlVec2i): StandardBoolean {.
    importcpp: "SetUniform", header: "OpenGl_ShaderProgram.hxx".}
proc setUniform*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                theLocation: GLint; theCount: GLuint; theData: ptr OpenGlVec3i): StandardBoolean {.
    importcpp: "SetUniform", header: "OpenGl_ShaderProgram.hxx".}
proc setUniform*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                theLocation: GLint; theCount: GLuint; theData: ptr OpenGlVec4i): StandardBoolean {.
    importcpp: "SetUniform", header: "OpenGl_ShaderProgram.hxx".}
proc setSampler*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                theName: ptr GLchar; theTextureUnit: Graphic3dTextureUnit): StandardBoolean {.
    importcpp: "SetSampler", header: "OpenGl_ShaderProgram.hxx".}
proc setSampler*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                theLocation: GLint; theTextureUnit: Graphic3dTextureUnit): StandardBoolean {.
    importcpp: "SetSampler", header: "OpenGl_ShaderProgram.hxx".}
proc updateDebugDump*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                     theFolder: TCollectionAsciiString = "";
                     theToBeautify: StandardBoolean = standardFalse;
                     theToReset: StandardBoolean = standardFalse): StandardBoolean {.
    importcpp: "UpdateDebugDump", header: "OpenGl_ShaderProgram.hxx".}
type
  OpenGlVariableSetter*[T] {.importcpp: "OpenGl_VariableSetter<\'0>",
                            header: "OpenGl_ShaderProgram.hxx", bycopy.} = object of OpenGlSetterInterface


proc set*[T](this: var OpenGlVariableSetter[T]; theCtx: Handle[OpenGlContext];
            theVariable: Handle[Graphic3dShaderVariable];
            theProgram: ptr OpenGlShaderProgram) {.importcpp: "Set",
    header: "OpenGl_ShaderProgram.hxx".}
type
  MapListOfType*[K; V] {.importcpp: "OpenGl_HashMapInitializer::MapListOfType<\'0,\'1>",
                       header: "OpenGl_ShaderProgram.hxx", bycopy.} = object
    myDictionary* {.importc: "myDictionary".}: NCollectionDataMap[K, V]


proc constructMapListOfType*[K; V](theKey: K; theValue: V): MapListOfType[K, V] {.
    constructor,
    importcpp: "OpenGl_HashMapInitializer::MapListOfType<\'*0,\'*1>(@)",
    header: "OpenGl_ShaderProgram.hxx".}
proc `()`*[K; V](this: var MapListOfType[K, V]; theKey: K; theValue: V): var MapListOfType {.
    importcpp: "#(@)", header: "OpenGl_ShaderProgram.hxx".}
converter `constNCollectionDataMap`*[K; V](this: MapListOfType[K, V]): NCollectionDataMap[
    K, V] {.noSideEffect,
          importcpp: "MapListOfType::operator constNCollection_DataMap",
          header: "OpenGl_ShaderProgram.hxx".}
proc createListOf*[K; V](theKey: K; theValue: V): MapListOfType[K, V] =
  discard


