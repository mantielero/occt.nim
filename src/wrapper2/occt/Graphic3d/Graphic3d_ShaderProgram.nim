##  Created on: 2013-09-20
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

## ! List of shader objects.

type
  Graphic3dShaderObjectList* = NCollectionSequence[Handle[Graphic3dShaderObject]]

## ! List of custom uniform shader variables.

type
  Graphic3dShaderVariableList* = NCollectionSequence[
      Handle[Graphic3dShaderVariable]]

## ! List of custom vertex shader attrubures

type
  Graphic3dShaderAttributeList* = NCollectionSequence[
      Handle[Graphic3dShaderAttribute]]

## ! This class is responsible for managing shader programs.

type
  Graphic3dShaderProgram* {.importcpp: "Graphic3d_ShaderProgram",
                           header: "Graphic3d_ShaderProgram.hxx", bycopy.} = object of StandardTransient ##
                                                                                                  ## !
                                                                                                  ## Default
                                                                                                  ## value
                                                                                                  ## of
                                                                                                  ## THE_MAX_LIGHTS
                                                                                                  ## macros
                                                                                                  ## within
                                                                                                  ## GLSL
                                                                                                  ## program
                                                                                                  ## (see
                                                                                                  ## Declarations.glsl).
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Creates
                                                                                                  ## new
                                                                                                  ## empty
                                                                                                  ## program
                                                                                                  ## object.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## The
                                                                                                  ## path
                                                                                                  ## to
                                                                                                  ## GLSL
                                                                                                  ## programs
                                                                                                  ## determined
                                                                                                  ## from
                                                                                                  ## CSF_ShadersDirectory
                                                                                                  ## or
                                                                                                  ## CASROOT
                                                                                                  ## environment
                                                                                                  ## variables.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## @return
                                                                                                  ## the
                                                                                                  ## root
                                                                                                  ## folder
                                                                                                  ## with
                                                                                                  ## default
                                                                                                  ## GLSL
                                                                                                  ## programs.
    ## !< the unique identifier of program object
    ## !< the list of attached shader objects
    ## !< the list of custom uniform variables
    ## !< the list of custom vertex attributes
    ## !< GLSL header with version code and used extensions
    ## !< length of array of light sources (THE_MAX_LIGHTS)
    ## !< length of array of clipping planes (THE_MAX_CLIP_PLANES)
    ## !< length of array of Fragment Shader outputs (THE_NB_FRAG_OUTPUTS)
    ## !< texture units declared within the program, @sa Graphic3d_TextureSetBits
    ## !< flag indicating that program defines default texture sampler occSampler0
    ## !< flag indicating that Fragment Shader performs alpha test
    ## !< flag indicating that Fragment Shader includes weighted OIT coverage
    ## !< flag indicating that program defines functions and variables used in PBR pipeline

  Graphic3dShaderProgrambaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Graphic3d_ShaderProgram::get_type_name(@)",
                            header: "Graphic3d_ShaderProgram.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Graphic3d_ShaderProgram::get_type_descriptor(@)",
    header: "Graphic3d_ShaderProgram.hxx".}
proc dynamicType*(this: Graphic3dShaderProgram): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "Graphic3d_ShaderProgram.hxx".}
proc constructGraphic3dShaderProgram*(): Graphic3dShaderProgram {.constructor,
    importcpp: "Graphic3d_ShaderProgram(@)", header: "Graphic3d_ShaderProgram.hxx".}
proc destroyGraphic3dShaderProgram*(this: var Graphic3dShaderProgram) {.
    importcpp: "#.~Graphic3d_ShaderProgram()",
    header: "Graphic3d_ShaderProgram.hxx".}
proc isDone*(this: Graphic3dShaderProgram): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "Graphic3d_ShaderProgram.hxx".}
proc getId*(this: Graphic3dShaderProgram): TCollectionAsciiString {.noSideEffect,
    importcpp: "GetId", header: "Graphic3d_ShaderProgram.hxx".}
proc setId*(this: var Graphic3dShaderProgram; theId: TCollectionAsciiString) {.
    importcpp: "SetId", header: "Graphic3d_ShaderProgram.hxx".}
proc header*(this: Graphic3dShaderProgram): TCollectionAsciiString {.noSideEffect,
    importcpp: "Header", header: "Graphic3d_ShaderProgram.hxx".}
