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

## !!!Ignored construct:  # _Graphic3d_ShaderVariable_HeaderFile [NewLine] # _Graphic3d_ShaderVariable_HeaderFile [NewLine] # < Graphic3d_Vec . hxx > [NewLine] # < Standard_Transient . hxx > [NewLine] # < TCollection_AsciiString . hxx > [NewLine] ! Interface for generic variable value. struct Graphic3d_ValueInterface { ! Releases memory resources of variable value. virtual ~ Graphic3d_ValueInterface ( ) ; ! Returns unique identifier of value type. virtual Standard_Size TypeID ( ) const = 0 ; ! Returns variable value casted to specified type. template < class T > [end of template] T & As ( ) ; ! Returns variable value casted to specified type. template < class T > [end of template] const T & As ( ) const ; } ;
## Error: identifier expected, but got: <!!!

## ! Generates unique type identifier for variable value.

type
  Graphic3dUniformValueTypeIDGraphic3dUniformValueTypeID*[T] {.importcpp: "Graphic3d_UniformValueTypeID<\'0>::Graphic3d_UniformValueTypeID<\'1>",
      header: "Graphic3d_ShaderVariable.hxx", bycopy.} = object ##  Not implemented


## !!!Ignored construct:  template < > [end of template] struct Graphic3d_UniformValueTypeID < Standard_Integer > { static const Standard_Size ID = __LINE__ ; } ;
## Error: identifier expected, but got: <!!!

## !!!Ignored construct:  template < > [end of template] struct Graphic3d_UniformValueTypeID < Standard_ShortReal > { static const Standard_Size ID = __LINE__ ; } ;
## Error: identifier expected, but got: <!!!

## !!!Ignored construct:  template < > [end of template] struct Graphic3d_UniformValueTypeID < Graphic3d_Vec2 > { static const Standard_Size ID = __LINE__ ; } ;
## Error: identifier expected, but got: <!!!

## !!!Ignored construct:  template < > [end of template] struct Graphic3d_UniformValueTypeID < Graphic3d_Vec3 > { static const Standard_Size ID = __LINE__ ; } ;
## Error: identifier expected, but got: <!!!

## !!!Ignored construct:  template < > [end of template] struct Graphic3d_UniformValueTypeID < Graphic3d_Vec4 > { static const Standard_Size ID = __LINE__ ; } ;
## Error: identifier expected, but got: <!!!

## !!!Ignored construct:  template < > [end of template] struct Graphic3d_UniformValueTypeID < Graphic3d_Vec2i > { static const Standard_Size ID = __LINE__ ; } ;
## Error: identifier expected, but got: <!!!

## !!!Ignored construct:  template < > [end of template] struct Graphic3d_UniformValueTypeID < Graphic3d_Vec3i > { static const Standard_Size ID = __LINE__ ; } ;
## Error: identifier expected, but got: <!!!

## !!!Ignored construct:  template < > [end of template] struct Graphic3d_UniformValueTypeID < Graphic3d_Vec4i > { static const Standard_Size ID = __LINE__ ; } ;
## Error: identifier expected, but got: <!!!

## ! Describes specific value of custom uniform variable.

type
  Graphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValue*[
      T] {.importcpp: "Graphic3d_UniformValueTypeID<\'0>::Graphic3d_UniformValueTypeID<\'1>::Graphic3d_UniformValueTypeID<\'2>::Graphic3d_UniformValueTypeID<\'3>::Graphic3d_UniformValueTypeID<\'4>::Graphic3d_UniformValueTypeID<\'5>::Graphic3d_UniformValueTypeID<\'6>::Graphic3d_UniformValueTypeID<\'7>::Graphic3d_UniformValueTypeID<\'8>::Graphic3d_UniformValue<\'9>",
          header: "Graphic3d_ShaderVariable.hxx", bycopy.} = object of Graphic3dValueInterface ##
                                                                                        ## !
                                                                                        ## Creates
                                                                                        ## new
                                                                                        ## variable
                                                                                        ## value.
    value* {.importc: "Value".}: T


proc constructGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValue*[
    T](theValue: T): Graphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValue[
    T] {.constructor, importcpp: "Graphic3d_UniformValueTypeID<\'*0>::Graphic3d_UniformValueTypeID<\'*1>::Graphic3d_UniformValueTypeID<\'*2>::Graphic3d_UniformValueTypeID<\'*3>::Graphic3d_UniformValueTypeID<\'*4>::Graphic3d_UniformValueTypeID<\'*5>::Graphic3d_UniformValueTypeID<\'*6>::Graphic3d_UniformValueTypeID<\'*7>::Graphic3d_UniformValueTypeID<\'*8>::Graphic3d_UniformValue<\'*9>(@)",
        header: "Graphic3d_ShaderVariable.hxx".}
