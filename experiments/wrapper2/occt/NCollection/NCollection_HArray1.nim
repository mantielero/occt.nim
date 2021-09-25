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

template ncollection_Harray1*(hClassName, `type`: untyped): void =
  type
    HClassName* {.importcpp: "HClassName", header: "NCollection_HArray1.hxx", bycopy.} = object of NCollectionArray1[
        Type]

  proc constructHClassName*(theLower: int; theUpper: int): HClassName {.constructor,
      importcpp: "HClassName(@)", header: "NCollection_HArray1.hxx".}
  proc constructHClassName*(theLower: int; theUpper: int; theValue: ValueType[Type]): HClassName {.
      constructor, importcpp: "HClassName(@)", header: "NCollection_HArray1.hxx".}
  proc constructHClassName*(theOther: NCollectionArray1[Type]): HClassName {.
      constructor, importcpp: "HClassName(@)", header: "NCollection_HArray1.hxx".}
  proc array1*(this: HClassName): NCollectionArray1[Type] {.noSideEffect,
      importcpp: "Array1", header: "NCollection_HArray1.hxx".}
  proc changeArray1*(this: var HClassName): var NCollectionArray1[Type] {.
      importcpp: "ChangeArray1", header: "NCollection_HArray1.hxx".}
  type
    HClassNamebaseType* = MMgtTShared
  proc getTypeName*(): cstring {.importcpp: "HClassName::get_type_name(@)",
                              header: "NCollection_HArray1.hxx".}
  proc getTypeDescriptor*(): Handle[StandardType] {.
      importcpp: "HClassName::get_type_descriptor(@)",
      header: "NCollection_HArray1.hxx".}
  proc dynamicType*(this: HClassName): Handle[StandardType] {.noSideEffect,
      importcpp: "DynamicType", header: "NCollection_HArray1.hxx".}
  