proc setHeader*(this: var Graphic3dShaderProgram; theHeader: TCollectionAsciiString) {.
    importcpp: "SetHeader", header: "Graphic3d_ShaderProgram.hxx".}
proc appendToHeader*(this: var Graphic3dShaderProgram;
                    theHeaderLine: TCollectionAsciiString) {.
    importcpp: "AppendToHeader", header: "Graphic3d_ShaderProgram.hxx".}
proc nbLightsMax*(this: Graphic3dShaderProgram): StandardInteger {.noSideEffect,
    importcpp: "NbLightsMax", header: "Graphic3d_ShaderProgram.hxx".}
proc setNbLightsMax*(this: var Graphic3dShaderProgram; theNbLights: StandardInteger) {.
    importcpp: "SetNbLightsMax", header: "Graphic3d_ShaderProgram.hxx".}
proc nbClipPlanesMax*(this: Graphic3dShaderProgram): StandardInteger {.noSideEffect,
    importcpp: "NbClipPlanesMax", header: "Graphic3d_ShaderProgram.hxx".}
proc setNbClipPlanesMax*(this: var Graphic3dShaderProgram;
                        theNbPlanes: StandardInteger) {.
    importcpp: "SetNbClipPlanesMax", header: "Graphic3d_ShaderProgram.hxx".}
proc attachShader*(this: var Graphic3dShaderProgram;
                  theShader: Handle[Graphic3dShaderObject]): StandardBoolean {.
    importcpp: "AttachShader", header: "Graphic3d_ShaderProgram.hxx".}
proc detachShader*(this: var Graphic3dShaderProgram;
                  theShader: Handle[Graphic3dShaderObject]): StandardBoolean {.
    importcpp: "DetachShader", header: "Graphic3d_ShaderProgram.hxx".}
proc shaderObjects*(this: Graphic3dShaderProgram): Graphic3dShaderObjectList {.
    noSideEffect, importcpp: "ShaderObjects", header: "Graphic3d_ShaderProgram.hxx".}
proc variables*(this: Graphic3dShaderProgram): Graphic3dShaderVariableList {.
    noSideEffect, importcpp: "Variables", header: "Graphic3d_ShaderProgram.hxx".}
proc vertexAttributes*(this: Graphic3dShaderProgram): Graphic3dShaderAttributeList {.
    noSideEffect, importcpp: "VertexAttributes",
    header: "Graphic3d_ShaderProgram.hxx".}
proc setVertexAttributes*(this: var Graphic3dShaderProgram;
                         theAttributes: Graphic3dShaderAttributeList) {.
    importcpp: "SetVertexAttributes", header: "Graphic3d_ShaderProgram.hxx".}
proc nbFragmentOutputs*(this: Graphic3dShaderProgram): StandardInteger {.
    noSideEffect, importcpp: "NbFragmentOutputs",
    header: "Graphic3d_ShaderProgram.hxx".}
proc setNbFragmentOutputs*(this: var Graphic3dShaderProgram;
                          theNbOutputs: StandardInteger) {.
    importcpp: "SetNbFragmentOutputs", header: "Graphic3d_ShaderProgram.hxx".}
proc hasAlphaTest*(this: Graphic3dShaderProgram): StandardBoolean {.noSideEffect,
    importcpp: "HasAlphaTest", header: "Graphic3d_ShaderProgram.hxx".}
proc setAlphaTest*(this: var Graphic3dShaderProgram; theAlphaTest: StandardBoolean) {.
    importcpp: "SetAlphaTest", header: "Graphic3d_ShaderProgram.hxx".}
proc hasDefaultSampler*(this: Graphic3dShaderProgram): StandardBoolean {.
    noSideEffect, importcpp: "HasDefaultSampler",
    header: "Graphic3d_ShaderProgram.hxx".}
proc setDefaultSampler*(this: var Graphic3dShaderProgram;
                       theHasDefSampler: StandardBoolean) {.
    importcpp: "SetDefaultSampler", header: "Graphic3d_ShaderProgram.hxx".}
proc hasWeightOitOutput*(this: Graphic3dShaderProgram): StandardBoolean {.
    noSideEffect, importcpp: "HasWeightOitOutput",
    header: "Graphic3d_ShaderProgram.hxx".}
