{.experimental: "callOperator".}

import opengl_types
import ../standard/standard_types
import ../tcollection/[tcollection_types, tcollection_asciistring]
import ../graphic3d/graphic3d_types
#import ../ncollection/ncollection_types

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







proc set*(this: var OpenGlSetterInterface; theCtx: Handle[OpenGlContext];
         theVariable: Handle[Graphic3dShaderVariable];
         theProgram: ptr OpenGlShaderProgram) {.cdecl, importcpp: "Set",
    header: "OpenGl_Element.hxx".}
proc destroyOpenGlSetterInterface*(this: var OpenGlSetterInterface) {.cdecl,
    importcpp: "#.~OpenGl_SetterInterface()", header: "OpenGl_Element.hxx".}
## ! List of OpenGL shader objects.







proc newOpenGlVariableSetterSelector*(): OpenGlVariableSetterSelector {.cdecl,
    constructor, importcpp: "OpenGl_VariableSetterSelector(@)", header: "OpenGl_Element.hxx".}
proc destroyOpenGlVariableSetterSelector*(this: var OpenGlVariableSetterSelector) {.
    cdecl, importcpp: "#.~OpenGl_VariableSetterSelector()", header: "OpenGl_Element.hxx".}
proc set*(this: OpenGlVariableSetterSelector; theCtx: Handle[OpenGlContext];
         theVariable: Handle[Graphic3dShaderVariable];
         theProgram: ptr OpenGlShaderProgram) {.noSideEffect, cdecl,
    importcpp: "Set", header: "OpenGl_Element.hxx".}
## ! Defines types of uniform state variables.






proc newOpenGlShaderUniformLocation*(): OpenGlShaderUniformLocation {.cdecl,
    constructor, importcpp: "OpenGl_ShaderUniformLocation(@)", header: "OpenGl_Element.hxx".}
proc newOpenGlShaderUniformLocation*(theLocation: GLint): OpenGlShaderUniformLocation {.
    cdecl, constructor, importcpp: "OpenGl_ShaderUniformLocation(@)",
    header: "OpenGl_Element.hxx".}
proc isValid*(this: OpenGlShaderUniformLocation): bool {.noSideEffect, cdecl,
    importcpp: "IsValid", header: "OpenGl_Element.hxx".}
converter `bool`*(this: OpenGlShaderUniformLocation): bool {.noSideEffect, cdecl,
    importcpp: "OpenGl_ShaderUniformLocation::operator bool", header: "OpenGl_Element.hxx".}
converter `gLint`*(this: OpenGlShaderUniformLocation): GLint {.noSideEffect, cdecl,
    importcpp: "OpenGl_ShaderUniformLocation::operator GLint", header: "OpenGl_Element.hxx".}
## ! Wrapper for OpenGL program object.



proc compileShaderVerbose*(theCtx: Handle[OpenGlContext];
                          theShader: Handle[OpenGlShaderObject];
                          theSource: TCollectionAsciiString;
                          theToPrintSource: bool = true): bool {.cdecl,
    importcpp: "OpenGl_ShaderProgram::compileShaderVerbose(@)", header: "OpenGl_Element.hxx".}
# proc newOpenGlShaderProgram*(theProxy: Handle[Graphic3dShaderProgram] = nil;
#                             theId: TCollectionAsciiString = ""): OpenGlShaderProgram {.
#     cdecl, constructor, importcpp: "OpenGl_ShaderProgram(@)", header: "OpenGl_Element.hxx".}
proc newOpenGlShaderProgram*(theProxy: Handle[Graphic3dShaderProgram];
                            theId: TCollectionAsciiString = newTCollectionAsciiString("")): OpenGlShaderProgram {.
    cdecl, constructor, importcpp: "OpenGl_ShaderProgram(@)", header: "OpenGl_Element.hxx".}    
proc destroyOpenGlShaderProgram*(this: var OpenGlShaderProgram) {.cdecl,
    importcpp: "#.~OpenGl_ShaderProgram()", header: "OpenGl_Element.hxx".}
