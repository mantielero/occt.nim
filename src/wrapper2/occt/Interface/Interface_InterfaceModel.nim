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
  HandleInterfaceInterfaceModel* = Handle[InterfaceInterfaceModel]

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
  InterfaceInterfaceModel* {.importcpp: "Interface_InterfaceModel",
                            header: "Interface_InterfaceModel.hxx", bycopy.} = object of StandardTransient ##
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


proc destroy*(this: var InterfaceInterfaceModel) {.importcpp: "Destroy",
    header: "Interface_InterfaceModel.hxx".}
proc destroyInterfaceInterfaceModel*(this: var InterfaceInterfaceModel) {.
    importcpp: "#.~Interface_InterfaceModel()",
    header: "Interface_InterfaceModel.hxx".}
proc setProtocol*(this: var InterfaceInterfaceModel;
                 proto: Handle[InterfaceProtocol]) {.importcpp: "SetProtocol",
    header: "Interface_InterfaceModel.hxx".}
proc protocol*(this: InterfaceInterfaceModel): Handle[InterfaceProtocol] {.
    noSideEffect, importcpp: "Protocol", header: "Interface_InterfaceModel.hxx".}
proc setGTool*(this: var InterfaceInterfaceModel; gtool: Handle[InterfaceGTool]) {.
    importcpp: "SetGTool", header: "Interface_InterfaceModel.hxx".}
proc gTool*(this: InterfaceInterfaceModel): Handle[InterfaceGTool] {.noSideEffect,
    importcpp: "GTool", header: "Interface_InterfaceModel.hxx".}
proc dispatchStatus*(this: var InterfaceInterfaceModel): var StandardBoolean {.
    importcpp: "DispatchStatus", header: "Interface_InterfaceModel.hxx".}
proc clear*(this: var InterfaceInterfaceModel) {.importcpp: "Clear",
    header: "Interface_InterfaceModel.hxx".}
proc clearEntities*(this: var InterfaceInterfaceModel) {.importcpp: "ClearEntities",
    header: "Interface_InterfaceModel.hxx".}
proc clearLabels*(this: var InterfaceInterfaceModel) {.importcpp: "ClearLabels",
    header: "Interface_InterfaceModel.hxx".}
proc clearHeader*(this: var InterfaceInterfaceModel) {.importcpp: "ClearHeader",
    header: "Interface_InterfaceModel.hxx".}
proc nbEntities*(this: InterfaceInterfaceModel): StandardInteger {.noSideEffect,
    importcpp: "NbEntities", header: "Interface_InterfaceModel.hxx".}
proc contains*(this: InterfaceInterfaceModel; anentity: Handle[StandardTransient]): StandardBoolean {.
    noSideEffect, importcpp: "Contains", header: "Interface_InterfaceModel.hxx".}
proc number*(this: InterfaceInterfaceModel; anentity: Handle[StandardTransient]): StandardInteger {.
    noSideEffect, importcpp: "Number", header: "Interface_InterfaceModel.hxx".}
proc value*(this: InterfaceInterfaceModel; num: StandardInteger): Handle[
    StandardTransient] {.noSideEffect, importcpp: "Value",
                        header: "Interface_InterfaceModel.hxx".}
proc nbTypes*(this: InterfaceInterfaceModel; ent: Handle[StandardTransient]): StandardInteger {.
    noSideEffect, importcpp: "NbTypes", header: "Interface_InterfaceModel.hxx".}
proc `type`*(this: InterfaceInterfaceModel; ent: Handle[StandardTransient];
            num: StandardInteger = 1): Handle[StandardType] {.noSideEffect,
    importcpp: "Type", header: "Interface_InterfaceModel.hxx".}
proc typeName*(this: InterfaceInterfaceModel; ent: Handle[StandardTransient];
              complete: StandardBoolean = standardTrue): StandardCString {.
    noSideEffect, importcpp: "TypeName", header: "Interface_InterfaceModel.hxx".}
proc className*(typnam: StandardCString): StandardCString {.
    importcpp: "Interface_InterfaceModel::ClassName(@)",
    header: "Interface_InterfaceModel.hxx".}
proc entityState*(this: InterfaceInterfaceModel; num: StandardInteger): InterfaceDataState {.
    noSideEffect, importcpp: "EntityState", header: "Interface_InterfaceModel.hxx".}
proc isReportEntity*(this: InterfaceInterfaceModel; num: StandardInteger;
                    semantic: StandardBoolean = standardFalse): StandardBoolean {.
    noSideEffect, importcpp: "IsReportEntity",
    header: "Interface_InterfaceModel.hxx".}
proc reportEntity*(this: InterfaceInterfaceModel; num: StandardInteger;
                  semantic: StandardBoolean = standardFalse): Handle[
    InterfaceReportEntity] {.noSideEffect, importcpp: "ReportEntity",
                            header: "Interface_InterfaceModel.hxx".}
