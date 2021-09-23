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

import
  ../Graphic3d/Graphic3d_Vec

type
  OpenGl_Vec2i* = Graphic3d_Vec2i
  OpenGl_Vec3i* = Graphic3d_Vec3i
  OpenGl_Vec4i* = Graphic3d_Vec4i
  OpenGl_Vec2b* = Graphic3d_Vec2b
  OpenGl_Vec3b* = Graphic3d_Vec3b
  OpenGl_Vec4b* = Graphic3d_Vec4b
  OpenGl_Vec2u* = Graphic3d_Vec2u
  OpenGl_Vec3u* = Graphic3d_Vec3u
  OpenGl_Vec4u* = Graphic3d_Vec4u
  OpenGl_Vec2ub* = Graphic3d_Vec2ub
  OpenGl_Vec3ub* = Graphic3d_Vec3ub
  OpenGl_Vec4ub* = Graphic3d_Vec4ub
  OpenGl_Vec2* = Graphic3d_Vec2
  OpenGl_Vec3* = Graphic3d_Vec3
  OpenGl_Vec4* = Graphic3d_Vec4
  OpenGl_Vec2d* = Graphic3d_Vec2d
  OpenGl_Vec3d* = Graphic3d_Vec3d
  OpenGl_Vec4d* = Graphic3d_Vec4d
  OpenGl_Mat4* = Graphic3d_Mat4
  OpenGl_Mat4d* = Graphic3d_Mat4d

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
