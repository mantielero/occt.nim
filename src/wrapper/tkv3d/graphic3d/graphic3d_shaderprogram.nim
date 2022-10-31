import ../../tkernel/tcollection/tcollection_types
import ../../tkernel/standard/standard_types
import graphic3d_types



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









proc newGraphic3dShaderProgram*(): Graphic3dShaderProgram {.cdecl, constructor,
    importcpp: "Graphic3d_ShaderProgram(@)", header: "Graphic3d_ShaderProgram.hxx".}
proc destroyGraphic3dShaderProgram*(this: var Graphic3dShaderProgram) {.cdecl,
    importcpp: "#.~Graphic3d_ShaderProgram()", header: "Graphic3d_ShaderProgram.hxx".}
proc isDone*(this: Graphic3dShaderProgram): bool {.noSideEffect, cdecl,
    importcpp: "IsDone", header: "Graphic3d_ShaderProgram.hxx".}
proc getId*(this: Graphic3dShaderProgram): TCollectionAsciiString {.noSideEffect,
    cdecl, importcpp: "GetId", header: "Graphic3d_ShaderProgram.hxx".}
proc setId*(this: var Graphic3dShaderProgram; theId: TCollectionAsciiString) {.cdecl,
    importcpp: "SetId", header: "Graphic3d_ShaderProgram.hxx".}
proc header*(this: Graphic3dShaderProgram): TCollectionAsciiString {.noSideEffect,
    cdecl, importcpp: "Header", header: "Graphic3d_ShaderProgram.hxx".}
proc setHeader*(this: var Graphic3dShaderProgram; theHeader: TCollectionAsciiString) {.
    cdecl, importcpp: "SetHeader", header: "Graphic3d_ShaderProgram.hxx".}
proc appendToHeader*(this: var Graphic3dShaderProgram;
                    theHeaderLine: TCollectionAsciiString) {.cdecl,
    importcpp: "AppendToHeader", header: "Graphic3d_ShaderProgram.hxx".}
proc nbLightsMax*(this: Graphic3dShaderProgram): cint {.noSideEffect, cdecl,
    importcpp: "NbLightsMax", header: "Graphic3d_ShaderProgram.hxx".}
proc setNbLightsMax*(this: var Graphic3dShaderProgram; theNbLights: cint) {.cdecl,
    importcpp: "SetNbLightsMax", header: "Graphic3d_ShaderProgram.hxx".}
proc nbClipPlanesMax*(this: Graphic3dShaderProgram): cint {.noSideEffect, cdecl,
    importcpp: "NbClipPlanesMax", header: "Graphic3d_ShaderProgram.hxx".}
proc setNbClipPlanesMax*(this: var Graphic3dShaderProgram; theNbPlanes: cint) {.cdecl,
    importcpp: "SetNbClipPlanesMax", header: "Graphic3d_ShaderProgram.hxx".}
proc attachShader*(this: var Graphic3dShaderProgram;
                  theShader: Handle[Graphic3dShaderObject]): bool {.cdecl,
    importcpp: "AttachShader", header: "Graphic3d_ShaderProgram.hxx".}
proc detachShader*(this: var Graphic3dShaderProgram;
                  theShader: Handle[Graphic3dShaderObject]): bool {.cdecl,
    importcpp: "DetachShader", header: "Graphic3d_ShaderProgram.hxx".}
proc shaderObjects*(this: Graphic3dShaderProgram): Graphic3dShaderObjectList {.
    noSideEffect, cdecl, importcpp: "ShaderObjects", header: "Graphic3d_ShaderProgram.hxx".}
proc variables*(this: Graphic3dShaderProgram): Graphic3dShaderVariableList {.
    noSideEffect, cdecl, importcpp: "Variables", header: "Graphic3d_ShaderProgram.hxx".}
proc vertexAttributes*(this: Graphic3dShaderProgram): Graphic3dShaderAttributeList {.
    noSideEffect, cdecl, importcpp: "VertexAttributes", header: "Graphic3d_ShaderProgram.hxx".}
proc setVertexAttributes*(this: var Graphic3dShaderProgram;
                         theAttributes: Graphic3dShaderAttributeList) {.cdecl,
    importcpp: "SetVertexAttributes", header: "Graphic3d_ShaderProgram.hxx".}
proc nbFragmentOutputs*(this: Graphic3dShaderProgram): cint {.noSideEffect, cdecl,
    importcpp: "NbFragmentOutputs", header: "Graphic3d_ShaderProgram.hxx".}
proc setNbFragmentOutputs*(this: var Graphic3dShaderProgram; theNbOutputs: cint) {.
    cdecl, importcpp: "SetNbFragmentOutputs", header: "Graphic3d_ShaderProgram.hxx".}
