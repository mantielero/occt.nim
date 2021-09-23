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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Transient,
  ../NCollection/NCollection_DataMap, ../Standard/Standard_Integer,
  ../Standard/Standard_Transient, ../Standard/Standard_Boolean,
  ../Standard/Standard_Type, ../Standard/Standard_CString,
  ../Interface/Interface_ParamType, ../Standard/Standard_Real,
  ../TCollection/TCollection_AsciiString

discard "forward decl of Transfer_Finder"
discard "forward decl of Transfer_Finder"
type
  Handle_Transfer_Finder* = handle[Transfer_Finder]

## ! a Finder allows to map any kind of object as a Key for a Map.
## ! This works by defining, for a Hash Code, that of the real Key,
## ! not of the Finder which acts only as an intermediate.
## ! When a Map asks for the HashCode of a Finder, this one returns
## ! the code it has determined at creation time

type
  Transfer_Finder* {.importcpp: "Transfer_Finder", header: "Transfer_Finder.hxx",
                    bycopy.} = object of Standard_Transient ## ! Returns the HashCode which has been stored by SetHashCode
                                                       ## ! (remark that HashCode could be deferred then be defined by
                                                       ## ! sub-classes, the result is the same)
                                                       ## ! Stores the HashCode which corresponds to the Value given to
                                                       ## ! create the Mapper


proc GetHashCode*(this: Transfer_Finder): Standard_Integer {.noSideEffect,
    importcpp: "GetHashCode", header: "Transfer_Finder.hxx".}
proc Equates*(this: Transfer_Finder; other: handle[Transfer_Finder]): Standard_Boolean {.
    noSideEffect, importcpp: "Equates", header: "Transfer_Finder.hxx".}
proc ValueType*(this: Transfer_Finder): handle[Standard_Type] {.noSideEffect,
    importcpp: "ValueType", header: "Transfer_Finder.hxx".}
proc ValueTypeName*(this: Transfer_Finder): Standard_CString {.noSideEffect,
    importcpp: "ValueTypeName", header: "Transfer_Finder.hxx".}
proc SetAttribute*(this: var Transfer_Finder; name: Standard_CString;
                  val: handle[Standard_Transient]) {.importcpp: "SetAttribute",
    header: "Transfer_Finder.hxx".}
proc RemoveAttribute*(this: var Transfer_Finder; name: Standard_CString): Standard_Boolean {.
    importcpp: "RemoveAttribute", header: "Transfer_Finder.hxx".}
proc GetAttribute*(this: Transfer_Finder; name: Standard_CString;
                  `type`: handle[Standard_Type];
                  val: var handle[Standard_Transient]): Standard_Boolean {.
    noSideEffect, importcpp: "GetAttribute", header: "Transfer_Finder.hxx".}
proc Attribute*(this: Transfer_Finder; name: Standard_CString): handle[
    Standard_Transient] {.noSideEffect, importcpp: "Attribute",
                         header: "Transfer_Finder.hxx".}
proc AttributeType*(this: Transfer_Finder; name: Standard_CString): Interface_ParamType {.
    noSideEffect, importcpp: "AttributeType", header: "Transfer_Finder.hxx".}
proc SetIntegerAttribute*(this: var Transfer_Finder; name: Standard_CString;
                         val: Standard_Integer) {.
    importcpp: "SetIntegerAttribute", header: "Transfer_Finder.hxx".}
proc GetIntegerAttribute*(this: Transfer_Finder; name: Standard_CString;
                         val: var Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "GetIntegerAttribute", header: "Transfer_Finder.hxx".}
proc IntegerAttribute*(this: Transfer_Finder; name: Standard_CString): Standard_Integer {.
    noSideEffect, importcpp: "IntegerAttribute", header: "Transfer_Finder.hxx".}
proc SetRealAttribute*(this: var Transfer_Finder; name: Standard_CString;
                      val: Standard_Real) {.importcpp: "SetRealAttribute",
    header: "Transfer_Finder.hxx".}
proc GetRealAttribute*(this: Transfer_Finder; name: Standard_CString;
                      val: var Standard_Real): Standard_Boolean {.noSideEffect,
    importcpp: "GetRealAttribute", header: "Transfer_Finder.hxx".}
proc RealAttribute*(this: Transfer_Finder; name: Standard_CString): Standard_Real {.
    noSideEffect, importcpp: "RealAttribute", header: "Transfer_Finder.hxx".}
proc SetStringAttribute*(this: var Transfer_Finder; name: Standard_CString;
                        val: Standard_CString) {.importcpp: "SetStringAttribute",
    header: "Transfer_Finder.hxx".}
proc GetStringAttribute*(this: Transfer_Finder; name: Standard_CString;
                        val: var Standard_CString): Standard_Boolean {.noSideEffect,
    importcpp: "GetStringAttribute", header: "Transfer_Finder.hxx".}
proc StringAttribute*(this: Transfer_Finder; name: Standard_CString): Standard_CString {.
    noSideEffect, importcpp: "StringAttribute", header: "Transfer_Finder.hxx".}
proc AttrList*(this: var Transfer_Finder): var NCollection_DataMap[
    TCollection_AsciiString, handle[Standard_Transient]] {.importcpp: "AttrList",
    header: "Transfer_Finder.hxx".}
proc SameAttributes*(this: var Transfer_Finder; other: handle[Transfer_Finder]) {.
    importcpp: "SameAttributes", header: "Transfer_Finder.hxx".}
proc GetAttributes*(this: var Transfer_Finder; other: handle[Transfer_Finder];
                   fromname: Standard_CString = "";
                   copied: Standard_Boolean = Standard_True) {.
    importcpp: "GetAttributes", header: "Transfer_Finder.hxx".}
type
  Transfer_Finderbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Transfer_Finder::get_type_name(@)",
                              header: "Transfer_Finder.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Transfer_Finder::get_type_descriptor(@)",
    header: "Transfer_Finder.hxx".}
proc DynamicType*(this: Transfer_Finder): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Transfer_Finder.hxx".}