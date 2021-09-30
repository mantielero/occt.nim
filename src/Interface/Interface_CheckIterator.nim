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

discard "forward decl of Interface_InterfaceModel"
discard "forward decl of Interface_IntVal"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Interface_Check"
discard "forward decl of Standard_Transient"
# when defined(Status):
#   discard
## ! Result of a Check operation (especially from InterfaceModel)

type
  InterfaceCheckIterator* {.importcpp: "Interface_CheckIterator",
                           header: "Interface_CheckIterator.hxx", bycopy.} = object ## !
                                                                               ## Creates
                                                                               ## an
                                                                               ## empty
                                                                               ## CheckIterator


proc constructInterfaceCheckIterator*(): InterfaceCheckIterator {.constructor,
    importcpp: "Interface_CheckIterator(@)", header: "Interface_CheckIterator.hxx".}
proc constructInterfaceCheckIterator*(name: StandardCString): InterfaceCheckIterator {.
    constructor, importcpp: "Interface_CheckIterator(@)",
    header: "Interface_CheckIterator.hxx".}
proc setName*(this: var InterfaceCheckIterator; name: StandardCString) {.
    importcpp: "SetName", header: "Interface_CheckIterator.hxx".}
proc name*(this: InterfaceCheckIterator): StandardCString {.noSideEffect,
    importcpp: "Name", header: "Interface_CheckIterator.hxx".}
proc setModel*(this: var InterfaceCheckIterator;
              model: Handle[InterfaceInterfaceModel]) {.importcpp: "SetModel",
    header: "Interface_CheckIterator.hxx".}
proc model*(this: InterfaceCheckIterator): Handle[InterfaceInterfaceModel] {.
    noSideEffect, importcpp: "Model", header: "Interface_CheckIterator.hxx".}
proc clear*(this: var InterfaceCheckIterator) {.importcpp: "Clear",
    header: "Interface_CheckIterator.hxx".}
proc merge*(this: var InterfaceCheckIterator; other: var InterfaceCheckIterator) {.
    importcpp: "Merge", header: "Interface_CheckIterator.hxx".}
proc add*(this: var InterfaceCheckIterator; ach: Handle[InterfaceCheck]; num: cint = 0) {.
    importcpp: "Add", header: "Interface_CheckIterator.hxx".}
proc check*(this: InterfaceCheckIterator; num: cint): Handle[InterfaceCheck] {.
    noSideEffect, importcpp: "Check", header: "Interface_CheckIterator.hxx".}
proc check*(this: InterfaceCheckIterator; ent: Handle[StandardTransient]): Handle[
    InterfaceCheck] {.noSideEffect, importcpp: "Check",
                     header: "Interface_CheckIterator.hxx".}
proc cCheck*(this: var InterfaceCheckIterator; num: cint): var Handle[InterfaceCheck] {.
    importcpp: "CCheck", header: "Interface_CheckIterator.hxx".}
proc cCheck*(this: var InterfaceCheckIterator; ent: Handle[StandardTransient]): var Handle[
    InterfaceCheck] {.importcpp: "CCheck", header: "Interface_CheckIterator.hxx".}
proc isEmpty*(this: InterfaceCheckIterator; failsonly: bool): bool {.noSideEffect,
    importcpp: "IsEmpty", header: "Interface_CheckIterator.hxx".}
proc status*(this: InterfaceCheckIterator): InterfaceCheckStatus {.noSideEffect,
    importcpp: "Status", header: "Interface_CheckIterator.hxx".}
proc complies*(this: InterfaceCheckIterator; status: InterfaceCheckStatus): bool {.
    noSideEffect, importcpp: "Complies", header: "Interface_CheckIterator.hxx".}
proc extract*(this: InterfaceCheckIterator; status: InterfaceCheckStatus): InterfaceCheckIterator {.
    noSideEffect, importcpp: "Extract", header: "Interface_CheckIterator.hxx".}
proc extract*(this: InterfaceCheckIterator; mess: StandardCString; incl: cint;
             status: InterfaceCheckStatus): InterfaceCheckIterator {.noSideEffect,
    importcpp: "Extract", header: "Interface_CheckIterator.hxx".}
proc remove*(this: var InterfaceCheckIterator; mess: StandardCString; incl: cint;
            status: InterfaceCheckStatus): bool {.importcpp: "Remove",
    header: "Interface_CheckIterator.hxx".}
proc checkeds*(this: InterfaceCheckIterator; failsonly: bool; global: bool): Handle[
    TColStdHSequenceOfTransient] {.noSideEffect, importcpp: "Checkeds",
                                  header: "Interface_CheckIterator.hxx".}
proc start*(this: InterfaceCheckIterator) {.noSideEffect, importcpp: "Start",
    header: "Interface_CheckIterator.hxx".}
proc more*(this: InterfaceCheckIterator): bool {.noSideEffect, importcpp: "More",
    header: "Interface_CheckIterator.hxx".}
proc next*(this: InterfaceCheckIterator) {.noSideEffect, importcpp: "Next",
                                        header: "Interface_CheckIterator.hxx".}
proc value*(this: InterfaceCheckIterator): Handle[InterfaceCheck] {.noSideEffect,
    importcpp: "Value", header: "Interface_CheckIterator.hxx".}
proc number*(this: InterfaceCheckIterator): cint {.noSideEffect, importcpp: "Number",
    header: "Interface_CheckIterator.hxx".}
proc print*(this: InterfaceCheckIterator; s: var StandardOStream; failsonly: bool;
           final: cint = 0) {.noSideEffect, importcpp: "Print",
                          header: "Interface_CheckIterator.hxx".}
proc print*(this: InterfaceCheckIterator; s: var StandardOStream;
           model: Handle[InterfaceInterfaceModel]; failsonly: bool; final: cint = 0) {.
    noSideEffect, importcpp: "Print", header: "Interface_CheckIterator.hxx".}
proc destroy*(this: var InterfaceCheckIterator) {.importcpp: "Destroy",
    header: "Interface_CheckIterator.hxx".}
proc destroyInterfaceCheckIterator*(this: var InterfaceCheckIterator) {.
    importcpp: "#.~Interface_CheckIterator()",
    header: "Interface_CheckIterator.hxx".}

























