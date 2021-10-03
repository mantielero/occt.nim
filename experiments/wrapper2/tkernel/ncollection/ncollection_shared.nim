##  Created on: 2015-06-26
##  Created by: Andrey Betenev
##  Copyright (c) 2015 OPEN CASCADE SAS
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

## ! Template defining a class derived from the specified base class and
## ! Standard_Transient, and supporting OCCT RTTI.
## !
## ! This provides possibility to use Handes for types not initially intended
## ! to be dynamically allocated.
## !
## ! Current limitation is that only copy and constructors with 1-3 arguments are defined,
## ! calling those of the argument class (default constructor must be available).
## ! It can be improved when perfect forwarding of template arguments is supported
## ! by all compilers used for OCCT.
## !
## ! The intent is similar to std::make_shared<> in STL, except that this
## ! implementation defines a separate type.

type
  NCollectionShared*[T] {.importcpp: "NCollection_Shared<\'0>",
                         header: "NCollection_Shared.hxx", bycopy.} = object of StandardTransient ##
                                                                                           ## !
                                                                                           ## Default
                                                                                           ## constructor


proc constructNCollectionShared*[T](): NCollectionShared[T] {.cdecl, constructor,
    importcpp: "NCollection_Shared<\'*0>(@)", dynlib: tkernel.}
proc constructNCollectionShared*[T; T1](arg1: T1): NCollectionShared[T] {.cdecl,
    constructor, importcpp: "NCollection_Shared<\'*0>(@)", dynlib: tkernel.}
proc constructNCollectionShared*[T; T1](arg1: var T1): NCollectionShared[T] {.cdecl,
    constructor, importcpp: "NCollection_Shared<\'*0>(@)", dynlib: tkernel.}
proc constructNCollectionShared*[T; T1; T2](arg1: T1; arg2: T2): NCollectionShared[T] {.
    cdecl, constructor, importcpp: "NCollection_Shared<\'*0>(@)", dynlib: tkernel.}
proc constructNCollectionShared*[T; T1; T2](arg1: var T1; arg2: T2): NCollectionShared[T] {.
    cdecl, constructor, importcpp: "NCollection_Shared<\'*0>(@)", dynlib: tkernel.}
proc constructNCollectionShared*[T; T1; T2](arg1: T1; arg2: var T2): NCollectionShared[T] {.
    cdecl, constructor, importcpp: "NCollection_Shared<\'*0>(@)", dynlib: tkernel.}
proc constructNCollectionShared*[T; T1; T2](arg1: var T1; arg2: var T2): NCollectionShared[
    T] {.cdecl, constructor, importcpp: "NCollection_Shared<\'*0>(@)",
        dynlib: tkernel.}