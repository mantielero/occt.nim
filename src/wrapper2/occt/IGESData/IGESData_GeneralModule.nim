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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  ../Interface/Interface_GeneralModule, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean

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
  Handle_IGESData_GeneralModule* = handle[IGESData_GeneralModule]

## ! Definition of General Services adapted to IGES.
## ! This Services comprise : Shared & Implied Lists, Copy, Check
## ! They are adapted according to the organisation of IGES
## ! Entities : Directory Part, Lists of Associativities and
## ! Properties are specifically processed

type
  IGESData_GeneralModule* {.importcpp: "IGESData_GeneralModule",
                           header: "IGESData_GeneralModule.hxx", bycopy.} = object of Interface_GeneralModule ##
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


proc FillSharedCase*(this: IGESData_GeneralModule; CN: Standard_Integer;
                    ent: handle[Standard_Transient];
                    iter: var Interface_EntityIterator) {.noSideEffect,
    importcpp: "FillSharedCase", header: "IGESData_GeneralModule.hxx".}
proc OwnSharedCase*(this: IGESData_GeneralModule; CN: Standard_Integer;
                   ent: handle[IGESData_IGESEntity];
                   iter: var Interface_EntityIterator) {.noSideEffect,
    importcpp: "OwnSharedCase", header: "IGESData_GeneralModule.hxx".}
proc ListImpliedCase*(this: IGESData_GeneralModule; CN: Standard_Integer;
                     ent: handle[Standard_Transient];
                     iter: var Interface_EntityIterator) {.noSideEffect,
    importcpp: "ListImpliedCase", header: "IGESData_GeneralModule.hxx".}
proc OwnImpliedCase*(this: IGESData_GeneralModule; CN: Standard_Integer;
                    ent: handle[IGESData_IGESEntity];
                    iter: var Interface_EntityIterator) {.noSideEffect,
    importcpp: "OwnImpliedCase", header: "IGESData_GeneralModule.hxx".}
proc CheckCase*(this: IGESData_GeneralModule; CN: Standard_Integer;
               ent: handle[Standard_Transient]; shares: Interface_ShareTool;
               ach: var handle[Interface_Check]) {.noSideEffect,
    importcpp: "CheckCase", header: "IGESData_GeneralModule.hxx".}
proc DirChecker*(this: IGESData_GeneralModule; CN: Standard_Integer;
                ent: handle[IGESData_IGESEntity]): IGESData_DirChecker {.
    noSideEffect, importcpp: "DirChecker", header: "IGESData_GeneralModule.hxx".}
proc OwnCheckCase*(this: IGESData_GeneralModule; CN: Standard_Integer;
                  ent: handle[IGESData_IGESEntity]; shares: Interface_ShareTool;
                  ach: var handle[Interface_Check]) {.noSideEffect,
    importcpp: "OwnCheckCase", header: "IGESData_GeneralModule.hxx".}
proc CanCopy*(this: IGESData_GeneralModule; CN: Standard_Integer;
             ent: handle[Standard_Transient]): Standard_Boolean {.noSideEffect,
    importcpp: "CanCopy", header: "IGESData_GeneralModule.hxx".}
proc NewVoid*(this: IGESData_GeneralModule; CN: Standard_Integer;
             entto: var handle[Standard_Transient]): Standard_Boolean {.
    noSideEffect, importcpp: "NewVoid", header: "IGESData_GeneralModule.hxx".}
proc CopyCase*(this: IGESData_GeneralModule; CN: Standard_Integer;
              entfrom: handle[Standard_Transient];
              entto: handle[Standard_Transient]; TC: var Interface_CopyTool) {.
    noSideEffect, importcpp: "CopyCase", header: "IGESData_GeneralModule.hxx".}
proc OwnCopyCase*(this: IGESData_GeneralModule; CN: Standard_Integer;
                 entfrom: handle[IGESData_IGESEntity];
                 entto: handle[IGESData_IGESEntity]; TC: var Interface_CopyTool) {.
    noSideEffect, importcpp: "OwnCopyCase", header: "IGESData_GeneralModule.hxx".}
proc RenewImpliedCase*(this: IGESData_GeneralModule; CN: Standard_Integer;
                      entfrom: handle[Standard_Transient];
                      entto: handle[Standard_Transient]; TC: Interface_CopyTool) {.
    noSideEffect, importcpp: "RenewImpliedCase",
    header: "IGESData_GeneralModule.hxx".}
proc OwnRenewCase*(this: IGESData_GeneralModule; CN: Standard_Integer;
                  entfrom: handle[IGESData_IGESEntity];
                  entto: handle[IGESData_IGESEntity]; TC: Interface_CopyTool) {.
    noSideEffect, importcpp: "OwnRenewCase", header: "IGESData_GeneralModule.hxx".}
proc WhenDeleteCase*(this: IGESData_GeneralModule; CN: Standard_Integer;
                    ent: handle[Standard_Transient]; dispatched: Standard_Boolean) {.
    noSideEffect, importcpp: "WhenDeleteCase", header: "IGESData_GeneralModule.hxx".}
proc OwnDeleteCase*(this: IGESData_GeneralModule; CN: Standard_Integer;
                   ent: handle[IGESData_IGESEntity]) {.noSideEffect,
    importcpp: "OwnDeleteCase", header: "IGESData_GeneralModule.hxx".}
proc Name*(this: IGESData_GeneralModule; CN: Standard_Integer;
          ent: handle[Standard_Transient]; shares: Interface_ShareTool): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "Name",
                               header: "IGESData_GeneralModule.hxx".}
type
  IGESData_GeneralModulebase_type* = Interface_GeneralModule

proc get_type_name*(): cstring {.importcpp: "IGESData_GeneralModule::get_type_name(@)",
                              header: "IGESData_GeneralModule.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESData_GeneralModule::get_type_descriptor(@)",
    header: "IGESData_GeneralModule.hxx".}
proc DynamicType*(this: IGESData_GeneralModule): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESData_GeneralModule.hxx".}