proc create*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext]): bool {.
    cdecl, importcpp: "Create", header: "OpenGl_Element.hxx".}
proc release*(this: var OpenGlShaderProgram; theCtx: ptr OpenGlContext) {.cdecl,
    importcpp: "Release", header: "OpenGl_Element.hxx".}
proc estimatedDataSize*(this: OpenGlShaderProgram): csize_t {.noSideEffect, cdecl,
    importcpp: "EstimatedDataSize", header: "OpenGl_Element.hxx".}
proc attachShader*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                  theShader: Handle[OpenGlShaderObject]): bool {.cdecl,
    importcpp: "AttachShader", header: "OpenGl_Element.hxx".}
proc detachShader*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                  theShader: Handle[OpenGlShaderObject]): bool {.cdecl,
    importcpp: "DetachShader", header: "OpenGl_Element.hxx".}
proc initialize*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                theShaders: Graphic3dShaderObjectList): bool {.cdecl,
    importcpp: "Initialize", header: "OpenGl_Element.hxx".}
proc link*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
          theIsVerbose: bool = true): bool {.cdecl, importcpp: "Link", header: "OpenGl_Element.hxx".}
proc fetchInfoLog*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                  theLog: var TCollectionAsciiString): bool {.cdecl,
    importcpp: "FetchInfoLog", header: "OpenGl_Element.hxx".}
proc applyVariables*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext]): bool {.
    cdecl, importcpp: "ApplyVariables", header: "OpenGl_Element.hxx".}
proc proxy*(this: OpenGlShaderProgram): Handle[Graphic3dShaderProgram] {.
    noSideEffect, cdecl, importcpp: "Proxy", header: "OpenGl_Element.hxx".}
proc isValid*(this: OpenGlShaderProgram): bool {.noSideEffect, cdecl,
    importcpp: "IsValid", header: "OpenGl_Element.hxx".}
proc programId*(this: OpenGlShaderProgram): GLuint {.noSideEffect, cdecl,
    importcpp: "ProgramId", header: "OpenGl_Element.hxx".}
proc hasTessellationStage*(this: OpenGlShaderProgram): bool {.noSideEffect, cdecl,
    importcpp: "HasTessellationStage", header: "OpenGl_Element.hxx".}
proc nbLightsMax*(this: OpenGlShaderProgram): cint {.noSideEffect, cdecl,
    importcpp: "NbLightsMax", header: "OpenGl_Element.hxx".}
proc nbClipPlanesMax*(this: OpenGlShaderProgram): cint {.noSideEffect, cdecl,
    importcpp: "NbClipPlanesMax", header: "OpenGl_Element.hxx".}
proc nbFragmentOutputs*(this: OpenGlShaderProgram): cint {.noSideEffect, cdecl,
    importcpp: "NbFragmentOutputs", header: "OpenGl_Element.hxx".}
proc hasAlphaTest*(this: OpenGlShaderProgram): bool {.noSideEffect, cdecl,
    importcpp: "HasAlphaTest", header: "OpenGl_Element.hxx".}
proc hasWeightOitOutput*(this: OpenGlShaderProgram): bool {.noSideEffect, cdecl,
    importcpp: "HasWeightOitOutput", header: "OpenGl_Element.hxx".}
proc textureSetBits*(this: OpenGlShaderProgram): cint {.noSideEffect, cdecl,
    importcpp: "TextureSetBits", header: "OpenGl_Element.hxx".}
proc getUniformLocation*(this: OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                        theName: ptr GLchar): OpenGlShaderUniformLocation {.
    noSideEffect, cdecl, importcpp: "GetUniformLocation", header: "OpenGl_Element.hxx".}
proc getAttributeLocation*(this: OpenGlShaderProgram;
                          theCtx: Handle[OpenGlContext]; theName: ptr GLchar): GLint {.
    noSideEffect, cdecl, importcpp: "GetAttributeLocation", header: "OpenGl_Element.hxx".}
