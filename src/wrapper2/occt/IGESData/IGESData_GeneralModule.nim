##  Created on: 1993-05-10
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

discard "forward decl of Standard_Transient"
discard "forward decl of Interface_EntityIterator"
discard "forward decl of IGESData_IGESEntity"
discard "forward decl of Interface_ShareTool"
discard "forward decl of Interface_Check"
discard "forward decl of IGESData_DirChecker"
discard "forward decl of Interface_CopyTool"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of IGESData_GeneralModule"
discard "forward decl of IGESData_GeneralModule"
type
  HandleIGESDataGeneralModule* = Handle[IGESDataGeneralModule]

## ! Definition of General Services adapted to IGES.
## ! This Services comprise : Shared & Implied Lists, Copy, Check
## ! They are adapted according to the organisation of IGES
## ! Entities : Directory Part, Lists of Associativities and
## ! Properties are specifically processed

type
  IGESDataGeneralModule* {.importcpp: "IGESData_GeneralModule",
                          header: "IGESData_GeneralModule.hxx", bycopy.} = object of InterfaceGeneralModule ##
                                                                                                     ## !
                                                                                                     ## Fills
                                                                                                     ## the
                                                                                                     ## list
                                                                                                     ## of
                                                                                                     ## Entities
                                                                                                     ## shared
                                                                                                     ## by
                                                                                                     ## an
                                                                                                     ## IGESEntity
                                                                                                     ## <ent>,
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## according
                                                                                                     ## a
                                                                                                     ## Case
                                                                                                     ## Number
                                                                                                     ## <CN>
                                                                                                     ## (formerly
                                                                                                     ## computed
                                                                                                     ## by
                                                                                                     ## CaseNum).
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## Considers
                                                                                                     ## Properties
                                                                                                     ## and
                                                                                                     ## Directory
                                                                                                     ## Part,
                                                                                                     ## and
                                                                                                     ## calls
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## OwnSharedCase
                                                                                                     ## (which
                                                                                                     ## is
                                                                                                     ## adapted
                                                                                                     ## to
                                                                                                     ## each
                                                                                                     ## Type
                                                                                                     ## of
                                                                                                     ## Entity)


proc fillSharedCase*(this: IGESDataGeneralModule; cn: StandardInteger;
                    ent: Handle[StandardTransient];
                    iter: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "FillSharedCase", header: "IGESData_GeneralModule.hxx".}
proc ownSharedCase*(this: IGESDataGeneralModule; cn: StandardInteger;
                   ent: Handle[IGESDataIGESEntity];
                   iter: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "OwnSharedCase", header: "IGESData_GeneralModule.hxx".}
proc listImpliedCase*(this: IGESDataGeneralModule; cn: StandardInteger;
                     ent: Handle[StandardTransient];
                     iter: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "ListImpliedCase", header: "IGESData_GeneralModule.hxx".}
proc ownImpliedCase*(this: IGESDataGeneralModule; cn: StandardInteger;
                    ent: Handle[IGESDataIGESEntity];
                    iter: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "OwnImpliedCase", header: "IGESData_GeneralModule.hxx".}
proc checkCase*(this: IGESDataGeneralModule; cn: StandardInteger;
               ent: Handle[StandardTransient]; shares: InterfaceShareTool;
               ach: var Handle[InterfaceCheck]) {.noSideEffect,
    importcpp: "CheckCase", header: "IGESData_GeneralModule.hxx".}
proc dirChecker*(this: IGESDataGeneralModule; cn: StandardInteger;
                ent: Handle[IGESDataIGESEntity]): IGESDataDirChecker {.
    noSideEffect, importcpp: "DirChecker", header: "IGESData_GeneralModule.hxx".}
proc ownCheckCase*(this: IGESDataGeneralModule; cn: StandardInteger;
                  ent: Handle[IGESDataIGESEntity]; shares: InterfaceShareTool;
                  ach: var Handle[InterfaceCheck]) {.noSideEffect,
    importcpp: "OwnCheckCase", header: "IGESData_GeneralModule.hxx".}
proc canCopy*(this: IGESDataGeneralModule; cn: StandardInteger;
             ent: Handle[StandardTransient]): StandardBoolean {.noSideEffect,
    importcpp: "CanCopy", header: "IGESData_GeneralModule.hxx".}
proc newVoid*(this: IGESDataGeneralModule; cn: StandardInteger;
             entto: var Handle[StandardTransient]): StandardBoolean {.noSideEffect,
    importcpp: "NewVoid", header: "IGESData_GeneralModule.hxx".}
proc copyCase*(this: IGESDataGeneralModule; cn: StandardInteger;
              entfrom: Handle[StandardTransient];
              entto: Handle[StandardTransient]; tc: var InterfaceCopyTool) {.
    noSideEffect, importcpp: "CopyCase", header: "IGESData_GeneralModule.hxx".}
proc ownCopyCase*(this: IGESDataGeneralModule; cn: StandardInteger;
                 entfrom: Handle[IGESDataIGESEntity];
                 entto: Handle[IGESDataIGESEntity]; tc: var InterfaceCopyTool) {.
    noSideEffect, importcpp: "OwnCopyCase", header: "IGESData_GeneralModule.hxx".}
proc renewImpliedCase*(this: IGESDataGeneralModule; cn: StandardInteger;
                      entfrom: Handle[StandardTransient];
                      entto: Handle[StandardTransient]; tc: InterfaceCopyTool) {.
    noSideEffect, importcpp: "RenewImpliedCase",
    header: "IGESData_GeneralModule.hxx".}
proc ownRenewCase*(this: IGESDataGeneralModule; cn: StandardInteger;
                  entfrom: Handle[IGESDataIGESEntity];
                  entto: Handle[IGESDataIGESEntity]; tc: InterfaceCopyTool) {.
    noSideEffect, importcpp: "OwnRenewCase", header: "IGESData_GeneralModule.hxx".}
proc whenDeleteCase*(this: IGESDataGeneralModule; cn: StandardInteger;
                    ent: Handle[StandardTransient]; dispatched: StandardBoolean) {.
    noSideEffect, importcpp: "WhenDeleteCase", header: "IGESData_GeneralModule.hxx".}
proc ownDeleteCase*(this: IGESDataGeneralModule; cn: StandardInteger;
                   ent: Handle[IGESDataIGESEntity]) {.noSideEffect,
    importcpp: "OwnDeleteCase", header: "IGESData_GeneralModule.hxx".}
proc name*(this: IGESDataGeneralModule; cn: StandardInteger;
          ent: Handle[StandardTransient]; shares: InterfaceShareTool): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "Name",
                              header: "IGESData_GeneralModule.hxx".}
type
  IGESDataGeneralModulebaseType* = InterfaceGeneralModule

proc getTypeName*(): cstring {.importcpp: "IGESData_GeneralModule::get_type_name(@)",
                            header: "IGESData_GeneralModule.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESData_GeneralModule::get_type_descriptor(@)",
    header: "IGESData_GeneralModule.hxx".}
proc dynamicType*(this: IGESDataGeneralModule): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESData_GeneralModule.hxx".}

