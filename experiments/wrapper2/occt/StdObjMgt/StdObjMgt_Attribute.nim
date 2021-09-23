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
  StdObjMgt_Persistent, StdObjMgt_ReadData, StdObjMgt_WriteData

## ! Root class for a temporary persistent object corresponding to an attribute.

type
  StdObjMgt_Attribute*[Transient] {.importcpp: "StdObjMgt_Attribute<\'0>",
                                   header: "StdObjMgt_Attribute.hxx", bycopy.} = object of Standard_Transient

  StdObjMgt_AttributeStatic*[Transient] {.
      importcpp: "StdObjMgt_Attribute<\'0>::Static",
      header: "StdObjMgt_Attribute.hxx", bycopy.} = object of StdObjMgt_Attributebase

  StdObjMgt_AttributeSimple*[Transient; DataType] {.
      importcpp: "StdObjMgt_Attribute<\'0>::Simple<\'1>",
      header: "StdObjMgt_Attribute.hxx", bycopy.} = object of StdObjMgt_AttributeStatic ##
                                                                                 ## !
                                                                                 ## Read
                                                                                 ## persistent
                                                                                 ## data
                                                                                 ## from
                                                                                 ## a
                                                                                 ## file.


proc Read*[Transient; DataType](this: var StdObjMgt_AttributeSimple[Transient,
    DataType]; theReadData: var StdObjMgt_ReadData) {.importcpp: "Read",
    header: "StdObjMgt_Attribute.hxx".}
proc Write*[Transient; DataType](this: StdObjMgt_AttributeSimple[Transient, DataType];
                               theWriteData: var StdObjMgt_WriteData) {.
    noSideEffect, importcpp: "Write", header: "StdObjMgt_Attribute.hxx".}
proc PChildren*[Transient; DataType](this: StdObjMgt_AttributeSimple[Transient,
    DataType]; a2: var SequenceOfPersistent) {.noSideEffect, importcpp: "PChildren",
    header: "StdObjMgt_Attribute.hxx".}
proc PName*[Transient; DataType](this: StdObjMgt_AttributeSimple[Transient, DataType]): Standard_CString {.
    noSideEffect, importcpp: "PName", header: "StdObjMgt_Attribute.hxx".}
type
  StdObjMgt_AttributeSingleInt*[Transient] {.
      importcpp: "StdObjMgt_Attribute<\'0>::SingleInt",
      header: "StdObjMgt_Attribute.hxx", bycopy.} = object of StdObjMgt_AttributeSimple[
      Standard_Integer]

  StdObjMgt_AttributeSingleRef*[Transient] {.
      importcpp: "StdObjMgt_Attribute<\'0>::SingleRef",
      header: "StdObjMgt_Attribute.hxx", bycopy.} = object of StdObjMgt_AttributeSimple[
      handle[StdObjMgt_Persistent]]


proc Instantiate*[Transient; Persistent](): handle[StdObjMgt_Persistent] {.
    importcpp: "StdObjMgt_Attribute::Instantiate(@)",
    header: "StdObjMgt_Attribute.hxx".}