proc getStateLocation*(this: OpenGlShaderProgram; theVariable: OpenGlStateVariable): OpenGlShaderUniformLocation {.
    noSideEffect, cdecl, importcpp: "GetStateLocation", header: "OpenGl_Element.hxx".}
proc getUniform*(this: OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                theName: ptr GLchar; theValue: var OpenGlVec4i): bool {.noSideEffect,
    cdecl, importcpp: "GetUniform", header: "OpenGl_Element.hxx".}
proc getUniform*(this: OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                theLocation: GLint; theValue: var OpenGlVec4i): bool {.noSideEffect,
    cdecl, importcpp: "GetUniform", header: "OpenGl_Element.hxx".}
proc getUniform*(this: OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                theName: ptr GLchar; theValue: var OpenGlVec4): bool {.noSideEffect,
    cdecl, importcpp: "GetUniform", header: "OpenGl_Element.hxx".}
proc getUniform*(this: OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                theLocation: GLint; theValue: var OpenGlVec4): bool {.noSideEffect,
    cdecl, importcpp: "GetUniform", header: "OpenGl_Element.hxx".}
proc getAttribute*(this: OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                  theName: ptr GLchar; theValue: var OpenGlVec4i): bool {.noSideEffect,
    cdecl, importcpp: "GetAttribute", header: "OpenGl_Element.hxx".}
proc getAttribute*(this: OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                  theIndex: GLint; theValue: var OpenGlVec4i): bool {.noSideEffect,
    cdecl, importcpp: "GetAttribute", header: "OpenGl_Element.hxx".}
proc getAttribute*(this: OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                  theName: ptr GLchar; theValue: var OpenGlVec4): bool {.noSideEffect,
    cdecl, importcpp: "GetAttribute", header: "OpenGl_Element.hxx".}
proc getAttribute*(this: OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                  theIndex: GLint; theValue: var OpenGlVec4): bool {.noSideEffect,
    cdecl, importcpp: "GetAttribute", header: "OpenGl_Element.hxx".}
proc setAttributeName*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                      theIndex: GLint; theName: ptr GLchar): bool {.cdecl,
    importcpp: "SetAttributeName", header: "OpenGl_Element.hxx".}
proc setAttribute*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                  theName: ptr GLchar; theValue: GLfloat): bool {.cdecl,
    importcpp: "SetAttribute", header: "OpenGl_Element.hxx".}
proc setAttribute*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                  theIndex: GLint; theValue: GLfloat): bool {.cdecl,
    importcpp: "SetAttribute", header: "OpenGl_Element.hxx".}
proc setAttribute*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                  theName: ptr GLchar; theValue: OpenGlVec2): bool {.cdecl,
    importcpp: "SetAttribute", header: "OpenGl_Element.hxx".}
proc setAttribute*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                  theIndex: GLint; theValue: OpenGlVec2): bool {.cdecl,
    importcpp: "SetAttribute", header: "OpenGl_Element.hxx".}
proc setAttribute*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                  theName: ptr GLchar; theValue: OpenGlVec3): bool {.cdecl,
    importcpp: "SetAttribute", header: "OpenGl_Element.hxx".}
proc setAttribute*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                  theIndex: GLint; theValue: OpenGlVec3): bool {.cdecl,
    importcpp: "SetAttribute", header: "OpenGl_Element.hxx".}
proc setAttribute*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                  theName: ptr GLchar; theValue: OpenGlVec4): bool {.cdecl,
    importcpp: "SetAttribute", header: "OpenGl_Element.hxx".}
proc setAttribute*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                  theIndex: GLint; theValue: OpenGlVec4): bool {.cdecl,
    importcpp: "SetAttribute", header: "OpenGl_Element.hxx".}
proc setUniform*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                theName: ptr GLchar; theValue: GLint): bool {.cdecl,
    importcpp: "SetUniform", header: "OpenGl_Element.hxx".}
