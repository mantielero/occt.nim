##  Created on: 1994-06-16
##  Created by: EXPRESS->CDL V0.2 Translator
##  Copyright (c) 1994-1999 Matra Datavision
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

discard "forward decl of Standard_Transient"
discard "forward decl of Interface_EntityIterator"
discard "forward decl of Interface_ShareTool"
discard "forward decl of Interface_Check"
discard "forward decl of Interface_CopyTool"
discard "forward decl of RWHeaderSection_GeneralModule"
discard "forward decl of RWHeaderSection_GeneralModule"
type
  HandleC1C1* = Handle[RWHeaderSectionGeneralModule]

## ! Defines General Services for HeaderSection Entities
## ! (Share,Check,Copy; Trace already inherited)
## ! Depends (for case numbers) of Protocol from HeaderSection

type
  RWHeaderSectionGeneralModule* {.importcpp: "RWHeaderSection_GeneralModule",
                                 header: "RWHeaderSection_GeneralModule.hxx",
                                 bycopy.} = object of StepDataGeneralModule ## ! Creates a
                                                                       ## GeneralModule


proc constructRWHeaderSectionGeneralModule*(): RWHeaderSectionGeneralModule {.
    constructor, importcpp: "RWHeaderSection_GeneralModule(@)",
    header: "RWHeaderSection_GeneralModule.hxx".}
proc fillSharedCase*(this: RWHeaderSectionGeneralModule; cn: cint;
                    ent: Handle[StandardTransient];
                    iter: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "FillSharedCase", header: "RWHeaderSection_GeneralModule.hxx".}
proc checkCase*(this: RWHeaderSectionGeneralModule; cn: cint;
               ent: Handle[StandardTransient]; shares: InterfaceShareTool;
               ach: var Handle[InterfaceCheck]) {.noSideEffect,
    importcpp: "CheckCase", header: "RWHeaderSection_GeneralModule.hxx".}
proc copyCase*(this: RWHeaderSectionGeneralModule; cn: cint;
              entfrom: Handle[StandardTransient];
              entto: Handle[StandardTransient]; tc: var InterfaceCopyTool) {.
    noSideEffect, importcpp: "CopyCase",
    header: "RWHeaderSection_GeneralModule.hxx".}
proc newVoid*(this: RWHeaderSectionGeneralModule; cn: cint;
             ent: var Handle[StandardTransient]): bool {.noSideEffect,
    importcpp: "NewVoid", header: "RWHeaderSection_GeneralModule.hxx".}
type
  RWHeaderSectionGeneralModulebaseType* = StepDataGeneralModule

proc getTypeName*(): cstring {.importcpp: "RWHeaderSection_GeneralModule::get_type_name(@)",
                            header: "RWHeaderSection_GeneralModule.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "RWHeaderSection_GeneralModule::get_type_descriptor(@)",
    header: "RWHeaderSection_GeneralModule.hxx".}
proc dynamicType*(this: RWHeaderSectionGeneralModule): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "RWHeaderSection_GeneralModule.hxx".}

























