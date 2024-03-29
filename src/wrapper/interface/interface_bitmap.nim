import interface_types







##  Created on: 1995-09-01
##  Created by: Christian CAILLET
##  Copyright (c) 1995-1999 Matra Datavision
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

## ! A bit map simply allows to associate a boolean flag to each
## ! item of a list, such as a list of entities, etc... numbered
## ! between 1 and a positive count nbitems
## !
## ! The BitMap class allows to associate several binary flags,
## ! each of one is identified by a number from 0 to a count
## ! which can remain at zero or be positive : nbflags
## !
## ! Flags lists over than numflag=0 are added after creation
## ! Each of one can be named, hence the user can identify it
## ! either by its flag number or by a name which gives a flag n0
## ! (flag n0 0 has no name)



proc newInterfaceBitMap*(): InterfaceBitMap {.cdecl, constructor,
    importcpp: "Interface_BitMap(@)", header: "Interface_BitMap.hxx".}
proc newInterfaceBitMap*(nbitems: cint; resflags: cint = 0): InterfaceBitMap {.cdecl,
    constructor, importcpp: "Interface_BitMap(@)", header: "Interface_BitMap.hxx".}
proc initialize*(this: var InterfaceBitMap; nbitems: cint; resflags: cint = 0) {.cdecl,
    importcpp: "Initialize", header: "Interface_BitMap.hxx".}
proc newInterfaceBitMap*(other: InterfaceBitMap; copied: bool = false): InterfaceBitMap {.
    cdecl, constructor, importcpp: "Interface_BitMap(@)", header: "Interface_BitMap.hxx".}
proc initialize*(this: var InterfaceBitMap; other: InterfaceBitMap;
                copied: bool = false) {.cdecl, importcpp: "Initialize",
                                    header: "Interface_BitMap.hxx".}
proc reservate*(this: var InterfaceBitMap; moreflags: cint) {.cdecl,
    importcpp: "Reservate", header: "Interface_BitMap.hxx".}
proc setLength*(this: var InterfaceBitMap; nbitems: cint) {.cdecl,
    importcpp: "SetLength", header: "Interface_BitMap.hxx".}
proc addFlag*(this: var InterfaceBitMap; name: cstring = ""): cint {.cdecl,
    importcpp: "AddFlag", header: "Interface_BitMap.hxx".}
proc addSomeFlags*(this: var InterfaceBitMap; more: cint): cint {.cdecl,
    importcpp: "AddSomeFlags", header: "Interface_BitMap.hxx".}
proc removeFlag*(this: var InterfaceBitMap; num: cint): bool {.cdecl,
    importcpp: "RemoveFlag", header: "Interface_BitMap.hxx".}
proc setFlagName*(this: var InterfaceBitMap; num: cint; name: cstring): bool {.cdecl,
    importcpp: "SetFlagName", header: "Interface_BitMap.hxx".}
proc nbFlags*(this: InterfaceBitMap): cint {.noSideEffect, cdecl,
    importcpp: "NbFlags", header: "Interface_BitMap.hxx".}
proc length*(this: InterfaceBitMap): cint {.noSideEffect, cdecl, importcpp: "Length",
                                        header: "Interface_BitMap.hxx".}
proc flagName*(this: InterfaceBitMap; num: cint): cstring {.noSideEffect, cdecl,
    importcpp: "FlagName", header: "Interface_BitMap.hxx".}
proc flagNumber*(this: InterfaceBitMap; name: cstring): cint {.noSideEffect, cdecl,
    importcpp: "FlagNumber", header: "Interface_BitMap.hxx".}
proc value*(this: InterfaceBitMap; item: cint; flag: cint = 0): bool {.noSideEffect, cdecl,
    importcpp: "Value", header: "Interface_BitMap.hxx".}
proc setValue*(this: InterfaceBitMap; item: cint; val: bool; flag: cint = 0) {.
    noSideEffect, cdecl, importcpp: "SetValue", header: "Interface_BitMap.hxx".}
proc setTrue*(this: InterfaceBitMap; item: cint; flag: cint = 0) {.noSideEffect, cdecl,
    importcpp: "SetTrue", header: "Interface_BitMap.hxx".}
proc setFalse*(this: InterfaceBitMap; item: cint; flag: cint = 0) {.noSideEffect, cdecl,
    importcpp: "SetFalse", header: "Interface_BitMap.hxx".}
proc cTrue*(this: InterfaceBitMap; item: cint; flag: cint = 0): bool {.noSideEffect, cdecl,
    importcpp: "CTrue", header: "Interface_BitMap.hxx".}
proc cFalse*(this: InterfaceBitMap; item: cint; flag: cint = 0): bool {.noSideEffect,
    cdecl, importcpp: "CFalse", header: "Interface_BitMap.hxx".}
proc init*(this: InterfaceBitMap; val: bool; flag: cint = 0) {.noSideEffect, cdecl,
    importcpp: "Init", header: "Interface_BitMap.hxx".}
proc clear*(this: var InterfaceBitMap) {.cdecl, importcpp: "Clear", header: "Interface_BitMap.hxx".}