proc setUniform*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                theLocation: GLint; theValue: GLint): bool {.cdecl,
    importcpp: "SetUniform", header: "OpenGl_Element.hxx".}
proc setUniform*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                theName: ptr GLchar; theValue: OpenGlVec2i): bool {.cdecl,
    importcpp: "SetUniform", header: "OpenGl_Element.hxx".}
proc setUniform*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                theLocation: GLint; theValue: OpenGlVec2i): bool {.cdecl,
    importcpp: "SetUniform", header: "OpenGl_Element.hxx".}
proc setUniform*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                theName: ptr GLchar; theValue: OpenGlVec3i): bool {.cdecl,
    importcpp: "SetUniform", header: "OpenGl_Element.hxx".}
proc setUniform*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                theLocation: GLint; theValue: OpenGlVec3i): bool {.cdecl,
    importcpp: "SetUniform", header: "OpenGl_Element.hxx".}
proc setUniform*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                theName: ptr GLchar; theValue: OpenGlVec4i): bool {.cdecl,
    importcpp: "SetUniform", header: "OpenGl_Element.hxx".}
proc setUniform*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                theLocation: GLint; theValue: OpenGlVec4i): bool {.cdecl,
    importcpp: "SetUniform", header: "OpenGl_Element.hxx".}
proc setUniform*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                theName: ptr GLchar; theValue: OpenGlVec2u): bool {.cdecl,
    importcpp: "SetUniform", header: "OpenGl_Element.hxx".}
proc setUniform*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                theLocation: GLint; theValue: OpenGlVec2u): bool {.cdecl,
    importcpp: "SetUniform", header: "OpenGl_Element.hxx".}
proc setUniform*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                theName: ptr GLchar; theCount: GLsizei; theValue: ptr OpenGlVec2u): bool {.
    cdecl, importcpp: "SetUniform", header: "OpenGl_Element.hxx".}
proc setUniform*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                theLocation: GLint; theCount: GLsizei; theValue: ptr OpenGlVec2u): bool {.
    cdecl, importcpp: "SetUniform", header: "OpenGl_Element.hxx".}
proc setUniform*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                theName: ptr GLchar; theValue: GLfloat): bool {.cdecl,
    importcpp: "SetUniform", header: "OpenGl_Element.hxx".}
proc setUniform*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                theLocation: GLint; theValue: GLfloat): bool {.cdecl,
    importcpp: "SetUniform", header: "OpenGl_Element.hxx".}
proc setUniform*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                theName: ptr GLchar; theValue: OpenGlVec2): bool {.cdecl,
    importcpp: "SetUniform", header: "OpenGl_Element.hxx".}
proc setUniform*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                theLocation: GLint; theValue: OpenGlVec2): bool {.cdecl,
    importcpp: "SetUniform", header: "OpenGl_Element.hxx".}
proc setUniform*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                theName: ptr GLchar; theValue: OpenGlVec3): bool {.cdecl,
    importcpp: "SetUniform", header: "OpenGl_Element.hxx".}
proc setUniform*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                theLocation: GLint; theValue: OpenGlVec3): bool {.cdecl,
    importcpp: "SetUniform", header: "OpenGl_Element.hxx".}
proc setUniform*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                theName: ptr GLchar; theValue: OpenGlVec4): bool {.cdecl,
    importcpp: "SetUniform", header: "OpenGl_Element.hxx".}
proc setUniform*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                theLocation: GLint; theValue: OpenGlVec4): bool {.cdecl,
    importcpp: "SetUniform", header: "OpenGl_Element.hxx".}
proc setUniform*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                theName: ptr GLchar; theValue: OpenGlMat4;
                theTranspose: GLboolean = gl_False): bool {.cdecl,
    importcpp: "SetUniform", header: "OpenGl_Element.hxx".}
