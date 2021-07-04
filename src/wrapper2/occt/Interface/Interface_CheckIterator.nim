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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, Interface_HSequenceOfCheck,
  ../TColStd/TColStd_HSequenceOfInteger, ../TCollection/TCollection_AsciiString,
  ../Standard/Standard_CString, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean, Interface_CheckStatus,
  ../TColStd/TColStd_HSequenceOfTransient

discard "forward decl of Interface_InterfaceModel"
discard "forward decl of Interface_IntVal"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Interface_Check"
discard "forward decl of Standard_Transient"
when defined(Status):
  discard
## ! Result of a Check operation (especially from InterfaceModel)

type
  Interface_CheckIterator* {.importcpp: "Interface_CheckIterator",
                            header: "Interface_CheckIterator.hxx", bycopy.} = object ##
                                                                                ## !
                                                                                ## Creates
                                                                                ## an
                                                                                ## empty
                                                                                ## CheckIterator


proc constructInterface_CheckIterator*(): Interface_CheckIterator {.constructor,
    importcpp: "Interface_CheckIterator(@)", header: "Interface_CheckIterator.hxx".}
proc constructInterface_CheckIterator*(name: Standard_CString): Interface_CheckIterator {.
    constructor, importcpp: "Interface_CheckIterator(@)",
    header: "Interface_CheckIterator.hxx".}
proc SetName*(this: var Interface_CheckIterator; name: Standard_CString) {.
    importcpp: "SetName", header: "Interface_CheckIterator.hxx".}
proc Name*(this: Interface_CheckIterator): Standard_CString {.noSideEffect,
    importcpp: "Name", header: "Interface_CheckIterator.hxx".}
proc SetModel*(this: var Interface_CheckIterator;
              model: handle[Interface_InterfaceModel]) {.importcpp: "SetModel",
    header: "Interface_CheckIterator.hxx".}
proc Model*(this: Interface_CheckIterator): handle[Interface_InterfaceModel] {.
    noSideEffect, importcpp: "Model", header: "Interface_CheckIterator.hxx".}
proc Clear*(this: var Interface_CheckIterator) {.importcpp: "Clear",
    header: "Interface_CheckIterator.hxx".}
proc Merge*(this: var Interface_CheckIterator; other: var Interface_CheckIterator) {.
    importcpp: "Merge", header: "Interface_CheckIterator.hxx".}
proc Add*(this: var Interface_CheckIterator; ach: handle[Interface_Check];
         num: Standard_Integer = 0) {.importcpp: "Add",
                                  header: "Interface_CheckIterator.hxx".}
proc Check*(this: Interface_CheckIterator; num: Standard_Integer): handle[
    Interface_Check] {.noSideEffect, importcpp: "Check",
                      header: "Interface_CheckIterator.hxx".}
proc Check*(this: Interface_CheckIterator; ent: handle[Standard_Transient]): handle[
    Interface_Check] {.noSideEffect, importcpp: "Check",
                      header: "Interface_CheckIterator.hxx".}
proc CCheck*(this: var Interface_CheckIterator; num: Standard_Integer): var handle[
    Interface_Check] {.importcpp: "CCheck", header: "Interface_CheckIterator.hxx".}
proc CCheck*(this: var Interface_CheckIterator; ent: handle[Standard_Transient]): var handle[
    Interface_Check] {.importcpp: "CCheck", header: "Interface_CheckIterator.hxx".}
proc IsEmpty*(this: Interface_CheckIterator; failsonly: Standard_Boolean): Standard_Boolean {.
    noSideEffect, importcpp: "IsEmpty", header: "Interface_CheckIterator.hxx".}
proc Status*(this: Interface_CheckIterator): Interface_CheckStatus {.noSideEffect,
    importcpp: "Status", header: "Interface_CheckIterator.hxx".}
proc Complies*(this: Interface_CheckIterator; status: Interface_CheckStatus): Standard_Boolean {.
    noSideEffect, importcpp: "Complies", header: "Interface_CheckIterator.hxx".}
proc Extract*(this: Interface_CheckIterator; status: Interface_CheckStatus): Interface_CheckIterator {.
    noSideEffect, importcpp: "Extract", header: "Interface_CheckIterator.hxx".}
proc Extract*(this: Interface_CheckIterator; mess: Standard_CString;
             incl: Standard_Integer; status: Interface_CheckStatus): Interface_CheckIterator {.
    noSideEffect, importcpp: "Extract", header: "Interface_CheckIterator.hxx".}
proc Remove*(this: var Interface_CheckIterator; mess: Standard_CString;
            incl: Standard_Integer; status: Interface_CheckStatus): Standard_Boolean {.
    importcpp: "Remove", header: "Interface_CheckIterator.hxx".}
proc Checkeds*(this: Interface_CheckIterator; failsonly: Standard_Boolean;
              global: Standard_Boolean): handle[TColStd_HSequenceOfTransient] {.
    noSideEffect, importcpp: "Checkeds", header: "Interface_CheckIterator.hxx".}
proc Start*(this: Interface_CheckIterator) {.noSideEffect, importcpp: "Start",
    header: "Interface_CheckIterator.hxx".}
proc More*(this: Interface_CheckIterator): Standard_Boolean {.noSideEffect,
    importcpp: "More", header: "Interface_CheckIterator.hxx".}
proc Next*(this: Interface_CheckIterator) {.noSideEffect, importcpp: "Next",
    header: "Interface_CheckIterator.hxx".}
proc Value*(this: Interface_CheckIterator): handle[Interface_Check] {.noSideEffect,
    importcpp: "Value", header: "Interface_CheckIterator.hxx".}
proc Number*(this: Interface_CheckIterator): Standard_Integer {.noSideEffect,
    importcpp: "Number", header: "Interface_CheckIterator.hxx".}
proc Print*(this: Interface_CheckIterator; S: var Standard_OStream;
           failsonly: Standard_Boolean; final: Standard_Integer = 0) {.noSideEffect,
    importcpp: "Print", header: "Interface_CheckIterator.hxx".}
proc Print*(this: Interface_CheckIterator; S: var Standard_OStream;
           model: handle[Interface_InterfaceModel]; failsonly: Standard_Boolean;
           final: Standard_Integer = 0) {.noSideEffect, importcpp: "Print",
                                      header: "Interface_CheckIterator.hxx".}
proc Destroy*(this: var Interface_CheckIterator) {.importcpp: "Destroy",
    header: "Interface_CheckIterator.hxx".}
proc destroyInterface_CheckIterator*(this: var Interface_CheckIterator) {.
    importcpp: "#.~Interface_CheckIterator()",
    header: "Interface_CheckIterator.hxx".}