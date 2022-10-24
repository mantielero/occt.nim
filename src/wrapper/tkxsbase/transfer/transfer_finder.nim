import transfer_types

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




proc getHashCode*(this: TransferFinder): cint {.noSideEffect, cdecl,
    importcpp: "GetHashCode", header: "Transfer_Finder.hxx".}
proc equates*(this: TransferFinder; other: Handle[TransferFinder]): bool {.
    noSideEffect, cdecl, importcpp: "Equates", header: "Transfer_Finder.hxx".}
proc valueType*(this: TransferFinder): Handle[StandardType] {.noSideEffect, cdecl,
    importcpp: "ValueType", header: "Transfer_Finder.hxx".}
proc valueTypeName*(this: TransferFinder): cstring {.noSideEffect, cdecl,
    importcpp: "ValueTypeName", header: "Transfer_Finder.hxx".}
proc setAttribute*(this: var TransferFinder; name: cstring;
                  val: Handle[StandardTransient]) {.cdecl,
    importcpp: "SetAttribute", header: "Transfer_Finder.hxx".}
proc removeAttribute*(this: var TransferFinder; name: cstring): bool {.cdecl,
    importcpp: "RemoveAttribute", header: "Transfer_Finder.hxx".}
proc getAttribute*(this: TransferFinder; name: cstring; `type`: Handle[StandardType];
                  val: var Handle[StandardTransient]): bool {.noSideEffect, cdecl,
    importcpp: "GetAttribute", header: "Transfer_Finder.hxx".}
proc attribute*(this: TransferFinder; name: cstring): Handle[StandardTransient] {.
    noSideEffect, cdecl, importcpp: "Attribute", header: "Transfer_Finder.hxx".}
proc attributeType*(this: TransferFinder; name: cstring): InterfaceParamType {.
    noSideEffect, cdecl, importcpp: "AttributeType", header: "Transfer_Finder.hxx".}
proc setIntegerAttribute*(this: var TransferFinder; name: cstring; val: cint) {.cdecl,
    importcpp: "SetIntegerAttribute", header: "Transfer_Finder.hxx".}
proc getIntegerAttribute*(this: TransferFinder; name: cstring; val: var cint): bool {.
    noSideEffect, cdecl, importcpp: "GetIntegerAttribute", header: "Transfer_Finder.hxx".}
proc integerAttribute*(this: TransferFinder; name: cstring): cint {.noSideEffect,
    cdecl, importcpp: "IntegerAttribute", header: "Transfer_Finder.hxx".}
proc setRealAttribute*(this: var TransferFinder; name: cstring; val: cfloat) {.cdecl,
    importcpp: "SetRealAttribute", header: "Transfer_Finder.hxx".}
proc getRealAttribute*(this: TransferFinder; name: cstring; val: var cfloat): bool {.
    noSideEffect, cdecl, importcpp: "GetRealAttribute", header: "Transfer_Finder.hxx".}
proc realAttribute*(this: TransferFinder; name: cstring): cfloat {.noSideEffect, cdecl,
    importcpp: "RealAttribute", header: "Transfer_Finder.hxx".}
proc setStringAttribute*(this: var TransferFinder; name: cstring; val: cstring) {.cdecl,
    importcpp: "SetStringAttribute", header: "Transfer_Finder.hxx".}
proc getStringAttribute*(this: TransferFinder; name: cstring; val: var cstring): bool {.
    noSideEffect, cdecl, importcpp: "GetStringAttribute", header: "Transfer_Finder.hxx".}
proc stringAttribute*(this: TransferFinder; name: cstring): cstring {.noSideEffect,
    cdecl, importcpp: "StringAttribute", header: "Transfer_Finder.hxx".}
#proc attrList*(this: var TransferFinder): var NCollectionDataMap[
#    TCollectionAsciiString, Handle[StandardTransient]] {.cdecl,
#    importcpp: "AttrList", header: "Transfer_Finder.hxx".}
proc sameAttributes*(this: var TransferFinder; other: Handle[TransferFinder]) {.cdecl,
    importcpp: "SameAttributes", header: "Transfer_Finder.hxx".}
proc getAttributes*(this: var TransferFinder; other: Handle[TransferFinder];
                   fromname: cstring = ""; copied: bool = true) {.cdecl,
    importcpp: "GetAttributes", header: "Transfer_Finder.hxx".}
