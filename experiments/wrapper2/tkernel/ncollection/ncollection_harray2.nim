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

##       Declaration of Array2 class managed by Handle

template NCOLLECTION_HARRAY2*(HClassName, Type: untyped): void =
  type
    HClassName* {.importcpp: "HClassName", header: "NCollection_HArray2.hxx", bycopy.} = object of NCollection_Array2[
        Type]

  proc constructHClassName*(theRowLow: cint; theRowUpp: cint; theColLow: cint;
                           theColUpp: cint): HClassName {.cdecl, constructor,
      importcpp: "HClassName(@)", dynlib: tkernel.}
  proc constructHClassName*(theRowLow: cint; theRowUpp: cint; theColLow: cint;
                           theColUpp: cint; theValue: value_type[Type]): HClassName {.
      cdecl, constructor, importcpp: "HClassName(@)", dynlib: tkernel.}
  proc constructHClassName*(theOther: NCollection_Array2[Type]): HClassName {.cdecl,
      constructor, importcpp: "HClassName(@)", dynlib: tkernel.}
  proc Array2*(this: HClassName): NCollection_Array2[Type] {.noSideEffect, cdecl,
      importcpp: "Array2", dynlib: tkernel.}
  proc ChangeArray2*(this: var HClassName): var NCollection_Array2[Type] {.cdecl,
      importcpp: "ChangeArray2", dynlib: tkernel.}
  