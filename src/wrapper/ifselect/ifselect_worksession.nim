import ../tcollection/tcollection_types
import ../standard/standard_types
import ../ncollection/ncollection_types
import ifselect_types
import ../tcolstd/tcolstd_types
import "../interface/interface_types"




##  Created on: 1992-12-15
##  Created by: Christian CAILLET
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





proc newIFSelectWorkSession*(): IFSelectWorkSession {.cdecl, constructor,
    importcpp: "IFSelect_WorkSession(@)", header: "IFSelect_WorkSession.hxx".}
proc setErrorHandle*(this: var IFSelectWorkSession; toHandle: bool) {.cdecl,
    importcpp: "SetErrorHandle", header: "IFSelect_WorkSession.hxx".}
proc errorHandle*(this: IFSelectWorkSession): bool {.noSideEffect, cdecl,
    importcpp: "ErrorHandle", header: "IFSelect_WorkSession.hxx".}
proc shareOut*(this: IFSelectWorkSession): Handle[IFSelectShareOut] {.noSideEffect,
    cdecl, importcpp: "ShareOut", header: "IFSelect_WorkSession.hxx".}
proc setShareOut*(this: var IFSelectWorkSession; shareout: Handle[IFSelectShareOut]) {.
    cdecl, importcpp: "SetShareOut", header: "IFSelect_WorkSession.hxx".}
proc setModeStat*(this: var IFSelectWorkSession; theMode: bool) {.cdecl,
    importcpp: "SetModeStat", header: "IFSelect_WorkSession.hxx".}
proc getModeStat*(this: IFSelectWorkSession): bool {.noSideEffect, cdecl,
    importcpp: "GetModeStat", header: "IFSelect_WorkSession.hxx".}
proc setLibrary*(this: var IFSelectWorkSession; theLib: Handle[IFSelectWorkLibrary]) {.
    cdecl, importcpp: "SetLibrary", header: "IFSelect_WorkSession.hxx".}
proc workLibrary*(this: IFSelectWorkSession): Handle[IFSelectWorkLibrary] {.
    noSideEffect, cdecl, importcpp: "WorkLibrary", header: "IFSelect_WorkSession.hxx".}
proc setProtocol*(this: var IFSelectWorkSession; protocol: Handle[InterfaceProtocol]) {.
    cdecl, importcpp: "SetProtocol", header: "IFSelect_WorkSession.hxx".}
proc protocol*(this: IFSelectWorkSession): Handle[InterfaceProtocol] {.noSideEffect,
    cdecl, importcpp: "Protocol", header: "IFSelect_WorkSession.hxx".}
proc setSignType*(this: var IFSelectWorkSession; signtype: Handle[IFSelectSignature]) {.
    cdecl, importcpp: "SetSignType", header: "IFSelect_WorkSession.hxx".}
proc signType*(this: IFSelectWorkSession): Handle[IFSelectSignature] {.noSideEffect,
    cdecl, importcpp: "SignType", header: "IFSelect_WorkSession.hxx".}
proc hasModel*(this: IFSelectWorkSession): bool {.noSideEffect, cdecl,
    importcpp: "HasModel", header: "IFSelect_WorkSession.hxx".}
proc setModel*(this: var IFSelectWorkSession;
              model: Handle[InterfaceInterfaceModel]; clearpointed: bool = true) {.
    cdecl, importcpp: "SetModel", header: "IFSelect_WorkSession.hxx".}
proc model*(this: IFSelectWorkSession): Handle[InterfaceInterfaceModel] {.
    noSideEffect, cdecl, importcpp: "Model", header: "IFSelect_WorkSession.hxx".}
proc setLoadedFile*(this: var IFSelectWorkSession; theFileName: cstring) {.cdecl,
    importcpp: "SetLoadedFile", header: "IFSelect_WorkSession.hxx".}
proc loadedFile*(this: IFSelectWorkSession): cstring {.noSideEffect, cdecl,
    importcpp: "LoadedFile", header: "IFSelect_WorkSession.hxx".}
proc readFile*(this: var IFSelectWorkSession; filename: cstring): IFSelectReturnStatus {.
    cdecl, importcpp: "ReadFile", header: "IFSelect_WorkSession.hxx".}
#proc readStream*(this: var IFSelectWorkSession; theName: cstring;
#                theIStream: var Istream): IFSelectReturnStatus {.cdecl,
#    importcpp: "ReadStream", header: "IFSelect_WorkSession.hxx".}
proc nbStartingEntities*(this: IFSelectWorkSession): cint {.noSideEffect, cdecl,
    importcpp: "NbStartingEntities", header: "IFSelect_WorkSession.hxx".}
proc startingEntity*(this: IFSelectWorkSession; num: cint): Handle[StandardTransient] {.
    noSideEffect, cdecl, importcpp: "StartingEntity", header: "IFSelect_WorkSession.hxx".}
