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

type
  StdPersistentHArray1OfShape1* {.importcpp: "StdPersistent_HArray1OfShape1",
                                 header: "StdPersistent_HArray1.hxx", bycopy.} = object of NCollectionArray1[
      StdObjectShape]


proc constructStdPersistentHArray1OfShape1*(theLower: int; theUpper: int): StdPersistentHArray1OfShape1 {.
    constructor, importcpp: "StdPersistent_HArray1OfShape1(@)",
    header: "StdPersistent_HArray1.hxx".}
proc constructStdPersistentHArray1OfShape1*(theLower: int; theUpper: int;
    theValue: ValueType[StdObjectShape]): StdPersistentHArray1OfShape1 {.
    constructor, importcpp: "StdPersistent_HArray1OfShape1(@)",
    header: "StdPersistent_HArray1.hxx".}
proc constructStdPersistentHArray1OfShape1*(
    theOther: NCollectionArray1[StdObjectShape]): StdPersistentHArray1OfShape1 {.
    constructor, importcpp: "StdPersistent_HArray1OfShape1(@)",
    header: "StdPersistent_HArray1.hxx".}
proc array1*(this: StdPersistentHArray1OfShape1): NCollectionArray1[StdObjectShape] {.
    noSideEffect, importcpp: "Array1", header: "StdPersistent_HArray1.hxx".}
proc changeArray1*(this: var StdPersistentHArray1OfShape1): var NCollectionArray1[
    StdObjectShape] {.importcpp: "ChangeArray1",
                     header: "StdPersistent_HArray1.hxx".}
type
  StdPersistentHArray1OfShape1baseType* = MMgtTShared

proc getTypeName*(): cstring {.importcpp: "StdPersistent_HArray1OfShape1::get_type_name(@)",
                            header: "StdPersistent_HArray1.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StdPersistent_HArray1OfShape1::get_type_descriptor(@)",
    header: "StdPersistent_HArray1.hxx".}
proc dynamicType*(this: StdPersistentHArray1OfShape1): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "StdPersistent_HArray1.hxx".}
type
  StdPersistentHArray1* {.importcpp: "StdPersistent_HArray1",
                         header: "StdPersistent_HArray1.hxx", bycopy.} = object of StdLPersistentHArray1

  StdPersistentHArray1Shape1* = Instance[StdPersistentHArray1OfShape1]















































