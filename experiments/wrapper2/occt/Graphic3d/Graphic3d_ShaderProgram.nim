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

import
  Graphic3d_ShaderAttribute, Graphic3d_ShaderObject, Graphic3d_ShaderVariable,
  Graphic3d_TextureParams, Graphic3d_TextureSetBits,
  ../NCollection/NCollection_Sequence

## ! List of shader objects.

type
  Graphic3d_ShaderObjectList* = NCollection_Sequence[
      handle[Graphic3d_ShaderObject]]

## ! List of custom uniform shader variables.

type
  Graphic3d_ShaderVariableList* = NCollection_Sequence[
      handle[Graphic3d_ShaderVariable]]

## ! List of custom vertex shader attrubures

type
  Graphic3d_ShaderAttributeList* = NCollection_Sequence[
      handle[Graphic3d_ShaderAttribute]]

## ! This class is responsible for managing shader programs.

type
  Graphic3d_ShaderProgram* {.importcpp: "Graphic3d_ShaderProgram",
                            header: "Graphic3d_ShaderProgram.hxx", bycopy.} = object of Standard_Transient ##
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

  Graphic3d_ShaderProgrambase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Graphic3d_ShaderProgram::get_type_name(@)",
                              header: "Graphic3d_ShaderProgram.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Graphic3d_ShaderProgram::get_type_descriptor(@)",
    header: "Graphic3d_ShaderProgram.hxx".}
proc DynamicType*(this: Graphic3d_ShaderProgram): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "Graphic3d_ShaderProgram.hxx".}
proc constructGraphic3d_ShaderProgram*(): Graphic3d_ShaderProgram {.constructor,
    importcpp: "Graphic3d_ShaderProgram(@)", header: "Graphic3d_ShaderProgram.hxx".}
proc destroyGraphic3d_ShaderProgram*(this: var Graphic3d_ShaderProgram) {.
    importcpp: "#.~Graphic3d_ShaderProgram()",
    header: "Graphic3d_ShaderProgram.hxx".}
proc IsDone*(this: Graphic3d_ShaderProgram): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "Graphic3d_ShaderProgram.hxx".}
proc GetId*(this: Graphic3d_ShaderProgram): TCollection_AsciiString {.noSideEffect,
    importcpp: "GetId", header: "Graphic3d_ShaderProgram.hxx".}
proc SetId*(this: var Graphic3d_ShaderProgram; theId: TCollection_AsciiString) {.
    importcpp: "SetId", header: "Graphic3d_ShaderProgram.hxx".}
proc Header*(this: Graphic3d_ShaderProgram): TCollection_AsciiString {.noSideEffect,
    importcpp: "Header", header: "Graphic3d_ShaderProgram.hxx".}
proc SetHeader*(this: var Graphic3d_ShaderProgram;
               theHeader: TCollection_AsciiString) {.importcpp: "SetHeader",
    header: "Graphic3d_ShaderProgram.hxx".}
proc AppendToHeader*(this: var Graphic3d_ShaderProgram;
                    theHeaderLine: TCollection_AsciiString) {.
    importcpp: "AppendToHeader", header: "Graphic3d_ShaderProgram.hxx".}
proc NbLightsMax*(this: Graphic3d_ShaderProgram): Standard_Integer {.noSideEffect,
    importcpp: "NbLightsMax", header: "Graphic3d_ShaderProgram.hxx".}
proc SetNbLightsMax*(this: var Graphic3d_ShaderProgram;
                    theNbLights: Standard_Integer) {.importcpp: "SetNbLightsMax",
    header: "Graphic3d_ShaderProgram.hxx".}
proc NbClipPlanesMax*(this: Graphic3d_ShaderProgram): Standard_Integer {.
    noSideEffect, importcpp: "NbClipPlanesMax",
    header: "Graphic3d_ShaderProgram.hxx".}