proc startingNumber*(this: IFSelectWorkSession; ent: Handle[StandardTransient]): cint {.
    noSideEffect, cdecl, importcpp: "StartingNumber", header: "IFSelect_WorkSession.hxx".}
proc numberFromLabel*(this: IFSelectWorkSession; val: cstring; afternum: cint = 0): cint {.
    noSideEffect, cdecl, importcpp: "NumberFromLabel", header: "IFSelect_WorkSession.hxx".}
proc entityLabel*(this: IFSelectWorkSession; ent: Handle[StandardTransient]): Handle[
    TCollectionHAsciiString] {.noSideEffect, cdecl, importcpp: "EntityLabel",
                              header: "IFSelect_WorkSession.hxx".}
proc entityName*(this: IFSelectWorkSession; ent: Handle[StandardTransient]): Handle[
    TCollectionHAsciiString] {.noSideEffect, cdecl, importcpp: "EntityName",
                              header: "IFSelect_WorkSession.hxx".}
proc categoryNumber*(this: IFSelectWorkSession; ent: Handle[StandardTransient]): cint {.
    noSideEffect, cdecl, importcpp: "CategoryNumber", header: "IFSelect_WorkSession.hxx".}
proc categoryName*(this: IFSelectWorkSession; ent: Handle[StandardTransient]): cstring {.
    noSideEffect, cdecl, importcpp: "CategoryName", header: "IFSelect_WorkSession.hxx".}
proc validityName*(this: IFSelectWorkSession; ent: Handle[StandardTransient]): cstring {.
    noSideEffect, cdecl, importcpp: "ValidityName", header: "IFSelect_WorkSession.hxx".}
proc clearData*(this: var IFSelectWorkSession; mode: cint) {.cdecl,
    importcpp: "ClearData", header: "IFSelect_WorkSession.hxx".}
proc computeGraph*(this: var IFSelectWorkSession; enforce: bool = false): bool {.cdecl,
    importcpp: "ComputeGraph", header: "IFSelect_WorkSession.hxx".}
proc hGraph*(this: var IFSelectWorkSession): Handle[InterfaceHGraph] {.cdecl,
    importcpp: "HGraph", header: "IFSelect_WorkSession.hxx".}
proc graph*(this: var IFSelectWorkSession): InterfaceGraph {.cdecl,
    importcpp: "Graph", header: "IFSelect_WorkSession.hxx".}
proc shareds*(this: var IFSelectWorkSession; ent: Handle[StandardTransient]): Handle[
    TColStdHSequenceOfTransient] {.cdecl, importcpp: "Shareds", header: "IFSelect_WorkSession.hxx".}
proc sharings*(this: var IFSelectWorkSession; ent: Handle[StandardTransient]): Handle[
    TColStdHSequenceOfTransient] {.cdecl, importcpp: "Sharings", header: "IFSelect_WorkSession.hxx".}
proc isLoaded*(this: IFSelectWorkSession): bool {.noSideEffect, cdecl,
    importcpp: "IsLoaded", header: "IFSelect_WorkSession.hxx".}
proc computeCheck*(this: var IFSelectWorkSession; enforce: bool = false): bool {.cdecl,
    importcpp: "ComputeCheck", header: "IFSelect_WorkSession.hxx".}
proc modelCheckList*(this: var IFSelectWorkSession; complete: bool = true): InterfaceCheckIterator {.
    cdecl, importcpp: "ModelCheckList", header: "IFSelect_WorkSession.hxx".}
proc checkOne*(this: var IFSelectWorkSession; ent: Handle[StandardTransient];
              complete: bool = true): InterfaceCheckIterator {.cdecl,
    importcpp: "CheckOne", header: "IFSelect_WorkSession.hxx".}
proc lastRunCheckList*(this: IFSelectWorkSession): InterfaceCheckIterator {.
    noSideEffect, cdecl, importcpp: "LastRunCheckList", header: "IFSelect_WorkSession.hxx".}
proc maxIdent*(this: IFSelectWorkSession): cint {.noSideEffect, cdecl,
    importcpp: "MaxIdent", header: "IFSelect_WorkSession.hxx".}
proc item*(this: IFSelectWorkSession; id: cint): Handle[StandardTransient] {.
    noSideEffect, cdecl, importcpp: "Item", header: "IFSelect_WorkSession.hxx".}
proc itemIdent*(this: IFSelectWorkSession; item: Handle[StandardTransient]): cint {.
    noSideEffect, cdecl, importcpp: "ItemIdent", header: "IFSelect_WorkSession.hxx".}
proc namedItem*(this: IFSelectWorkSession; name: cstring): Handle[StandardTransient] {.
    noSideEffect, cdecl, importcpp: "NamedItem", header: "IFSelect_WorkSession.hxx".}
