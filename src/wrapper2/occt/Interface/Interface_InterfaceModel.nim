##  Created by: Christian CAILLET <cky@phobox>
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
  ../Standard/Standard, ../Standard/Standard_Type,
  ../TColStd/TColStd_IndexedMapOfTransient,
  ../TColStd/TColStd_DataMapOfIntegerTransient, ../Standard/Standard_Boolean,
  ../Standard/Standard_Transient, ../Standard/Standard_Integer,
  ../Standard/Standard_Type, ../Standard/Standard_CString, Interface_DataState,
  ../TColStd/TColStd_HSequenceOfHAsciiString

discard "forward decl of Interface_Check"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of Interface_GTool"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Interface_InterfaceMismatch"
discard "forward decl of Interface_Protocol"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_ReportEntity"
discard "forward decl of Interface_CheckIterator"
discard "forward decl of Interface_GeneralLib"
discard "forward decl of Interface_EntityIterator"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of Interface_InterfaceModel"
type
  Handle_Interface_InterfaceModel* = handle[Interface_InterfaceModel]

## ! Defines an (Indexed) Set of data corresponding to a complete
## ! Transfer by a File Interface, i.e. File Header and Transient
## ! Entities (Objects) contained in a File. Contained Entities are
## ! identified in the Model by unique and consecutive Numbers.
## !
## ! In addition, a Model can attach to each entity, a specific
## ! Label according to the norm (e.g. Name for VDA, #ident for
## ! Step ...), intended to be output on a string or a stream
## ! (remark : labels are not obliged to be unique)
## !
## ! InterfaceModel itself is not Transient, it is intended to
## ! work on a set of Transient Data. The services offered are
## ! basic Listing and Identification operations on Transient
## ! Entities, storage of Error Reports, Copying.
## !
## ! Moreovere, it is possible to define and use templates. These
## ! are empty Models, from which copies can be obtained in order
## ! to be filled with effective data. This allows to record
## ! standard definitions for headers, avoiding to recreate them
## ! for each sendings, and assuring customisation of produced
## ! files for a given site.
## ! A template is attached to a name. It is possible to define a
## ! template from another one (get it, edit it then record it
## ! under another name).
## !
## ! See also Graph, ShareTool, CheckTool for more

