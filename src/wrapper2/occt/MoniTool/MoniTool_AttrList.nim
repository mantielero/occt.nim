##  Created on: 1994-11-04
##  Created by: Christian CAILLET
##  Copyright (c) 1994-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_CString,
  ../Standard/Standard_Boolean, ../Standard/Standard_Type, MoniTool_ValueType,
  ../Standard/Standard_Integer, ../Standard/Standard_Real,
  ../NCollection/NCollection_DataMap, ../Standard/Standard_Transient,
  ../TCollection/TCollection_AsciiString

## ! a AttrList allows to record a list of attributes as Transients
## ! which can be edited, changed ...
## ! Each one is identified by a name

type
  MoniTool_AttrList* {.importcpp: "MoniTool_AttrList",
                      header: "MoniTool_AttrList.hxx", bycopy.} = object ## ! Creates an AttrList, empty


proc constructMoniTool_AttrList*(): MoniTool_AttrList {.constructor,
    importcpp: "MoniTool_AttrList(@)", header: "MoniTool_AttrList.hxx".}
proc constructMoniTool_AttrList*(other: MoniTool_AttrList): MoniTool_AttrList {.
    constructor, importcpp: "MoniTool_AttrList(@)", header: "MoniTool_AttrList.hxx".}
proc SetAttribute*(this: var MoniTool_AttrList; name: Standard_CString;
                  val: handle[Standard_Transient]) {.importcpp: "SetAttribute",
    header: "MoniTool_AttrList.hxx".}
proc RemoveAttribute*(this: var MoniTool_AttrList; name: Standard_CString): Standard_Boolean {.
    importcpp: "RemoveAttribute", header: "MoniTool_AttrList.hxx".}
proc GetAttribute*(this: MoniTool_AttrList; name: Standard_CString;
                  `type`: handle[Standard_Type];
                  val: var handle[Standard_Transient]): Standard_Boolean {.
    noSideEffect, importcpp: "GetAttribute", header: "MoniTool_AttrList.hxx".}
proc Attribute*(this: MoniTool_AttrList; name: Standard_CString): handle[
    Standard_Transient] {.noSideEffect, importcpp: "Attribute",
                         header: "MoniTool_AttrList.hxx".}
proc AttributeType*(this: MoniTool_AttrList; name: Standard_CString): MoniTool_ValueType {.
    noSideEffect, importcpp: "AttributeType", header: "MoniTool_AttrList.hxx".}
proc SetIntegerAttribute*(this: var MoniTool_AttrList; name: Standard_CString;
                         val: Standard_Integer) {.
    importcpp: "SetIntegerAttribute", header: "MoniTool_AttrList.hxx".}
proc GetIntegerAttribute*(this: MoniTool_AttrList; name: Standard_CString;
                         val: var Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "GetIntegerAttribute", header: "MoniTool_AttrList.hxx".}
proc IntegerAttribute*(this: MoniTool_AttrList; name: Standard_CString): Standard_Integer {.
    noSideEffect, importcpp: "IntegerAttribute", header: "MoniTool_AttrList.hxx".}
proc SetRealAttribute*(this: var MoniTool_AttrList; name: Standard_CString;
                      val: Standard_Real) {.importcpp: "SetRealAttribute",
    header: "MoniTool_AttrList.hxx".}
proc GetRealAttribute*(this: MoniTool_AttrList; name: Standard_CString;
                      val: var Standard_Real): Standard_Boolean {.noSideEffect,
    importcpp: "GetRealAttribute", header: "MoniTool_AttrList.hxx".}
proc RealAttribute*(this: MoniTool_AttrList; name: Standard_CString): Standard_Real {.
    noSideEffect, importcpp: "RealAttribute", header: "MoniTool_AttrList.hxx".}
proc SetStringAttribute*(this: var MoniTool_AttrList; name: Standard_CString;
                        val: Standard_CString) {.importcpp: "SetStringAttribute",
    header: "MoniTool_AttrList.hxx".}
proc GetStringAttribute*(this: MoniTool_AttrList; name: Standard_CString;
                        val: var Standard_CString): Standard_Boolean {.noSideEffect,
    importcpp: "GetStringAttribute", header: "MoniTool_AttrList.hxx".}
proc StringAttribute*(this: MoniTool_AttrList; name: Standard_CString): Standard_CString {.
    noSideEffect, importcpp: "StringAttribute", header: "MoniTool_AttrList.hxx".}
proc AttrList*(this: MoniTool_AttrList): NCollection_DataMap[
    TCollection_AsciiString, handle[Standard_Transient]] {.noSideEffect,
    importcpp: "AttrList", header: "MoniTool_AttrList.hxx".}
proc SameAttributes*(this: var MoniTool_AttrList; other: MoniTool_AttrList) {.
    importcpp: "SameAttributes", header: "MoniTool_AttrList.hxx".}
proc GetAttributes*(this: var MoniTool_AttrList; other: MoniTool_AttrList;
                   fromname: Standard_CString = "";
                   copied: Standard_Boolean = Standard_True) {.
    importcpp: "GetAttributes", header: "MoniTool_AttrList.hxx".}