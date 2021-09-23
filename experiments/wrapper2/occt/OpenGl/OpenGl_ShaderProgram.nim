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

import
  ../NCollection/NCollection_DataMap, ../NCollection/NCollection_Sequence,
  ../TCollection/TCollection_AsciiString, ../Graphic3d/Graphic3d_ShaderObject,
  ../Graphic3d/Graphic3d_ShaderProgram, ../Graphic3d/Graphic3d_TextureSetBits,
  OpenGl_Vec, OpenGl_Matrix, OpenGl_NamedResource, OpenGl_ShaderObject

discard "forward decl of OpenGl_ShaderProgram"
discard "forward decl of OpenGl_ShaderProgram"
type
  Handle_OpenGl_ShaderProgram* = handle[OpenGl_ShaderProgram]

## ! The enumeration of OCCT-specific OpenGL/GLSL variables.

type
  OpenGl_StateVariable* {.size: sizeof(cint), importcpp: "OpenGl_StateVariable",
                         header: "OpenGl_ShaderProgram.hxx".} = enum ##  OpenGL matrix state
    OpenGl_OCC_MODEL_WORLD_MATRIX, OpenGl_OCC_WORLD_VIEW_MATRIX,
    OpenGl_OCC_PROJECTION_MATRIX, OpenGl_OCC_MODEL_WORLD_MATRIX_INVERSE,
    OpenGl_OCC_WORLD_VIEW_MATRIX_INVERSE, OpenGl_OCC_PROJECTION_MATRIX_INVERSE,
    OpenGl_OCC_MODEL_WORLD_MATRIX_TRANSPOSE,
    OpenGl_OCC_WORLD_VIEW_MATRIX_TRANSPOSE,
    OpenGl_OCC_PROJECTION_MATRIX_TRANSPOSE,
    OpenGl_OCC_MODEL_WORLD_MATRIX_INVERSE_TRANSPOSE,
    OpenGl_OCC_WORLD_VIEW_MATRIX_INVERSE_TRANSPOSE, OpenGl_OCC_PROJECTION_MATRIX_INVERSE_TRANSPOSE, ##  OpenGL clip planes state
    OpenGl_OCC_CLIP_PLANE_EQUATIONS, OpenGl_OCC_CLIP_PLANE_CHAINS, OpenGl_OCC_CLIP_PLANE_COUNT, ##  OpenGL light state
    OpenGl_OCC_LIGHT_SOURCE_COUNT, OpenGl_OCC_LIGHT_SOURCE_TYPES,
    OpenGl_OCC_LIGHT_SOURCE_PARAMS, OpenGl_OCC_LIGHT_AMBIENT, ##  Material state
    OpenGl_OCCT_TEXTURE_ENABLE, OpenGl_OCCT_DISTINGUISH_MODE,
    OpenGl_OCCT_PBR_FRONT_MATERIAL, OpenGl_OCCT_PBR_BACK_MATERIAL,
    OpenGl_OCCT_COMMON_FRONT_MATERIAL, OpenGl_OCCT_COMMON_BACK_MATERIAL,
    OpenGl_OCCT_ALPHA_CUTOFF, OpenGl_OCCT_COLOR, ##  Weighted, Blended Order-Independent Transparency rendering state
    OpenGl_OCCT_OIT_OUTPUT, OpenGl_OCCT_OIT_DEPTH_FACTOR, ##  Context-dependent state
    OpenGl_OCCT_TEXTURE_TRSF2D, OpenGl_OCCT_POINT_SIZE, ##  Wireframe state
    OpenGl_OCCT_VIEWPORT, OpenGl_OCCT_LINE_WIDTH, OpenGl_OCCT_LINE_FEATHER, OpenGl_OCCT_LINE_STIPPLE_PATTERN, ##  occStipplePattern
    OpenGl_OCCT_LINE_STIPPLE_FACTOR, ##  occStippleFactor
    OpenGl_OCCT_WIREFRAME_COLOR, OpenGl_OCCT_QUAD_MODE_STATE, ##  Parameters of outline (silhouette) shader
    OpenGl_OCCT_ORTHO_SCALE, OpenGl_OCCT_SILHOUETTE_THICKNESS, ##  PBR state
    OpenGl_OCCT_NB_SPEC_IBL_LEVELS, ##  DON'T MODIFY THIS ITEM (insert new items before it)
    OpenGl_OCCT_NUMBER_OF_STATE_VARIABLES