type
  Interface_InterfaceModel* {.importcpp: "Interface_InterfaceModel",
                             header: "Interface_InterfaceModel.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                      ## !
                                                                                                      ## Clears
                                                                                                      ## the
                                                                                                      ## list
                                                                                                      ## of
                                                                                                      ## entities
                                                                                                      ## (service
                                                                                                      ## WhenDelete)
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## Defines
                                                                                                      ## empty
                                                                                                      ## InterfaceModel,
                                                                                                      ## ready
                                                                                                      ## to
                                                                                                      ## be
                                                                                                      ## filled


proc Destroy*(this: var Interface_InterfaceModel) {.importcpp: "Destroy",
    header: "Interface_InterfaceModel.hxx".}
proc destroyInterface_InterfaceModel*(this: var Interface_InterfaceModel) {.
    importcpp: "#.~Interface_InterfaceModel()",
    header: "Interface_InterfaceModel.hxx".}
proc SetProtocol*(this: var Interface_InterfaceModel;
                 proto: handle[Interface_Protocol]) {.importcpp: "SetProtocol",
    header: "Interface_InterfaceModel.hxx".}
proc Protocol*(this: Interface_InterfaceModel): handle[Interface_Protocol] {.
    noSideEffect, importcpp: "Protocol", header: "Interface_InterfaceModel.hxx".}
proc SetGTool*(this: var Interface_InterfaceModel; gtool: handle[Interface_GTool]) {.
    importcpp: "SetGTool", header: "Interface_InterfaceModel.hxx".}
proc GTool*(this: Interface_InterfaceModel): handle[Interface_GTool] {.noSideEffect,
    importcpp: "GTool", header: "Interface_InterfaceModel.hxx".}
proc DispatchStatus*(this: var Interface_InterfaceModel): var Standard_Boolean {.
    importcpp: "DispatchStatus", header: "Interface_InterfaceModel.hxx".}
proc Clear*(this: var Interface_InterfaceModel) {.importcpp: "Clear",
    header: "Interface_InterfaceModel.hxx".}
proc ClearEntities*(this: var Interface_InterfaceModel) {.
    importcpp: "ClearEntities", header: "Interface_InterfaceModel.hxx".}
proc ClearLabels*(this: var Interface_InterfaceModel) {.importcpp: "ClearLabels",
    header: "Interface_InterfaceModel.hxx".}
proc ClearHeader*(this: var Interface_InterfaceModel) {.importcpp: "ClearHeader",
    header: "Interface_InterfaceModel.hxx".}
proc NbEntities*(this: Interface_InterfaceModel): Standard_Integer {.noSideEffect,
    importcpp: "NbEntities", header: "Interface_InterfaceModel.hxx".}
proc Contains*(this: Interface_InterfaceModel; anentity: handle[Standard_Transient]): Standard_Boolean {.
    noSideEffect, importcpp: "Contains", header: "Interface_InterfaceModel.hxx".}
proc Number*(this: Interface_InterfaceModel; anentity: handle[Standard_Transient]): Standard_Integer {.
    noSideEffect, importcpp: "Number", header: "Interface_InterfaceModel.hxx".}
proc Value*(this: Interface_InterfaceModel; num: Standard_Integer): handle[
    Standard_Transient] {.noSideEffect, importcpp: "Value",
                         header: "Interface_InterfaceModel.hxx".}
proc NbTypes*(this: Interface_InterfaceModel; ent: handle[Standard_Transient]): Standard_Integer {.
    noSideEffect, importcpp: "NbTypes", header: "Interface_InterfaceModel.hxx".}
proc Type*(this: Interface_InterfaceModel; ent: handle[Standard_Transient];
          num: Standard_Integer = 1): handle[Standard_Type] {.noSideEffect,
    importcpp: "Type", header: "Interface_InterfaceModel.hxx".}
proc TypeName*(this: Interface_InterfaceModel; ent: handle[Standard_Transient];
              complete: Standard_Boolean = Standard_True): Standard_CString {.
    noSideEffect, importcpp: "TypeName", header: "Interface_InterfaceModel.hxx".}
proc ClassName*(typnam: Standard_CString): Standard_CString {.
    importcpp: "Interface_InterfaceModel::ClassName(@)",
    header: "Interface_InterfaceModel.hxx".}
proc EntityState*(this: Interface_InterfaceModel; num: Standard_Integer): Interface_DataState {.
    noSideEffect, importcpp: "EntityState", header: "Interface_InterfaceModel.hxx".}
proc IsReportEntity*(this: Interface_InterfaceModel; num: Standard_Integer;
                    semantic: Standard_Boolean = Standard_False): Standard_Boolean {.
    noSideEffect, importcpp: "IsReportEntity",
    header: "Interface_InterfaceModel.hxx".}
proc ReportEntity*(this: Interface_InterfaceModel; num: Standard_Integer;
                  semantic: Standard_Boolean = Standard_False): handle[
    Interface_ReportEntity] {.noSideEffect, importcpp: "ReportEntity",
                             header: "Interface_InterfaceModel.hxx".}
proc IsErrorEntity*(this: Interface_InterfaceModel; num: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsErrorEntity",
    header: "Interface_InterfaceModel.hxx".}
proc IsRedefinedContent*(this: Interface_InterfaceModel; num: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsRedefinedContent",
    header: "Interface_InterfaceModel.hxx".}
proc ClearReportEntity*(this: var Interface_InterfaceModel; num: Standard_Integer): Standard_Boolean {.
    importcpp: "ClearReportEntity", header: "Interface_InterfaceModel.hxx".}
proc SetReportEntity*(this: var Interface_InterfaceModel; num: Standard_Integer;
                     rep: handle[Interface_ReportEntity]): Standard_Boolean {.
    importcpp: "SetReportEntity", header: "Interface_InterfaceModel.hxx".}
proc AddReportEntity*(this: var Interface_InterfaceModel;
                     rep: handle[Interface_ReportEntity];
                     semantic: Standard_Boolean = Standard_False): Standard_Boolean {.
    importcpp: "AddReportEntity", header: "Interface_InterfaceModel.hxx".}
proc IsUnknownEntity*(this: Interface_InterfaceModel; num: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsUnknownEntity",
    header: "Interface_InterfaceModel.hxx".}
proc FillSemanticChecks*(this: var Interface_InterfaceModel;
                        checks: Interface_CheckIterator;
                        clear: Standard_Boolean = Standard_True) {.
    importcpp: "FillSemanticChecks", header: "Interface_InterfaceModel.hxx".}
proc HasSemanticChecks*(this: Interface_InterfaceModel): Standard_Boolean {.
    noSideEffect, importcpp: "HasSemanticChecks",
    header: "Interface_InterfaceModel.hxx".}
proc Check*(this: Interface_InterfaceModel; num: Standard_Integer;
           syntactic: Standard_Boolean): handle[Interface_Check] {.noSideEffect,
    importcpp: "Check", header: "Interface_InterfaceModel.hxx".}
proc Reservate*(this: var Interface_InterfaceModel; nbent: Standard_Integer) {.
    importcpp: "Reservate", header: "Interface_InterfaceModel.hxx".}
proc AddEntity*(this: var Interface_InterfaceModel;
               anentity: handle[Standard_Transient]) {.importcpp: "AddEntity",
    header: "Interface_InterfaceModel.hxx".}
proc AddWithRefs*(this: var Interface_InterfaceModel;
                 anent: handle[Standard_Transient];
                 proto: handle[Interface_Protocol]; level: Standard_Integer = 0;
                 listall: Standard_Boolean = Standard_False) {.
    importcpp: "AddWithRefs", header: "Interface_InterfaceModel.hxx".}
proc AddWithRefs*(this: var Interface_InterfaceModel;
                 anent: handle[Standard_Transient]; level: Standard_Integer = 0;
                 listall: Standard_Boolean = Standard_False) {.
    importcpp: "AddWithRefs", header: "Interface_InterfaceModel.hxx".}
proc AddWithRefs*(this: var Interface_InterfaceModel;
                 anent: handle[Standard_Transient]; lib: Interface_GeneralLib;
                 level: Standard_Integer = 0;
                 listall: Standard_Boolean = Standard_False) {.
    importcpp: "AddWithRefs", header: "Interface_InterfaceModel.hxx".}
proc ReplaceEntity*(this: var Interface_InterfaceModel; nument: Standard_Integer;
                   anent: handle[Standard_Transient]) {.
    importcpp: "ReplaceEntity", header: "Interface_InterfaceModel.hxx".}
proc ReverseOrders*(this: var Interface_InterfaceModel; after: Standard_Integer = 0) {.
    importcpp: "ReverseOrders", header: "Interface_InterfaceModel.hxx".}
proc ChangeOrder*(this: var Interface_InterfaceModel; oldnum: Standard_Integer;
                 newnum: Standard_Integer; count: Standard_Integer = 1) {.
    importcpp: "ChangeOrder", header: "Interface_InterfaceModel.hxx".}
proc GetFromTransfer*(this: var Interface_InterfaceModel;
                     aniter: Interface_EntityIterator) {.
    importcpp: "GetFromTransfer", header: "Interface_InterfaceModel.hxx".}
proc GetFromAnother*(this: var Interface_InterfaceModel;
                    other: handle[Interface_InterfaceModel]) {.
    importcpp: "GetFromAnother", header: "Interface_InterfaceModel.hxx".}
proc NewEmptyModel*(this: Interface_InterfaceModel): handle[
    Interface_InterfaceModel] {.noSideEffect, importcpp: "NewEmptyModel",
                               header: "Interface_InterfaceModel.hxx".}
proc SetCategoryNumber*(this: var Interface_InterfaceModel; num: Standard_Integer;
                       val: Standard_Integer): Standard_Boolean {.
    importcpp: "SetCategoryNumber", header: "Interface_InterfaceModel.hxx".}
proc CategoryNumber*(this: Interface_InterfaceModel; num: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "CategoryNumber",
    header: "Interface_InterfaceModel.hxx".}
proc FillIterator*(this: Interface_InterfaceModel;
                  iter: var Interface_EntityIterator) {.noSideEffect,
    importcpp: "FillIterator", header: "Interface_InterfaceModel.hxx".}
proc Entities*(this: Interface_InterfaceModel): Interface_EntityIterator {.
    noSideEffect, importcpp: "Entities", header: "Interface_InterfaceModel.hxx".}
proc Reports*(this: Interface_InterfaceModel;
             semantic: Standard_Boolean = Standard_False): Interface_EntityIterator {.
    noSideEffect, importcpp: "Reports", header: "Interface_InterfaceModel.hxx".}
proc Redefineds*(this: Interface_InterfaceModel): Interface_EntityIterator {.
    noSideEffect, importcpp: "Redefineds", header: "Interface_InterfaceModel.hxx".}
proc GlobalCheck*(this: Interface_InterfaceModel;
                 syntactic: Standard_Boolean = Standard_True): handle[
    Interface_Check] {.noSideEffect, importcpp: "GlobalCheck",
                      header: "Interface_InterfaceModel.hxx".}
proc SetGlobalCheck*(this: var Interface_InterfaceModel;
                    ach: handle[Interface_Check]) {.importcpp: "SetGlobalCheck",
    header: "Interface_InterfaceModel.hxx".}
proc VerifyCheck*(this: Interface_InterfaceModel; ach: var handle[Interface_Check]) {.
    noSideEffect, importcpp: "VerifyCheck", header: "Interface_InterfaceModel.hxx".}
proc DumpHeader*(this: Interface_InterfaceModel; S: var Standard_OStream;
                level: Standard_Integer = 0) {.noSideEffect, importcpp: "DumpHeader",
    header: "Interface_InterfaceModel.hxx".}
proc Print*(this: Interface_InterfaceModel; ent: handle[Standard_Transient];
           s: var Standard_OStream; mode: Standard_Integer = 0) {.noSideEffect,
    importcpp: "Print", header: "Interface_InterfaceModel.hxx".}
proc PrintLabel*(this: Interface_InterfaceModel; ent: handle[Standard_Transient];
                S: var Standard_OStream) {.noSideEffect, importcpp: "PrintLabel",
                                        header: "Interface_InterfaceModel.hxx".}
proc PrintToLog*(this: Interface_InterfaceModel; ent: handle[Standard_Transient];
                S: var Standard_OStream) {.noSideEffect, importcpp: "PrintToLog",
                                        header: "Interface_InterfaceModel.hxx".}
proc StringLabel*(this: Interface_InterfaceModel; ent: handle[Standard_Transient]): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "StringLabel",
                               header: "Interface_InterfaceModel.hxx".}
