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

import
  ../StdLPersistent/StdLPersistent_HArray1, ../StdObject/StdObject_Shape,
  ../NCollection/NCollection_DefineHArray1

type
  StdPersistent_HArray1OfShape1* {.importcpp: "StdPersistent_HArray1OfShape1",
                                  header: "StdPersistent_HArray1.hxx", bycopy.} = object of NCollection_Array1[
      StdObject_Shape]


proc constructStdPersistent_HArray1OfShape1*(theLower: Standard_Integer;
    theUpper: Standard_Integer): StdPersistent_HArray1OfShape1 {.constructor,
    importcpp: "StdPersistent_HArray1OfShape1(@)",
    header: "StdPersistent_HArray1.hxx".}
proc constructStdPersistent_HArray1OfShape1*(theLower: Standard_Integer;
    theUpper: Standard_Integer; theValue: value_type[StdObject_Shape]): StdPersistent_HArray1OfShape1 {.
    constructor, importcpp: "StdPersistent_HArray1OfShape1(@)",
    header: "StdPersistent_HArray1.hxx".}
proc constructStdPersistent_HArray1OfShape1*(
    theOther: NCollection_Array1[StdObject_Shape]): StdPersistent_HArray1OfShape1 {.
    constructor, importcpp: "StdPersistent_HArray1OfShape1(@)",
    header: "StdPersistent_HArray1.hxx".}
proc Array1*(this: StdPersistent_HArray1OfShape1): NCollection_Array1[
    StdObject_Shape] {.noSideEffect, importcpp: "Array1",
                      header: "StdPersistent_HArray1.hxx".}
proc ChangeArray1*(this: var StdPersistent_HArray1OfShape1): var NCollection_Array1[
    StdObject_Shape] {.importcpp: "ChangeArray1",
                      header: "StdPersistent_HArray1.hxx".}
type
  StdPersistent_HArray1OfShape1base_type* = MMgt_TShared

proc get_type_name*(): cstring {.importcpp: "StdPersistent_HArray1OfShape1::get_type_name(@)",
                              header: "StdPersistent_HArray1.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StdPersistent_HArray1OfShape1::get_type_descriptor(@)",
    header: "StdPersistent_HArray1.hxx".}
proc DynamicType*(this: StdPersistent_HArray1OfShape1): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StdPersistent_HArray1.hxx".}
type
  StdPersistent_HArray1* {.importcpp: "StdPersistent_HArray1",
                          header: "StdPersistent_HArray1.hxx", bycopy.} = object of StdLPersistent_HArray1

  StdPersistent_HArray1Shape1* = instance[StdPersistent_HArray1OfShape1]
