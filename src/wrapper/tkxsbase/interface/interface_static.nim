import interface_types

import ../../tkernel/standard/standard_types
import ../../tkernel/tcolstd/tcolstd_types




##  Created on: 1995-12-08
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





proc newInterfaceStatic*(family: cstring; name: cstring;
                        `type`: InterfaceParamType = interfaceParamText;
                        init: cstring = ""): InterfaceStatic {.cdecl, constructor,
    importcpp: "Interface_Static(@)", header: "Interface_Static.hxx".}
proc newInterfaceStatic*(family: cstring; name: cstring;
                        other: Handle[InterfaceStatic]): InterfaceStatic {.cdecl,
    constructor, importcpp: "Interface_Static(@)", header: "Interface_Static.hxx".}
proc printStatic*(this: InterfaceStatic; s: var StandardOStream) {.noSideEffect, cdecl,
    importcpp: "PrintStatic", header: "Interface_Static.hxx".}
proc family*(this: InterfaceStatic): cstring {.noSideEffect, cdecl,
    importcpp: "Family", header: "Interface_Static.hxx".}
proc setWild*(this: var InterfaceStatic; wildcard: Handle[InterfaceStatic]) {.cdecl,
    importcpp: "SetWild", header: "Interface_Static.hxx".}
proc wild*(this: InterfaceStatic): Handle[InterfaceStatic] {.noSideEffect, cdecl,
    importcpp: "Wild", header: "Interface_Static.hxx".}
proc setUptodate*(this: var InterfaceStatic) {.cdecl, importcpp: "SetUptodate",
    header: "Interface_Static.hxx".}
proc updatedStatus*(this: InterfaceStatic): bool {.noSideEffect, cdecl,
    importcpp: "UpdatedStatus", header: "Interface_Static.hxx".}
proc init*(family: cstring; name: cstring; `type`: InterfaceParamType;
          init: cstring = ""): bool {.cdecl, importcpp: "Interface_Static::Init(@)",
                                 header: "Interface_Static.hxx".}
proc init*(family: cstring; name: cstring; `type`: cchar; init: cstring = ""): bool {.cdecl,
    importcpp: "Interface_Static::Init(@)", header: "Interface_Static.hxx".}
proc `static`*(name: cstring): Handle[InterfaceStatic] {.cdecl,
    importcpp: "Interface_Static::Static(@)", header: "Interface_Static.hxx".}
proc isPresent*(name: cstring): bool {.cdecl,
                                   importcpp: "Interface_Static::IsPresent(@)",
                                   header: "Interface_Static.hxx".}
proc cDef*(name: cstring; part: cstring): cstring {.cdecl,
    importcpp: "Interface_Static::CDef(@)", header: "Interface_Static.hxx".}
proc iDef*(name: cstring; part: cstring): cint {.cdecl,
    importcpp: "Interface_Static::IDef(@)", header: "Interface_Static.hxx".}
proc isSet*(name: cstring; proper: bool = true): bool {.cdecl,
    importcpp: "Interface_Static::IsSet(@)", header: "Interface_Static.hxx".}
proc cVal*(name: cstring): cstring {.cdecl, importcpp: "Interface_Static::CVal(@)",
                                 header: "Interface_Static.hxx".}
proc iVal*(name: cstring): cint {.cdecl, importcpp: "Interface_Static::IVal(@)",
                              header: "Interface_Static.hxx".}
proc rVal*(name: cstring): cfloat {.cdecl, importcpp: "Interface_Static::RVal(@)",
                                header: "Interface_Static.hxx".}
proc setCVal*(name: cstring; val: cstring): bool {.cdecl,
    importcpp: "Interface_Static::SetCVal(@)", header: "Interface_Static.hxx".}
proc setIVal*(name: cstring; val: cint): bool {.cdecl,
    importcpp: "Interface_Static::SetIVal(@)", header: "Interface_Static.hxx".}
proc setRVal*(name: cstring; val: cfloat): bool {.cdecl,
    importcpp: "Interface_Static::SetRVal(@)", header: "Interface_Static.hxx".}
proc update*(name: cstring): bool {.cdecl, importcpp: "Interface_Static::Update(@)",
                                header: "Interface_Static.hxx".}
proc isUpdated*(name: cstring): bool {.cdecl,
                                   importcpp: "Interface_Static::IsUpdated(@)",
                                   header: "Interface_Static.hxx".}
proc items*(mode: cint = 0; criter: cstring = ""): Handle[TColStdHSequenceOfHAsciiString] {.
    cdecl, importcpp: "Interface_Static::Items(@)", header: "Interface_Static.hxx".}
proc standards*() {.cdecl, importcpp: "Interface_Static::Standards(@)",
                  header: "Interface_Static.hxx".}