proc hasAlphaTest*(this: Graphic3dShaderProgram): bool {.noSideEffect, cdecl,
    importcpp: "HasAlphaTest", header: "Graphic3d_ShaderProgram.hxx".}
proc setAlphaTest*(this: var Graphic3dShaderProgram; theAlphaTest: bool) {.cdecl,
    importcpp: "SetAlphaTest", header: "Graphic3d_ShaderProgram.hxx".}
proc hasDefaultSampler*(this: Graphic3dShaderProgram): bool {.noSideEffect, cdecl,
    importcpp: "HasDefaultSampler", header: "Graphic3d_ShaderProgram.hxx".}
proc setDefaultSampler*(this: var Graphic3dShaderProgram; theHasDefSampler: bool) {.
    cdecl, importcpp: "SetDefaultSampler", header: "Graphic3d_ShaderProgram.hxx".}
proc hasWeightOitOutput*(this: Graphic3dShaderProgram): bool {.noSideEffect, cdecl,
    importcpp: "HasWeightOitOutput", header: "Graphic3d_ShaderProgram.hxx".}
proc setWeightOitOutput*(this: var Graphic3dShaderProgram; theOutput: bool) {.cdecl,
    importcpp: "SetWeightOitOutput", header: "Graphic3d_ShaderProgram.hxx".}
proc isPBR*(this: Graphic3dShaderProgram): bool {.noSideEffect, cdecl,
    importcpp: "IsPBR", header: "Graphic3d_ShaderProgram.hxx".}
proc setPBR*(this: var Graphic3dShaderProgram; theIsPBR: bool) {.cdecl,
    importcpp: "SetPBR", header: "Graphic3d_ShaderProgram.hxx".}
proc textureSetBits*(this: Graphic3dShaderProgram): cint {.noSideEffect, cdecl,
    importcpp: "TextureSetBits", header: "Graphic3d_ShaderProgram.hxx".}
proc setTextureSetBits*(this: var Graphic3dShaderProgram; theBits: cint) {.cdecl,
    importcpp: "SetTextureSetBits", header: "Graphic3d_ShaderProgram.hxx".}
proc pushVariable*[T](this: var Graphic3dShaderProgram;
                     theName: TCollectionAsciiString; theValue: T): bool {.cdecl,
    importcpp: "PushVariable", header: "Graphic3d_ShaderProgram.hxx".}
proc clearVariables*(this: var Graphic3dShaderProgram) {.cdecl,
    importcpp: "ClearVariables", header: "Graphic3d_ShaderProgram.hxx".}
proc pushVariableFloat*(this: var Graphic3dShaderProgram;
                       theName: TCollectionAsciiString; theValue: cfloat): bool {.
    cdecl, importcpp: "PushVariableFloat", header: "Graphic3d_ShaderProgram.hxx".}
proc pushVariableVec2*(this: var Graphic3dShaderProgram;
                      theName: TCollectionAsciiString; theValue: Graphic3dVec2): bool {.
    cdecl, importcpp: "PushVariableVec2", header: "Graphic3d_ShaderProgram.hxx".}
proc pushVariableVec3*(this: var Graphic3dShaderProgram;
                      theName: TCollectionAsciiString; theValue: Graphic3dVec3): bool {.
    cdecl, importcpp: "PushVariableVec3", header: "Graphic3d_ShaderProgram.hxx".}
proc pushVariableVec4*(this: var Graphic3dShaderProgram;
                      theName: TCollectionAsciiString; theValue: Graphic3dVec4): bool {.
    cdecl, importcpp: "PushVariableVec4", header: "Graphic3d_ShaderProgram.hxx".}
proc pushVariableInt*(this: var Graphic3dShaderProgram;
                     theName: TCollectionAsciiString; theValue: cint): bool {.cdecl,
    importcpp: "PushVariableInt", header: "Graphic3d_ShaderProgram.hxx".}
proc pushVariableVec2i*(this: var Graphic3dShaderProgram;
                       theName: TCollectionAsciiString; theValue: Graphic3dVec2i): bool {.
    cdecl, importcpp: "PushVariableVec2i", header: "Graphic3d_ShaderProgram.hxx".}
proc pushVariableVec3i*(this: var Graphic3dShaderProgram;
                       theName: TCollectionAsciiString; theValue: Graphic3dVec3i): bool {.
    cdecl, importcpp: "PushVariableVec3i", header: "Graphic3d_ShaderProgram.hxx".}
proc pushVariableVec4i*(this: var Graphic3dShaderProgram;
                       theName: TCollectionAsciiString; theValue: Graphic3dVec4i): bool {.
    cdecl, importcpp: "PushVariableVec4i", header: "Graphic3d_ShaderProgram.hxx".}
proc shadersFolder*(): TCollectionAsciiString {.cdecl,
    importcpp: "Graphic3d_ShaderProgram::ShadersFolder(@)", header: "Graphic3d_ShaderProgram.hxx".}



