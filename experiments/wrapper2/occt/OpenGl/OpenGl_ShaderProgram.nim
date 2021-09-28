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

## !!!Ignored construct:  # _OpenGl_ShaderProgram_Header [NewLine] # _OpenGl_ShaderProgram_Header [NewLine] # < NCollection_DataMap . hxx > [NewLine] # < NCollection_Sequence . hxx > [NewLine] # < TCollection_AsciiString . hxx > [NewLine] # < Graphic3d_ShaderObject . hxx > [NewLine] # < Graphic3d_ShaderProgram . hxx > [NewLine] # < Graphic3d_TextureSetBits . hxx > [NewLine] # < OpenGl_Vec . hxx > [NewLine] # < OpenGl_Matrix . hxx > [NewLine] # < OpenGl_NamedResource . hxx > [NewLine] # < OpenGl_ShaderObject . hxx > [NewLine] class OpenGl_ShaderProgram ;
## Error: expected ';'!!!

## !!!Ignored construct:  DEFINE_STANDARD_HANDLE ( OpenGl_ShaderProgram , OpenGl_NamedResource ) ! The enumeration of OCCT-specific OpenGL/GLSL variables. enum OpenGl_StateVariable {  OpenGL matrix state OpenGl_OCC_MODEL_WORLD_MATRIX , OpenGl_OCC_WORLD_VIEW_MATRIX , OpenGl_OCC_PROJECTION_MATRIX , OpenGl_OCC_MODEL_WORLD_MATRIX_INVERSE , OpenGl_OCC_WORLD_VIEW_MATRIX_INVERSE , OpenGl_OCC_PROJECTION_MATRIX_INVERSE , OpenGl_OCC_MODEL_WORLD_MATRIX_TRANSPOSE , OpenGl_OCC_WORLD_VIEW_MATRIX_TRANSPOSE , OpenGl_OCC_PROJECTION_MATRIX_TRANSPOSE , OpenGl_OCC_MODEL_WORLD_MATRIX_INVERSE_TRANSPOSE , OpenGl_OCC_WORLD_VIEW_MATRIX_INVERSE_TRANSPOSE , OpenGl_OCC_PROJECTION_MATRIX_INVERSE_TRANSPOSE ,  OpenGL clip planes state OpenGl_OCC_CLIP_PLANE_EQUATIONS , OpenGl_OCC_CLIP_PLANE_CHAINS , OpenGl_OCC_CLIP_PLANE_COUNT ,  OpenGL light state OpenGl_OCC_LIGHT_SOURCE_COUNT , OpenGl_OCC_LIGHT_SOURCE_TYPES , OpenGl_OCC_LIGHT_SOURCE_PARAMS , OpenGl_OCC_LIGHT_AMBIENT ,  Material state OpenGl_OCCT_TEXTURE_ENABLE , OpenGl_OCCT_DISTINGUISH_MODE , OpenGl_OCCT_PBR_FRONT_MATERIAL , OpenGl_OCCT_PBR_BACK_MATERIAL , OpenGl_OCCT_COMMON_FRONT_MATERIAL , OpenGl_OCCT_COMMON_BACK_MATERIAL , OpenGl_OCCT_ALPHA_CUTOFF , OpenGl_OCCT_COLOR ,  Weighted, Blended Order-Independent Transparency rendering state OpenGl_OCCT_OIT_OUTPUT , OpenGl_OCCT_OIT_DEPTH_FACTOR ,  Context-dependent state OpenGl_OCCT_TEXTURE_TRSF2D , OpenGl_OCCT_POINT_SIZE ,  Wireframe state OpenGl_OCCT_VIEWPORT , OpenGl_OCCT_LINE_WIDTH , OpenGl_OCCT_LINE_FEATHER , OpenGl_OCCT_LINE_STIPPLE_PATTERN ,  occStipplePattern OpenGl_OCCT_LINE_STIPPLE_FACTOR ,  occStippleFactor OpenGl_OCCT_WIREFRAME_COLOR , OpenGl_OCCT_QUAD_MODE_STATE ,  Parameters of outline (silhouette) shader OpenGl_OCCT_ORTHO_SCALE , OpenGl_OCCT_SILHOUETTE_THICKNESS ,  PBR state OpenGl_OCCT_NB_SPEC_IBL_LEVELS ,  DON'T MODIFY THIS ITEM (insert new items before it) OpenGl_OCCT_NUMBER_OF_STATE_VARIABLES } ;
## Error: expected ';'!!!

