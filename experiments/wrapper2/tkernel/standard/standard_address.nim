##  Copyright (c) 1998-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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

## ! Returns a hash code of the given memory pointer
## ! @param thePointer the memory pointer which hash code it to be computed
## ! @param theUpperBound the upper bound of the range a resulting hash code must be within
## ! @return a value of a computed hash code, in range [1, UpperBound]

proc HashCode*(thePointer: pointer; theUpperBound: cint): cint {.cdecl.} =
  discard

## ============================================================================
##  IsEqual : Returns Standard_True if two CString have the same value
## ============================================================================

proc IsEqual*(One: pointer; Two: pointer): Standard_Boolean {.cdecl.} =
  discard
