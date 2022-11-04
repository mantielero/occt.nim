import ../../tkernel/tcollection/[tcollection_types, tcollection_asciistring]
import ../../tkernel/standard/standard_types
import ../../tkv3d/graphic3d/graphic3d_types
import opengl_types



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

## ! Wrapper for OpenGL shader object.




proc newOpenGlShaderObjectShaderVariable*(theVarName: TCollectionAsciiString;
    theShaderStageBits: cint): OpenGlShaderObjectShaderVariable {.cdecl,
    constructor, importcpp: "OpenGl_ShaderObject::ShaderVariable(@)",
    header: "OpenGl_ShaderObject.hxx".}
proc newOpenGlShaderObjectShaderVariable*(): OpenGlShaderObjectShaderVariable {.
    cdecl, constructor, importcpp: "OpenGl_ShaderObject::ShaderVariable(@)",
    header: "OpenGl_ShaderObject.hxx".}

proc createFromSource*(theSource: var TCollectionAsciiString;
                      theType: Graphic3dTypeOfShaderObject;
                      theUniforms: OpenGlShaderObjectShaderVariableList;
                      theStageInOuts: OpenGlShaderObjectShaderVariableList;
    theInName: TCollectionAsciiString = newTCollectionAsciiString(); theOutName: TCollectionAsciiString = newTCollectionAsciiString();
                      theNbGeomInputVerts: cint = 0): Handle[Graphic3dShaderObject] {.
    cdecl, importcpp: "OpenGl_ShaderObject::CreateFromSource(@)", header: "OpenGl_ShaderObject.hxx".}
proc newOpenGlShaderObject*(theType: GLenum): OpenGlShaderObject {.cdecl,
    constructor, importcpp: "OpenGl_ShaderObject(@)", header: "OpenGl_ShaderObject.hxx".}
proc destroyOpenGlShaderObject*(this: var OpenGlShaderObject) {.cdecl,
    importcpp: "#.~OpenGl_ShaderObject()", header: "OpenGl_ShaderObject.hxx".}
proc loadSource*(this: var OpenGlShaderObject; theCtx: Handle[OpenGlContext];
                theSource: TCollectionAsciiString): bool {.cdecl,
    importcpp: "LoadSource", header: "OpenGl_ShaderObject.hxx".}
proc compile*(this: var OpenGlShaderObject; theCtx: Handle[OpenGlContext]): bool {.
    cdecl, importcpp: "Compile", header: "OpenGl_ShaderObject.hxx".}
proc loadAndCompile*(this: var OpenGlShaderObject; theCtx: Handle[OpenGlContext];
                    theId: TCollectionAsciiString;
                    theSource: TCollectionAsciiString; theIsVerbose: bool = true;
                    theToPrintSource: bool = true): bool {.cdecl,
    importcpp: "LoadAndCompile", header: "OpenGl_ShaderObject.hxx".}
proc dumpSourceCode*(this: OpenGlShaderObject; theCtx: Handle[OpenGlContext];
                    theId: TCollectionAsciiString;
                    theSource: TCollectionAsciiString) {.noSideEffect, cdecl,
    importcpp: "DumpSourceCode", header: "OpenGl_ShaderObject.hxx".}
proc fetchInfoLog*(this: var OpenGlShaderObject; theCtx: Handle[OpenGlContext];
                  theLog: var TCollectionAsciiString): bool {.cdecl,
    importcpp: "FetchInfoLog", header: "OpenGl_ShaderObject.hxx".}
proc create*(this: var OpenGlShaderObject; theCtx: Handle[OpenGlContext]): bool {.
    cdecl, importcpp: "Create", header: "OpenGl_ShaderObject.hxx".}
proc release*(this: var OpenGlShaderObject; theCtx: ptr OpenGlContext) {.cdecl,
    importcpp: "Release", header: "OpenGl_ShaderObject.hxx".}
proc estimatedDataSize*(this: OpenGlShaderObject): csize_t {.noSideEffect, cdecl,
    importcpp: "EstimatedDataSize", header: "OpenGl_ShaderObject.hxx".}
proc `type`*(this: OpenGlShaderObject): GLenum {.noSideEffect, cdecl,
    importcpp: "Type", header: "OpenGl_ShaderObject.hxx".}
proc updateDebugDump*(this: var OpenGlShaderObject; theCtx: Handle[OpenGlContext];
                     theId: TCollectionAsciiString;
                     theFolder: TCollectionAsciiString; theToBeautify: bool;
                     theToReset: bool): bool {.cdecl, importcpp: "updateDebugDump",
    header: "OpenGl_ShaderObject.hxx".}


