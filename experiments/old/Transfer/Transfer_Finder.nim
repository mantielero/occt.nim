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

discard "forward decl of Transfer_Finder"
discard "forward decl of Transfer_Finder"
type
  TransferFinder* {.importcpp: "Transfer_Finder", header: "Transfer_Finder.hxx",
                   bycopy.} = object of StandardTransient ## ! Returns the HashCode which has been stored by SetHashCode
                                                     ## ! (remark that HashCode could be deferred then be defined by
                                                     ## ! sub-classes, the result is the same)
                                                     ## ! Stores the HashCode which corresponds to the Value given to
                                                     ## ! create the Mapper

type
  HandleTransferFinder* = Handle[TransferFinder]

## ! a Finder allows to map any kind of object as a Key for a Map.
## ! This works by defining, for a Hash Code, that of the real Key,
## ! not of the Finder which acts only as an intermediate.
## ! When a Map asks for the HashCode of a Finder, this one returns
## ! the code it has determined at creation time
type
  TransferFinderbaseType* = StandardTransient



proc getHashCode*(this: TransferFinder): int {.noSideEffect,
    importcpp: "GetHashCode", header: "Transfer_Finder.hxx".}
proc equates*(this: TransferFinder; other: Handle[TransferFinder]): StandardBoolean {.
    noSideEffect, importcpp: "Equates", header: "Transfer_Finder.hxx".}
#[ proc valueType*(this: TransferFinder): Handle[StandardType] {.noSideEffect,
    importcpp: "ValueType", header: "Transfer_Finder.hxx".} ]#
proc valueTypeName*(this: TransferFinder): StandardCString {.noSideEffect,
    importcpp: "ValueTypeName", header: "Transfer_Finder.hxx".}
proc setAttribute*(this: var TransferFinder; name: StandardCString;
                  val: Handle[StandardTransient]) {.importcpp: "SetAttribute",
    header: "Transfer_Finder.hxx".}
proc removeAttribute*(this: var TransferFinder; name: StandardCString): StandardBoolean {.
    importcpp: "RemoveAttribute", header: "Transfer_Finder.hxx".}
#[ proc getAttribute*(this: TransferFinder; name: StandardCString;
                  `type`: Handle[StandardType]; val: var Handle[StandardTransient]): StandardBoolean {.
    noSideEffect, importcpp: "GetAttribute", header: "Transfer_Finder.hxx".} ]#
proc attribute*(this: TransferFinder; name: StandardCString): Handle[
    StandardTransient] {.noSideEffect, importcpp: "Attribute",
                        header: "Transfer_Finder.hxx".}
#[ proc attributeType*(this: TransferFinder; name: StandardCString): InterfaceParamType {.
    noSideEffect, importcpp: "AttributeType", header: "Transfer_Finder.hxx".} ]#
proc setIntegerAttribute*(this: var TransferFinder; name: StandardCString; val: int) {.
    importcpp: "SetIntegerAttribute", header: "Transfer_Finder.hxx".}
proc getIntegerAttribute*(this: TransferFinder; name: StandardCString; val: var int): StandardBoolean {.
    noSideEffect, importcpp: "GetIntegerAttribute", header: "Transfer_Finder.hxx".}
proc integerAttribute*(this: TransferFinder; name: StandardCString): int {.
    noSideEffect, importcpp: "IntegerAttribute", header: "Transfer_Finder.hxx".}
proc setRealAttribute*(this: var TransferFinder; name: StandardCString;
                      val: StandardReal) {.importcpp: "SetRealAttribute",
    header: "Transfer_Finder.hxx".}
proc getRealAttribute*(this: TransferFinder; name: StandardCString;
                      val: var StandardReal): StandardBoolean {.noSideEffect,
    importcpp: "GetRealAttribute", header: "Transfer_Finder.hxx".}
proc realAttribute*(this: TransferFinder; name: StandardCString): StandardReal {.
    noSideEffect, importcpp: "RealAttribute", header: "Transfer_Finder.hxx".}
proc setStringAttribute*(this: var TransferFinder; name: StandardCString;
                        val: StandardCString) {.importcpp: "SetStringAttribute",
    header: "Transfer_Finder.hxx".}
proc getStringAttribute*(this: TransferFinder; name: StandardCString;
                        val: var StandardCString): StandardBoolean {.noSideEffect,
    importcpp: "GetStringAttribute", header: "Transfer_Finder.hxx".}
proc stringAttribute*(this: TransferFinder; name: StandardCString): StandardCString {.
    noSideEffect, importcpp: "StringAttribute", header: "Transfer_Finder.hxx".}
#[ proc attrList*(this: var TransferFinder): var NCollectionDataMap[
    TCollectionAsciiString, Handle[StandardTransient]] {.importcpp: "AttrList",
    header: "Transfer_Finder.hxx".} ]#
proc sameAttributes*(this: var TransferFinder; other: Handle[TransferFinder]) {.
    importcpp: "SameAttributes", header: "Transfer_Finder.hxx".}
#[ proc getAttributes*(this: var TransferFinder; other: Handle[TransferFinder];
                   fromname: StandardCString = ""; copied: StandardBoolean = true) {.
    importcpp: "GetAttributes", header: "Transfer_Finder.hxx".}

proc getTypeName*(): cstring {.importcpp: "Transfer_Finder::get_type_name(@)",
                            header: "Transfer_Finder.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Transfer_Finder::get_type_descriptor(@)",
    header: "Transfer_Finder.hxx".}
proc dynamicType*(this: TransferFinder): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Transfer_Finder.hxx".} ]#