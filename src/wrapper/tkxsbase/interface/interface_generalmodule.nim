import interface_types

import ../../tkernel/tcollection/tcollection_types
import ../../tkernel/standard/standard_types




##  Created on: 1993-02-02
##  Created by: Christian CAILLET
##  Copyright (c) 1993-1999 Matra Datavision
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





proc fillShared*(this: InterfaceGeneralModule;
                model: Handle[InterfaceInterfaceModel]; cn: cint;
                ent: Handle[StandardTransient]; iter: var InterfaceEntityIterator) {.
    noSideEffect, cdecl, importcpp: "FillShared", header: "Interface_GeneralModule.hxx".}
proc fillSharedCase*(this: InterfaceGeneralModule; cn: cint;
                    ent: Handle[StandardTransient];
                    iter: var InterfaceEntityIterator) {.noSideEffect, cdecl,
    importcpp: "FillSharedCase", header: "Interface_GeneralModule.hxx".}
proc share*(this: InterfaceGeneralModule; iter: var InterfaceEntityIterator;
           shared: Handle[StandardTransient]) {.noSideEffect, cdecl,
    importcpp: "Share", header: "Interface_GeneralModule.hxx".}
proc listImplied*(this: InterfaceGeneralModule;
                 model: Handle[InterfaceInterfaceModel]; cn: cint;
                 ent: Handle[StandardTransient]; iter: var InterfaceEntityIterator) {.
    noSideEffect, cdecl, importcpp: "ListImplied", header: "Interface_GeneralModule.hxx".}
proc listImpliedCase*(this: InterfaceGeneralModule; cn: cint;
                     ent: Handle[StandardTransient];
                     iter: var InterfaceEntityIterator) {.noSideEffect, cdecl,
    importcpp: "ListImpliedCase", header: "Interface_GeneralModule.hxx".}
proc checkCase*(this: InterfaceGeneralModule; cn: cint;
               ent: Handle[StandardTransient]; shares: InterfaceShareTool;
               ach: var Handle[InterfaceCheck]) {.noSideEffect, cdecl,
    importcpp: "CheckCase", header: "Interface_GeneralModule.hxx".}
proc canCopy*(this: InterfaceGeneralModule; cn: cint; ent: Handle[StandardTransient]): bool {.
    noSideEffect, cdecl, importcpp: "CanCopy", header: "Interface_GeneralModule.hxx".}
proc dispatch*(this: InterfaceGeneralModule; cn: cint;
              entfrom: Handle[StandardTransient];
              entto: var Handle[StandardTransient]; tc: var InterfaceCopyTool): bool {.
    noSideEffect, cdecl, importcpp: "Dispatch", header: "Interface_GeneralModule.hxx".}
proc newVoid*(this: InterfaceGeneralModule; cn: cint;
             entto: var Handle[StandardTransient]): bool {.noSideEffect, cdecl,
    importcpp: "NewVoid", header: "Interface_GeneralModule.hxx".}
proc copyCase*(this: InterfaceGeneralModule; cn: cint;
              entfrom: Handle[StandardTransient];
              entto: Handle[StandardTransient]; tc: var InterfaceCopyTool) {.
    noSideEffect, cdecl, importcpp: "CopyCase", header: "Interface_GeneralModule.hxx".}
proc newCopiedCase*(this: InterfaceGeneralModule; cn: cint;
                   entfrom: Handle[StandardTransient];
                   entto: var Handle[StandardTransient]; tc: var InterfaceCopyTool): bool {.
    noSideEffect, cdecl, importcpp: "NewCopiedCase", header: "Interface_GeneralModule.hxx".}
proc renewImpliedCase*(this: InterfaceGeneralModule; cn: cint;
                      entfrom: Handle[StandardTransient];
                      entto: Handle[StandardTransient]; tc: InterfaceCopyTool) {.
    noSideEffect, cdecl, importcpp: "RenewImpliedCase", header: "Interface_GeneralModule.hxx".}
proc whenDeleteCase*(this: InterfaceGeneralModule; cn: cint;
                    ent: Handle[StandardTransient]; dispatched: bool) {.
    noSideEffect, cdecl, importcpp: "WhenDeleteCase", header: "Interface_GeneralModule.hxx".}
proc categoryNumber*(this: InterfaceGeneralModule; cn: cint;
                    ent: Handle[StandardTransient]; shares: InterfaceShareTool): cint {.
    noSideEffect, cdecl, importcpp: "CategoryNumber", header: "Interface_GeneralModule.hxx".}
proc name*(this: InterfaceGeneralModule; cn: cint; ent: Handle[StandardTransient];
          shares: InterfaceShareTool): Handle[TCollectionHAsciiString] {.
    noSideEffect, cdecl, importcpp: "Name", header: "Interface_GeneralModule.hxx".}


