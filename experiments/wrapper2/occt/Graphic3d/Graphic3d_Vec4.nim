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
  ../NCollection/NCollection_Vec4, ../Standard/Standard_TypeDef

type
  Graphic3d_Vec4* = NCollection_Vec4[Standard_ShortReal]
  Graphic3d_Vec4d* = NCollection_Vec4[Standard_Real]
  Graphic3d_Vec4i* = NCollection_Vec4[Standard_Integer]
  Graphic3d_Vec4u* = NCollection_Vec4[cuint]
  Graphic3d_Vec4ub* = NCollection_Vec4[Standard_Byte]
  Graphic3d_Vec4b* = NCollection_Vec4[Standard_Character]