## ! Interface for generic setter of user-defined uniform variables.

type
  OpenGlSetterInterface* {.importcpp: "OpenGl_SetterInterface",
                          header: "OpenGl_ShaderProgram.hxx", bycopy.} = object ## ! Sets
                                                                           ## user-defined
                                                                           ## uniform
                                                                           ## variable to
                                                                           ## specified
                                                                           ## program.


## !!!Ignored construct:  virtual void Set ( const Handle ( OpenGl_Context ) & theCtx , const Handle ( Graphic3d_ShaderVariable ) & theVariable , OpenGl_ShaderProgram * theProgram ) = 0 ;
## Error: token expected: ) but got: &!!!

proc destroyOpenGlSetterInterface*(this: var OpenGlSetterInterface) {.
    importcpp: "#.~OpenGl_SetterInterface()", header: "OpenGl_ShaderProgram.hxx".}
## ! List of OpenGL shader objects.

type
  OpenGlShaderList* = NCollectionSequence[proc (a1: OpenGlShaderObject): Handle]

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
## !!!Ignored construct:  ! Sets user-defined uniform variable to specified program. void Set ( const Handle ( OpenGl_Context ) & theCtx , const Handle ( Graphic3d_ShaderVariable ) & theVariable , OpenGl_ShaderProgram * theProgram ) const ;
## Error: token expected: ) but got: &!!!

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
    standardType* {.importc: "Standard_Type".}: Handle
    graphic3dShaderProgram* {.importc: "Graphic3d_ShaderProgram".}: Handle
    ## !< Handle of OpenGL shader program
    ## !< List of attached shader objects
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
## !!!Ignored construct:  & get_type_descriptor ( ) ;
## Error: identifier expected, but got: &!!!

## !!!Ignored construct:  & DynamicType ( ) const ;
## Error: identifier expected, but got: &!!!

## !!!Ignored construct:  static bool compileShaderVerbose ( const Handle ( OpenGl_Context ) & theCtx , const Handle ( OpenGl_ShaderObject ) & theShader , const TCollection_AsciiString & theSource , bool theToPrintSource = true ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Creates uninitialized shader program.
## !
## ! WARNING! This constructor is not intended to be called anywhere but from OpenGl_ShaderManager::Create().
## ! Manager has been designed to synchronize camera position, lights definition and other aspects of the program implicitly,
## ! as well as sharing same program across rendering groups.
## !
## ! Program created outside the manager will be left detached from these routines,
## ! and them should be performed manually by caller.
## !
## ! This constructor has been made public to provide more flexibility to re-use OCCT OpenGL classes without OCCT Viewer itself.
## ! If this is not the case - create the program using shared OpenGl_ShaderManager instance instead. OpenGl_ShaderProgram ( const Handle ( Graphic3d_ShaderProgram ) & theProxy = NULL , const TCollection_AsciiString & theId =  ) ;
## Error: token expected: ) but got: &!!!

proc destroyOpenGlShaderProgram*(this: var OpenGlShaderProgram) {.
    importcpp: "#.~OpenGl_ShaderProgram()", header: "OpenGl_ShaderProgram.hxx".}
## !!!Ignored construct:  ! Creates new empty shader program of specified type. Standard_Boolean Create ( const Handle ( OpenGl_Context ) & theCtx ) ;
## Error: token expected: ) but got: &!!!

proc release*(this: var OpenGlShaderProgram; theCtx: ptr OpenGlContext) {.
    importcpp: "Release", header: "OpenGl_ShaderProgram.hxx".}
proc estimatedDataSize*(this: OpenGlShaderProgram): StandardSize {.noSideEffect,
    importcpp: "EstimatedDataSize", header: "OpenGl_ShaderProgram.hxx".}
