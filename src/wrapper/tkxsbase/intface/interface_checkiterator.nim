import ../../tkernel/standard/standard_types
import ../../tkernel/tcolstd/tcolstd_types




##  Created on: 1992-10-28
##  Created by: Christian CAILLET
##  Copyright (c) 1992-1999 Matra Datavision
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

when defined(Status):
  discard
## ! Result of a Check operation (especially from InterfaceModel)

type
  InterfaceCheckIterator* {.importcpp: "Interface_CheckIterator",
                           header: "Interface_CheckIterator.hxx", bycopy.} = object ## !
                                                                               ## Creates
                                                                               ## an
                                                                               ## empty
                                                                               ## CheckIterator


proc newInterfaceCheckIterator*(): InterfaceCheckIterator {.cdecl, constructor,
    importcpp: "Interface_CheckIterator(@)", header: "Interface_CheckIterator.hxx".}
proc newInterfaceCheckIterator*(name: cstring): InterfaceCheckIterator {.cdecl,
    constructor, importcpp: "Interface_CheckIterator(@)", header: "Interface_CheckIterator.hxx".}
proc setName*(this: var InterfaceCheckIterator; name: cstring) {.cdecl,
    importcpp: "SetName", header: "Interface_CheckIterator.hxx".}
proc name*(this: InterfaceCheckIterator): cstring {.noSideEffect, cdecl,
    importcpp: "Name", header: "Interface_CheckIterator.hxx".}
proc setModel*(this: var InterfaceCheckIterator;
              model: Handle[InterfaceInterfaceModel]) {.cdecl,
    importcpp: "SetModel", header: "Interface_CheckIterator.hxx".}
proc model*(this: InterfaceCheckIterator): Handle[InterfaceInterfaceModel] {.
    noSideEffect, cdecl, importcpp: "Model", header: "Interface_CheckIterator.hxx".}
proc clear*(this: var InterfaceCheckIterator) {.cdecl, importcpp: "Clear",
    header: "Interface_CheckIterator.hxx".}
proc merge*(this: var InterfaceCheckIterator; other: var InterfaceCheckIterator) {.
    cdecl, importcpp: "Merge", header: "Interface_CheckIterator.hxx".}
proc add*(this: var InterfaceCheckIterator; ach: Handle[InterfaceCheck]; num: cint = 0) {.
    cdecl, importcpp: "Add", header: "Interface_CheckIterator.hxx".}
proc check*(this: InterfaceCheckIterator; num: cint): Handle[InterfaceCheck] {.
    noSideEffect, cdecl, importcpp: "Check", header: "Interface_CheckIterator.hxx".}
proc check*(this: InterfaceCheckIterator; ent: Handle[StandardTransient]): Handle[
    InterfaceCheck] {.noSideEffect, cdecl, importcpp: "Check", header: "Interface_CheckIterator.hxx".}
proc cCheck*(this: var InterfaceCheckIterator; num: cint): var Handle[InterfaceCheck] {.
    cdecl, importcpp: "CCheck", header: "Interface_CheckIterator.hxx".}
proc cCheck*(this: var InterfaceCheckIterator; ent: Handle[StandardTransient]): var Handle[
    InterfaceCheck] {.cdecl, importcpp: "CCheck", header: "Interface_CheckIterator.hxx".}
proc isEmpty*(this: InterfaceCheckIterator; failsonly: bool): bool {.noSideEffect,
    cdecl, importcpp: "IsEmpty", header: "Interface_CheckIterator.hxx".}
proc status*(this: InterfaceCheckIterator): InterfaceCheckStatus {.noSideEffect,
    cdecl, importcpp: "Status", header: "Interface_CheckIterator.hxx".}
proc complies*(this: InterfaceCheckIterator; status: InterfaceCheckStatus): bool {.
    noSideEffect, cdecl, importcpp: "Complies", header: "Interface_CheckIterator.hxx".}
proc extract*(this: InterfaceCheckIterator; status: InterfaceCheckStatus): InterfaceCheckIterator {.
    noSideEffect, cdecl, importcpp: "Extract", header: "Interface_CheckIterator.hxx".}
proc extract*(this: InterfaceCheckIterator; mess: cstring; incl: cint;
             status: InterfaceCheckStatus): InterfaceCheckIterator {.noSideEffect,
    cdecl, importcpp: "Extract", header: "Interface_CheckIterator.hxx".}
proc remove*(this: var InterfaceCheckIterator; mess: cstring; incl: cint;
            status: InterfaceCheckStatus): bool {.cdecl, importcpp: "Remove",
    header: "Interface_CheckIterator.hxx".}
proc checkeds*(this: InterfaceCheckIterator; failsonly: bool; global: bool): Handle[
    TColStdHSequenceOfTransient] {.noSideEffect, cdecl, importcpp: "Checkeds",
                                  header: "Interface_CheckIterator.hxx".}
proc start*(this: InterfaceCheckIterator) {.noSideEffect, cdecl, importcpp: "Start",
    header: "Interface_CheckIterator.hxx".}
proc more*(this: InterfaceCheckIterator): bool {.noSideEffect, cdecl,
    importcpp: "More", header: "Interface_CheckIterator.hxx".}
proc next*(this: InterfaceCheckIterator) {.noSideEffect, cdecl, importcpp: "Next",
                                        header: "Interface_CheckIterator.hxx".}
proc value*(this: InterfaceCheckIterator): Handle[InterfaceCheck] {.noSideEffect,
    cdecl, importcpp: "Value", header: "Interface_CheckIterator.hxx".}
proc number*(this: InterfaceCheckIterator): cint {.noSideEffect, cdecl,
    importcpp: "Number", header: "Interface_CheckIterator.hxx".}
proc print*(this: InterfaceCheckIterator; s: var StandardOStream; failsonly: bool;
           final: cint = 0) {.noSideEffect, cdecl, importcpp: "Print", header: "Interface_CheckIterator.hxx".}
proc print*(this: InterfaceCheckIterator; s: var StandardOStream;
           model: Handle[InterfaceInterfaceModel]; failsonly: bool; final: cint = 0) {.
    noSideEffect, cdecl, importcpp: "Print", header: "Interface_CheckIterator.hxx".}
proc destroy*(this: var InterfaceCheckIterator) {.cdecl, importcpp: "Destroy",
    header: "Interface_CheckIterator.hxx".}
proc destroyInterfaceCheckIterator*(this: var InterfaceCheckIterator) {.cdecl,
    importcpp: "#.~Interface_CheckIterator()", header: "Interface_CheckIterator.hxx".}

