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

## !!!Ignored construct:  # _Graphic3d_ShaderVariable_HeaderFile [NewLine] # _Graphic3d_ShaderVariable_HeaderFile [NewLine] # Graphic3d_Vec.hxx [NewLine] # ../Standard/Standard_Transient.hxx [NewLine] # ../TCollection/TCollection_AsciiString.hxx [NewLine] ! Interface for generic variable value. struct Graphic3d_ValueInterface { ! Releases memory resources of variable value. virtual ~ Graphic3d_ValueInterface ( ) ; ! Returns unique identifier of value type. virtual Standard_Size TypeID ( ) const = 0 ; ! Returns variable value casted to specified type. template < class T > [end of template] T & As ( ) ; ! Returns variable value casted to specified type. template < class T > [end of template] const T & As ( ) const ; } ;
## Error: identifier expected, but got: <!!!

## ! Generates unique type identifier for variable value.

type
  Graphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeID*[T] {.importcpp: "Graphic3d_UniformValueTypeID<\'0>::Graphic3d_UniformValueTypeID<\'1>",
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
  Graphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValue*[
      T] {.importcpp: "Graphic3d_UniformValueTypeID<\'0>::Graphic3d_UniformValueTypeID<\'1>::Graphic3d_UniformValueTypeID<\'2>::Graphic3d_UniformValueTypeID<\'3>::Graphic3d_UniformValueTypeID<\'4>::Graphic3d_UniformValueTypeID<\'5>::Graphic3d_UniformValueTypeID<\'6>::Graphic3d_UniformValueTypeID<\'7>::Graphic3d_UniformValueTypeID<\'8>::Graphic3d_UniformValue<\'9>",
          header: "Graphic3d_ShaderVariable.hxx", bycopy.} = object of Graphic3d_ValueInterface ##
                                                                                         ## !
                                                                                         ## Creates
                                                                                         ## new
                                                                                         ## variable
                                                                                         ## value.
    Value* {.importc: "Value".}: T


proc constructGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValue*[
    T](theValue: T): Graphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValue[
    T] {.constructor, importcpp: "Graphic3d_UniformValueTypeID<\'*0>::Graphic3d_UniformValueTypeID<\'*1>::Graphic3d_UniformValueTypeID<\'*2>::Graphic3d_UniformValueTypeID<\'*3>::Graphic3d_UniformValueTypeID<\'*4>::Graphic3d_UniformValueTypeID<\'*5>::Graphic3d_UniformValueTypeID<\'*6>::Graphic3d_UniformValueTypeID<\'*7>::Graphic3d_UniformValueTypeID<\'*8>::Graphic3d_UniformValue<\'*9>(@)",
        header: "Graphic3d_ShaderVariable.hxx".}
proc TypeID*[T](this: Graphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValue[
    T]): Standard_Size {.noSideEffect, importcpp: "TypeID",
                       header: "Graphic3d_ShaderVariable.hxx".}
## ! Integer uniform value.

type
  Graphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformInt* = Graphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValue[
      Standard_Integer]

## ! Integer uniform 2D vector.

type
  Graphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformVec2i* = Graphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValue[
      Graphic3d_Vec2i]

## ! Integer uniform 3D vector.

type
  Graphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformVec3i* = Graphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValue[
      Graphic3d_Vec3i]

## ! Integer uniform 4D vector.

type
  Graphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformVec4i* = Graphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValue[
      Graphic3d_Vec4i]

## ! Floating-point uniform value.

type
  Graphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformFloat* = Graphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValue[
      Standard_ShortReal]

## ! Floating-point uniform 2D vector.

type
  Graphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformVec2* = Graphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValue[
      Graphic3d_Vec2]

## ! Floating-point uniform 3D vector.

type
  Graphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformVec3* = Graphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValue[
      Graphic3d_Vec3]

## ! Floating-point uniform 4D vector.

type
  Graphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformVec4* = Graphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValue[
      Graphic3d_Vec4]

## ! Describes custom uniform shader variable.

type
  Graphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_ShaderVariable* {.importcpp: "Graphic3d_UniformValueTypeID<\'0>::Graphic3d_UniformValueTypeID<\'1>::Graphic3d_UniformValueTypeID<\'2>::Graphic3d_UniformValueTypeID<\'3>::Graphic3d_UniformValueTypeID<\'4>::Graphic3d_UniformValueTypeID<\'5>::Graphic3d_UniformValueTypeID<\'6>::Graphic3d_UniformValueTypeID<\'7>::Graphic3d_UniformValueTypeID<\'8>::Graphic3d_ShaderVariable",
      header: "Graphic3d_ShaderVariable.hxx", bycopy.} = object of Standard_Transient ## !
                                                                               ## Releases
                                                                               ## resources
                                                                               ## of
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
                                                                               ## name
                                                                               ## of
                                                                               ## uniform
                                                                               ## shader
                                                                               ## variable.
    ## ! The generic value of shader variable.


proc destroyGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_ShaderVariable*(
    this: var Graphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_ShaderVariable) {.
    importcpp: "#.~Graphic3d_ShaderVariable()",
    header: "Graphic3d_ShaderVariable.hxx".}
proc Name*(this: Graphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_ShaderVariable): TCollection_AsciiString {.
    noSideEffect, importcpp: "Name", header: "Graphic3d_ShaderVariable.hxx".}
proc IsDone*(this: Graphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_ShaderVariable): Standard_Boolean {.
    noSideEffect, importcpp: "IsDone", header: "Graphic3d_ShaderVariable.hxx".}
proc Value*(this: var Graphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_ShaderVariable): ptr Graphic3d_ValueInterface {.
    importcpp: "Value", header: "Graphic3d_ShaderVariable.hxx".}
proc Create*[T](theName: TCollection_AsciiString; theValue: T): ptr Graphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_ShaderVariable {.
    importcpp: "Graphic3d_ShaderVariable::Create(@)",
    header: "Graphic3d_ShaderVariable.hxx".}
type
  Graphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_ShaderVariablebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Graphic3d_ShaderVariable::get_type_name(@)",
                              header: "Graphic3d_ShaderVariable.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Graphic3d_ShaderVariable::get_type_descriptor(@)",
    header: "Graphic3d_ShaderVariable.hxx".}
proc DynamicType*(this: Graphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_ShaderVariable): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "Graphic3d_ShaderVariable.hxx".}
discard "forward decl of Graphic3d_ShaderVariable"
type
  Graphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDHandle_Graphic3d_ShaderVariable* = handle[Graphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_UniformValueTypeIDGraphic3d_ShaderVariable]