proc NextNumberForLabel*(this: Interface_InterfaceModel; label: Standard_CString;
                        lastnum: Standard_Integer = 0;
                        exact: Standard_Boolean = Standard_True): Standard_Integer {.
    noSideEffect, importcpp: "NextNumberForLabel",
    header: "Interface_InterfaceModel.hxx".}
proc HasTemplate*(name: Standard_CString): Standard_Boolean {.
    importcpp: "Interface_InterfaceModel::HasTemplate(@)",
    header: "Interface_InterfaceModel.hxx".}
proc Template*(name: Standard_CString): handle[Interface_InterfaceModel] {.
    importcpp: "Interface_InterfaceModel::Template(@)",
    header: "Interface_InterfaceModel.hxx".}
proc SetTemplate*(name: Standard_CString; model: handle[Interface_InterfaceModel]): Standard_Boolean {.
    importcpp: "Interface_InterfaceModel::SetTemplate(@)",
    header: "Interface_InterfaceModel.hxx".}
proc ListTemplates*(): handle[TColStd_HSequenceOfHAsciiString] {.
    importcpp: "Interface_InterfaceModel::ListTemplates(@)",
    header: "Interface_InterfaceModel.hxx".}
type
  Interface_InterfaceModelbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Interface_InterfaceModel::get_type_name(@)",
                              header: "Interface_InterfaceModel.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Interface_InterfaceModel::get_type_descriptor(@)",
    header: "Interface_InterfaceModel.hxx".}
proc DynamicType*(this: Interface_InterfaceModel): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "Interface_InterfaceModel.hxx".}