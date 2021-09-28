##  Author: Kirill Gavrilov
##  Copyright (c) 2017-2019 OPEN CASCADE SAS
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

## ! Auxiliary tools for OBJ format parser.

## ! Read 3 float values.

proc readVec3*(thePos: cstring; theNext: cstring; theVec: var Graphic3dVec3): bool =
  discard

## ! Read 3 double values.

proc readVec3*(thePos: cstring; theNext: cstring; theVec: var Xyz): bool =
  discard

## ! Read string.

proc readName*(thePos: cstring; theName: var TCollectionAsciiString): bool =
  discard

## ! Return true if specified char is a white space.

proc isSpaceChar*(theChar: char): bool =
  discard


























