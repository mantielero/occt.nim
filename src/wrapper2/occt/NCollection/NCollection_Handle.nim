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

import
  ../Standard/Standard_Transient, ../Standard/Standard_Handle

## ! Purpose: This template class is used to define Handle adaptor
## ! for allocated dynamically objects of arbitrary type.
## !
## ! The advantage is that this handle will automatically destroy
## ! the object when last referred Handle is destroyed (i.e. it is a
## ! typical smart pointer), and that it can be handled as
## ! Handle(Standard_Transient) in OCCT components.

type
  NCollection_Handle*[T] {.importcpp: "NCollection_Handle<\'0>",
                          header: "NCollection_Handle.hxx", bycopy.} = object of handle[
      Standard_Transient] ## ! Internal adaptor class wrapping actual type
                         ## ! and enhancing it by reference counter inherited from
                         ## ! Standard_Transient

  NCollection_Handleelement_type*[T] = T

proc constructNCollection_Handle*[T](): NCollection_Handle[T] {.constructor,
    importcpp: "NCollection_Handle<\'*0>(@)", header: "NCollection_Handle.hxx".}
proc constructNCollection_Handle*[T](theObject: ptr T): NCollection_Handle[T] {.
    constructor, importcpp: "NCollection_Handle<\'*0>(@)",
    header: "NCollection_Handle.hxx".}
proc get*[T](this: var NCollection_Handle[T]): ptr T {.importcpp: "get",
    header: "NCollection_Handle.hxx".}
proc get*[T](this: NCollection_Handle[T]): ptr T {.noSideEffect, importcpp: "get",
    header: "NCollection_Handle.hxx".}
proc `->`*[T](this: var NCollection_Handle[T]): ptr T {.importcpp: "(# -> #)",
    header: "NCollection_Handle.hxx".}
proc `->`*[T](this: NCollection_Handle[T]): ptr T {.noSideEffect,
    importcpp: "(# -> #)", header: "NCollection_Handle.hxx".}
proc `*`*[T](this: var NCollection_Handle[T]): var T {.importcpp: "(* #)",
    header: "NCollection_Handle.hxx".}
proc `*`*[T](this: NCollection_Handle[T]): T {.noSideEffect, importcpp: "(* #)",
    header: "NCollection_Handle.hxx".}
proc DownCast*[T](theOther: handle[Standard_Transient]): NCollection_Handle[T] {.
    importcpp: "NCollection_Handle::DownCast(@)", header: "NCollection_Handle.hxx".}