##  Created on: 2013-09-25
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

## ! Interface for generic variable value.

type
  Graphic3dValueInterface* {.importcpp: "Graphic3d_ValueInterface",
                            header: "Graphic3d_ShaderVariable.hxx", bycopy.} = object of RootObj ##
                                                                                 ## !
                                                                                 ## Releases
                                                                                 ## memory
                                                                                 ## resources
                                                                                 ## of
                                                                                 ## variable
                                                                                 ## value.


proc destroyGraphic3dValueInterface*(this: var Graphic3dValueInterface) {.cdecl,
    importcpp: "#.~Graphic3d_ValueInterface()", header: "Graphic3d_ShaderVariable.hxx".}
proc typeID*(this: Graphic3dValueInterface): csize_t {.noSideEffect, cdecl,
    importcpp: "TypeID", header: "Graphic3d_ShaderVariable.hxx".}
proc `as`*[T](this: var Graphic3dValueInterface): var T {.cdecl, importcpp: "As",
    header: "Graphic3d_ShaderVariable.hxx".}
proc `as`*[T](this: Graphic3dValueInterface): T {.noSideEffect, cdecl,
    importcpp: "As", header: "Graphic3d_ShaderVariable.hxx".}
## ! Generates unique type identifier for variable value.

type
  Graphic3dUniformValueTypeID*[T] {.importcpp: "Graphic3d_UniformValueTypeID<\'0>",
                                   header: "Graphic3d_ShaderVariable.hxx", bycopy.} = object ##  Not implemented


##  template<>
##  struct Graphic3d_UniformValueTypeID<Standard_Integer> {
##    static const Standard_Size ID = __LINE__;
##  };
##
##  template<>
##  struct Graphic3d_UniformValueTypeID<Standard_ShortReal> {
##    static const Standard_Size ID = __LINE__;
##  };
##
##  template<>
##  struct Graphic3d_UniformValueTypeID<Graphic3d_Vec2> {
##    static const Standard_Size ID = __LINE__;
##  };
##
##  template<>
##  struct Graphic3d_UniformValueTypeID<Graphic3d_Vec3> {
##    static const Standard_Size ID = __LINE__;
##  };
##
##  template<>
##  struct Graphic3d_UniformValueTypeID<Graphic3d_Vec4> {
##    static const Standard_Size ID = __LINE__;
##  };
##
##  template<>
##  struct Graphic3d_UniformValueTypeID<Graphic3d_Vec2i> {
##    static const Standard_Size ID = __LINE__;
##  };
##
##  template<>
##  struct Graphic3d_UniformValueTypeID<Graphic3d_Vec3i> {
##    static const Standard_Size ID = __LINE__;
##  };
##
##  template<>
##  struct Graphic3d_UniformValueTypeID<Graphic3d_Vec4i> {
##    static const Standard_Size ID = __LINE__;
##  };
## ! Describes specific value of custom uniform variable.

type
  Graphic3dUniformValue*[T] {.importcpp: "Graphic3d_UniformValue<\'0>",
                             header: "Graphic3d_ShaderVariable.hxx", bycopy.} = object of Graphic3dValueInterface ##
                                                                                                           ## !
                                                                                                           ## Creates
                                                                                                           ## new
                                                                                                           ## variable
                                                                                                           ## value.
    value* {.importc: "Value".}: T


proc newGraphic3dUniformValue*[T](theValue: T): Graphic3dUniformValue[T] {.cdecl,
    constructor, importcpp: "Graphic3d_UniformValue<\'*0>(@)", header: "Graphic3d_ShaderVariable.hxx".}
proc typeID*[T](this: Graphic3dUniformValue[T]): csize_t {.noSideEffect, cdecl,
    importcpp: "TypeID", header: "Graphic3d_ShaderVariable.hxx".}
## ! Integer uniform value.

type
  Graphic3dUniformInt* = Graphic3dUniformValue[cint]

## ! Integer uniform 2D vector.

type
  Graphic3dUniformVec2i* = Graphic3dUniformValue[Graphic3dVec2i]

## ! Integer uniform 3D vector.

type
  Graphic3dUniformVec3i* = Graphic3dUniformValue[Graphic3dVec3i]

## ! Integer uniform 4D vector.

type
  Graphic3dUniformVec4i* = Graphic3dUniformValue[Graphic3dVec4i]

## ! Floating-point uniform value.

type
  Graphic3dUniformFloat* = Graphic3dUniformValue[StandardShortReal]

## ! Floating-point uniform 2D vector.

type
  Graphic3dUniformVec2* = Graphic3dUniformValue[Graphic3dVec2]

## ! Floating-point uniform 3D vector.

type
  Graphic3dUniformVec3* = Graphic3dUniformValue[Graphic3dVec3]

## ! Floating-point uniform 4D vector.

type
  Graphic3dUniformVec4* = Graphic3dUniformValue[Graphic3dVec4]

## ! Describes custom uniform shader variable.

type
  Graphic3dShaderVariable* {.importcpp: "Graphic3d_ShaderVariable",
                            header: "Graphic3d_ShaderVariable.hxx", bycopy.} = object of StandardTransient ##
                                                                                                    ## !
                                                                                                    ## Releases
                                                                                                    ## resources
                                                                                                    ## of
                                                                                                    ## shader
                                                                                                    ## variable.
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## Creates
                                                                                                    ## new
                                                                                                    ## uninitialized
                                                                                                    ## shader
                                                                                                    ## variable.
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## The
                                                                                                    ## name
                                                                                                    ## of
                                                                                                    ## uniform
                                                                                                    ## shader
                                                                                                    ## variable.
    ## ! The generic value of shader variable.


proc destroyGraphic3dShaderVariable*(this: var Graphic3dShaderVariable) {.cdecl,
    importcpp: "#.~Graphic3d_ShaderVariable()", header: "Graphic3d_ShaderVariable.hxx".}
proc name*(this: Graphic3dShaderVariable): TCollectionAsciiString {.noSideEffect,
    cdecl, importcpp: "Name", header: "Graphic3d_ShaderVariable.hxx".}
proc isDone*(this: Graphic3dShaderVariable): bool {.noSideEffect, cdecl,
    importcpp: "IsDone", header: "Graphic3d_ShaderVariable.hxx".}
proc value*(this: var Graphic3dShaderVariable): ptr Graphic3dValueInterface {.cdecl,
    importcpp: "Value", header: "Graphic3d_ShaderVariable.hxx".}
proc create*[T](theName: TCollectionAsciiString; theValue: T): ptr Graphic3dShaderVariable {.
    cdecl, importcpp: "Graphic3d_ShaderVariable::Create(@)", header: "Graphic3d_ShaderVariable.hxx".}
type
  HandleGraphic3dShaderVariable* = Handle[Graphic3dShaderVariable]
