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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Integer,
  ../TColStd/TColStd_HArray1OfInteger, ../TColStd/TColStd_HSequenceOfAsciiString,
  ../Standard/Standard_Boolean, ../Standard/Standard_CString

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

type
  Interface_BitMap* {.importcpp: "Interface_BitMap",
                     header: "Interface_BitMap.hxx", bycopy.} = object ## ! Creates a empty BitMap


proc constructInterface_BitMap*(): Interface_BitMap {.constructor,
    importcpp: "Interface_BitMap(@)", header: "Interface_BitMap.hxx".}
proc constructInterface_BitMap*(nbitems: Standard_Integer;
                               resflags: Standard_Integer = 0): Interface_BitMap {.
    constructor, importcpp: "Interface_BitMap(@)", header: "Interface_BitMap.hxx".}
proc Initialize*(this: var Interface_BitMap; nbitems: Standard_Integer;
                resflags: Standard_Integer = 0) {.importcpp: "Initialize",
    header: "Interface_BitMap.hxx".}
proc constructInterface_BitMap*(other: Interface_BitMap;
                               copied: Standard_Boolean = Standard_False): Interface_BitMap {.
    constructor, importcpp: "Interface_BitMap(@)", header: "Interface_BitMap.hxx".}
proc Initialize*(this: var Interface_BitMap; other: Interface_BitMap;
                copied: Standard_Boolean = Standard_False) {.
    importcpp: "Initialize", header: "Interface_BitMap.hxx".}
proc Reservate*(this: var Interface_BitMap; moreflags: Standard_Integer) {.
    importcpp: "Reservate", header: "Interface_BitMap.hxx".}
proc SetLength*(this: var Interface_BitMap; nbitems: Standard_Integer) {.
    importcpp: "SetLength", header: "Interface_BitMap.hxx".}
proc AddFlag*(this: var Interface_BitMap; name: Standard_CString = ""): Standard_Integer {.
    importcpp: "AddFlag", header: "Interface_BitMap.hxx".}
proc AddSomeFlags*(this: var Interface_BitMap; more: Standard_Integer): Standard_Integer {.
    importcpp: "AddSomeFlags", header: "Interface_BitMap.hxx".}
proc RemoveFlag*(this: var Interface_BitMap; num: Standard_Integer): Standard_Boolean {.
    importcpp: "RemoveFlag", header: "Interface_BitMap.hxx".}
proc SetFlagName*(this: var Interface_BitMap; num: Standard_Integer;
                 name: Standard_CString): Standard_Boolean {.
    importcpp: "SetFlagName", header: "Interface_BitMap.hxx".}
proc NbFlags*(this: Interface_BitMap): Standard_Integer {.noSideEffect,
    importcpp: "NbFlags", header: "Interface_BitMap.hxx".}
proc Length*(this: Interface_BitMap): Standard_Integer {.noSideEffect,
    importcpp: "Length", header: "Interface_BitMap.hxx".}
proc FlagName*(this: Interface_BitMap; num: Standard_Integer): Standard_CString {.
    noSideEffect, importcpp: "FlagName", header: "Interface_BitMap.hxx".}
proc FlagNumber*(this: Interface_BitMap; name: Standard_CString): Standard_Integer {.
    noSideEffect, importcpp: "FlagNumber", header: "Interface_BitMap.hxx".}
proc Value*(this: Interface_BitMap; item: Standard_Integer;
           flag: Standard_Integer = 0): Standard_Boolean {.noSideEffect,
    importcpp: "Value", header: "Interface_BitMap.hxx".}
proc SetValue*(this: Interface_BitMap; item: Standard_Integer; val: Standard_Boolean;
              flag: Standard_Integer = 0) {.noSideEffect, importcpp: "SetValue",
                                        header: "Interface_BitMap.hxx".}
proc SetTrue*(this: Interface_BitMap; item: Standard_Integer;
             flag: Standard_Integer = 0) {.noSideEffect, importcpp: "SetTrue",
                                       header: "Interface_BitMap.hxx".}
proc SetFalse*(this: Interface_BitMap; item: Standard_Integer;
              flag: Standard_Integer = 0) {.noSideEffect, importcpp: "SetFalse",
                                        header: "Interface_BitMap.hxx".}
proc CTrue*(this: Interface_BitMap; item: Standard_Integer;
           flag: Standard_Integer = 0): Standard_Boolean {.noSideEffect,
    importcpp: "CTrue", header: "Interface_BitMap.hxx".}
proc CFalse*(this: Interface_BitMap; item: Standard_Integer;
            flag: Standard_Integer = 0): Standard_Boolean {.noSideEffect,
    importcpp: "CFalse", header: "Interface_BitMap.hxx".}
proc Init*(this: Interface_BitMap; val: Standard_Boolean; flag: Standard_Integer = 0) {.
    noSideEffect, importcpp: "Init", header: "Interface_BitMap.hxx".}
proc Clear*(this: var Interface_BitMap) {.importcpp: "Clear",
                                      header: "Interface_BitMap.hxx".}