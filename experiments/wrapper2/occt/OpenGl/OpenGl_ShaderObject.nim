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
  ../Graphic3d/Graphic3d_ShaderObject, OpenGl_GlCore20, OpenGl_Resource,
  ../Quantity/Quantity_Date

## ! Wrapper for OpenGL shader object.

type
  OpenGl_ShaderObject* {.importcpp: "OpenGl_ShaderObject",
                        header: "OpenGl_ShaderObject.hxx", bycopy.} = object of OpenGl_Resource ##
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

  OpenGl_ShaderObjectbase_type* = OpenGl_Resource

proc get_type_name*(): cstring {.importcpp: "OpenGl_ShaderObject::get_type_name(@)",
                              header: "OpenGl_ShaderObject.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "OpenGl_ShaderObject::get_type_descriptor(@)",
    header: "OpenGl_ShaderObject.hxx".}
proc DynamicType*(this: OpenGl_ShaderObject): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "OpenGl_ShaderObject.hxx".}
type
  OpenGl_ShaderObjectShaderVariable* {.importcpp: "OpenGl_ShaderObject::ShaderVariable",
                                      header: "OpenGl_ShaderObject.hxx", bycopy.} = object
    Name* {.importc: "Name".}: TCollection_AsciiString ## !< variable name
    Stages* {.importc: "Stages".}: Standard_Integer ## !< active stages as Graphic3d_TypeOfShaderObject bits;
                                                ## !  for in/out variables, intermediate stages will be automatically filled
                                                ## ! Create new shader variable.


proc constructOpenGl_ShaderObjectShaderVariable*(
    theVarName: TCollection_AsciiString; theShaderStageBits: Standard_Integer): OpenGl_ShaderObjectShaderVariable {.
    constructor, importcpp: "OpenGl_ShaderObject::ShaderVariable(@)",
    header: "OpenGl_ShaderObject.hxx".}
proc constructOpenGl_ShaderObjectShaderVariable*(): OpenGl_ShaderObjectShaderVariable {.
    constructor, importcpp: "OpenGl_ShaderObject::ShaderVariable(@)",
    header: "OpenGl_ShaderObject.hxx".}
type
  OpenGl_ShaderObjectShaderVariableList* = NCollection_Sequence[
      OpenGl_ShaderObjectShaderVariable]

proc CreateFromSource*(theSource: var TCollection_AsciiString;
                      theType: Graphic3d_TypeOfShaderObject;
                      theUniforms: OpenGl_ShaderObjectShaderVariableList;
                      theStageInOuts: OpenGl_ShaderObjectShaderVariableList;
    theInName: TCollection_AsciiString = TCollection_AsciiString(); theOutName: TCollection_AsciiString = TCollection_AsciiString();
                      theNbGeomInputVerts: Standard_Integer = 0): handle[
    Graphic3d_ShaderObject] {.importcpp: "OpenGl_ShaderObject::CreateFromSource(@)",
                             header: "OpenGl_ShaderObject.hxx".}
proc constructOpenGl_ShaderObject*(theType: GLenum): OpenGl_ShaderObject {.
    constructor, importcpp: "OpenGl_ShaderObject(@)",
    header: "OpenGl_ShaderObject.hxx".}
proc destroyOpenGl_ShaderObject*(this: var OpenGl_ShaderObject) {.
    importcpp: "#.~OpenGl_ShaderObject()", header: "OpenGl_ShaderObject.hxx".}
proc LoadSource*(this: var OpenGl_ShaderObject; theCtx: handle[OpenGl_Context];
                theSource: TCollection_AsciiString): Standard_Boolean {.
    importcpp: "LoadSource", header: "OpenGl_ShaderObject.hxx".}
proc Compile*(this: var OpenGl_ShaderObject; theCtx: handle[OpenGl_Context]): Standard_Boolean {.
    importcpp: "Compile", header: "OpenGl_ShaderObject.hxx".}
proc LoadAndCompile*(this: var OpenGl_ShaderObject; theCtx: handle[OpenGl_Context];
                    theId: TCollection_AsciiString;
                    theSource: TCollection_AsciiString; theIsVerbose: bool = true;
                    theToPrintSource: bool = true): Standard_Boolean {.
    importcpp: "LoadAndCompile", header: "OpenGl_ShaderObject.hxx".}
proc DumpSourceCode*(this: OpenGl_ShaderObject; theCtx: handle[OpenGl_Context];
                    theId: TCollection_AsciiString;
                    theSource: TCollection_AsciiString) {.noSideEffect,
    importcpp: "DumpSourceCode", header: "OpenGl_ShaderObject.hxx".}
proc FetchInfoLog*(this: var OpenGl_ShaderObject; theCtx: handle[OpenGl_Context];
                  theLog: var TCollection_AsciiString): Standard_Boolean {.
    importcpp: "FetchInfoLog", header: "OpenGl_ShaderObject.hxx".}
proc Create*(this: var OpenGl_ShaderObject; theCtx: handle[OpenGl_Context]): Standard_Boolean {.
    importcpp: "Create", header: "OpenGl_ShaderObject.hxx".}
proc Release*(this: var OpenGl_ShaderObject; theCtx: ptr OpenGl_Context) {.
    importcpp: "Release", header: "OpenGl_ShaderObject.hxx".}
proc EstimatedDataSize*(this: OpenGl_ShaderObject): Standard_Size {.noSideEffect,
    importcpp: "EstimatedDataSize", header: "OpenGl_ShaderObject.hxx".}
proc Type*(this: OpenGl_ShaderObject): GLenum {.noSideEffect, importcpp: "Type",
    header: "OpenGl_ShaderObject.hxx".}
proc updateDebugDump*(this: var OpenGl_ShaderObject; theCtx: handle[OpenGl_Context];
                     theId: TCollection_AsciiString;
                     theFolder: TCollection_AsciiString;
                     theToBeautify: Standard_Boolean; theToReset: Standard_Boolean): Standard_Boolean {.
    importcpp: "updateDebugDump", header: "OpenGl_ShaderObject.hxx".}
discard "forward decl of OpenGl_ShaderObject"
type
  Handle_OpenGl_ShaderObject* = handle[OpenGl_ShaderObject]