## !!!Ignored construct:  ! Attaches shader object to the program object. Standard_Boolean AttachShader ( const Handle ( OpenGl_Context ) & theCtx , const Handle ( OpenGl_ShaderObject ) & theShader ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Detaches shader object to the program object. Standard_Boolean DetachShader ( const Handle ( OpenGl_Context ) & theCtx , const Handle ( OpenGl_ShaderObject ) & theShader ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Initializes program object with the list of shader objects. Standard_Boolean Initialize ( const Handle ( OpenGl_Context ) & theCtx , const Graphic3d_ShaderObjectList & theShaders ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Links the program object.
## ! @param theCtx bound OpenGL context
## ! @param theIsVerbose flag to print log on error Standard_Boolean Link ( const Handle ( OpenGl_Context ) & theCtx , bool theIsVerbose = true ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Fetches information log of the last link operation. Standard_Boolean FetchInfoLog ( const Handle ( OpenGl_Context ) & theCtx , TCollection_AsciiString & theLog ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Fetches uniform variables from proxy shader program. Standard_Boolean ApplyVariables ( const Handle ( OpenGl_Context ) & theCtx ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  & Proxy ( ) const { return myProxy ; } ! @return true if current object was initialized inline bool IsValid ( ) const { return myProgramID != NO_PROGRAM ; } ! @return program ID inline GLuint ProgramId ( ) const { return myProgramID ; } public : ! Return TRUE if program defines tessellation stage. Standard_Boolean HasTessellationStage ( ) const { return myHasTessShader ; } ! Return the length of array of light sources (THE_MAX_LIGHTS),
## ! to be used for initialization occLightSources (OpenGl_OCC_LIGHT_SOURCE_PARAMS). Standard_Integer NbLightsMax ( ) const { return myNbLightsMax ; } ! Return the length of array of clipping planes (THE_MAX_CLIP_PLANES),
## ! to be used for initialization occClipPlaneEquations (OpenGl_OCC_CLIP_PLANE_EQUATIONS) and occClipPlaneChains (OpenGl_OCC_CLIP_PLANE_CHAINS). Standard_Integer NbClipPlanesMax ( ) const { return myNbClipPlanesMax ; } ! Return the length of array of Fragment Shader outputs (THE_NB_FRAG_OUTPUTS),
## ! to be used for initialization occFragColorArray/occFragColorN. Standard_Integer NbFragmentOutputs ( ) const { return myNbFragOutputs ; } ! Return true if Fragment Shader should perform alpha test; FALSE by default. Standard_Boolean HasAlphaTest ( ) const { return myHasAlphaTest ; } ! Return true if Fragment Shader color should output the weighted OIT coverage; FALSE by default. Standard_Boolean HasWeightOitOutput ( ) const { return myHasWeightOitOutput ; } ! Return texture units declared within the program, @sa Graphic3d_TextureSetBits. Standard_Integer TextureSetBits ( ) const { return myTextureSetBits ; } private : ! Returns index of last modification of variables of specified state type. Standard_Size ActiveState ( const OpenGl_UniformStateType theType ) const { return theType < OpenGl_UniformStateType_NB ? myCurrentState [ theType ] : 0 ; } ! Updates index of last modification of variables of specified state type. void UpdateState ( const OpenGl_UniformStateType theType , const Standard_Size theIndex ) { if ( theType < OpenGl_UniformStateType_NB ) { myCurrentState [ theType ] = theIndex ; } } public : ! Returns location of the specific uniform variable. OpenGl_ShaderUniformLocation GetUniformLocation ( const Handle ( OpenGl_Context ) & theCtx , const GLchar * theName ) const ;
## Error: identifier expected, but got: &!!!

## !!!Ignored construct:  ! Returns index of the generic vertex attribute by variable name. GLint GetAttributeLocation ( const Handle ( OpenGl_Context ) & theCtx , const GLchar * theName ) const ;
## Error: token expected: ) but got: &!!!

proc getStateLocation*(this: OpenGlShaderProgram; theVariable: OpenGlStateVariable): OpenGlShaderUniformLocation {.
    noSideEffect, importcpp: "GetStateLocation", header: "OpenGl_ShaderProgram.hxx".}
