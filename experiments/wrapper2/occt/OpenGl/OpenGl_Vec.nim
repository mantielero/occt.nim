##  Created on: 2013-01-29
##  Created by: Kirill GAVRILOV
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

type
  OpenGlVec2i* = Graphic3dVec2i
  OpenGlVec3i* = Graphic3dVec3i
  OpenGlVec4i* = Graphic3dVec4i
  OpenGlVec2b* = Graphic3dVec2b
  OpenGlVec3b* = Graphic3dVec3b
  OpenGlVec4b* = Graphic3dVec4b
  OpenGlVec2u* = Graphic3dVec2u
  OpenGlVec3u* = Graphic3dVec3u
  OpenGlVec4u* = Graphic3dVec4u
  OpenGlVec2ub* = Graphic3dVec2ub
  OpenGlVec3ub* = Graphic3dVec3ub
  OpenGlVec4ub* = Graphic3dVec4ub
  OpenGlVec2* = Graphic3dVec2
  OpenGlVec3* = Graphic3dVec3
  OpenGlVec4* = Graphic3dVec4
  OpenGlVec2d* = Graphic3dVec2d
  OpenGlVec3d* = Graphic3dVec3d
  OpenGlVec4d* = Graphic3dVec4d
  OpenGlMat4* = Graphic3dMat4
  OpenGlMat4d* = Graphic3dMat4d

## ! Tool class for selecting appropriate vector type.
## ! \tparam T Numeric data type

type
  VectorType*[T] {.importcpp: "OpenGl::VectorType<\'0>", header: "OpenGl_Vec.hxx",
                  bycopy.} = object ##  Not implemented


## !!!Ignored construct:  template < > [end of template] struct VectorType < Standard_Real > { typedef OpenGl_Vec2d Vec2 ; typedef OpenGl_Vec3d Vec3 ; typedef OpenGl_Vec4d Vec4 ; } ;
## Error: identifier expected, but got: <!!!

## !!!Ignored construct:  template < > [end of template] struct VectorType < Standard_ShortReal > { typedef OpenGl_Vec2 Vec2 ; typedef OpenGl_Vec3 Vec3 ; typedef OpenGl_Vec4 Vec4 ; } ;
## Error: identifier expected, but got: <!!!

## ! Tool class for selecting appropriate matrix type.
## ! \tparam T Numeric data type

type
  VectorTypeVectorTypeMatrixType*[T] {.importcpp: "OpenGl::VectorType<\'0>::VectorType<\'1>::MatrixType<\'2>",
                                      header: "OpenGl_Vec.hxx", bycopy.} = object ##  Not implemented


## !!!Ignored construct:  template < > [end of template] struct MatrixType < Standard_Real > { typedef OpenGl_Mat4d Mat4 ; } ;
## Error: identifier expected, but got: <!!!

## !!!Ignored construct:  template < > [end of template] struct MatrixType < Standard_ShortReal > { typedef OpenGl_Mat4 Mat4 ; } ;
## Error: identifier expected, but got: <!!!