proc namedItem*(this: IFSelectWorkSession; name: Handle[TCollectionHAsciiString]): Handle[
    StandardTransient] {.noSideEffect, cdecl, importcpp: "NamedItem",
                        header: "IFSelect_WorkSession.hxx".}
proc nameIdent*(this: IFSelectWorkSession; name: cstring): cint {.noSideEffect, cdecl,
    importcpp: "NameIdent", header: "IFSelect_WorkSession.hxx".}
proc hasName*(this: IFSelectWorkSession; item: Handle[StandardTransient]): bool {.
    noSideEffect, cdecl, importcpp: "HasName", header: "IFSelect_WorkSession.hxx".}
proc name*(this: IFSelectWorkSession; item: Handle[StandardTransient]): Handle[
    TCollectionHAsciiString] {.noSideEffect, cdecl, importcpp: "Name",
                              header: "IFSelect_WorkSession.hxx".}
proc addItem*(this: var IFSelectWorkSession; item: Handle[StandardTransient];
             active: bool = true): cint {.cdecl, importcpp: "AddItem", header: "IFSelect_WorkSession.hxx".}
proc addNamedItem*(this: var IFSelectWorkSession; name: cstring;
                  item: Handle[StandardTransient]; active: bool = true): cint {.cdecl,
    importcpp: "AddNamedItem", header: "IFSelect_WorkSession.hxx".}
proc setActive*(this: var IFSelectWorkSession; item: Handle[StandardTransient];
               mode: bool): bool {.cdecl, importcpp: "SetActive", header: "IFSelect_WorkSession.hxx".}
proc removeNamedItem*(this: var IFSelectWorkSession; name: cstring): bool {.cdecl,
    importcpp: "RemoveNamedItem", header: "IFSelect_WorkSession.hxx".}
proc removeName*(this: var IFSelectWorkSession; name: cstring): bool {.cdecl,
    importcpp: "RemoveName", header: "IFSelect_WorkSession.hxx".}
proc removeItem*(this: var IFSelectWorkSession; item: Handle[StandardTransient]): bool {.
    cdecl, importcpp: "RemoveItem", header: "IFSelect_WorkSession.hxx".}
proc clearItems*(this: var IFSelectWorkSession) {.cdecl, importcpp: "ClearItems",
    header: "IFSelect_WorkSession.hxx".}
proc itemLabel*(this: IFSelectWorkSession; id: cint): Handle[TCollectionHAsciiString] {.
    noSideEffect, cdecl, importcpp: "ItemLabel", header: "IFSelect_WorkSession.hxx".}
proc itemIdents*(this: IFSelectWorkSession; `type`: Handle[StandardType]): Handle[
    TColStdHSequenceOfInteger] {.noSideEffect, cdecl, importcpp: "ItemIdents",
                                header: "IFSelect_WorkSession.hxx".}
proc itemNames*(this: IFSelectWorkSession; `type`: Handle[StandardType]): Handle[
    TColStdHSequenceOfHAsciiString] {.noSideEffect, cdecl, importcpp: "ItemNames",
                                     header: "IFSelect_WorkSession.hxx".}
proc itemNamesForLabel*(this: IFSelectWorkSession; label: cstring): Handle[
    TColStdHSequenceOfHAsciiString] {.noSideEffect, cdecl,
                                     importcpp: "ItemNamesForLabel",
                                     header: "IFSelect_WorkSession.hxx".}
proc nextIdentForLabel*(this: IFSelectWorkSession; label: cstring; id: cint;
                       mode: cint = 0): cint {.noSideEffect, cdecl,
    importcpp: "NextIdentForLabel", header: "IFSelect_WorkSession.hxx".}
proc newParamFromStatic*(this: var IFSelectWorkSession; statname: cstring;
                        name: cstring = ""): Handle[StandardTransient] {.cdecl,
    importcpp: "NewParamFromStatic", header: "IFSelect_WorkSession.hxx".}
proc intParam*(this: IFSelectWorkSession; id: cint): Handle[IFSelectIntParam] {.
    noSideEffect, cdecl, importcpp: "IntParam", header: "IFSelect_WorkSession.hxx".}
proc intValue*(this: IFSelectWorkSession; it: Handle[IFSelectIntParam]): cint {.
    noSideEffect, cdecl, importcpp: "IntValue", header: "IFSelect_WorkSession.hxx".}
proc newIntParam*(this: var IFSelectWorkSession; name: cstring = ""): Handle[
    IFSelectIntParam] {.cdecl, importcpp: "NewIntParam", header: "IFSelect_WorkSession.hxx".}
proc setIntValue*(this: var IFSelectWorkSession; it: Handle[IFSelectIntParam];
                 val: cint): bool {.cdecl, importcpp: "SetIntValue", header: "IFSelect_WorkSession.hxx".}