## !!!Ignored construct:  public : ! Returns the value of the integer uniform variable. Standard_Boolean GetUniform ( const Handle ( OpenGl_Context ) & theCtx , const GLchar * theName , OpenGl_Vec4i & theValue ) const ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  Standard_Boolean GetUniform ( const Handle ( OpenGl_Context ) & theCtx , GLint theLocation , OpenGl_Vec4i & theValue ) const ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Returns the value of the float uniform variable. Standard_Boolean GetUniform ( const Handle ( OpenGl_Context ) & theCtx , const GLchar * theName , OpenGl_Vec4 & theValue ) const ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Returns the value of the float uniform variable. Standard_Boolean GetUniform ( const Handle ( OpenGl_Context ) & theCtx , GLint theLocation , OpenGl_Vec4 & theValue ) const ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  public : ! Returns the integer vertex attribute. Standard_Boolean GetAttribute ( const Handle ( OpenGl_Context ) & theCtx , const GLchar * theName , OpenGl_Vec4i & theValue ) const ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Returns the integer vertex attribute. Standard_Boolean GetAttribute ( const Handle ( OpenGl_Context ) & theCtx , GLint theIndex , OpenGl_Vec4i & theValue ) const ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Returns the float vertex attribute. Standard_Boolean GetAttribute ( const Handle ( OpenGl_Context ) & theCtx , const GLchar * theName , OpenGl_Vec4 & theValue ) const ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Returns the float vertex attribute. Standard_Boolean GetAttribute ( const Handle ( OpenGl_Context ) & theCtx , GLint theIndex , OpenGl_Vec4 & theValue ) const ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  public : ! Wrapper for glBindAttribLocation() Standard_Boolean SetAttributeName ( const Handle ( OpenGl_Context ) & theCtx , GLint theIndex , const GLchar * theName ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Wrapper for glVertexAttrib1f() Standard_Boolean SetAttribute ( const Handle ( OpenGl_Context ) & theCtx , const GLchar * theName , GLfloat theValue ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Wrapper for glVertexAttrib1f() Standard_Boolean SetAttribute ( const Handle ( OpenGl_Context ) & theCtx , GLint theIndex , GLfloat theValue ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Wrapper for glVertexAttrib2fv() Standard_Boolean SetAttribute ( const Handle ( OpenGl_Context ) & theCtx , const GLchar * theName , const OpenGl_Vec2 & theValue ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Wrapper for glVertexAttrib2fv() Standard_Boolean SetAttribute ( const Handle ( OpenGl_Context ) & theCtx , GLint theIndex , const OpenGl_Vec2 & theValue ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Wrapper for glVertexAttrib3fv() Standard_Boolean SetAttribute ( const Handle ( OpenGl_Context ) & theCtx , const GLchar * theName , const OpenGl_Vec3 & theValue ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Wrapper for glVertexAttrib3fv() Standard_Boolean SetAttribute ( const Handle ( OpenGl_Context ) & theCtx , GLint theIndex , const OpenGl_Vec3 & theValue ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Wrapper for glVertexAttrib4fv() Standard_Boolean SetAttribute ( const Handle ( OpenGl_Context ) & theCtx , const GLchar * theName , const OpenGl_Vec4 & theValue ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Wrapper for glVertexAttrib4fv() Standard_Boolean SetAttribute ( const Handle ( OpenGl_Context ) & theCtx , GLint theIndex , const OpenGl_Vec4 & theValue ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  public : ! Specifies the value of the integer uniform variable. Standard_Boolean SetUniform ( const Handle ( OpenGl_Context ) & theCtx , const GLchar * theName , GLint theValue ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Specifies the value of the integer uniform variable. Standard_Boolean SetUniform ( const Handle ( OpenGl_Context ) & theCtx , GLint theLocation , GLint theValue ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Specifies the value of the integer uniform 2D vector. Standard_Boolean SetUniform ( const Handle ( OpenGl_Context ) & theCtx , const GLchar * theName , const OpenGl_Vec2i & theValue ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Specifies the value of the integer uniform 2D vector. Standard_Boolean SetUniform ( const Handle ( OpenGl_Context ) & theCtx , GLint theLocation , const OpenGl_Vec2i & theValue ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Specifies the value of the integer uniform 3D vector. Standard_Boolean SetUniform ( const Handle ( OpenGl_Context ) & theCtx , const GLchar * theName , const OpenGl_Vec3i & theValue ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Specifies the value of the integer uniform 3D vector. Standard_Boolean SetUniform ( const Handle ( OpenGl_Context ) & theCtx , GLint theLocation , const OpenGl_Vec3i & theValue ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Specifies the value of the integer uniform 4D vector. Standard_Boolean SetUniform ( const Handle ( OpenGl_Context ) & theCtx , const GLchar * theName , const OpenGl_Vec4i & theValue ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Specifies the value of the integer uniform 4D vector. Standard_Boolean SetUniform ( const Handle ( OpenGl_Context ) & theCtx , GLint theLocation , const OpenGl_Vec4i & theValue ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  public : ! Specifies the value of the unsigned integer uniform 2D vector (uvec2). Standard_Boolean SetUniform ( const Handle ( OpenGl_Context ) & theCtx , const GLchar * theName , const OpenGl_Vec2u & theValue ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Specifies the value of the unsigned integer uniform 2D vector (uvec2). Standard_Boolean SetUniform ( const Handle ( OpenGl_Context ) & theCtx , GLint theLocation , const OpenGl_Vec2u & theValue ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Specifies the value of the uvec2 uniform array Standard_Boolean SetUniform ( const Handle ( OpenGl_Context ) & theCtx , const GLchar * theName , const GLsizei theCount , const OpenGl_Vec2u * theValue ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Specifies the value of the uvec2 uniform array Standard_Boolean SetUniform ( const Handle ( OpenGl_Context ) & theCtx , GLint theLocation , const GLsizei theCount , const OpenGl_Vec2u * theValue ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  public : ! Specifies the value of the float uniform variable. Standard_Boolean SetUniform ( const Handle ( OpenGl_Context ) & theCtx , const GLchar * theName , GLfloat theValue ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Specifies the value of the float uniform variable. Standard_Boolean SetUniform ( const Handle ( OpenGl_Context ) & theCtx , GLint theLocation , GLfloat theValue ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Specifies the value of the float uniform 2D vector. Standard_Boolean SetUniform ( const Handle ( OpenGl_Context ) & theCtx , const GLchar * theName , const OpenGl_Vec2 & theValue ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Specifies the value of the float uniform 2D vector. Standard_Boolean SetUniform ( const Handle ( OpenGl_Context ) & theCtx , GLint theLocation , const OpenGl_Vec2 & theValue ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Specifies the value of the float uniform 3D vector. Standard_Boolean SetUniform ( const Handle ( OpenGl_Context ) & theCtx , const GLchar * theName , const OpenGl_Vec3 & theValue ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Specifies the value of the float uniform 3D vector. Standard_Boolean SetUniform ( const Handle ( OpenGl_Context ) & theCtx , GLint theLocation , const OpenGl_Vec3 & theValue ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Specifies the value of the float uniform 4D vector. Standard_Boolean SetUniform ( const Handle ( OpenGl_Context ) & theCtx , const GLchar * theName , const OpenGl_Vec4 & theValue ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Specifies the value of the float uniform 4D vector. Standard_Boolean SetUniform ( const Handle ( OpenGl_Context ) & theCtx , GLint theLocation , const OpenGl_Vec4 & theValue ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  public : ! Specifies the value of the float uniform 4x4 matrix. Standard_Boolean SetUniform ( const Handle ( OpenGl_Context ) & theCtx , const GLchar * theName , const OpenGl_Mat4 & theValue , GLboolean theTranspose = GL_FALSE ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Specifies the value of the float uniform 4x4 matrix. Standard_Boolean SetUniform ( const Handle ( OpenGl_Context ) & theCtx , GLint theLocation , const OpenGl_Mat4 & theValue , GLboolean theTranspose = GL_FALSE ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Specifies the value of the float uniform 4x4 matrix. Standard_Boolean SetUniform ( const Handle ( OpenGl_Context ) & theCtx , const GLchar * theName , const OpenGl_Matrix & theValue , GLboolean theTranspose = GL_FALSE ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Specifies the value of the float uniform 4x4 matrix. Standard_Boolean SetUniform ( const Handle ( OpenGl_Context ) & theCtx , GLint theLocation , const OpenGl_Matrix & theValue , GLboolean theTranspose = GL_FALSE ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Specifies the value of the float uniform array Standard_Boolean SetUniform ( const Handle ( OpenGl_Context ) & theCtx , GLint theLocation , GLuint theCount , const Standard_ShortReal * theData ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Specifies the value of the float2 uniform array Standard_Boolean SetUniform ( const Handle ( OpenGl_Context ) & theCtx , GLint theLocation , GLuint theCount , const OpenGl_Vec2 * theData ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Specifies the value of the float3 uniform array Standard_Boolean SetUniform ( const Handle ( OpenGl_Context ) & theCtx , GLint theLocation , GLuint theCount , const OpenGl_Vec3 * theData ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Specifies the value of the float4 uniform array Standard_Boolean SetUniform ( const Handle ( OpenGl_Context ) & theCtx , GLint theLocation , GLuint theCount , const OpenGl_Vec4 * theData ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Specifies the value of the integer uniform array Standard_Boolean SetUniform ( const Handle ( OpenGl_Context ) & theCtx , GLint theLocation , GLuint theCount , const Standard_Integer * theData ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Specifies the value of the int2 uniform array Standard_Boolean SetUniform ( const Handle ( OpenGl_Context ) & theCtx , GLint theLocation , GLuint theCount , const OpenGl_Vec2i * theData ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Specifies the value of the int3 uniform array Standard_Boolean SetUniform ( const Handle ( OpenGl_Context ) & theCtx , GLint theLocation , GLuint theCount , const OpenGl_Vec3i * theData ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Specifies the value of the int4 uniform array Standard_Boolean SetUniform ( const Handle ( OpenGl_Context ) & theCtx , GLint theLocation , GLuint theCount , const OpenGl_Vec4i * theData ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  public : ! Specifies the value of the sampler uniform variable. Standard_Boolean SetSampler ( const Handle ( OpenGl_Context ) & theCtx , const GLchar * theName , const Graphic3d_TextureUnit theTextureUnit ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Specifies the value of the sampler uniform variable. Standard_Boolean SetSampler ( const Handle ( OpenGl_Context ) & theCtx , GLint theLocation , const Graphic3d_TextureUnit theTextureUnit ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  public : ! Update the shader program from external files (per shader stage) in the following way:
## ! 1) If external file does not exist, then it will be created (current source code will be dumped, no recompilation) and FALSE will be returned.
## ! 2) If external file exists and it has the same timestamp as   myDumpDate, nothing will be done and FALSE will be returned.
## ! 3) If external file exists and it has    newer timestamp than myDumpDate, shader  will be recompiled and relinked and TRUE will be returned.
## ! @param theCtx OpenGL context bound to this working thread
## ! @param theFolder folder to store files; when unspecified, $CSF_ShadersDirectoryDump or current folder will be used instead
## ! @param theToBeautify flag improving formatting (add extra newlines)
## ! @param theToReset when TRUE, existing dumps will be overridden Standard_Boolean UpdateDebugDump ( const Handle ( OpenGl_Context ) & theCtx , const TCollection_AsciiString & theFolder =  , Standard_Boolean theToBeautify = Standard_False , Standard_Boolean theToReset = Standard_False ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Links the program object. Standard_Boolean link ( const Handle ( OpenGl_Context ) & theCtx ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  myProxy ;
## Error: identifier expected, but got: ;!!!

type
  OpenGlVariableSetter*[T] {.importcpp: "OpenGl_VariableSetter<\'0>",
                            header: "OpenGl_ShaderProgram.hxx", bycopy.} = object of OpenGlSetterInterface


## !!!Ignored construct:  virtual void Set ( const Handle ( OpenGl_Context ) & theCtx , const Handle ( Graphic3d_ShaderVariable ) & theVariable , OpenGl_ShaderProgram * theProgram ) { theProgram -> SetUniform ( theCtx , theVariable -> Name ( ) . ToCString ( ) , theVariable -> Value ( ) -> As < T > ( ) ) ; } }
## Error: token expected: ) but got: &!!!

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














































