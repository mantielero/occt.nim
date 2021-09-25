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

## ! a AttrList allows to record a list of attributes as Transients
## ! which can be edited, changed ...
## ! Each one is identified by a name

type
  MoniToolAttrList* {.importcpp: "MoniTool_AttrList",
                     header: "MoniTool_AttrList.hxx", bycopy.} = object ## ! Creates an AttrList, empty


proc constructMoniToolAttrList*(): MoniToolAttrList {.constructor,
    importcpp: "MoniTool_AttrList(@)", header: "MoniTool_AttrList.hxx".}
proc constructMoniToolAttrList*(other: MoniToolAttrList): MoniToolAttrList {.
    constructor, importcpp: "MoniTool_AttrList(@)", header: "MoniTool_AttrList.hxx".}
proc setAttribute*(this: var MoniToolAttrList; name: StandardCString;
                  val: Handle[StandardTransient]) {.importcpp: "SetAttribute",
    header: "MoniTool_AttrList.hxx".}
proc removeAttribute*(this: var MoniToolAttrList; name: StandardCString): bool {.
    importcpp: "RemoveAttribute", header: "MoniTool_AttrList.hxx".}
proc getAttribute*(this: MoniToolAttrList; name: StandardCString;
                  `type`: Handle[StandardType]; val: var Handle[StandardTransient]): bool {.
    noSideEffect, importcpp: "GetAttribute", header: "MoniTool_AttrList.hxx".}
proc attribute*(this: MoniToolAttrList; name: StandardCString): Handle[
    StandardTransient] {.noSideEffect, importcpp: "Attribute",
                        header: "MoniTool_AttrList.hxx".}
proc attributeType*(this: MoniToolAttrList; name: StandardCString): MoniToolValueType {.
    noSideEffect, importcpp: "AttributeType", header: "MoniTool_AttrList.hxx".}
proc setIntegerAttribute*(this: var MoniToolAttrList; name: StandardCString; val: int) {.
    importcpp: "SetIntegerAttribute", header: "MoniTool_AttrList.hxx".}
proc getIntegerAttribute*(this: MoniToolAttrList; name: StandardCString; val: var int): bool {.
    noSideEffect, importcpp: "GetIntegerAttribute", header: "MoniTool_AttrList.hxx".}
proc integerAttribute*(this: MoniToolAttrList; name: StandardCString): int {.
    noSideEffect, importcpp: "IntegerAttribute", header: "MoniTool_AttrList.hxx".}
proc setRealAttribute*(this: var MoniToolAttrList; name: StandardCString; val: float) {.
    importcpp: "SetRealAttribute", header: "MoniTool_AttrList.hxx".}
proc getRealAttribute*(this: MoniToolAttrList; name: StandardCString; val: var float): bool {.
    noSideEffect, importcpp: "GetRealAttribute", header: "MoniTool_AttrList.hxx".}
proc realAttribute*(this: MoniToolAttrList; name: StandardCString): float {.
    noSideEffect, importcpp: "RealAttribute", header: "MoniTool_AttrList.hxx".}
proc setStringAttribute*(this: var MoniToolAttrList; name: StandardCString;
                        val: StandardCString) {.importcpp: "SetStringAttribute",
    header: "MoniTool_AttrList.hxx".}
proc getStringAttribute*(this: MoniToolAttrList; name: StandardCString;
                        val: var StandardCString): bool {.noSideEffect,
    importcpp: "GetStringAttribute", header: "MoniTool_AttrList.hxx".}
proc stringAttribute*(this: MoniToolAttrList; name: StandardCString): StandardCString {.
    noSideEffect, importcpp: "StringAttribute", header: "MoniTool_AttrList.hxx".}
proc attrList*(this: MoniToolAttrList): NCollectionDataMap[TCollectionAsciiString,
    Handle[StandardTransient]] {.noSideEffect, importcpp: "AttrList",
                                header: "MoniTool_AttrList.hxx".}
proc sameAttributes*(this: var MoniToolAttrList; other: MoniToolAttrList) {.
    importcpp: "SameAttributes", header: "MoniTool_AttrList.hxx".}
proc getAttributes*(this: var MoniToolAttrList; other: MoniToolAttrList;
                   fromname: StandardCString = ""; copied: bool = true) {.
    importcpp: "GetAttributes", header: "MoniTool_AttrList.hxx".}
