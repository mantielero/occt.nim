##  Created on: 2009-01-30
##  Created by: Andrey BETENEV (abv)
##  Copyright (c) 2009-2014 OPEN CASCADE SAS
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

## ! Purpose: This template class is used to define Handle adaptor
## ! for allocated dynamically objects of arbitrary type.
## !
## ! The advantage is that this handle will automatically destroy
## ! the object when last referred Handle is destroyed (i.e. it is a
## ! typical smart pointer), and that it can be handled as
## ! Handle(Standard_Transient) in OCCT components.

type
  NCollectionHandle*[T] {.importcpp: "NCollection_Handle<\'0>",
                         header: "NCollection_Handle.hxx", bycopy.} = object of HandleStandardTransient
#      StandardTransient] ## ! Internal adaptor class wrapping actual type
#                        ## ! and enhancing it by reference counter inherited from
#                        ## ! Standard_Transient

  NCollectionHandleelementType*[T] = T

proc newNCollectionHandle*[T](): NCollectionHandle[T] {.cdecl, constructor,
    importcpp: "NCollection_Handle<\'*0>(@)", header: "NCollection_Handle.hxx".}
proc newNCollectionHandle*[T](theObject: ptr T): NCollectionHandle[T] {.cdecl,
    constructor, importcpp: "NCollection_Handle<\'*0>(@)", header: "NCollection_Handle.hxx".}
proc get*[T](this: var NCollectionHandle[T]): ptr T {.cdecl, importcpp: "get",
    header: "NCollection_Handle.hxx".}
proc get*[T](this: NCollectionHandle[T]): ptr T {.noSideEffect, cdecl,
    importcpp: "get", header: "NCollection_Handle.hxx".}
proc `->`*[T](this: var NCollectionHandle[T]): ptr T {.cdecl, importcpp: "(# -> #)",
    header: "NCollection_Handle.hxx".}
proc `->`*[T](this: NCollectionHandle[T]): ptr T {.noSideEffect, cdecl,
    importcpp: "(# -> #)", header: "NCollection_Handle.hxx".}
proc `*`*[T](this: var NCollectionHandle[T]): var T {.cdecl, importcpp: "(* #)",
    header: "NCollection_Handle.hxx".}
proc `*`*[T](this: NCollectionHandle[T]): T {.noSideEffect, cdecl, importcpp: "(* #)",
    header: "NCollection_Handle.hxx".}
proc downCast*[T](theOther: Handle[StandardTransient]): NCollectionHandle[T] {.
    cdecl, importcpp: "NCollection_Handle::DownCast(@)", header: "NCollection_Handle.hxx".}