## ! Interface for generic setter of user-defined uniform variables.

type
  OpenGl_SetterInterface* {.importcpp: "OpenGl_SetterInterface",
                           header: "OpenGl_ShaderProgram.hxx", bycopy.} = object ## ! Sets
                                                                            ## user-defined
                                                                            ## uniform
                                                                            ## variable to
                                                                            ## specified
                                                                            ## program.


proc Set*(this: var OpenGl_SetterInterface; theCtx: handle[OpenGl_Context];
         theVariable: handle[Graphic3d_ShaderVariable];
         theProgram: ptr OpenGl_ShaderProgram) {.importcpp: "Set",
    header: "OpenGl_ShaderProgram.hxx".}
proc destroyOpenGl_SetterInterface*(this: var OpenGl_SetterInterface) {.
    importcpp: "#.~OpenGl_SetterInterface()", header: "OpenGl_ShaderProgram.hxx".}
## ! List of OpenGL shader objects.

type
  OpenGl_ShaderList* = NCollection_Sequence[handle[OpenGl_ShaderObject]]

## ! List of shader variable setters.

type
  OpenGl_SetterList* = NCollection_DataMap[csize_t, ptr OpenGl_SetterInterface]

## ! Support tool for setting user-defined uniform variables.

type
  OpenGl_VariableSetterSelector* {.importcpp: "OpenGl_VariableSetterSelector",
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


proc constructOpenGl_VariableSetterSelector*(): OpenGl_VariableSetterSelector {.
    constructor, importcpp: "OpenGl_VariableSetterSelector(@)",
    header: "OpenGl_ShaderProgram.hxx".}
proc destroyOpenGl_VariableSetterSelector*(
    this: var OpenGl_VariableSetterSelector) {.
    importcpp: "#.~OpenGl_VariableSetterSelector()",
    header: "OpenGl_ShaderProgram.hxx".}
proc Set*(this: OpenGl_VariableSetterSelector; theCtx: handle[OpenGl_Context];
         theVariable: handle[Graphic3d_ShaderVariable];
         theProgram: ptr OpenGl_ShaderProgram) {.noSideEffect, importcpp: "Set",
    header: "OpenGl_ShaderProgram.hxx".}
## ! Defines types of uniform state variables.

type
  OpenGl_UniformStateType* {.size: sizeof(cint),
                            importcpp: "OpenGl_UniformStateType",
                            header: "OpenGl_ShaderProgram.hxx".} = enum
    OpenGl_LIGHT_SOURCES_STATE, OpenGl_CLIP_PLANES_STATE,
    OpenGl_MODEL_WORLD_STATE, OpenGl_WORLD_VIEW_STATE, OpenGl_PROJECTION_STATE,
    OpenGl_MATERIAL_STATE, OpenGl_SURF_DETAIL_STATE, OpenGL_OIT_STATE,
    OpenGl_UniformStateType_NB


## ! Simple class represents GLSL program variable location.

type
  OpenGl_ShaderUniformLocation* {.importcpp: "OpenGl_ShaderUniformLocation",
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


proc constructOpenGl_ShaderUniformLocation*(): OpenGl_ShaderUniformLocation {.
    constructor, importcpp: "OpenGl_ShaderUniformLocation(@)",
    header: "OpenGl_ShaderProgram.hxx".}
proc constructOpenGl_ShaderUniformLocation*(theLocation: GLint): OpenGl_ShaderUniformLocation {.
    constructor, importcpp: "OpenGl_ShaderUniformLocation(@)",
    header: "OpenGl_ShaderProgram.hxx".}
proc IsValid*(this: OpenGl_ShaderUniformLocation): bool {.noSideEffect,
    importcpp: "IsValid", header: "OpenGl_ShaderProgram.hxx".}
converter `bool`*(this: OpenGl_ShaderUniformLocation): bool {.noSideEffect,
    importcpp: "OpenGl_ShaderUniformLocation::operator bool",
    header: "OpenGl_ShaderProgram.hxx".}
converter `GLint`*(this: OpenGl_ShaderUniformLocation): GLint {.noSideEffect,
    importcpp: "OpenGl_ShaderUniformLocation::operator GLint",
    header: "OpenGl_ShaderProgram.hxx".}
## ! Wrapper for OpenGL program object.

type
  OpenGl_ShaderProgram* {.importcpp: "OpenGl_ShaderProgram",
                         header: "OpenGl_ShaderProgram.hxx", bycopy.} = object of OpenGl_NamedResource ##
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

  OpenGl_ShaderProgrambase_type* = OpenGl_NamedResource

proc get_type_name*(): cstring {.importcpp: "OpenGl_ShaderProgram::get_type_name(@)",
                              header: "OpenGl_ShaderProgram.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "OpenGl_ShaderProgram::get_type_descriptor(@)",
    header: "OpenGl_ShaderProgram.hxx".}
proc DynamicType*(this: OpenGl_ShaderProgram): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "OpenGl_ShaderProgram.hxx".}
proc compileShaderVerbose*(theCtx: handle[OpenGl_Context];
                          theShader: handle[OpenGl_ShaderObject];
                          theSource: TCollection_AsciiString;
                          theToPrintSource: bool = true): bool {.
    importcpp: "OpenGl_ShaderProgram::compileShaderVerbose(@)",
    header: "OpenGl_ShaderProgram.hxx".}
proc constructOpenGl_ShaderProgram*(theProxy: handle[Graphic3d_ShaderProgram] = nil;
                                   theId: TCollection_AsciiString = ""): OpenGl_ShaderProgram {.
    constructor, importcpp: "OpenGl_ShaderProgram(@)",
    header: "OpenGl_ShaderProgram.hxx".}
proc destroyOpenGl_ShaderProgram*(this: var OpenGl_ShaderProgram) {.
    importcpp: "#.~OpenGl_ShaderProgram()", header: "OpenGl_ShaderProgram.hxx".}
proc Create*(this: var OpenGl_ShaderProgram; theCtx: handle[OpenGl_Context]): Standard_Boolean {.
    importcpp: "Create", header: "OpenGl_ShaderProgram.hxx".}
proc Release*(this: var OpenGl_ShaderProgram; theCtx: ptr OpenGl_Context) {.
    importcpp: "Release", header: "OpenGl_ShaderProgram.hxx".}
proc EstimatedDataSize*(this: OpenGl_ShaderProgram): Standard_Size {.noSideEffect,
    importcpp: "EstimatedDataSize", header: "OpenGl_ShaderProgram.hxx".}
proc AttachShader*(this: var OpenGl_ShaderProgram; theCtx: handle[OpenGl_Context];
                  theShader: handle[OpenGl_ShaderObject]): Standard_Boolean {.
    importcpp: "AttachShader", header: "OpenGl_ShaderProgram.hxx".}
proc DetachShader*(this: var OpenGl_ShaderProgram; theCtx: handle[OpenGl_Context];
                  theShader: handle[OpenGl_ShaderObject]): Standard_Boolean {.
    importcpp: "DetachShader", header: "OpenGl_ShaderProgram.hxx".}
proc Initialize*(this: var OpenGl_ShaderProgram; theCtx: handle[OpenGl_Context];
                theShaders: Graphic3d_ShaderObjectList): Standard_Boolean {.
    importcpp: "Initialize", header: "OpenGl_ShaderProgram.hxx".}
proc Link*(this: var OpenGl_ShaderProgram; theCtx: handle[OpenGl_Context];
          theIsVerbose: bool = true): Standard_Boolean {.importcpp: "Link",
    header: "OpenGl_ShaderProgram.hxx".}
proc FetchInfoLog*(this: var OpenGl_ShaderProgram; theCtx: handle[OpenGl_Context];
                  theLog: var TCollection_AsciiString): Standard_Boolean {.
    importcpp: "FetchInfoLog", header: "OpenGl_ShaderProgram.hxx".}
proc ApplyVariables*(this: var OpenGl_ShaderProgram; theCtx: handle[OpenGl_Context]): Standard_Boolean {.
    importcpp: "ApplyVariables", header: "OpenGl_ShaderProgram.hxx".}
proc Proxy*(this: OpenGl_ShaderProgram): handle[Graphic3d_ShaderProgram] {.
    noSideEffect, importcpp: "Proxy", header: "OpenGl_ShaderProgram.hxx".}
proc IsValid*(this: OpenGl_ShaderProgram): bool {.noSideEffect, importcpp: "IsValid",
    header: "OpenGl_ShaderProgram.hxx".}
proc ProgramId*(this: OpenGl_ShaderProgram): GLuint {.noSideEffect,
    importcpp: "ProgramId", header: "OpenGl_ShaderProgram.hxx".}
proc HasTessellationStage*(this: OpenGl_ShaderProgram): Standard_Boolean {.
    noSideEffect, importcpp: "HasTessellationStage",
    header: "OpenGl_ShaderProgram.hxx".}
proc NbLightsMax*(this: OpenGl_ShaderProgram): Standard_Integer {.noSideEffect,
    importcpp: "NbLightsMax", header: "OpenGl_ShaderProgram.hxx".}
proc NbClipPlanesMax*(this: OpenGl_ShaderProgram): Standard_Integer {.noSideEffect,
    importcpp: "NbClipPlanesMax", header: "OpenGl_ShaderProgram.hxx".}
proc NbFragmentOutputs*(this: OpenGl_ShaderProgram): Standard_Integer {.
    noSideEffect, importcpp: "NbFragmentOutputs",
    header: "OpenGl_ShaderProgram.hxx".}
proc HasAlphaTest*(this: OpenGl_ShaderProgram): Standard_Boolean {.noSideEffect,
    importcpp: "HasAlphaTest", header: "OpenGl_ShaderProgram.hxx".}
proc HasWeightOitOutput*(this: OpenGl_ShaderProgram): Standard_Boolean {.
    noSideEffect, importcpp: "HasWeightOitOutput",
    header: "OpenGl_ShaderProgram.hxx".}
proc TextureSetBits*(this: OpenGl_ShaderProgram): Standard_Integer {.noSideEffect,
    importcpp: "TextureSetBits", header: "OpenGl_ShaderProgram.hxx".}
proc GetUniformLocation*(this: OpenGl_ShaderProgram;
                        theCtx: handle[OpenGl_Context]; theName: ptr GLchar): OpenGl_ShaderUniformLocation {.
    noSideEffect, importcpp: "GetUniformLocation",
    header: "OpenGl_ShaderProgram.hxx".}
proc GetAttributeLocation*(this: OpenGl_ShaderProgram;
                          theCtx: handle[OpenGl_Context]; theName: ptr GLchar): GLint {.
    noSideEffect, importcpp: "GetAttributeLocation",
    header: "OpenGl_ShaderProgram.hxx".}
proc GetStateLocation*(this: OpenGl_ShaderProgram;
                      theVariable: OpenGl_StateVariable): OpenGl_ShaderUniformLocation {.
    noSideEffect, importcpp: "GetStateLocation", header: "OpenGl_ShaderProgram.hxx".}
proc GetUniform*(this: OpenGl_ShaderProgram; theCtx: handle[OpenGl_Context];
                theName: ptr GLchar; theValue: var OpenGl_Vec4i): Standard_Boolean {.
    noSideEffect, importcpp: "GetUniform", header: "OpenGl_ShaderProgram.hxx".}
proc GetUniform*(this: OpenGl_ShaderProgram; theCtx: handle[OpenGl_Context];
                theLocation: GLint; theValue: var OpenGl_Vec4i): Standard_Boolean {.
    noSideEffect, importcpp: "GetUniform", header: "OpenGl_ShaderProgram.hxx".}
proc GetUniform*(this: OpenGl_ShaderProgram; theCtx: handle[OpenGl_Context];
                theName: ptr GLchar; theValue: var OpenGl_Vec4): Standard_Boolean {.
    noSideEffect, importcpp: "GetUniform", header: "OpenGl_ShaderProgram.hxx".}
proc GetUniform*(this: OpenGl_ShaderProgram; theCtx: handle[OpenGl_Context];
                theLocation: GLint; theValue: var OpenGl_Vec4): Standard_Boolean {.
    noSideEffect, importcpp: "GetUniform", header: "OpenGl_ShaderProgram.hxx".}
proc GetAttribute*(this: OpenGl_ShaderProgram; theCtx: handle[OpenGl_Context];
                  theName: ptr GLchar; theValue: var OpenGl_Vec4i): Standard_Boolean {.
    noSideEffect, importcpp: "GetAttribute", header: "OpenGl_ShaderProgram.hxx".}
proc GetAttribute*(this: OpenGl_ShaderProgram; theCtx: handle[OpenGl_Context];
                  theIndex: GLint; theValue: var OpenGl_Vec4i): Standard_Boolean {.
    noSideEffect, importcpp: "GetAttribute", header: "OpenGl_ShaderProgram.hxx".}
proc GetAttribute*(this: OpenGl_ShaderProgram; theCtx: handle[OpenGl_Context];
                  theName: ptr GLchar; theValue: var OpenGl_Vec4): Standard_Boolean {.
    noSideEffect, importcpp: "GetAttribute", header: "OpenGl_ShaderProgram.hxx".}
proc GetAttribute*(this: OpenGl_ShaderProgram; theCtx: handle[OpenGl_Context];
                  theIndex: GLint; theValue: var OpenGl_Vec4): Standard_Boolean {.
    noSideEffect, importcpp: "GetAttribute", header: "OpenGl_ShaderProgram.hxx".}
proc SetAttributeName*(this: var OpenGl_ShaderProgram;
                      theCtx: handle[OpenGl_Context]; theIndex: GLint;
                      theName: ptr GLchar): Standard_Boolean {.
    importcpp: "SetAttributeName", header: "OpenGl_ShaderProgram.hxx".}
proc SetAttribute*(this: var OpenGl_ShaderProgram; theCtx: handle[OpenGl_Context];
                  theName: ptr GLchar; theValue: GLfloat): Standard_Boolean {.
    importcpp: "SetAttribute", header: "OpenGl_ShaderProgram.hxx".}
proc SetAttribute*(this: var OpenGl_ShaderProgram; theCtx: handle[OpenGl_Context];
                  theIndex: GLint; theValue: GLfloat): Standard_Boolean {.
    importcpp: "SetAttribute", header: "OpenGl_ShaderProgram.hxx".}
proc SetAttribute*(this: var OpenGl_ShaderProgram; theCtx: handle[OpenGl_Context];
                  theName: ptr GLchar; theValue: OpenGl_Vec2): Standard_Boolean {.
    importcpp: "SetAttribute", header: "OpenGl_ShaderProgram.hxx".}
proc SetAttribute*(this: var OpenGl_ShaderProgram; theCtx: handle[OpenGl_Context];
                  theIndex: GLint; theValue: OpenGl_Vec2): Standard_Boolean {.
    importcpp: "SetAttribute", header: "OpenGl_ShaderProgram.hxx".}
proc SetAttribute*(this: var OpenGl_ShaderProgram; theCtx: handle[OpenGl_Context];
                  theName: ptr GLchar; theValue: OpenGl_Vec3): Standard_Boolean {.
    importcpp: "SetAttribute", header: "OpenGl_ShaderProgram.hxx".}
proc SetAttribute*(this: var OpenGl_ShaderProgram; theCtx: handle[OpenGl_Context];
                  theIndex: GLint; theValue: OpenGl_Vec3): Standard_Boolean {.
    importcpp: "SetAttribute", header: "OpenGl_ShaderProgram.hxx".}
proc SetAttribute*(this: var OpenGl_ShaderProgram; theCtx: handle[OpenGl_Context];
                  theName: ptr GLchar; theValue: OpenGl_Vec4): Standard_Boolean {.
    importcpp: "SetAttribute", header: "OpenGl_ShaderProgram.hxx".}
proc SetAttribute*(this: var OpenGl_ShaderProgram; theCtx: handle[OpenGl_Context];
                  theIndex: GLint; theValue: OpenGl_Vec4): Standard_Boolean {.
    importcpp: "SetAttribute", header: "OpenGl_ShaderProgram.hxx".}
proc SetUniform*(this: var OpenGl_ShaderProgram; theCtx: handle[OpenGl_Context];
                theName: ptr GLchar; theValue: GLint): Standard_Boolean {.
    importcpp: "SetUniform", header: "OpenGl_ShaderProgram.hxx".}
proc SetUniform*(this: var OpenGl_ShaderProgram; theCtx: handle[OpenGl_Context];
                theLocation: GLint; theValue: GLint): Standard_Boolean {.
    importcpp: "SetUniform", header: "OpenGl_ShaderProgram.hxx".}
proc SetUniform*(this: var OpenGl_ShaderProgram; theCtx: handle[OpenGl_Context];
                theName: ptr GLchar; theValue: OpenGl_Vec2i): Standard_Boolean {.
    importcpp: "SetUniform", header: "OpenGl_ShaderProgram.hxx".}
proc SetUniform*(this: var OpenGl_ShaderProgram; theCtx: handle[OpenGl_Context];
                theLocation: GLint; theValue: OpenGl_Vec2i): Standard_Boolean {.
    importcpp: "SetUniform", header: "OpenGl_ShaderProgram.hxx".}
proc SetUniform*(this: var OpenGl_ShaderProgram; theCtx: handle[OpenGl_Context];
                theName: ptr GLchar; theValue: OpenGl_Vec3i): Standard_Boolean {.
    importcpp: "SetUniform", header: "OpenGl_ShaderProgram.hxx".}
proc SetUniform*(this: var OpenGl_ShaderProgram; theCtx: handle[OpenGl_Context];
                theLocation: GLint; theValue: OpenGl_Vec3i): Standard_Boolean {.
    importcpp: "SetUniform", header: "OpenGl_ShaderProgram.hxx".}
proc SetUniform*(this: var OpenGl_ShaderProgram; theCtx: handle[OpenGl_Context];
                theName: ptr GLchar; theValue: OpenGl_Vec4i): Standard_Boolean {.
    importcpp: "SetUniform", header: "OpenGl_ShaderProgram.hxx".}
proc SetUniform*(this: var OpenGl_ShaderProgram; theCtx: handle[OpenGl_Context];
                theLocation: GLint; theValue: OpenGl_Vec4i): Standard_Boolean {.
    importcpp: "SetUniform", header: "OpenGl_ShaderProgram.hxx".}
proc SetUniform*(this: var OpenGl_ShaderProgram; theCtx: handle[OpenGl_Context];
                theName: ptr GLchar; theValue: OpenGl_Vec2u): Standard_Boolean {.
    importcpp: "SetUniform", header: "OpenGl_ShaderProgram.hxx".}
proc SetUniform*(this: var OpenGl_ShaderProgram; theCtx: handle[OpenGl_Context];
                theLocation: GLint; theValue: OpenGl_Vec2u): Standard_Boolean {.
    importcpp: "SetUniform", header: "OpenGl_ShaderProgram.hxx".}
proc SetUniform*(this: var OpenGl_ShaderProgram; theCtx: handle[OpenGl_Context];
                theName: ptr GLchar; theCount: GLsizei; theValue: ptr OpenGl_Vec2u): Standard_Boolean {.
    importcpp: "SetUniform", header: "OpenGl_ShaderProgram.hxx".}
proc SetUniform*(this: var OpenGl_ShaderProgram; theCtx: handle[OpenGl_Context];
                theLocation: GLint; theCount: GLsizei; theValue: ptr OpenGl_Vec2u): Standard_Boolean {.
    importcpp: "SetUniform", header: "OpenGl_ShaderProgram.hxx".}
proc SetUniform*(this: var OpenGl_ShaderProgram; theCtx: handle[OpenGl_Context];
                theName: ptr GLchar; theValue: GLfloat): Standard_Boolean {.
    importcpp: "SetUniform", header: "OpenGl_ShaderProgram.hxx".}
proc SetUniform*(this: var OpenGl_ShaderProgram; theCtx: handle[OpenGl_Context];
                theLocation: GLint; theValue: GLfloat): Standard_Boolean {.
    importcpp: "SetUniform", header: "OpenGl_ShaderProgram.hxx".}
proc SetUniform*(this: var OpenGl_ShaderProgram; theCtx: handle[OpenGl_Context];
                theName: ptr GLchar; theValue: OpenGl_Vec2): Standard_Boolean {.
    importcpp: "SetUniform", header: "OpenGl_ShaderProgram.hxx".}
proc SetUniform*(this: var OpenGl_ShaderProgram; theCtx: handle[OpenGl_Context];
                theLocation: GLint; theValue: OpenGl_Vec2): Standard_Boolean {.
    importcpp: "SetUniform", header: "OpenGl_ShaderProgram.hxx".}
proc SetUniform*(this: var OpenGl_ShaderProgram; theCtx: handle[OpenGl_Context];
                theName: ptr GLchar; theValue: OpenGl_Vec3): Standard_Boolean {.
    importcpp: "SetUniform", header: "OpenGl_ShaderProgram.hxx".}
proc SetUniform*(this: var OpenGl_ShaderProgram; theCtx: handle[OpenGl_Context];
                theLocation: GLint; theValue: OpenGl_Vec3): Standard_Boolean {.
    importcpp: "SetUniform", header: "OpenGl_ShaderProgram.hxx".}
proc SetUniform*(this: var OpenGl_ShaderProgram; theCtx: handle[OpenGl_Context];
                theName: ptr GLchar; theValue: OpenGl_Vec4): Standard_Boolean {.
    importcpp: "SetUniform", header: "OpenGl_ShaderProgram.hxx".}
proc SetUniform*(this: var OpenGl_ShaderProgram; theCtx: handle[OpenGl_Context];
                theLocation: GLint; theValue: OpenGl_Vec4): Standard_Boolean {.
    importcpp: "SetUniform", header: "OpenGl_ShaderProgram.hxx".}
proc SetUniform*(this: var OpenGl_ShaderProgram; theCtx: handle[OpenGl_Context];
                theName: ptr GLchar; theValue: OpenGl_Mat4;
                theTranspose: GLboolean = GL_FALSE): Standard_Boolean {.
    importcpp: "SetUniform", header: "OpenGl_ShaderProgram.hxx".}
proc SetUniform*(this: var OpenGl_ShaderProgram; theCtx: handle[OpenGl_Context];
                theLocation: GLint; theValue: OpenGl_Mat4;
                theTranspose: GLboolean = GL_FALSE): Standard_Boolean {.
    importcpp: "SetUniform", header: "OpenGl_ShaderProgram.hxx".}
proc SetUniform*(this: var OpenGl_ShaderProgram; theCtx: handle[OpenGl_Context];
                theName: ptr GLchar; theValue: OpenGl_Matrix;
                theTranspose: GLboolean = GL_FALSE): Standard_Boolean {.
    importcpp: "SetUniform", header: "OpenGl_ShaderProgram.hxx".}
proc SetUniform*(this: var OpenGl_ShaderProgram; theCtx: handle[OpenGl_Context];
                theLocation: GLint; theValue: OpenGl_Matrix;
                theTranspose: GLboolean = GL_FALSE): Standard_Boolean {.
    importcpp: "SetUniform", header: "OpenGl_ShaderProgram.hxx".}
proc SetUniform*(this: var OpenGl_ShaderProgram; theCtx: handle[OpenGl_Context];
                theLocation: GLint; theCount: GLuint;
                theData: ptr Standard_ShortReal): Standard_Boolean {.
    importcpp: "SetUniform", header: "OpenGl_ShaderProgram.hxx".}
proc SetUniform*(this: var OpenGl_ShaderProgram; theCtx: handle[OpenGl_Context];
                theLocation: GLint; theCount: GLuint; theData: ptr OpenGl_Vec2): Standard_Boolean {.
    importcpp: "SetUniform", header: "OpenGl_ShaderProgram.hxx".}
proc SetUniform*(this: var OpenGl_ShaderProgram; theCtx: handle[OpenGl_Context];
                theLocation: GLint; theCount: GLuint; theData: ptr OpenGl_Vec3): Standard_Boolean {.
    importcpp: "SetUniform", header: "OpenGl_ShaderProgram.hxx".}
proc SetUniform*(this: var OpenGl_ShaderProgram; theCtx: handle[OpenGl_Context];
                theLocation: GLint; theCount: GLuint; theData: ptr OpenGl_Vec4): Standard_Boolean {.
    importcpp: "SetUniform", header: "OpenGl_ShaderProgram.hxx".}
proc SetUniform*(this: var OpenGl_ShaderProgram; theCtx: handle[OpenGl_Context];
                theLocation: GLint; theCount: GLuint; theData: ptr Standard_Integer): Standard_Boolean {.
    importcpp: "SetUniform", header: "OpenGl_ShaderProgram.hxx".}
proc SetUniform*(this: var OpenGl_ShaderProgram; theCtx: handle[OpenGl_Context];
                theLocation: GLint; theCount: GLuint; theData: ptr OpenGl_Vec2i): Standard_Boolean {.
    importcpp: "SetUniform", header: "OpenGl_ShaderProgram.hxx".}
proc SetUniform*(this: var OpenGl_ShaderProgram; theCtx: handle[OpenGl_Context];
                theLocation: GLint; theCount: GLuint; theData: ptr OpenGl_Vec3i): Standard_Boolean {.
    importcpp: "SetUniform", header: "OpenGl_ShaderProgram.hxx".}
proc SetUniform*(this: var OpenGl_ShaderProgram; theCtx: handle[OpenGl_Context];
                theLocation: GLint; theCount: GLuint; theData: ptr OpenGl_Vec4i): Standard_Boolean {.
    importcpp: "SetUniform", header: "OpenGl_ShaderProgram.hxx".}
proc SetSampler*(this: var OpenGl_ShaderProgram; theCtx: handle[OpenGl_Context];
                theName: ptr GLchar; theTextureUnit: Graphic3d_TextureUnit): Standard_Boolean {.
    importcpp: "SetSampler", header: "OpenGl_ShaderProgram.hxx".}
proc SetSampler*(this: var OpenGl_ShaderProgram; theCtx: handle[OpenGl_Context];
                theLocation: GLint; theTextureUnit: Graphic3d_TextureUnit): Standard_Boolean {.
    importcpp: "SetSampler", header: "OpenGl_ShaderProgram.hxx".}
proc UpdateDebugDump*(this: var OpenGl_ShaderProgram;
                     theCtx: handle[OpenGl_Context];
                     theFolder: TCollection_AsciiString = "";
                     theToBeautify: Standard_Boolean = Standard_False;
                     theToReset: Standard_Boolean = Standard_False): Standard_Boolean {.
    importcpp: "UpdateDebugDump", header: "OpenGl_ShaderProgram.hxx".}
type
  OpenGl_VariableSetter*[T] {.importcpp: "OpenGl_VariableSetter<\'0>",
                             header: "OpenGl_ShaderProgram.hxx", bycopy.} = object of OpenGl_SetterInterface


proc Set*[T](this: var OpenGl_VariableSetter[T]; theCtx: handle[OpenGl_Context];
            theVariable: handle[Graphic3d_ShaderVariable];
            theProgram: ptr OpenGl_ShaderProgram) {.importcpp: "Set",
    header: "OpenGl_ShaderProgram.hxx".}
type
  MapListOfType*[K; V] {.importcpp: "OpenGl_HashMapInitializer::MapListOfType<\'0,\'1>",
                       header: "OpenGl_ShaderProgram.hxx", bycopy.} = object
    myDictionary* {.importc: "myDictionary".}: NCollection_DataMap[K, V]


proc constructMapListOfType*[K; V](theKey: K; theValue: V): MapListOfType[K, V] {.
    constructor,
    importcpp: "OpenGl_HashMapInitializer::MapListOfType<\'*0,\'*1>(@)",
    header: "OpenGl_ShaderProgram.hxx".}
proc `()`*[K; V](this: var MapListOfType[K, V]; theKey: K; theValue: V): var MapListOfType {.
    importcpp: "#(@)", header: "OpenGl_ShaderProgram.hxx".}
converter `constNCollection_DataMap`*[K; V](this: MapListOfType[K, V]): NCollection_DataMap[
    K, V] {.noSideEffect,
          importcpp: "MapListOfType::operator constNCollection_DataMap",
          header: "OpenGl_ShaderProgram.hxx".}
proc CreateListOf*[K; V](theKey: K; theValue: V): MapListOfType[K, V] =
  discard
