import interface_types
import ../tcollection/tcollection_types
import ../standard/standard_types
import ../tcolstd/tcolstd_types







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





proc destroy*(this: var InterfaceInterfaceModel) {.cdecl, importcpp: "Destroy",
    header: "Interface_InterfaceModel.hxx".}
proc destroyInterfaceInterfaceModel*(this: var InterfaceInterfaceModel) {.cdecl,
    importcpp: "#.~Interface_InterfaceModel()", header: "Interface_InterfaceModel.hxx".}
proc setProtocol*(this: var InterfaceInterfaceModel;
                 proto: Handle[InterfaceProtocol]) {.cdecl,
    importcpp: "SetProtocol", header: "Interface_InterfaceModel.hxx".}
proc protocol*(this: InterfaceInterfaceModel): Handle[InterfaceProtocol] {.
    noSideEffect, cdecl, importcpp: "Protocol", header: "Interface_InterfaceModel.hxx".}
proc setGTool*(this: var InterfaceInterfaceModel; gtool: Handle[InterfaceGTool]) {.
    cdecl, importcpp: "SetGTool", header: "Interface_InterfaceModel.hxx".}
proc gTool*(this: InterfaceInterfaceModel): Handle[InterfaceGTool] {.noSideEffect,
    cdecl, importcpp: "GTool", header: "Interface_InterfaceModel.hxx".}
proc dispatchStatus*(this: var InterfaceInterfaceModel): var bool {.cdecl,
    importcpp: "DispatchStatus", header: "Interface_InterfaceModel.hxx".}
proc clear*(this: var InterfaceInterfaceModel) {.cdecl, importcpp: "Clear",
    header: "Interface_InterfaceModel.hxx".}
proc clearEntities*(this: var InterfaceInterfaceModel) {.cdecl,
    importcpp: "ClearEntities", header: "Interface_InterfaceModel.hxx".}
proc clearLabels*(this: var InterfaceInterfaceModel) {.cdecl,
    importcpp: "ClearLabels", header: "Interface_InterfaceModel.hxx".}
proc clearHeader*(this: var InterfaceInterfaceModel) {.cdecl,
    importcpp: "ClearHeader", header: "Interface_InterfaceModel.hxx".}
proc nbEntities*(this: InterfaceInterfaceModel): cint {.noSideEffect, cdecl,
    importcpp: "NbEntities", header: "Interface_InterfaceModel.hxx".}
proc contains*(this: InterfaceInterfaceModel; anentity: Handle[StandardTransient]): bool {.
    noSideEffect, cdecl, importcpp: "Contains", header: "Interface_InterfaceModel.hxx".}
proc number*(this: InterfaceInterfaceModel; anentity: Handle[StandardTransient]): cint {.
    noSideEffect, cdecl, importcpp: "Number", header: "Interface_InterfaceModel.hxx".}
proc value*(this: InterfaceInterfaceModel; num: cint): Handle[StandardTransient] {.
    noSideEffect, cdecl, importcpp: "Value", header: "Interface_InterfaceModel.hxx".}
proc nbTypes*(this: InterfaceInterfaceModel; ent: Handle[StandardTransient]): cint {.
    noSideEffect, cdecl, importcpp: "NbTypes", header: "Interface_InterfaceModel.hxx".}
proc `type`*(this: InterfaceInterfaceModel; ent: Handle[StandardTransient];
            num: cint = 1): Handle[StandardType] {.noSideEffect, cdecl,
    importcpp: "Type", header: "Interface_InterfaceModel.hxx".}
proc typeName*(this: InterfaceInterfaceModel; ent: Handle[StandardTransient];
              complete: bool = true): cstring {.noSideEffect, cdecl,
    importcpp: "TypeName", header: "Interface_InterfaceModel.hxx".}
proc className*(typnam: cstring): cstring {.cdecl, importcpp: "Interface_InterfaceModel::ClassName(@)",
                                        header: "Interface_InterfaceModel.hxx".}
proc entityState*(this: InterfaceInterfaceModel; num: cint): InterfaceDataState {.
    noSideEffect, cdecl, importcpp: "EntityState", header: "Interface_InterfaceModel.hxx".}
proc isReportEntity*(this: InterfaceInterfaceModel; num: cint; semantic: bool = false): bool {.
    noSideEffect, cdecl, importcpp: "IsReportEntity", header: "Interface_InterfaceModel.hxx".}
proc reportEntity*(this: InterfaceInterfaceModel; num: cint; semantic: bool = false): Handle[
    InterfaceReportEntity] {.noSideEffect, cdecl, importcpp: "ReportEntity",
                            header: "Interface_InterfaceModel.hxx".}