proc SetNbClipPlanesMax*(this: var Graphic3d_ShaderProgram;
                        theNbPlanes: Standard_Integer) {.
    importcpp: "SetNbClipPlanesMax", header: "Graphic3d_ShaderProgram.hxx".}
proc AttachShader*(this: var Graphic3d_ShaderProgram;
                  theShader: handle[Graphic3d_ShaderObject]): Standard_Boolean {.
    importcpp: "AttachShader", header: "Graphic3d_ShaderProgram.hxx".}
proc DetachShader*(this: var Graphic3d_ShaderProgram;
                  theShader: handle[Graphic3d_ShaderObject]): Standard_Boolean {.
    importcpp: "DetachShader", header: "Graphic3d_ShaderProgram.hxx".}
proc ShaderObjects*(this: Graphic3d_ShaderProgram): Graphic3d_ShaderObjectList {.
    noSideEffect, importcpp: "ShaderObjects", header: "Graphic3d_ShaderProgram.hxx".}
proc Variables*(this: Graphic3d_ShaderProgram): Graphic3d_ShaderVariableList {.
    noSideEffect, importcpp: "Variables", header: "Graphic3d_ShaderProgram.hxx".}
proc VertexAttributes*(this: Graphic3d_ShaderProgram): Graphic3d_ShaderAttributeList {.
    noSideEffect, importcpp: "VertexAttributes",
    header: "Graphic3d_ShaderProgram.hxx".}
proc SetVertexAttributes*(this: var Graphic3d_ShaderProgram;
                         theAttributes: Graphic3d_ShaderAttributeList) {.
    importcpp: "SetVertexAttributes", header: "Graphic3d_ShaderProgram.hxx".}
proc NbFragmentOutputs*(this: Graphic3d_ShaderProgram): Standard_Integer {.
    noSideEffect, importcpp: "NbFragmentOutputs",
    header: "Graphic3d_ShaderProgram.hxx".}
proc SetNbFragmentOutputs*(this: var Graphic3d_ShaderProgram;
                          theNbOutputs: Standard_Integer) {.
    importcpp: "SetNbFragmentOutputs", header: "Graphic3d_ShaderProgram.hxx".}
proc HasAlphaTest*(this: Graphic3d_ShaderProgram): Standard_Boolean {.noSideEffect,
    importcpp: "HasAlphaTest", header: "Graphic3d_ShaderProgram.hxx".}
proc SetAlphaTest*(this: var Graphic3d_ShaderProgram; theAlphaTest: Standard_Boolean) {.
    importcpp: "SetAlphaTest", header: "Graphic3d_ShaderProgram.hxx".}
proc HasDefaultSampler*(this: Graphic3d_ShaderProgram): Standard_Boolean {.
    noSideEffect, importcpp: "HasDefaultSampler",
    header: "Graphic3d_ShaderProgram.hxx".}
proc SetDefaultSampler*(this: var Graphic3d_ShaderProgram;
                       theHasDefSampler: Standard_Boolean) {.
    importcpp: "SetDefaultSampler", header: "Graphic3d_ShaderProgram.hxx".}
proc HasWeightOitOutput*(this: Graphic3d_ShaderProgram): Standard_Boolean {.
    noSideEffect, importcpp: "HasWeightOitOutput",
    header: "Graphic3d_ShaderProgram.hxx".}
proc SetWeightOitOutput*(this: var Graphic3d_ShaderProgram;
                        theOutput: Standard_Boolean) {.
    importcpp: "SetWeightOitOutput", header: "Graphic3d_ShaderProgram.hxx".}
proc IsPBR*(this: Graphic3d_ShaderProgram): Standard_Boolean {.noSideEffect,
    importcpp: "IsPBR", header: "Graphic3d_ShaderProgram.hxx".}
proc SetPBR*(this: var Graphic3d_ShaderProgram; theIsPBR: Standard_Boolean) {.
    importcpp: "SetPBR", header: "Graphic3d_ShaderProgram.hxx".}