proc textParam*(this: IFSelectWorkSession; id: cint): Handle[TCollectionHAsciiString] {.
    noSideEffect, cdecl, importcpp: "TextParam", header: "IFSelect_WorkSession.hxx".}
proc textValue*(this: IFSelectWorkSession; par: Handle[TCollectionHAsciiString]): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "TextValue", header: "IFSelect_WorkSession.hxx".}
proc newTextParam*(this: var IFSelectWorkSession; name: cstring = ""): Handle[
    TCollectionHAsciiString] {.cdecl, importcpp: "NewTextParam", header: "IFSelect_WorkSession.hxx".}
proc setTextValue*(this: var IFSelectWorkSession;
                  par: Handle[TCollectionHAsciiString]; val: cstring): bool {.cdecl,
    importcpp: "SetTextValue", header: "IFSelect_WorkSession.hxx".}
proc signature*(this: IFSelectWorkSession; id: cint): Handle[IFSelectSignature] {.
    noSideEffect, cdecl, importcpp: "Signature", header: "IFSelect_WorkSession.hxx".}
proc signValue*(this: IFSelectWorkSession; sign: Handle[IFSelectSignature];
               ent: Handle[StandardTransient]): cstring {.noSideEffect, cdecl,
    importcpp: "SignValue", header: "IFSelect_WorkSession.hxx".}
proc selection*(this: IFSelectWorkSession; id: cint): Handle[IFSelectSelection] {.
    noSideEffect, cdecl, importcpp: "Selection", header: "IFSelect_WorkSession.hxx".}
proc evalSelection*(this: IFSelectWorkSession; sel: Handle[IFSelectSelection]): InterfaceEntityIterator {.
    noSideEffect, cdecl, importcpp: "EvalSelection", header: "IFSelect_WorkSession.hxx".}
proc sources*(this: IFSelectWorkSession; sel: Handle[IFSelectSelection]): IFSelectSelectionIterator {.
    noSideEffect, cdecl, importcpp: "Sources", header: "IFSelect_WorkSession.hxx".}
proc selectionResult*(this: IFSelectWorkSession; sel: Handle[IFSelectSelection]): Handle[
    TColStdHSequenceOfTransient] {.noSideEffect, cdecl,
                                  importcpp: "SelectionResult", header: "IFSelect_WorkSession.hxx".}
proc selectionResultFromList*(this: IFSelectWorkSession;
                             sel: Handle[IFSelectSelection];
                             list: Handle[TColStdHSequenceOfTransient]): Handle[
    TColStdHSequenceOfTransient] {.noSideEffect, cdecl,
                                  importcpp: "SelectionResultFromList",
                                  header: "IFSelect_WorkSession.hxx".}
proc setItemSelection*(this: var IFSelectWorkSession;
                      item: Handle[StandardTransient];
                      sel: Handle[IFSelectSelection]): bool {.cdecl,
    importcpp: "SetItemSelection", header: "IFSelect_WorkSession.hxx".}
proc resetItemSelection*(this: var IFSelectWorkSession;
                        item: Handle[StandardTransient]): bool {.cdecl,
    importcpp: "ResetItemSelection", header: "IFSelect_WorkSession.hxx".}
proc itemSelection*(this: IFSelectWorkSession; item: Handle[StandardTransient]): Handle[
    IFSelectSelection] {.noSideEffect, cdecl, importcpp: "ItemSelection",
                        header: "IFSelect_WorkSession.hxx".}
proc signCounter*(this: IFSelectWorkSession; id: cint): Handle[IFSelectSignCounter] {.
    noSideEffect, cdecl, importcpp: "SignCounter", header: "IFSelect_WorkSession.hxx".}
proc computeCounter*(this: var IFSelectWorkSession;
                    counter: Handle[IFSelectSignCounter]; forced: bool = false): bool {.
    cdecl, importcpp: "ComputeCounter", header: "IFSelect_WorkSession.hxx".}
proc computeCounterFromList*(this: var IFSelectWorkSession;
                            counter: Handle[IFSelectSignCounter];
                            list: Handle[TColStdHSequenceOfTransient];
                            clear: bool = true): bool {.cdecl,
    importcpp: "ComputeCounterFromList", header: "IFSelect_WorkSession.hxx".}
proc appliedDispatches*(this: IFSelectWorkSession): Handle[
    TColStdHSequenceOfInteger] {.noSideEffect, cdecl,
                                importcpp: "AppliedDispatches", header: "IFSelect_WorkSession.hxx".}
proc clearShareOut*(this: var IFSelectWorkSession; onlydisp: bool) {.cdecl,
    importcpp: "ClearShareOut", header: "IFSelect_WorkSession.hxx".}