proc isErrorEntity*(this: InterfaceInterfaceModel; num: cint): bool {.noSideEffect,
    cdecl, importcpp: "IsErrorEntity", header: "Interface_InterfaceModel.hxx".}
proc isRedefinedContent*(this: InterfaceInterfaceModel; num: cint): bool {.
    noSideEffect, cdecl, importcpp: "IsRedefinedContent", header: "Interface_InterfaceModel.hxx".}
proc clearReportEntity*(this: var InterfaceInterfaceModel; num: cint): bool {.cdecl,
    importcpp: "ClearReportEntity", header: "Interface_InterfaceModel.hxx".}
proc setReportEntity*(this: var InterfaceInterfaceModel; num: cint;
                     rep: Handle[InterfaceReportEntity]): bool {.cdecl,
    importcpp: "SetReportEntity", header: "Interface_InterfaceModel.hxx".}
proc addReportEntity*(this: var InterfaceInterfaceModel;
                     rep: Handle[InterfaceReportEntity]; semantic: bool = false): bool {.
    cdecl, importcpp: "AddReportEntity", header: "Interface_InterfaceModel.hxx".}
proc isUnknownEntity*(this: InterfaceInterfaceModel; num: cint): bool {.noSideEffect,
    cdecl, importcpp: "IsUnknownEntity", header: "Interface_InterfaceModel.hxx".}
proc fillSemanticChecks*(this: var InterfaceInterfaceModel;
                        checks: InterfaceCheckIterator; clear: bool = true) {.cdecl,
    importcpp: "FillSemanticChecks", header: "Interface_InterfaceModel.hxx".}
proc hasSemanticChecks*(this: InterfaceInterfaceModel): bool {.noSideEffect, cdecl,
    importcpp: "HasSemanticChecks", header: "Interface_InterfaceModel.hxx".}
proc check*(this: InterfaceInterfaceModel; num: cint; syntactic: bool): Handle[
    InterfaceCheck] {.noSideEffect, cdecl, importcpp: "Check", header: "Interface_InterfaceModel.hxx".}
proc reservate*(this: var InterfaceInterfaceModel; nbent: cint) {.cdecl,
    importcpp: "Reservate", header: "Interface_InterfaceModel.hxx".}
proc addEntity*(this: var InterfaceInterfaceModel;
               anentity: Handle[StandardTransient]) {.cdecl,
    importcpp: "AddEntity", header: "Interface_InterfaceModel.hxx".}
proc addWithRefs*(this: var InterfaceInterfaceModel;
                 anent: Handle[StandardTransient];
                 proto: Handle[InterfaceProtocol]; level: cint = 0;
                 listall: bool = false) {.cdecl, importcpp: "AddWithRefs",
                                      header: "Interface_InterfaceModel.hxx".}
proc addWithRefs*(this: var InterfaceInterfaceModel;
                 anent: Handle[StandardTransient]; level: cint = 0;
                 listall: bool = false) {.cdecl, importcpp: "AddWithRefs",
                                      header: "Interface_InterfaceModel.hxx".}
proc addWithRefs*(this: var InterfaceInterfaceModel;
                 anent: Handle[StandardTransient]; lib: InterfaceGeneralLib;
                 level: cint = 0; listall: bool = false) {.cdecl,
    importcpp: "AddWithRefs", header: "Interface_InterfaceModel.hxx".}
proc replaceEntity*(this: var InterfaceInterfaceModel; nument: cint;
                   anent: Handle[StandardTransient]) {.cdecl,
    importcpp: "ReplaceEntity", header: "Interface_InterfaceModel.hxx".}
proc reverseOrders*(this: var InterfaceInterfaceModel; after: cint = 0) {.cdecl,
    importcpp: "ReverseOrders", header: "Interface_InterfaceModel.hxx".}
proc changeOrder*(this: var InterfaceInterfaceModel; oldnum: cint; newnum: cint;
                 count: cint = 1) {.cdecl, importcpp: "ChangeOrder", header: "Interface_InterfaceModel.hxx".}
proc getFromTransfer*(this: var InterfaceInterfaceModel;
                     aniter: InterfaceEntityIterator) {.cdecl,
    importcpp: "GetFromTransfer", header: "Interface_InterfaceModel.hxx".}
proc getFromAnother*(this: var InterfaceInterfaceModel;
                    other: Handle[InterfaceInterfaceModel]) {.cdecl,
    importcpp: "GetFromAnother", header: "Interface_InterfaceModel.hxx".}