proc TextureSetBits*(this: Graphic3d_ShaderProgram): Standard_Integer {.
    noSideEffect, importcpp: "TextureSetBits",
    header: "Graphic3d_ShaderProgram.hxx".}
proc SetTextureSetBits*(this: var Graphic3d_ShaderProgram; theBits: Standard_Integer) {.
    importcpp: "SetTextureSetBits", header: "Graphic3d_ShaderProgram.hxx".}
proc PushVariable*[T](this: var Graphic3d_ShaderProgram;
                     theName: TCollection_AsciiString; theValue: T): Standard_Boolean {.
    importcpp: "PushVariable", header: "Graphic3d_ShaderProgram.hxx".}
proc ClearVariables*(this: var Graphic3d_ShaderProgram) {.
    importcpp: "ClearVariables", header: "Graphic3d_ShaderProgram.hxx".}
proc PushVariableFloat*(this: var Graphic3d_ShaderProgram;
                       theName: TCollection_AsciiString; theValue: cfloat): Standard_Boolean {.
    importcpp: "PushVariableFloat", header: "Graphic3d_ShaderProgram.hxx".}
proc PushVariableVec2*(this: var Graphic3d_ShaderProgram;
                      theName: TCollection_AsciiString; theValue: Graphic3d_Vec2): Standard_Boolean {.
    importcpp: "PushVariableVec2", header: "Graphic3d_ShaderProgram.hxx".}
proc PushVariableVec3*(this: var Graphic3d_ShaderProgram;
                      theName: TCollection_AsciiString; theValue: Graphic3d_Vec3): Standard_Boolean {.
    importcpp: "PushVariableVec3", header: "Graphic3d_ShaderProgram.hxx".}
proc PushVariableVec4*(this: var Graphic3d_ShaderProgram;
                      theName: TCollection_AsciiString; theValue: Graphic3d_Vec4): Standard_Boolean {.
    importcpp: "PushVariableVec4", header: "Graphic3d_ShaderProgram.hxx".}
proc PushVariableInt*(this: var Graphic3d_ShaderProgram;
                     theName: TCollection_AsciiString; theValue: cint): Standard_Boolean {.
    importcpp: "PushVariableInt", header: "Graphic3d_ShaderProgram.hxx".}
proc PushVariableVec2i*(this: var Graphic3d_ShaderProgram;
                       theName: TCollection_AsciiString; theValue: Graphic3d_Vec2i): Standard_Boolean {.
    importcpp: "PushVariableVec2i", header: "Graphic3d_ShaderProgram.hxx".}
proc PushVariableVec3i*(this: var Graphic3d_ShaderProgram;
                       theName: TCollection_AsciiString; theValue: Graphic3d_Vec3i): Standard_Boolean {.
    importcpp: "PushVariableVec3i", header: "Graphic3d_ShaderProgram.hxx".}
proc PushVariableVec4i*(this: var Graphic3d_ShaderProgram;
                       theName: TCollection_AsciiString; theValue: Graphic3d_Vec4i): Standard_Boolean {.
    importcpp: "PushVariableVec4i", header: "Graphic3d_ShaderProgram.hxx".}
proc ShadersFolder*(): TCollection_AsciiString {.
    importcpp: "Graphic3d_ShaderProgram::ShadersFolder(@)",
    header: "Graphic3d_ShaderProgram.hxx".}
discard "forward decl of Graphic3d_ShaderProgram"
type
  Handle_Graphic3d_ShaderProgram* = handle[Graphic3d_ShaderProgram]

##  =======================================================================
##  function : PushVariable
##  purpose  : Pushes custom uniform variable to the program
##  =======================================================================

proc PushVariable*(this: var Graphic3d_ShaderProgram;
                  theName: TCollection_AsciiString; theValue: T): Standard_Boolean {.
    importcpp: "PushVariable", header: "Graphic3d_ShaderProgram.hxx".}