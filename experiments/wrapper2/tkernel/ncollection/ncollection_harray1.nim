when defined(windows):
  const tkernel* = "TKernel.dll"
elif defined(macosx):
  const tkernel* = "libTKernel.dylib"
else:
  const tkernel* = "libTKernel.so" 

##  Created on: 2002-04-29
##  Created by: Alexander KARTOMIN (akm)
##  Copyright (c) 2002-2014 OPEN CASCADE SAS
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

##       Declaration of Array1 class managed by Handle

template NCOLLECTION_HARRAY1*(HClassName, Type: untyped): void =
  type
    HClassName* {.importcpp: "HClassName", header: "NCollection_HArray1.hxx", bycopy.} = object of NCollection_Array1[
        Type]

  proc constructHClassName*(theLower: cint; theUpper: cint): HClassName {.cdecl,
      constructor, importcpp: "HClassName(@)", dynlib: tkernel.}
  proc constructHClassName*(theLower: cint; theUpper: cint;
                           theValue: value_type[Type]): HClassName {.cdecl,
      constructor, importcpp: "HClassName(@)", dynlib: tkernel.}
  proc constructHClassName*(theOther: NCollection_Array1[Type]): HClassName {.cdecl,
      constructor, importcpp: "HClassName(@)", dynlib: tkernel.}
  proc Array1*(this: HClassName): NCollection_Array1[Type] {.noSideEffect, cdecl,
      importcpp: "Array1", dynlib: tkernel.}
  