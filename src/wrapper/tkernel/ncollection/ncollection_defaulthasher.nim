##  Created by: Eugene Maltchikov
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

## =======================================================================
## function : HashCode_Proxy
## purpose  : Function is required to call the global function HashCode.
## =======================================================================
## ! Returns hash code for the given key, in the range [1, theUpperBound]
## ! @tparam TheKeyType the type of the given key
## ! @param theKey the key which hash code is to be computed
## ! @param theUpperBound the upper bound of the range a computing hash code must be within
## ! @return a computed hash code, in the range [1, theUpperBound]

proc hashCodeProxy*[TheKeyType](theKey: TheKeyType; theUpperBound: cint): cint {.cdecl.} =
  discard

## =======================================================================
## function : IsEqual
## purpose  : Default implementation of IsEqual via operator ==
## =======================================================================

#proc isEqual*[TheKeyType](theKey1: TheKeyType; theKey2: TheKeyType): bool {.cdecl.} =
#  discard

## =======================================================================
## function : IsEqual_Proxy
## purpose  : Function is required to call the global function IsEqual.
## =======================================================================

proc isEqualProxy*[TheKeyType](theKey1: TheKeyType; theKey2: TheKeyType): bool {.cdecl.} =
  discard

## *
##  Purpose:     The  DefaultHasher  is a  Hasher  that is used by
##               default in NCollection maps.
##               To compute the  hash code of the key  is used the
##               global function HashCode.
##               To compare two keys is used  the  global function
##               IsEqual.
##

type
  NCollectionDefaultHasher*[TheKeyType] {.
      importcpp: "NCollection_DefaultHasher<\'0>",
      header: "NCollection_DefaultHasher.hxx", bycopy.} = object ## ! Returns hash code for the given key, in the range [1, theUpperBound]
                                                            ## ! @param theKey the key which hash code is to be computed
                                                            ## ! @param theUpperBound the upper bound of the range a computing hash code must be within
                                                            ## ! @return a computed hash code, in the range [1, theUpperBound]


proc hashCode*[TheKeyType](theKey: TheKeyType; theUpperBound: cint): cint {.cdecl,
    importcpp: "NCollection_DefaultHasher::HashCode(@)", dynlib: tkernel.}
proc isEqual*[TheKeyType](theKey1: TheKeyType; theKey2: TheKeyType): bool {.cdecl,
    importcpp: "NCollection_DefaultHasher::IsEqual(@)", dynlib: tkernel.}