proc newEmptyModel*(this: InterfaceInterfaceModel): Handle[InterfaceInterfaceModel] {.
    noSideEffect, cdecl, importcpp: "NewEmptyModel", header: "Interface_InterfaceModel.hxx".}
proc setCategoryNumber*(this: var InterfaceInterfaceModel; num: cint; val: cint): bool {.
    cdecl, importcpp: "SetCategoryNumber", header: "Interface_InterfaceModel.hxx".}
proc categoryNumber*(this: InterfaceInterfaceModel; num: cint): cint {.noSideEffect,
    cdecl, importcpp: "CategoryNumber", header: "Interface_InterfaceModel.hxx".}
proc fillIterator*(this: InterfaceInterfaceModel; iter: var InterfaceEntityIterator) {.
    noSideEffect, cdecl, importcpp: "FillIterator", header: "Interface_InterfaceModel.hxx".}
proc entities*(this: InterfaceInterfaceModel): InterfaceEntityIterator {.
    noSideEffect, cdecl, importcpp: "Entities", header: "Interface_InterfaceModel.hxx".}
proc reports*(this: InterfaceInterfaceModel; semantic: bool = false): InterfaceEntityIterator {.
    noSideEffect, cdecl, importcpp: "Reports", header: "Interface_InterfaceModel.hxx".}
proc redefineds*(this: InterfaceInterfaceModel): InterfaceEntityIterator {.
    noSideEffect, cdecl, importcpp: "Redefineds", header: "Interface_InterfaceModel.hxx".}
proc globalCheck*(this: InterfaceInterfaceModel; syntactic: bool = true): Handle[
    InterfaceCheck] {.noSideEffect, cdecl, importcpp: "GlobalCheck", header: "Interface_InterfaceModel.hxx".}
proc setGlobalCheck*(this: var InterfaceInterfaceModel; ach: Handle[InterfaceCheck]) {.
    cdecl, importcpp: "SetGlobalCheck", header: "Interface_InterfaceModel.hxx".}
proc verifyCheck*(this: InterfaceInterfaceModel; ach: var Handle[InterfaceCheck]) {.
    noSideEffect, cdecl, importcpp: "VerifyCheck", header: "Interface_InterfaceModel.hxx".}
proc dumpHeader*(this: InterfaceInterfaceModel; s: var StandardOStream;
                level: cint = 0) {.noSideEffect, cdecl, importcpp: "DumpHeader",
                               header: "Interface_InterfaceModel.hxx".}
proc print*(this: InterfaceInterfaceModel; ent: Handle[StandardTransient];
           s: var StandardOStream; mode: cint = 0) {.noSideEffect, cdecl,
    importcpp: "Print", header: "Interface_InterfaceModel.hxx".}
proc printLabel*(this: InterfaceInterfaceModel; ent: Handle[StandardTransient];
                s: var StandardOStream) {.noSideEffect, cdecl,
                                       importcpp: "PrintLabel", header: "Interface_InterfaceModel.hxx".}
proc printToLog*(this: InterfaceInterfaceModel; ent: Handle[StandardTransient];
                s: var StandardOStream) {.noSideEffect, cdecl,
                                       importcpp: "PrintToLog", header: "Interface_InterfaceModel.hxx".}
proc stringLabel*(this: InterfaceInterfaceModel; ent: Handle[StandardTransient]): Handle[
    TCollectionHAsciiString] {.noSideEffect, cdecl, importcpp: "StringLabel",
                              header: "Interface_InterfaceModel.hxx".}
proc nextNumberForLabel*(this: InterfaceInterfaceModel; label: cstring;
                        lastnum: cint = 0; exact: bool = true): cint {.noSideEffect,
    cdecl, importcpp: "NextNumberForLabel", header: "Interface_InterfaceModel.hxx".}
proc hasTemplate*(name: cstring): bool {.cdecl, importcpp: "Interface_InterfaceModel::HasTemplate(@)",
                                     header: "Interface_InterfaceModel.hxx".}
proc `template`*(name: cstring): Handle[InterfaceInterfaceModel] {.cdecl,
    importcpp: "Interface_InterfaceModel::Template(@)", header: "Interface_InterfaceModel.hxx".}
proc setTemplate*(name: cstring; model: Handle[InterfaceInterfaceModel]): bool {.
    cdecl, importcpp: "Interface_InterfaceModel::SetTemplate(@)", header: "Interface_InterfaceModel.hxx".}
proc listTemplates*(): Handle[TColStdHSequenceOfHAsciiString] {.cdecl,
    importcpp: "Interface_InterfaceModel::ListTemplates(@)", header: "Interface_InterfaceModel.hxx".}