proc dispatch*(this: IFSelectWorkSession; id: cint): Handle[IFSelectDispatch] {.
    noSideEffect, cdecl, importcpp: "Dispatch", header: "IFSelect_WorkSession.hxx".}
proc dispatchRank*(this: IFSelectWorkSession; disp: Handle[IFSelectDispatch]): cint {.
    noSideEffect, cdecl, importcpp: "DispatchRank", header: "IFSelect_WorkSession.hxx".}
proc modelCopier*(this: IFSelectWorkSession): Handle[IFSelectModelCopier] {.
    noSideEffect, cdecl, importcpp: "ModelCopier", header: "IFSelect_WorkSession.hxx".}
proc setModelCopier*(this: var IFSelectWorkSession;
                    copier: Handle[IFSelectModelCopier]) {.cdecl,
    importcpp: "SetModelCopier", header: "IFSelect_WorkSession.hxx".}
proc nbFinalModifiers*(this: IFSelectWorkSession; formodel: bool): cint {.
    noSideEffect, cdecl, importcpp: "NbFinalModifiers", header: "IFSelect_WorkSession.hxx".}
proc finalModifierIdents*(this: IFSelectWorkSession; formodel: bool): Handle[
    TColStdHSequenceOfInteger] {.noSideEffect, cdecl,
                                importcpp: "FinalModifierIdents", header: "IFSelect_WorkSession.hxx".}
proc generalModifier*(this: IFSelectWorkSession; id: cint): Handle[
    IFSelectGeneralModifier] {.noSideEffect, cdecl, importcpp: "GeneralModifier",
                              header: "IFSelect_WorkSession.hxx".}
proc modelModifier*(this: IFSelectWorkSession; id: cint): Handle[IFSelectModifier] {.
    noSideEffect, cdecl, importcpp: "ModelModifier", header: "IFSelect_WorkSession.hxx".}
proc modifierRank*(this: IFSelectWorkSession; item: Handle[IFSelectGeneralModifier]): cint {.
    noSideEffect, cdecl, importcpp: "ModifierRank", header: "IFSelect_WorkSession.hxx".}
proc changeModifierRank*(this: var IFSelectWorkSession; formodel: bool; before: cint;
                        after: cint): bool {.cdecl, importcpp: "ChangeModifierRank",
    header: "IFSelect_WorkSession.hxx".}
proc clearFinalModifiers*(this: var IFSelectWorkSession) {.cdecl,
    importcpp: "ClearFinalModifiers", header: "IFSelect_WorkSession.hxx".}
proc setAppliedModifier*(this: var IFSelectWorkSession;
                        modif: Handle[IFSelectGeneralModifier];
                        item: Handle[StandardTransient]): bool {.cdecl,
    importcpp: "SetAppliedModifier", header: "IFSelect_WorkSession.hxx".}
proc resetAppliedModifier*(this: var IFSelectWorkSession;
                          modif: Handle[IFSelectGeneralModifier]): bool {.cdecl,
    importcpp: "ResetAppliedModifier", header: "IFSelect_WorkSession.hxx".}
proc usesAppliedModifier*(this: IFSelectWorkSession;
                         modif: Handle[IFSelectGeneralModifier]): Handle[
    StandardTransient] {.noSideEffect, cdecl, importcpp: "UsesAppliedModifier",
                        header: "IFSelect_WorkSession.hxx".}
proc transformer*(this: IFSelectWorkSession; id: cint): Handle[IFSelectTransformer] {.
    noSideEffect, cdecl, importcpp: "Transformer", header: "IFSelect_WorkSession.hxx".}
proc runTransformer*(this: var IFSelectWorkSession;
                    transf: Handle[IFSelectTransformer]): cint {.cdecl,
    importcpp: "RunTransformer", header: "IFSelect_WorkSession.hxx".}
proc runModifier*(this: var IFSelectWorkSession; modif: Handle[IFSelectModifier];
                 copy: bool): cint {.cdecl, importcpp: "RunModifier", header: "IFSelect_WorkSession.hxx".}
proc runModifierSelected*(this: var IFSelectWorkSession;
                         modif: Handle[IFSelectModifier];
                         sel: Handle[IFSelectSelection]; copy: bool): cint {.cdecl,
    importcpp: "RunModifierSelected", header: "IFSelect_WorkSession.hxx".}
proc newTransformStandard*(this: var IFSelectWorkSession; copy: bool;
                          name: cstring = ""): Handle[IFSelectTransformer] {.cdecl,
    importcpp: "NewTransformStandard", header: "IFSelect_WorkSession.hxx".}
proc setModelContent*(this: var IFSelectWorkSession; sel: Handle[IFSelectSelection];
                     keep: bool): bool {.cdecl, importcpp: "SetModelContent",
                                      header: "IFSelect_WorkSession.hxx".}
