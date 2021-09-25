##  Created on: 1995-03-08
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

discard "forward decl of Standard_DomainError"
type
  InterfaceMSG* {.importcpp: "Interface_MSG", header: "Interface_MSG.hxx", bycopy.} = object ##
                                                                                     ## !
                                                                                     ## A
                                                                                     ## MSG
                                                                                     ## is
                                                                                     ## created
                                                                                     ## to
                                                                                     ## write
                                                                                     ## a
                                                                                     ## "functional
                                                                                     ## code"
                                                                                     ## in
                                                                                     ## conjunction
                                                                                     ##
                                                                                     ## !
                                                                                     ## with
                                                                                     ## operator
                                                                                     ## ()
                                                                                     ## attached
                                                                                     ## to
                                                                                     ## Value
                                                                                     ##
                                                                                     ## !
                                                                                     ## Then,
                                                                                     ## to
                                                                                     ## have
                                                                                     ## a
                                                                                     ## translated
                                                                                     ## message,
                                                                                     ## write
                                                                                     ## in
                                                                                     ## C++
                                                                                     ## :
                                                                                     ##
                                                                                     ## !
                                                                                     ##
                                                                                     ## !
                                                                                     ## Interface_MSG("...mykey...")
                                                                                     ## which
                                                                                     ## returns
                                                                                     ## a
                                                                                     ## CString
                                                                                     ##
                                                                                     ## !
                                                                                     ## See
                                                                                     ## also
                                                                                     ## some
                                                                                     ## help
                                                                                     ## which
                                                                                     ## follow


proc constructInterfaceMSG*(key: StandardCString): InterfaceMSG {.constructor,
    importcpp: "Interface_MSG(@)", header: "Interface_MSG.hxx".}
proc constructInterfaceMSG*(key: StandardCString; i1: int): InterfaceMSG {.
    constructor, importcpp: "Interface_MSG(@)", header: "Interface_MSG.hxx".}
proc constructInterfaceMSG*(key: StandardCString; i1: int; i2: int): InterfaceMSG {.
    constructor, importcpp: "Interface_MSG(@)", header: "Interface_MSG.hxx".}
proc constructInterfaceMSG*(key: StandardCString; r1: float; intervals: int = -1): InterfaceMSG {.
    constructor, importcpp: "Interface_MSG(@)", header: "Interface_MSG.hxx".}
proc constructInterfaceMSG*(key: StandardCString; str: StandardCString): InterfaceMSG {.
    constructor, importcpp: "Interface_MSG(@)", header: "Interface_MSG.hxx".}
proc constructInterfaceMSG*(key: StandardCString; ival: int; str: StandardCString): InterfaceMSG {.
    constructor, importcpp: "Interface_MSG(@)", header: "Interface_MSG.hxx".}
proc destroy*(this: var InterfaceMSG) {.importcpp: "Destroy",
                                    header: "Interface_MSG.hxx".}
proc destroyInterfaceMSG*(this: var InterfaceMSG) {.importcpp: "#.~Interface_MSG()",
    header: "Interface_MSG.hxx".}
proc value*(this: InterfaceMSG): StandardCString {.noSideEffect, importcpp: "Value",
    header: "Interface_MSG.hxx".}
converter `standardCString`*(this: InterfaceMSG): StandardCString {.noSideEffect,
    importcpp: "Interface_MSG::operator Standard_CString",
    header: "Interface_MSG.hxx".}
proc read*(s: var StandardIStream): int {.importcpp: "Interface_MSG::Read(@)",
                                     header: "Interface_MSG.hxx".}
proc read*(file: StandardCString): int {.importcpp: "Interface_MSG::Read(@)",
                                     header: "Interface_MSG.hxx".}
proc write*(s: var StandardOStream; rootkey: StandardCString = ""): int {.
    importcpp: "Interface_MSG::Write(@)", header: "Interface_MSG.hxx".}
proc isKey*(mess: StandardCString): bool {.importcpp: "Interface_MSG::IsKey(@)",
                                       header: "Interface_MSG.hxx".}
proc translated*(key: StandardCString): StandardCString {.
    importcpp: "Interface_MSG::Translated(@)", header: "Interface_MSG.hxx".}
proc record*(key: StandardCString; item: StandardCString) {.
    importcpp: "Interface_MSG::Record(@)", header: "Interface_MSG.hxx".}
proc setTrace*(toprint: bool; torecord: bool) {.
    importcpp: "Interface_MSG::SetTrace(@)", header: "Interface_MSG.hxx".}
proc setMode*(running: bool; raising: bool) {.importcpp: "Interface_MSG::SetMode(@)",
    header: "Interface_MSG.hxx".}
proc printTrace*(s: var StandardOStream) {.importcpp: "Interface_MSG::PrintTrace(@)",
                                       header: "Interface_MSG.hxx".}
proc intervalled*(val: float; order: int = 3; upper: bool = false): float {.
    importcpp: "Interface_MSG::Intervalled(@)", header: "Interface_MSG.hxx".}
proc tDate*(text: StandardCString; yy: int; mm: int; dd: int; hh: int; mn: int; ss: int;
           format: StandardCString = "") {.importcpp: "Interface_MSG::TDate(@)",
                                       header: "Interface_MSG.hxx".}
proc nDate*(text: StandardCString; yy: var int; mm: var int; dd: var int; hh: var int;
           mn: var int; ss: var int): bool {.importcpp: "Interface_MSG::NDate(@)",
                                      header: "Interface_MSG.hxx".}
proc cDate*(text1: StandardCString; text2: StandardCString): int {.
    importcpp: "Interface_MSG::CDate(@)", header: "Interface_MSG.hxx".}
proc blanks*(val: int; max: int): StandardCString {.
    importcpp: "Interface_MSG::Blanks(@)", header: "Interface_MSG.hxx".}
proc blanks*(val: StandardCString; max: int): StandardCString {.
    importcpp: "Interface_MSG::Blanks(@)", header: "Interface_MSG.hxx".}
proc blanks*(count: int): StandardCString {.importcpp: "Interface_MSG::Blanks(@)",
                                        header: "Interface_MSG.hxx".}
proc print*(s: var StandardOStream; val: StandardCString; max: int; just: int = -1) {.
    importcpp: "Interface_MSG::Print(@)", header: "Interface_MSG.hxx".}
