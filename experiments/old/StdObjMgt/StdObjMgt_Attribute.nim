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

## ! Root class for a temporary persistent object corresponding to an attribute.

type
  StdObjMgtAttribute*[Transient] {.importcpp: "StdObjMgt_Attribute<\'0>",
                                  header: "StdObjMgt_Attribute.hxx", bycopy.} = object of StandardTransient

  StdObjMgtAttributeStatic*[Transient] {.importcpp: "StdObjMgt_Attribute<\'0>::Static",
                                        header: "StdObjMgt_Attribute.hxx", bycopy.} = object of StdObjMgtAttributebase

  StdObjMgtAttributeSimple*[Transient; DataType] {.
      importcpp: "StdObjMgt_Attribute<\'0>::Simple<\'1>",
      header: "StdObjMgt_Attribute.hxx", bycopy.} = object of StdObjMgtAttributeStatic ##
                                                                                ## !
                                                                                ## Read
                                                                                ## persistent
                                                                                ## data
                                                                                ## from
                                                                                ## a
                                                                                ## file.


proc read*[Transient; DataType](this: var StdObjMgtAttributeSimple[Transient,
    DataType]; theReadData: var StdObjMgtReadData) {.importcpp: "Read",
    header: "StdObjMgt_Attribute.hxx".}
proc write*[Transient; DataType](this: StdObjMgtAttributeSimple[Transient, DataType];
                               theWriteData: var StdObjMgtWriteData) {.
    noSideEffect, importcpp: "Write", header: "StdObjMgt_Attribute.hxx".}
proc pChildren*[Transient; DataType](this: StdObjMgtAttributeSimple[Transient,
    DataType]; a2: var SequenceOfPersistent) {.noSideEffect, importcpp: "PChildren",
    header: "StdObjMgt_Attribute.hxx".}
proc pName*[Transient; DataType](this: StdObjMgtAttributeSimple[Transient, DataType]): StandardCString {.
    noSideEffect, importcpp: "PName", header: "StdObjMgt_Attribute.hxx".}
type
  StdObjMgtAttributeSingleInt*[Transient] {.
      importcpp: "StdObjMgt_Attribute<\'0>::SingleInt",
      header: "StdObjMgt_Attribute.hxx", bycopy.} = object of StdObjMgtAttributeSimple[
      cint]

  StdObjMgtAttributeSingleRef*[Transient] {.
      importcpp: "StdObjMgt_Attribute<\'0>::SingleRef",
      header: "StdObjMgt_Attribute.hxx", bycopy.} = object of StdObjMgtAttributeSimple[
      Handle[StdObjMgtPersistent]]


proc instantiate*[Transient; Persistent](): Handle[StdObjMgtPersistent] {.
    importcpp: "StdObjMgt_Attribute::Instantiate(@)",
    header: "StdObjMgt_Attribute.hxx".}

