proc filePrefix*(this: IFSelectWorkSession): Handle[TCollectionHAsciiString] {.
    noSideEffect, cdecl, importcpp: "FilePrefix", header: "IFSelect_WorkSession.hxx".}
proc defaultFileRoot*(this: IFSelectWorkSession): Handle[TCollectionHAsciiString] {.
    noSideEffect, cdecl, importcpp: "DefaultFileRoot", header: "IFSelect_WorkSession.hxx".}
proc fileExtension*(this: IFSelectWorkSession): Handle[TCollectionHAsciiString] {.
    noSideEffect, cdecl, importcpp: "FileExtension", header: "IFSelect_WorkSession.hxx".}
proc fileRoot*(this: IFSelectWorkSession; disp: Handle[IFSelectDispatch]): Handle[
    TCollectionHAsciiString] {.noSideEffect, cdecl, importcpp: "FileRoot",
                              header: "IFSelect_WorkSession.hxx".}
proc setFilePrefix*(this: var IFSelectWorkSession; name: cstring) {.cdecl,
    importcpp: "SetFilePrefix", header: "IFSelect_WorkSession.hxx".}
proc setDefaultFileRoot*(this: var IFSelectWorkSession; name: cstring): bool {.cdecl,
    importcpp: "SetDefaultFileRoot", header: "IFSelect_WorkSession.hxx".}
proc setFileExtension*(this: var IFSelectWorkSession; name: cstring) {.cdecl,
    importcpp: "SetFileExtension", header: "IFSelect_WorkSession.hxx".}
proc setFileRoot*(this: var IFSelectWorkSession; disp: Handle[IFSelectDispatch];
                 name: cstring): bool {.cdecl, importcpp: "SetFileRoot",
                                     header: "IFSelect_WorkSession.hxx".}
proc giveFileRoot*(this: IFSelectWorkSession; file: cstring): cstring {.noSideEffect,
    cdecl, importcpp: "GiveFileRoot", header: "IFSelect_WorkSession.hxx".}
proc giveFileComplete*(this: IFSelectWorkSession; file: cstring): cstring {.
    noSideEffect, cdecl, importcpp: "GiveFileComplete", header: "IFSelect_WorkSession.hxx".}
proc clearFile*(this: var IFSelectWorkSession) {.cdecl, importcpp: "ClearFile",
    header: "IFSelect_WorkSession.hxx".}
proc evaluateFile*(this: var IFSelectWorkSession) {.cdecl, importcpp: "EvaluateFile",
    header: "IFSelect_WorkSession.hxx".}
proc nbFiles*(this: IFSelectWorkSession): cint {.noSideEffect, cdecl,
    importcpp: "NbFiles", header: "IFSelect_WorkSession.hxx".}
proc fileModel*(this: IFSelectWorkSession; num: cint): Handle[InterfaceInterfaceModel] {.
    noSideEffect, cdecl, importcpp: "FileModel", header: "IFSelect_WorkSession.hxx".}
proc fileName*(this: IFSelectWorkSession; num: cint): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "FileName", header: "IFSelect_WorkSession.hxx".}
proc beginSentFiles*(this: var IFSelectWorkSession; record: bool) {.cdecl,
    importcpp: "BeginSentFiles", header: "IFSelect_WorkSession.hxx".}
proc sentFiles*(this: IFSelectWorkSession): Handle[TColStdHSequenceOfHAsciiString] {.
    noSideEffect, cdecl, importcpp: "SentFiles", header: "IFSelect_WorkSession.hxx".}
proc sendSplit*(this: var IFSelectWorkSession): bool {.cdecl, importcpp: "SendSplit",
    header: "IFSelect_WorkSession.hxx".}
proc evalSplit*(this: IFSelectWorkSession): Handle[IFSelectPacketList] {.
    noSideEffect, cdecl, importcpp: "EvalSplit", header: "IFSelect_WorkSession.hxx".}
proc sentList*(this: IFSelectWorkSession; count: cint = -1): InterfaceEntityIterator {.
    noSideEffect, cdecl, importcpp: "SentList", header: "IFSelect_WorkSession.hxx".}
proc maxSendingCount*(this: IFSelectWorkSession): cint {.noSideEffect, cdecl,
    importcpp: "MaxSendingCount", header: "IFSelect_WorkSession.hxx".}
proc setRemaining*(this: var IFSelectWorkSession; mode: IFSelectRemainMode): bool {.
    cdecl, importcpp: "SetRemaining", header: "IFSelect_WorkSession.hxx".}
proc sendAll*(this: var IFSelectWorkSession; filename: cstring;
             computegraph: bool = false): IFSelectReturnStatus {.cdecl,
    importcpp: "SendAll", header: "IFSelect_WorkSession.hxx".}
