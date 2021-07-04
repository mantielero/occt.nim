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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Transient,
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean

discard "forward decl of Interface_InterfaceModel"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_EntityIterator"
discard "forward decl of Interface_ShareTool"
discard "forward decl of Interface_Check"
discard "forward decl of Interface_CopyTool"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of Interface_GeneralModule"
discard "forward decl of Interface_GeneralModule"
type
  Handle_Interface_GeneralModule* = handle[Interface_GeneralModule]

## ! This class defines general services, which must be provided
## ! for each type of Entity (i.e. of Transient Object processed
## ! by an Interface) : Shared List, Check, Copy, Delete, Category
## !
## ! To optimise processing (e.g. firstly bind an Entity to a Module
## ! then calls  Module), each recognized Entity Type corresponds
## ! to a Case Number, determined by the Protocol each class of
## ! GeneralModule belongs to.

type
  Interface_GeneralModule* {.importcpp: "Interface_GeneralModule",
                            header: "Interface_GeneralModule.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                    ## !
                                                                                                    ## Specific
                                                                                                    ## filling
                                                                                                    ## of
                                                                                                    ## the
                                                                                                    ## list
                                                                                                    ## of
                                                                                                    ## Entities
                                                                                                    ## shared
                                                                                                    ## by
                                                                                                    ## an
                                                                                                    ## Entity
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## <ent>,
                                                                                                    ## according
                                                                                                    ## a
                                                                                                    ## Case
                                                                                                    ## Number
                                                                                                    ## <CN>
                                                                                                    ## (formerly
                                                                                                    ## computed
                                                                                                    ## by
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## CaseNum),
                                                                                                    ## considered
                                                                                                    ## in
                                                                                                    ## the
                                                                                                    ## context
                                                                                                    ## of
                                                                                                    ## a
                                                                                                    ## Model
                                                                                                    ## <model>
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## Default
                                                                                                    ## calls
                                                                                                    ## FillSharedCase
                                                                                                    ## (i.e.,
                                                                                                    ## ignores
                                                                                                    ## the
                                                                                                    ## model)
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## Can
                                                                                                    ## be
                                                                                                    ## redefined
                                                                                                    ## to
                                                                                                    ## use
                                                                                                    ## the
                                                                                                    ## model
                                                                                                    ## for
                                                                                                    ## working


proc FillShared*(this: Interface_GeneralModule;
                model: handle[Interface_InterfaceModel]; CN: Standard_Integer;
                ent: handle[Standard_Transient];
                iter: var Interface_EntityIterator) {.noSideEffect,
    importcpp: "FillShared", header: "Interface_GeneralModule.hxx".}
proc FillSharedCase*(this: Interface_GeneralModule; CN: Standard_Integer;
                    ent: handle[Standard_Transient];
                    iter: var Interface_EntityIterator) {.noSideEffect,
    importcpp: "FillSharedCase", header: "Interface_GeneralModule.hxx".}
proc Share*(this: Interface_GeneralModule; iter: var Interface_EntityIterator;
           shared: handle[Standard_Transient]) {.noSideEffect, importcpp: "Share",
    header: "Interface_GeneralModule.hxx".}
proc ListImplied*(this: Interface_GeneralModule;
                 model: handle[Interface_InterfaceModel]; CN: Standard_Integer;
                 ent: handle[Standard_Transient];
                 iter: var Interface_EntityIterator) {.noSideEffect,
    importcpp: "ListImplied", header: "Interface_GeneralModule.hxx".}
proc ListImpliedCase*(this: Interface_GeneralModule; CN: Standard_Integer;
                     ent: handle[Standard_Transient];
                     iter: var Interface_EntityIterator) {.noSideEffect,
    importcpp: "ListImpliedCase", header: "Interface_GeneralModule.hxx".}
proc CheckCase*(this: Interface_GeneralModule; CN: Standard_Integer;
               ent: handle[Standard_Transient]; shares: Interface_ShareTool;
               ach: var handle[Interface_Check]) {.noSideEffect,
    importcpp: "CheckCase", header: "Interface_GeneralModule.hxx".}
proc CanCopy*(this: Interface_GeneralModule; CN: Standard_Integer;
             ent: handle[Standard_Transient]): Standard_Boolean {.noSideEffect,
    importcpp: "CanCopy", header: "Interface_GeneralModule.hxx".}
proc Dispatch*(this: Interface_GeneralModule; CN: Standard_Integer;
              entfrom: handle[Standard_Transient];
              entto: var handle[Standard_Transient]; TC: var Interface_CopyTool): Standard_Boolean {.
    noSideEffect, importcpp: "Dispatch", header: "Interface_GeneralModule.hxx".}
proc NewVoid*(this: Interface_GeneralModule; CN: Standard_Integer;
             entto: var handle[Standard_Transient]): Standard_Boolean {.
    noSideEffect, importcpp: "NewVoid", header: "Interface_GeneralModule.hxx".}
proc CopyCase*(this: Interface_GeneralModule; CN: Standard_Integer;
              entfrom: handle[Standard_Transient];
              entto: handle[Standard_Transient]; TC: var Interface_CopyTool) {.
    noSideEffect, importcpp: "CopyCase", header: "Interface_GeneralModule.hxx".}
proc NewCopiedCase*(this: Interface_GeneralModule; CN: Standard_Integer;
                   entfrom: handle[Standard_Transient];
                   entto: var handle[Standard_Transient];
                   TC: var Interface_CopyTool): Standard_Boolean {.noSideEffect,
    importcpp: "NewCopiedCase", header: "Interface_GeneralModule.hxx".}
proc RenewImpliedCase*(this: Interface_GeneralModule; CN: Standard_Integer;
                      entfrom: handle[Standard_Transient];
                      entto: handle[Standard_Transient]; TC: Interface_CopyTool) {.
    noSideEffect, importcpp: "RenewImpliedCase",
    header: "Interface_GeneralModule.hxx".}
proc WhenDeleteCase*(this: Interface_GeneralModule; CN: Standard_Integer;
                    ent: handle[Standard_Transient]; dispatched: Standard_Boolean) {.
    noSideEffect, importcpp: "WhenDeleteCase",
    header: "Interface_GeneralModule.hxx".}
proc CategoryNumber*(this: Interface_GeneralModule; CN: Standard_Integer;
                    ent: handle[Standard_Transient]; shares: Interface_ShareTool): Standard_Integer {.
    noSideEffect, importcpp: "CategoryNumber",
    header: "Interface_GeneralModule.hxx".}
proc Name*(this: Interface_GeneralModule; CN: Standard_Integer;
          ent: handle[Standard_Transient]; shares: Interface_ShareTool): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "Name",
                               header: "Interface_GeneralModule.hxx".}
type
  Interface_GeneralModulebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Interface_GeneralModule::get_type_name(@)",
                              header: "Interface_GeneralModule.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Interface_GeneralModule::get_type_descriptor(@)",
    header: "Interface_GeneralModule.hxx".}
proc DynamicType*(this: Interface_GeneralModule): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "Interface_GeneralModule.hxx".}