proc setWeightOitOutput*(this: var Graphic3dShaderProgram;
                        theOutput: StandardBoolean) {.
    importcpp: "SetWeightOitOutput", header: "Graphic3d_ShaderProgram.hxx".}
proc isPBR*(this: Graphic3dShaderProgram): StandardBoolean {.noSideEffect,
    importcpp: "IsPBR", header: "Graphic3d_ShaderProgram.hxx".}
proc setPBR*(this: var Graphic3dShaderProgram; theIsPBR: StandardBoolean) {.
    importcpp: "SetPBR", header: "Graphic3d_ShaderProgram.hxx".}
proc textureSetBits*(this: Graphic3dShaderProgram): StandardInteger {.noSideEffect,
    importcpp: "TextureSetBits", header: "Graphic3d_ShaderProgram.hxx".}
proc setTextureSetBits*(this: var Graphic3dShaderProgram; theBits: StandardInteger) {.
    importcpp: "SetTextureSetBits", header: "Graphic3d_ShaderProgram.hxx".}
proc pushVariable*[T](this: var Graphic3dShaderProgram;
                     theName: TCollectionAsciiString; theValue: T): StandardBoolean {.
    importcpp: "PushVariable", header: "Graphic3d_ShaderProgram.hxx".}
proc clearVariables*(this: var Graphic3dShaderProgram) {.
    importcpp: "ClearVariables", header: "Graphic3d_ShaderProgram.hxx".}
proc pushVariableFloat*(this: var Graphic3dShaderProgram;
                       theName: TCollectionAsciiString; theValue: cfloat): StandardBoolean {.
    importcpp: "PushVariableFloat", header: "Graphic3d_ShaderProgram.hxx".}
proc pushVariableVec2*(this: var Graphic3dShaderProgram;
                      theName: TCollectionAsciiString; theValue: Graphic3dVec2): StandardBoolean {.
    importcpp: "PushVariableVec2", header: "Graphic3d_ShaderProgram.hxx".}
proc pushVariableVec3*(this: var Graphic3dShaderProgram;
                      theName: TCollectionAsciiString; theValue: Graphic3dVec3): StandardBoolean {.
    importcpp: "PushVariableVec3", header: "Graphic3d_ShaderProgram.hxx".}
proc pushVariableVec4*(this: var Graphic3dShaderProgram;
                      theName: TCollectionAsciiString; theValue: Graphic3dVec4): StandardBoolean {.
    importcpp: "PushVariableVec4", header: "Graphic3d_ShaderProgram.hxx".}
proc pushVariableInt*(this: var Graphic3dShaderProgram;
                     theName: TCollectionAsciiString; theValue: cint): StandardBoolean {.
    importcpp: "PushVariableInt", header: "Graphic3d_ShaderProgram.hxx".}
proc pushVariableVec2i*(this: var Graphic3dShaderProgram;
                       theName: TCollectionAsciiString; theValue: Graphic3dVec2i): StandardBoolean {.
    importcpp: "PushVariableVec2i", header: "Graphic3d_ShaderProgram.hxx".}
proc pushVariableVec3i*(this: var Graphic3dShaderProgram;
                       theName: TCollectionAsciiString; theValue: Graphic3dVec3i): StandardBoolean {.
    importcpp: "PushVariableVec3i", header: "Graphic3d_ShaderProgram.hxx".}
proc pushVariableVec4i*(this: var Graphic3dShaderProgram;
                       theName: TCollectionAsciiString; theValue: Graphic3dVec4i): StandardBoolean {.
    importcpp: "PushVariableVec4i", header: "Graphic3d_ShaderProgram.hxx".}
proc shadersFolder*(): TCollectionAsciiString {.
    importcpp: "Graphic3d_ShaderProgram::ShadersFolder(@)",
    header: "Graphic3d_ShaderProgram.hxx".}
discard "forward decl of Graphic3d_ShaderProgram"
type
  HandleGraphic3dShaderProgram* = Handle[Graphic3dShaderProgram]

##  =======================================================================
##  function : PushVariable
##  purpose  : Pushes custom uniform variable to the program
##  =======================================================================

proc pushVariable*(this: var Graphic3dShaderProgram;
                  theName: TCollectionAsciiString; theValue: T): StandardBoolean {.
    importcpp: "PushVariable", header: "Graphic3d_ShaderProgram.hxx".}