proc sendSelected*(this: var IFSelectWorkSession; filename: cstring;
                  sel: Handle[IFSelectSelection]; computegraph: bool = false): IFSelectReturnStatus {.
    cdecl, importcpp: "SendSelected", header: "IFSelect_WorkSession.hxx".}
proc writeFile*(this: var IFSelectWorkSession; filename: cstring): IFSelectReturnStatus {.
    cdecl, importcpp: "WriteFile", header: "IFSelect_WorkSession.hxx".}
proc writeFile*(this: var IFSelectWorkSession; filename: cstring;
               sel: Handle[IFSelectSelection]): IFSelectReturnStatus {.cdecl,
    importcpp: "WriteFile", header: "IFSelect_WorkSession.hxx".}
proc nbSources*(this: IFSelectWorkSession; sel: Handle[IFSelectSelection]): cint {.
    noSideEffect, cdecl, importcpp: "NbSources", header: "IFSelect_WorkSession.hxx".}
proc source*(this: IFSelectWorkSession; sel: Handle[IFSelectSelection]; num: cint = 1): Handle[
    IFSelectSelection] {.noSideEffect, cdecl, importcpp: "Source", header: "IFSelect_WorkSession.hxx".}
proc isReversedSelectExtract*(this: IFSelectWorkSession;
                             sel: Handle[IFSelectSelection]): bool {.noSideEffect,
    cdecl, importcpp: "IsReversedSelectExtract", header: "IFSelect_WorkSession.hxx".}
proc toggleSelectExtract*(this: var IFSelectWorkSession;
                         sel: Handle[IFSelectSelection]): bool {.cdecl,
    importcpp: "ToggleSelectExtract", header: "IFSelect_WorkSession.hxx".}
proc setInputSelection*(this: var IFSelectWorkSession;
                       sel: Handle[IFSelectSelection];
                       input: Handle[IFSelectSelection]): bool {.cdecl,
    importcpp: "SetInputSelection", header: "IFSelect_WorkSession.hxx".}
proc setControl*(this: var IFSelectWorkSession; sel: Handle[IFSelectSelection];
                sc: Handle[IFSelectSelection]; formain: bool = true): bool {.cdecl,
    importcpp: "SetControl", header: "IFSelect_WorkSession.hxx".}
proc combineAdd*(this: var IFSelectWorkSession; selcomb: Handle[IFSelectSelection];
                seladd: Handle[IFSelectSelection]; atnum: cint = 0): cint {.cdecl,
    importcpp: "CombineAdd", header: "IFSelect_WorkSession.hxx".}
proc combineRemove*(this: var IFSelectWorkSession;
                   selcomb: Handle[IFSelectSelection];
                   selrem: Handle[IFSelectSelection]): bool {.cdecl,
    importcpp: "CombineRemove", header: "IFSelect_WorkSession.hxx".}
proc newSelectPointed*(this: var IFSelectWorkSession;
                      list: Handle[TColStdHSequenceOfTransient]; name: cstring): Handle[
    IFSelectSelection] {.cdecl, importcpp: "NewSelectPointed", header: "IFSelect_WorkSession.hxx".}
proc setSelectPointed*(this: IFSelectWorkSession; sel: Handle[IFSelectSelection];
                      list: Handle[TColStdHSequenceOfTransient]; mode: cint): bool {.
    noSideEffect, cdecl, importcpp: "SetSelectPointed", header: "IFSelect_WorkSession.hxx".}
proc giveSelection*(this: IFSelectWorkSession; selname: cstring): Handle[
    IFSelectSelection] {.noSideEffect, cdecl, importcpp: "GiveSelection",
                        header: "IFSelect_WorkSession.hxx".}
proc giveList*(this: IFSelectWorkSession; obj: Handle[StandardTransient]): Handle[
    TColStdHSequenceOfTransient] {.noSideEffect, cdecl, importcpp: "GiveList",
                                  header: "IFSelect_WorkSession.hxx".}
proc giveList*(this: IFSelectWorkSession; first: cstring; second: cstring = ""): Handle[
    TColStdHSequenceOfTransient] {.noSideEffect, cdecl, importcpp: "GiveList",
                                  header: "IFSelect_WorkSession.hxx".}
proc giveListFromList*(this: IFSelectWorkSession; selname: cstring;
                      ent: Handle[StandardTransient]): Handle[
    TColStdHSequenceOfTransient] {.noSideEffect, cdecl,
                                  importcpp: "GiveListFromList", header: "IFSelect_WorkSession.hxx".}
proc giveListCombined*(this: IFSelectWorkSession;
                      l1: Handle[TColStdHSequenceOfTransient];
                      l2: Handle[TColStdHSequenceOfTransient]; mode: cint): Handle[
    TColStdHSequenceOfTransient] {.noSideEffect, cdecl,
                                  importcpp: "GiveListCombined", header: "IFSelect_WorkSession.hxx".}
