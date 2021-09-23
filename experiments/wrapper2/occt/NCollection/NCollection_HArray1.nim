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

import
  NCollection_Array1, NCollection_DefineHArray1

##       Declaration of Array1 class managed by Handle

template NCOLLECTION_HARRAY1*(HClassName, Type: untyped): void =
  type
    HClassName* {.importcpp: "HClassName", header: "NCollection_HArray1.hxx", bycopy.} = object of NCollection_Array1[
        Type]

  proc constructHClassName*(theLower: Standard_Integer; theUpper: Standard_Integer): HClassName {.
      constructor, importcpp: "HClassName(@)", header: "NCollection_HArray1.hxx".}
  proc constructHClassName*(theLower: Standard_Integer; theUpper: Standard_Integer;
                           theValue: value_type[Type]): HClassName {.constructor,
      importcpp: "HClassName(@)", header: "NCollection_HArray1.hxx".}
  proc constructHClassName*(theOther: NCollection_Array1[Type]): HClassName {.
      constructor, importcpp: "HClassName(@)", header: "NCollection_HArray1.hxx".}
  proc Array1*(this: HClassName): NCollection_Array1[Type] {.noSideEffect,
      importcpp: "Array1", header: "NCollection_HArray1.hxx".}
  proc ChangeArray1*(this: var HClassName): var NCollection_Array1[Type] {.
      importcpp: "ChangeArray1", header: "NCollection_HArray1.hxx".}
  type
    HClassNamebase_type* = MMgt_TShared
  proc get_type_name*(): cstring {.importcpp: "HClassName::get_type_name(@)",
                                header: "NCollection_HArray1.hxx".}
  proc get_type_descriptor*(): handle[Standard_Type] {.
      importcpp: "HClassName::get_type_descriptor(@)",
      header: "NCollection_HArray1.hxx".}
  proc DynamicType*(this: HClassName): handle[Standard_Type] {.noSideEffect,
      importcpp: "DynamicType", header: "NCollection_HArray1.hxx".}
  