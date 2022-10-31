import ../../tkernel/standard/standard_types




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


proc newInterfaceMSG*(key: cstring): InterfaceMSG {.cdecl, constructor,
    importcpp: "Interface_MSG(@)", header: "Interface_MSG.hxx".}
proc newInterfaceMSG*(key: cstring; i1: cint): InterfaceMSG {.cdecl, constructor,
    importcpp: "Interface_MSG(@)", header: "Interface_MSG.hxx".}
proc newInterfaceMSG*(key: cstring; i1: cint; i2: cint): InterfaceMSG {.cdecl,
    constructor, importcpp: "Interface_MSG(@)", header: "Interface_MSG.hxx".}
proc newInterfaceMSG*(key: cstring; r1: cfloat; intervals: cint = -1): InterfaceMSG {.
    cdecl, constructor, importcpp: "Interface_MSG(@)", header: "Interface_MSG.hxx".}
proc newInterfaceMSG*(key: cstring; str: cstring): InterfaceMSG {.cdecl, constructor,
    importcpp: "Interface_MSG(@)", header: "Interface_MSG.hxx".}
proc newInterfaceMSG*(key: cstring; ival: cint; str: cstring): InterfaceMSG {.cdecl,
    constructor, importcpp: "Interface_MSG(@)", header: "Interface_MSG.hxx".}
proc destroy*(this: var InterfaceMSG) {.cdecl, importcpp: "Destroy", header: "Interface_MSG.hxx".}
proc destroyInterfaceMSG*(this: var InterfaceMSG) {.cdecl,
    importcpp: "#.~Interface_MSG()", header: "Interface_MSG.hxx".}
proc value*(this: InterfaceMSG): cstring {.noSideEffect, cdecl, importcpp: "Value",
                                       header: "Interface_MSG.hxx".}
converter `cstring`*(this: InterfaceMSG): cstring {.noSideEffect, cdecl,
    importcpp: "Interface_MSG::operator cstring", header: "Interface_MSG.hxx".}
proc read*(s: var StandardIStream): cint {.cdecl, importcpp: "Interface_MSG::Read(@)",
                                      header: "Interface_MSG.hxx".}
proc read*(file: cstring): cint {.cdecl, importcpp: "Interface_MSG::Read(@)",
                              header: "Interface_MSG.hxx".}
proc write*(s: var StandardOStream; rootkey: cstring = ""): cint {.cdecl,
    importcpp: "Interface_MSG::Write(@)", header: "Interface_MSG.hxx".}
proc isKey*(mess: cstring): bool {.cdecl, importcpp: "Interface_MSG::IsKey(@)",
                               header: "Interface_MSG.hxx".}
proc translated*(key: cstring): cstring {.cdecl, importcpp: "Interface_MSG::Translated(@)",
                                      header: "Interface_MSG.hxx".}
proc record*(key: cstring; item: cstring) {.cdecl,
                                       importcpp: "Interface_MSG::Record(@)",
                                       header: "Interface_MSG.hxx".}
proc setTrace*(toprint: bool; torecord: bool) {.cdecl,
    importcpp: "Interface_MSG::SetTrace(@)", header: "Interface_MSG.hxx".}
proc setMode*(running: bool; raising: bool) {.cdecl,
    importcpp: "Interface_MSG::SetMode(@)", header: "Interface_MSG.hxx".}
proc printTrace*(s: var StandardOStream) {.cdecl, importcpp: "Interface_MSG::PrintTrace(@)",
                                       header: "Interface_MSG.hxx".}
proc intervalled*(val: cfloat; order: cint = 3; upper: bool = false): cfloat {.cdecl,
    importcpp: "Interface_MSG::Intervalled(@)", header: "Interface_MSG.hxx".}
proc tDate*(text: cstring; yy: cint; mm: cint; dd: cint; hh: cint; mn: cint; ss: cint;
           format: cstring = "") {.cdecl, importcpp: "Interface_MSG::TDate(@)",
                               header: "Interface_MSG.hxx".}
proc nDate*(text: cstring; yy: var cint; mm: var cint; dd: var cint; hh: var cint;
           mn: var cint; ss: var cint): bool {.cdecl,
                                        importcpp: "Interface_MSG::NDate(@)",
                                        header: "Interface_MSG.hxx".}
proc cDate*(text1: cstring; text2: cstring): cint {.cdecl,
    importcpp: "Interface_MSG::CDate(@)", header: "Interface_MSG.hxx".}
proc blanks*(val: cint; max: cint): cstring {.cdecl,
                                        importcpp: "Interface_MSG::Blanks(@)",
                                        header: "Interface_MSG.hxx".}
proc blanks*(val: cstring; max: cint): cstring {.cdecl,
    importcpp: "Interface_MSG::Blanks(@)", header: "Interface_MSG.hxx".}
proc blanks*(count: cint): cstring {.cdecl, importcpp: "Interface_MSG::Blanks(@)",
                                 header: "Interface_MSG.hxx".}
proc print*(s: var StandardOStream; val: cstring; max: cint; just: cint = -1) {.cdecl,
    importcpp: "Interface_MSG::Print(@)", header: "Interface_MSG.hxx".}