proc queryCheckList*(this: var IFSelectWorkSession; chl: InterfaceCheckIterator) {.
    cdecl, importcpp: "QueryCheckList", header: "IFSelect_WorkSession.hxx".}
proc queryCheckStatus*(this: IFSelectWorkSession; ent: Handle[StandardTransient]): cint {.
    noSideEffect, cdecl, importcpp: "QueryCheckStatus", header: "IFSelect_WorkSession.hxx".}
proc queryParent*(this: IFSelectWorkSession; entdad: Handle[StandardTransient];
                 entson: Handle[StandardTransient]): cint {.noSideEffect, cdecl,
    importcpp: "QueryParent", header: "IFSelect_WorkSession.hxx".}
proc setParams*(this: var IFSelectWorkSession;
               params: NCollectionVector[Handle[StandardTransient]];
               uselist: NCollectionVector[cint]) {.cdecl, importcpp: "SetParams",
    header: "IFSelect_WorkSession.hxx".}
proc traceStatics*(this: IFSelectWorkSession; use: cint; mode: cint = 0) {.noSideEffect,
    cdecl, importcpp: "TraceStatics", header: "IFSelect_WorkSession.hxx".}
proc dumpShare*(this: IFSelectWorkSession) {.noSideEffect, cdecl,
    importcpp: "DumpShare", header: "IFSelect_WorkSession.hxx".}
proc listItems*(this: IFSelectWorkSession; label: cstring = "") {.noSideEffect, cdecl,
    importcpp: "ListItems", header: "IFSelect_WorkSession.hxx".}
proc listFinalModifiers*(this: IFSelectWorkSession; formodel: bool) {.noSideEffect,
    cdecl, importcpp: "ListFinalModifiers", header: "IFSelect_WorkSession.hxx".}
proc dumpSelection*(this: IFSelectWorkSession; sel: Handle[IFSelectSelection]) {.
    noSideEffect, cdecl, importcpp: "DumpSelection", header: "IFSelect_WorkSession.hxx".}
proc dumpModel*(this: var IFSelectWorkSession; level: cint; s: var StandardOStream) {.
    cdecl, importcpp: "DumpModel", header: "IFSelect_WorkSession.hxx".}
proc traceDumpModel*(this: var IFSelectWorkSession; mode: cint) {.cdecl,
    importcpp: "TraceDumpModel", header: "IFSelect_WorkSession.hxx".}
proc dumpEntity*(this: IFSelectWorkSession; ent: Handle[StandardTransient];
                level: cint; s: var StandardOStream) {.noSideEffect, cdecl,
    importcpp: "DumpEntity", header: "IFSelect_WorkSession.hxx".}
proc printEntityStatus*(this: var IFSelectWorkSession;
                       ent: Handle[StandardTransient]; s: var StandardOStream) {.
    cdecl, importcpp: "PrintEntityStatus", header: "IFSelect_WorkSession.hxx".}
proc traceDumpEntity*(this: IFSelectWorkSession; ent: Handle[StandardTransient];
                     level: cint) {.noSideEffect, cdecl,
                                  importcpp: "TraceDumpEntity", header: "IFSelect_WorkSession.hxx".}
proc printCheckList*(this: IFSelectWorkSession; s: var StandardOStream;
                    checklist: InterfaceCheckIterator; failsonly: bool;
                    mode: IFSelectPrintCount) {.noSideEffect, cdecl,
    importcpp: "PrintCheckList", header: "IFSelect_WorkSession.hxx".}
proc printSignatureList*(this: IFSelectWorkSession; s: var StandardOStream;
                        signlist: Handle[IFSelectSignatureList];
                        mode: IFSelectPrintCount) {.noSideEffect, cdecl,
    importcpp: "PrintSignatureList", header: "IFSelect_WorkSession.hxx".}
proc evaluateSelection*(this: IFSelectWorkSession; sel: Handle[IFSelectSelection]) {.
    noSideEffect, cdecl, importcpp: "EvaluateSelection", header: "IFSelect_WorkSession.hxx".}
proc evaluateDispatch*(this: IFSelectWorkSession; disp: Handle[IFSelectDispatch];
                      mode: cint = 0) {.noSideEffect, cdecl,
                                    importcpp: "EvaluateDispatch",
                                    header: "IFSelect_WorkSession.hxx".}
proc evaluateComplete*(this: IFSelectWorkSession; mode: cint = 0) {.noSideEffect, cdecl,
    importcpp: "EvaluateComplete", header: "IFSelect_WorkSession.hxx".}
proc listEntities*(this: IFSelectWorkSession; iter: InterfaceEntityIterator;
                  mode: cint; s: var StandardOStream) {.noSideEffect, cdecl,
    importcpp: "ListEntities", header: "IFSelect_WorkSession.hxx".}


