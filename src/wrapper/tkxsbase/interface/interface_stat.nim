import interface_types
import ../../tkernel/tcollection/tcollection_types
import ../../tkernel/standard/standard_types
import ../../tkernel/tcolstd/tcolstd_types







##  Created on: 1996-02-15
##  Created by: Christian CAILLET
##  Copyright (c) 1996-1999 Matra Datavision
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



proc newInterfaceSTAT*(title: cstring = ""): InterfaceSTAT {.cdecl, constructor,
    importcpp: "Interface_STAT(@)", header: "Interface_STAT.hxx".}
proc newInterfaceSTAT*(other: InterfaceSTAT): InterfaceSTAT {.cdecl, constructor,
    importcpp: "Interface_STAT(@)", header: "Interface_STAT.hxx".}
proc internals*(this: InterfaceSTAT; tit: var Handle[TCollectionHAsciiString];
               total: var cfloat; phn: var Handle[TColStdHSequenceOfAsciiString];
               phw: var Handle[TColStdHSequenceOfReal];
               phdeb: var Handle[TColStdHSequenceOfInteger];
               phfin: var Handle[TColStdHSequenceOfInteger];
               stw: var Handle[TColStdHSequenceOfReal]) {.noSideEffect, cdecl,
    importcpp: "Internals", header: "Interface_STAT.hxx".}
proc addPhase*(this: var InterfaceSTAT; weight: cfloat; name: cstring = "") {.cdecl,
    importcpp: "AddPhase", header: "Interface_STAT.hxx".}
proc addStep*(this: var InterfaceSTAT; weight: cfloat = 1) {.cdecl, importcpp: "AddStep",
    header: "Interface_STAT.hxx".}
proc description*(this: InterfaceSTAT; nbphases: var cint; total: var cfloat;
                 title: var cstring) {.noSideEffect, cdecl, importcpp: "Description",
                                    header: "Interface_STAT.hxx".}
proc phase*(this: InterfaceSTAT; num: cint; n0step: var cint; nbstep: var cint;
           weight: var cfloat; name: var cstring) {.noSideEffect, cdecl,
    importcpp: "Phase", header: "Interface_STAT.hxx".}
proc step*(this: InterfaceSTAT; num: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "Step", header: "Interface_STAT.hxx".}
proc start*(this: InterfaceSTAT; items: cint; cycles: cint = 1) {.noSideEffect, cdecl,
    importcpp: "Start", header: "Interface_STAT.hxx".}
proc startCount*(items: cint; title: cstring = "") {.cdecl,
    importcpp: "Interface_STAT::StartCount(@)", header: "Interface_STAT.hxx".}
proc nextPhase*(items: cint; cycles: cint = 1) {.cdecl,
    importcpp: "Interface_STAT::NextPhase(@)", header: "Interface_STAT.hxx".}
proc setPhase*(items: cint; cycles: cint = 1) {.cdecl,
    importcpp: "Interface_STAT::SetPhase(@)", header: "Interface_STAT.hxx".}
proc nextCycle*(items: cint) {.cdecl, importcpp: "Interface_STAT::NextCycle(@)",
                            header: "Interface_STAT.hxx".}
proc nextStep*() {.cdecl, importcpp: "Interface_STAT::NextStep(@)", header: "Interface_STAT.hxx".}
proc nextItem*(nbitems: cint = 1) {.cdecl, importcpp: "Interface_STAT::NextItem(@)",
                               header: "Interface_STAT.hxx".}
proc `end`*() {.cdecl, importcpp: "Interface_STAT::End(@)", header: "Interface_STAT.hxx".}
proc where*(phase: bool = true): cstring {.cdecl,
                                     importcpp: "Interface_STAT::Where(@)",
                                     header: "Interface_STAT.hxx".}
proc percent*(phase: bool = false): cint {.cdecl,
                                     importcpp: "Interface_STAT::Percent(@)",
                                     header: "Interface_STAT.hxx".}



