


##  Copyright (c) 2018 OPEN CASCADE SAS
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

## ! Bitmask for primitive array creation.



const
  Graphic3dArrayFlagsNone* = 0x00 ## !< no flags
  Graphic3dArrayFlagsVertexNormal* = 0x01 ## !< per-vertex normal attribute
  Graphic3dArrayFlagsVertexColor* = 0x02 ## !< per-vertex color  attribute
  Graphic3dArrayFlagsVertexTexel* = 0x04 ## !< per-vertex texel coordinates (UV) attribute
  Graphic3dArrayFlagsBoundColor* = 0x10 ##  advanced
  Graphic3dArrayFlagsAttribsMutable* = 0x20 ## !< mutable array, which can be invalidated during lifetime without re-creation
  Graphic3dArrayFlagsAttribsDeinterleaved* = 0x40 ## !< non-interleaved vertex attributes packed into single array
  Graphic3dArrayFlagsIndexesMutable* = 0x80 ## !< mutable index array, which can be invalidated during lifetime without re-creation


