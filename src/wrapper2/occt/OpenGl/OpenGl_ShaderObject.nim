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

  OpenGlShaderObjectbaseType* = OpenGlResource

proc getTypeName*(): cstring {.importcpp: "OpenGl_ShaderObject::get_type_name(@)",
                            header: "OpenGl_ShaderObject.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "OpenGl_ShaderObject::get_type_descriptor(@)",
    header: "OpenGl_ShaderObject.hxx".}
proc dynamicType*(this: OpenGlShaderObject): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "OpenGl_ShaderObject.hxx".}
type
  OpenGlShaderObjectShaderVariable* {.importcpp: "OpenGl_ShaderObject::ShaderVariable",
                                     header: "OpenGl_ShaderObject.hxx", bycopy.} = object
    name* {.importc: "Name".}: TCollectionAsciiString ## !< variable name
    stages* {.importc: "Stages".}: StandardInteger ## !< active stages as Graphic3d_TypeOfShaderObject bits;
                                               ## !  for in/out variables, intermediate stages will be automatically filled
                                               ## ! Create new shader variable.


proc constructOpenGlShaderObjectShaderVariable*(
    theVarName: TCollectionAsciiString; theShaderStageBits: StandardInteger): OpenGlShaderObjectShaderVariable {.
    constructor, importcpp: "OpenGl_ShaderObject::ShaderVariable(@)",
    header: "OpenGl_ShaderObject.hxx".}
proc constructOpenGlShaderObjectShaderVariable*(): OpenGlShaderObjectShaderVariable {.
    constructor, importcpp: "OpenGl_ShaderObject::ShaderVariable(@)",
    header: "OpenGl_ShaderObject.hxx".}
type
  OpenGlShaderObjectShaderVariableList* = NCollectionSequence[
      OpenGlShaderObjectShaderVariable]

proc createFromSource*(theSource: var TCollectionAsciiString;
                      theType: Graphic3dTypeOfShaderObject;
                      theUniforms: OpenGlShaderObjectShaderVariableList;
                      theStageInOuts: OpenGlShaderObjectShaderVariableList;
    theInName: TCollectionAsciiString = tCollectionAsciiString(); theOutName: TCollectionAsciiString = tCollectionAsciiString();
                      theNbGeomInputVerts: StandardInteger = 0): Handle[
    Graphic3dShaderObject] {.importcpp: "OpenGl_ShaderObject::CreateFromSource(@)",
                            header: "OpenGl_ShaderObject.hxx".}
proc constructOpenGlShaderObject*(theType: GLenum): OpenGlShaderObject {.
    constructor, importcpp: "OpenGl_ShaderObject(@)",
    header: "OpenGl_ShaderObject.hxx".}
proc destroyOpenGlShaderObject*(this: var OpenGlShaderObject) {.
    importcpp: "#.~OpenGl_ShaderObject()", header: "OpenGl_ShaderObject.hxx".}
proc loadSource*(this: var OpenGlShaderObject; theCtx: Handle[OpenGlContext];
                theSource: TCollectionAsciiString): StandardBoolean {.
    importcpp: "LoadSource", header: "OpenGl_ShaderObject.hxx".}
proc compile*(this: var OpenGlShaderObject; theCtx: Handle[OpenGlContext]): StandardBoolean {.
    importcpp: "Compile", header: "OpenGl_ShaderObject.hxx".}
proc loadAndCompile*(this: var OpenGlShaderObject; theCtx: Handle[OpenGlContext];
                    theId: TCollectionAsciiString;
                    theSource: TCollectionAsciiString; theIsVerbose: bool = true;
                    theToPrintSource: bool = true): StandardBoolean {.
    importcpp: "LoadAndCompile", header: "OpenGl_ShaderObject.hxx".}
proc dumpSourceCode*(this: OpenGlShaderObject; theCtx: Handle[OpenGlContext];
                    theId: TCollectionAsciiString;
                    theSource: TCollectionAsciiString) {.noSideEffect,
    importcpp: "DumpSourceCode", header: "OpenGl_ShaderObject.hxx".}
proc fetchInfoLog*(this: var OpenGlShaderObject; theCtx: Handle[OpenGlContext];
                  theLog: var TCollectionAsciiString): StandardBoolean {.
    importcpp: "FetchInfoLog", header: "OpenGl_ShaderObject.hxx".}
proc create*(this: var OpenGlShaderObject; theCtx: Handle[OpenGlContext]): StandardBoolean {.
    importcpp: "Create", header: "OpenGl_ShaderObject.hxx".}
proc release*(this: var OpenGlShaderObject; theCtx: ptr OpenGlContext) {.
    importcpp: "Release", header: "OpenGl_ShaderObject.hxx".}
proc estimatedDataSize*(this: OpenGlShaderObject): StandardSize {.noSideEffect,
    importcpp: "EstimatedDataSize", header: "OpenGl_ShaderObject.hxx".}
proc `type`*(this: OpenGlShaderObject): GLenum {.noSideEffect, importcpp: "Type",
    header: "OpenGl_ShaderObject.hxx".}
proc updateDebugDump*(this: var OpenGlShaderObject; theCtx: Handle[OpenGlContext];
                     theId: TCollectionAsciiString;
                     theFolder: TCollectionAsciiString;
                     theToBeautify: StandardBoolean; theToReset: StandardBoolean): StandardBoolean {.
    importcpp: "updateDebugDump", header: "OpenGl_ShaderObject.hxx".}
discard "forward decl of OpenGl_ShaderObject"
type
  HandleOpenGlShaderObject* = Handle[OpenGlShaderObject]