proc typeID*[T](this: Graphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValue[
    T]): StandardSize {.noSideEffect, importcpp: "TypeID",
                      header: "Graphic3d_ShaderVariable.hxx".}
## ! Integer uniform value.

type
  Graphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformInt* = Graphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValue[
      int]

## ! Integer uniform 2D vector.

type
  Graphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformVec2i* = Graphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValue[
      Graphic3dVec2i]

## ! Integer uniform 3D vector.

type
  Graphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformVec3i* = Graphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValue[
      Graphic3dVec3i]

## ! Integer uniform 4D vector.

type
  Graphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformVec4i* = Graphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValue[
      Graphic3dVec4i]

## ! Floating-point uniform value.

type
  Graphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformFloat* = Graphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValue[
      StandardShortReal]

## ! Floating-point uniform 2D vector.

type
  Graphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformVec2* = Graphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValue[
      Graphic3dVec2]

## ! Floating-point uniform 3D vector.

type
  Graphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformVec3* = Graphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValue[
      Graphic3dVec3]

## ! Floating-point uniform 4D vector.

type
  Graphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformVec4* = Graphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValue[
      Graphic3dVec4]

## ! Describes custom uniform shader variable.

type
  Graphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dShaderVariable* {.importcpp: "Graphic3d_UniformValueTypeID<\'0>::Graphic3d_UniformValueTypeID<\'1>::Graphic3d_UniformValueTypeID<\'2>::Graphic3d_UniformValueTypeID<\'3>::Graphic3d_UniformValueTypeID<\'4>::Graphic3d_UniformValueTypeID<\'5>::Graphic3d_UniformValueTypeID<\'6>::Graphic3d_UniformValueTypeID<\'7>::Graphic3d_UniformValueTypeID<\'8>::Graphic3d_ShaderVariable",
      header: "Graphic3d_ShaderVariable.hxx", bycopy.} = object of StandardTransient ## !
                                                                              ## Releases
                                                                              ## resources of
                                                                              ## shader
                                                                              ## variable.
                                                                              ## !
                                                                              ## Creates
                                                                              ## new
                                                                              ## uninitialized
                                                                              ## shader
                                                                              ## variable.
                                                                              ## !
                                                                              ## The
                                                                              ## name of
                                                                              ## uniform
                                                                              ## shader
                                                                              ## variable.
    standardType* {.importc: "Standard_Type".}: Handle
    ## ! The generic value of shader variable.


proc destroyGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dShaderVariable*(
    this: var Graphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dShaderVariable) {.
    importcpp: "#.~Graphic3d_ShaderVariable()",
    header: "Graphic3d_ShaderVariable.hxx".}
proc name*(this: Graphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dShaderVariable): TCollectionAsciiString {.
    noSideEffect, importcpp: "Name", header: "Graphic3d_ShaderVariable.hxx".}
proc isDone*(this: Graphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dShaderVariable): bool {.
    noSideEffect, importcpp: "IsDone", header: "Graphic3d_ShaderVariable.hxx".}
proc value*(this: var Graphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dShaderVariable): ptr Graphic3dValueInterface {.
    importcpp: "Value", header: "Graphic3d_ShaderVariable.hxx".}
proc create*[T](theName: TCollectionAsciiString; theValue: T): ptr Graphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dShaderVariable {.
    importcpp: "Graphic3d_ShaderVariable::Create(@)",
    header: "Graphic3d_ShaderVariable.hxx".}
type
  Graphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dUniformValueTypeIDGraphic3dShaderVariablebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Graphic3d_ShaderVariable::get_type_name(@)",
                            header: "Graphic3d_ShaderVariable.hxx".}
## !!!Ignored construct:  & get_type_descriptor ( ) ;
## Error: identifier expected, but got: &!!!

## !!!Ignored construct:  & DynamicType ( ) const ;
## Error: identifier expected, but got: &!!!

## !!!Ignored construct:  DEFINE_STANDARD_HANDLE ( Graphic3d_ShaderVariable , Standard_Transient ) # < Graphic3d_ShaderVariable . lxx > [NewLine] #  _Graphic3d_ShaderVariable_HeaderFile
## Error: expected ';'!!!














