proc isErrorEntity*(this: InterfaceInterfaceModel; num: StandardInteger): StandardBoolean {.
    noSideEffect, importcpp: "IsErrorEntity",
    header: "Interface_InterfaceModel.hxx".}
proc isRedefinedContent*(this: InterfaceInterfaceModel; num: StandardInteger): StandardBoolean {.
    noSideEffect, importcpp: "IsRedefinedContent",
    header: "Interface_InterfaceModel.hxx".}
proc clearReportEntity*(this: var InterfaceInterfaceModel; num: StandardInteger): StandardBoolean {.
    importcpp: "ClearReportEntity", header: "Interface_InterfaceModel.hxx".}
proc setReportEntity*(this: var InterfaceInterfaceModel; num: StandardInteger;
                     rep: Handle[InterfaceReportEntity]): StandardBoolean {.
    importcpp: "SetReportEntity", header: "Interface_InterfaceModel.hxx".}
proc addReportEntity*(this: var InterfaceInterfaceModel;
                     rep: Handle[InterfaceReportEntity];
                     semantic: StandardBoolean = standardFalse): StandardBoolean {.
    importcpp: "AddReportEntity", header: "Interface_InterfaceModel.hxx".}
proc isUnknownEntity*(this: InterfaceInterfaceModel; num: StandardInteger): StandardBoolean {.
    noSideEffect, importcpp: "IsUnknownEntity",
    header: "Interface_InterfaceModel.hxx".}
proc fillSemanticChecks*(this: var InterfaceInterfaceModel;
                        checks: InterfaceCheckIterator;
                        clear: StandardBoolean = standardTrue) {.
    importcpp: "FillSemanticChecks", header: "Interface_InterfaceModel.hxx".}
proc hasSemanticChecks*(this: InterfaceInterfaceModel): StandardBoolean {.
    noSideEffect, importcpp: "HasSemanticChecks",
    header: "Interface_InterfaceModel.hxx".}
proc check*(this: InterfaceInterfaceModel; num: StandardInteger;
           syntactic: StandardBoolean): Handle[InterfaceCheck] {.noSideEffect,
    importcpp: "Check", header: "Interface_InterfaceModel.hxx".}
proc reservate*(this: var InterfaceInterfaceModel; nbent: StandardInteger) {.
    importcpp: "Reservate", header: "Interface_InterfaceModel.hxx".}
proc addEntity*(this: var InterfaceInterfaceModel;
               anentity: Handle[StandardTransient]) {.importcpp: "AddEntity",
    header: "Interface_InterfaceModel.hxx".}
proc addWithRefs*(this: var InterfaceInterfaceModel;
                 anent: Handle[StandardTransient];
                 proto: Handle[InterfaceProtocol]; level: StandardInteger = 0;
                 listall: StandardBoolean = standardFalse) {.
    importcpp: "AddWithRefs", header: "Interface_InterfaceModel.hxx".}
proc addWithRefs*(this: var InterfaceInterfaceModel;
                 anent: Handle[StandardTransient]; level: StandardInteger = 0;
                 listall: StandardBoolean = standardFalse) {.
    importcpp: "AddWithRefs", header: "Interface_InterfaceModel.hxx".}
proc addWithRefs*(this: var InterfaceInterfaceModel;
                 anent: Handle[StandardTransient]; lib: InterfaceGeneralLib;
                 level: StandardInteger = 0;
                 listall: StandardBoolean = standardFalse) {.
    importcpp: "AddWithRefs", header: "Interface_InterfaceModel.hxx".}
proc replaceEntity*(this: var InterfaceInterfaceModel; nument: StandardInteger;
                   anent: Handle[StandardTransient]) {.importcpp: "ReplaceEntity",
    header: "Interface_InterfaceModel.hxx".}
proc reverseOrders*(this: var InterfaceInterfaceModel; after: StandardInteger = 0) {.
    importcpp: "ReverseOrders", header: "Interface_InterfaceModel.hxx".}
proc changeOrder*(this: var InterfaceInterfaceModel; oldnum: StandardInteger;
                 newnum: StandardInteger; count: StandardInteger = 1) {.
    importcpp: "ChangeOrder", header: "Interface_InterfaceModel.hxx".}
proc getFromTransfer*(this: var InterfaceInterfaceModel;
                     aniter: InterfaceEntityIterator) {.
    importcpp: "GetFromTransfer", header: "Interface_InterfaceModel.hxx".}
proc getFromAnother*(this: var InterfaceInterfaceModel;
                    other: Handle[InterfaceInterfaceModel]) {.
    importcpp: "GetFromAnother", header: "Interface_InterfaceModel.hxx".}
proc newEmptyModel*(this: InterfaceInterfaceModel): Handle[InterfaceInterfaceModel] {.
    noSideEffect, importcpp: "NewEmptyModel",
    header: "Interface_InterfaceModel.hxx".}