proc setUniform*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                theLocation: GLint; theValue: OpenGlMat4;
                theTranspose: GLboolean = gl_False): bool {.cdecl,
    importcpp: "SetUniform", header: "OpenGl_Element.hxx".}
proc setUniform*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                theName: ptr GLchar; theValue: OpenGlMatrix;
                theTranspose: GLboolean = gl_False): bool {.cdecl,
    importcpp: "SetUniform", header: "OpenGl_Element.hxx".}
proc setUniform*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                theLocation: GLint; theValue: OpenGlMatrix;
                theTranspose: GLboolean = gl_False): bool {.cdecl,
    importcpp: "SetUniform", header: "OpenGl_Element.hxx".}
proc setUniform*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                theLocation: GLint; theCount: GLuint; theData: ptr StandardShortReal): bool {.
    cdecl, importcpp: "SetUniform", header: "OpenGl_Element.hxx".}
proc setUniform*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                theLocation: GLint; theCount: GLuint; theData: ptr OpenGlVec2): bool {.
    cdecl, importcpp: "SetUniform", header: "OpenGl_Element.hxx".}
proc setUniform*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                theLocation: GLint; theCount: GLuint; theData: ptr OpenGlVec3): bool {.
    cdecl, importcpp: "SetUniform", header: "OpenGl_Element.hxx".}
proc setUniform*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                theLocation: GLint; theCount: GLuint; theData: ptr OpenGlVec4): bool {.
    cdecl, importcpp: "SetUniform", header: "OpenGl_Element.hxx".}
proc setUniform*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                theLocation: GLint; theCount: GLuint; theData: ptr cint): bool {.cdecl,
    importcpp: "SetUniform", header: "OpenGl_Element.hxx".}
proc setUniform*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                theLocation: GLint; theCount: GLuint; theData: ptr OpenGlVec2i): bool {.
    cdecl, importcpp: "SetUniform", header: "OpenGl_Element.hxx".}
proc setUniform*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                theLocation: GLint; theCount: GLuint; theData: ptr OpenGlVec3i): bool {.
    cdecl, importcpp: "SetUniform", header: "OpenGl_Element.hxx".}
proc setUniform*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                theLocation: GLint; theCount: GLuint; theData: ptr OpenGlVec4i): bool {.
    cdecl, importcpp: "SetUniform", header: "OpenGl_Element.hxx".}
proc setSampler*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                theName: ptr GLchar; theTextureUnit: Graphic3dTextureUnit): bool {.
    cdecl, importcpp: "SetSampler", header: "OpenGl_Element.hxx".}
proc setSampler*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                theLocation: GLint; theTextureUnit: Graphic3dTextureUnit): bool {.
    cdecl, importcpp: "SetSampler", header: "OpenGl_Element.hxx".}
proc updateDebugDump*(this: var OpenGlShaderProgram; theCtx: Handle[OpenGlContext];
                     theFolder: TCollectionAsciiString = newTCollectionAsciiString("");
                     theToBeautify: bool = false; theToReset: bool = false): bool {.
    cdecl, importcpp: "UpdateDebugDump", header: "OpenGl_Element.hxx".}



proc newMapListOfType*[K; V](theKey: K; theValue: V): MapListOfType[K, V] {.cdecl,
    constructor,
    importcpp: "OpenGl_HashMapInitializer::MapListOfType<\'*0,\'*1>(@)",
    header: "OpenGl_Element.hxx".}
proc `()`*[K; V](this: var MapListOfType[K, V]; theKey: K; theValue: V): var MapListOfType {.
    cdecl, importcpp: "#(@)", header: "OpenGl_Element.hxx".}
# converter `constNCollectionDataMap`*[K; V](this: MapListOfType[K, V]): NCollectionDataMap[
#     K, V] {.noSideEffect, cdecl,
#           importcpp: "MapListOfType::operator constNCollection_DataMap",
#           header: "OpenGl_Element.hxx".}
proc createListOf*[K; V](theKey: K; theValue: V): MapListOfType[K, V] {.cdecl.} =
  discard

