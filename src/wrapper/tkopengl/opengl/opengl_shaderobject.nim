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

type
  OpenGlShaderObject* {.importcpp: "OpenGl_ShaderObject",
                       header: "OpenGl_ShaderObject.hxx", bycopy.} = object of OpenGlResource ##
                                                                                       ## !
                                                                                       ## Non-valid
                                                                                       ## shader
                                                                                       ## name.
                                                                                       ##
                                                                                       ## !
                                                                                       ## Structure
                                                                                       ## defining
                                                                                       ## shader
                                                                                       ## uniform
                                                                                       ## or
                                                                                       ## in/out
                                                                                       ## variable.
                                                                                       ##
                                                                                       ## !
                                                                                       ## Creates
                                                                                       ## uninitialized
                                                                                       ## shader
                                                                                       ## object.
                                                                                       ##
                                                                                       ## !
                                                                                       ## Update
                                                                                       ## the
                                                                                       ## shader
                                                                                       ## object
                                                                                       ## from
                                                                                       ## external
                                                                                       ## file
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
                                                                                       ## theId
                                                                                       ## GLSL
                                                                                       ## program
                                                                                       ## id
                                                                                       ## to
                                                                                       ## define
                                                                                       ## file
                                                                                       ## name
                                                                                       ##
                                                                                       ## !
                                                                                       ## @param
                                                                                       ## theFolder
                                                                                       ## folder
                                                                                       ## to
                                                                                       ## store
                                                                                       ## files
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
    ## !< The recent date of the shader dump
    ## !< Type of OpenGL shader object
    ## !< Handle of OpenGL shader object

  OpenGlShaderObjectShaderVariable* {.importcpp: "OpenGl_ShaderObject::ShaderVariable",
                                     header: "OpenGl_ShaderObject.hxx", bycopy.} = object
    name* {.importc: "Name".}: TCollectionAsciiString ## !< variable name
    stages* {.importc: "Stages".}: cint ## !< active stages as Graphic3d_TypeOfShaderObject bits;
                                    ## !  for in/out variables, intermediate stages will be automatically filled
                                    ## ! Create new shader variable.


proc newOpenGlShaderObjectShaderVariable*(theVarName: TCollectionAsciiString;
    theShaderStageBits: cint): OpenGlShaderObjectShaderVariable {.cdecl,
    constructor, importcpp: "OpenGl_ShaderObject::ShaderVariable(@)",
    dynlib: tkkxbase.}
proc newOpenGlShaderObjectShaderVariable*(): OpenGlShaderObjectShaderVariable {.
    cdecl, constructor, importcpp: "OpenGl_ShaderObject::ShaderVariable(@)",
    dynlib: tkkxbase.}
type
  OpenGlShaderObjectShaderVariableList* = NCollectionSequence[
      OpenGlShaderObjectShaderVariable]

proc createFromSource*(theSource: var TCollectionAsciiString;
                      theType: Graphic3dTypeOfShaderObject;
                      theUniforms: OpenGlShaderObjectShaderVariableList;
                      theStageInOuts: OpenGlShaderObjectShaderVariableList;
    theInName: TCollectionAsciiString = tCollectionAsciiString(); theOutName: TCollectionAsciiString = tCollectionAsciiString();
                      theNbGeomInputVerts: cint = 0): Handle[Graphic3dShaderObject] {.
    cdecl, importcpp: "OpenGl_ShaderObject::CreateFromSource(@)", dynlib: tkkxbase.}
proc newOpenGlShaderObject*(theType: GLenum): OpenGlShaderObject {.cdecl,
    constructor, importcpp: "OpenGl_ShaderObject(@)", dynlib: tkkxbase.}
proc destroyOpenGlShaderObject*(this: var OpenGlShaderObject) {.cdecl,
    importcpp: "#.~OpenGl_ShaderObject()", dynlib: tkkxbase.}
proc loadSource*(this: var OpenGlShaderObject; theCtx: Handle[OpenGlContext];
                theSource: TCollectionAsciiString): bool {.cdecl,
    importcpp: "LoadSource", dynlib: tkkxbase.}
proc compile*(this: var OpenGlShaderObject; theCtx: Handle[OpenGlContext]): bool {.
    cdecl, importcpp: "Compile", dynlib: tkkxbase.}
proc loadAndCompile*(this: var OpenGlShaderObject; theCtx: Handle[OpenGlContext];
                    theId: TCollectionAsciiString;
                    theSource: TCollectionAsciiString; theIsVerbose: bool = true;
                    theToPrintSource: bool = true): bool {.cdecl,
    importcpp: "LoadAndCompile", dynlib: tkkxbase.}
proc dumpSourceCode*(this: OpenGlShaderObject; theCtx: Handle[OpenGlContext];
                    theId: TCollectionAsciiString;
                    theSource: TCollectionAsciiString) {.noSideEffect, cdecl,
    importcpp: "DumpSourceCode", dynlib: tkkxbase.}
proc fetchInfoLog*(this: var OpenGlShaderObject; theCtx: Handle[OpenGlContext];
                  theLog: var TCollectionAsciiString): bool {.cdecl,
    importcpp: "FetchInfoLog", dynlib: tkkxbase.}
proc create*(this: var OpenGlShaderObject; theCtx: Handle[OpenGlContext]): bool {.
    cdecl, importcpp: "Create", dynlib: tkkxbase.}
proc release*(this: var OpenGlShaderObject; theCtx: ptr OpenGlContext) {.cdecl,
    importcpp: "Release", dynlib: tkkxbase.}
proc estimatedDataSize*(this: OpenGlShaderObject): csize_t {.noSideEffect, cdecl,
    importcpp: "EstimatedDataSize", dynlib: tkkxbase.}
proc `type`*(this: OpenGlShaderObject): GLenum {.noSideEffect, cdecl,
    importcpp: "Type", dynlib: tkkxbase.}
proc updateDebugDump*(this: var OpenGlShaderObject; theCtx: Handle[OpenGlContext];
                     theId: TCollectionAsciiString;
                     theFolder: TCollectionAsciiString; theToBeautify: bool;
                     theToReset: bool): bool {.cdecl, importcpp: "updateDebugDump",
    dynlib: tkkxbase.}
type
  HandleOpenGlShaderObject* = Handle[OpenGlShaderObject]