proc setCategoryNumber*(this: var InterfaceInterfaceModel; num: StandardInteger;
                       val: StandardInteger): StandardBoolean {.
    importcpp: "SetCategoryNumber", header: "Interface_InterfaceModel.hxx".}
proc categoryNumber*(this: InterfaceInterfaceModel; num: StandardInteger): StandardInteger {.
    noSideEffect, importcpp: "CategoryNumber",
    header: "Interface_InterfaceModel.hxx".}
proc fillIterator*(this: InterfaceInterfaceModel; iter: var InterfaceEntityIterator) {.
    noSideEffect, importcpp: "FillIterator", header: "Interface_InterfaceModel.hxx".}
proc entities*(this: InterfaceInterfaceModel): InterfaceEntityIterator {.
    noSideEffect, importcpp: "Entities", header: "Interface_InterfaceModel.hxx".}
proc reports*(this: InterfaceInterfaceModel;
             semantic: StandardBoolean = standardFalse): InterfaceEntityIterator {.
    noSideEffect, importcpp: "Reports", header: "Interface_InterfaceModel.hxx".}
proc redefineds*(this: InterfaceInterfaceModel): InterfaceEntityIterator {.
    noSideEffect, importcpp: "Redefineds", header: "Interface_InterfaceModel.hxx".}
proc globalCheck*(this: InterfaceInterfaceModel;
                 syntactic: StandardBoolean = standardTrue): Handle[InterfaceCheck] {.
    noSideEffect, importcpp: "GlobalCheck", header: "Interface_InterfaceModel.hxx".}
proc setGlobalCheck*(this: var InterfaceInterfaceModel; ach: Handle[InterfaceCheck]) {.
    importcpp: "SetGlobalCheck", header: "Interface_InterfaceModel.hxx".}
proc verifyCheck*(this: InterfaceInterfaceModel; ach: var Handle[InterfaceCheck]) {.
    noSideEffect, importcpp: "VerifyCheck", header: "Interface_InterfaceModel.hxx".}
proc dumpHeader*(this: InterfaceInterfaceModel; s: var StandardOStream;
                level: StandardInteger = 0) {.noSideEffect, importcpp: "DumpHeader",
    header: "Interface_InterfaceModel.hxx".}
proc print*(this: InterfaceInterfaceModel; ent: Handle[StandardTransient];
           s: var StandardOStream; mode: StandardInteger = 0) {.noSideEffect,
    importcpp: "Print", header: "Interface_InterfaceModel.hxx".}
proc printLabel*(this: InterfaceInterfaceModel; ent: Handle[StandardTransient];
                s: var StandardOStream) {.noSideEffect, importcpp: "PrintLabel",
                                       header: "Interface_InterfaceModel.hxx".}
proc printToLog*(this: InterfaceInterfaceModel; ent: Handle[StandardTransient];
                s: var StandardOStream) {.noSideEffect, importcpp: "PrintToLog",
                                       header: "Interface_InterfaceModel.hxx".}
proc stringLabel*(this: InterfaceInterfaceModel; ent: Handle[StandardTransient]): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "StringLabel",
                              header: "Interface_InterfaceModel.hxx".}
proc nextNumberForLabel*(this: InterfaceInterfaceModel; label: StandardCString;
                        lastnum: StandardInteger = 0;
                        exact: StandardBoolean = standardTrue): StandardInteger {.
    noSideEffect, importcpp: "NextNumberForLabel",
    header: "Interface_InterfaceModel.hxx".}
proc hasTemplate*(name: StandardCString): StandardBoolean {.
    importcpp: "Interface_InterfaceModel::HasTemplate(@)",
    header: "Interface_InterfaceModel.hxx".}
proc `template`*(name: StandardCString): Handle[InterfaceInterfaceModel] {.
    importcpp: "Interface_InterfaceModel::Template(@)",
    header: "Interface_InterfaceModel.hxx".}
proc setTemplate*(name: StandardCString; model: Handle[InterfaceInterfaceModel]): StandardBoolean {.
    importcpp: "Interface_InterfaceModel::SetTemplate(@)",
    header: "Interface_InterfaceModel.hxx".}
proc listTemplates*(): Handle[TColStdHSequenceOfHAsciiString] {.
    importcpp: "Interface_InterfaceModel::ListTemplates(@)",
    header: "Interface_InterfaceModel.hxx".}
type
  InterfaceInterfaceModelbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Interface_InterfaceModel::get_type_name(@)",
                            header: "Interface_InterfaceModel.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Interface_InterfaceModel::get_type_descriptor(@)",
    header: "Interface_InterfaceModel.hxx".}
proc dynamicType*(this: InterfaceInterfaceModel): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "Interface_InterfaceModel.hxx".}

