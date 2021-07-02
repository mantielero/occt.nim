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

discard "forward decl of IFSelect_ShareOut"
discard "forward decl of IFSelect_WorkLibrary"
discard "forward decl of Interface_Protocol"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of Interface_HGraph"
discard "forward decl of Interface_GTool"
discard "forward decl of IFSelect_ModelCopier"
discard "forward decl of Standard_DomainError"
discard "forward decl of IFSelect_Signature"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of Interface_Graph"
discard "forward decl of Interface_CheckIterator"
discard "forward decl of IFSelect_IntParam"
discard "forward decl of IFSelect_Selection"
discard "forward decl of Interface_EntityIterator"
discard "forward decl of IFSelect_SelectionIterator"
discard "forward decl of IFSelect_SignCounter"
discard "forward decl of IFSelect_Dispatch"
discard "forward decl of IFSelect_GeneralModifier"
discard "forward decl of IFSelect_Modifier"
discard "forward decl of IFSelect_Transformer"
discard "forward decl of IFSelect_PacketList"
discard "forward decl of IFSelect_SignatureList"
discard "forward decl of IFSelect_WorkSession"
discard "forward decl of IFSelect_WorkSession"
type
  HandleIFSelectWorkSession* = Handle[IFSelectWorkSession]

## ! This class can be used to simply manage a process such as
## ! splitting a file, extracting a set of Entities ...
## ! It allows to manage different types of Variables : Integer or
## ! Text Parameters, Selections, Dispatches, in addition to a
## ! ShareOut. To each of these variables, a unique Integer
## ! Identifier is attached. A Name can be attached too as desired.

type
  IFSelectWorkSession* {.importcpp: "IFSelect_WorkSession",
                        header: "IFSelect_WorkSession.hxx", bycopy.} = object of StandardTransient ##
                                                                                            ## !
                                                                                            ## Creates
                                                                                            ## a
                                                                                            ## Work
                                                                                            ## Session
                                                                                            ##
                                                                                            ## !
                                                                                            ## It
                                                                                            ## provides
                                                                                            ## default,
                                                                                            ## empty
                                                                                            ## ShareOut
                                                                                            ## and
                                                                                            ## ModelCopier,
                                                                                            ## which
                                                                                            ## can
                                                                                            ##
                                                                                            ## !
                                                                                            ## be
                                                                                            ## replaced
                                                                                            ## (if
                                                                                            ## required,
                                                                                            ## should
                                                                                            ## be
                                                                                            ## done
                                                                                            ## just
                                                                                            ## after
                                                                                            ## creation).


proc constructIFSelectWorkSession*(): IFSelectWorkSession {.constructor,
    importcpp: "IFSelect_WorkSession(@)", header: "IFSelect_WorkSession.hxx".}
proc setErrorHandle*(this: var IFSelectWorkSession; toHandle: StandardBoolean) {.
    importcpp: "SetErrorHandle", header: "IFSelect_WorkSession.hxx".}
proc errorHandle*(this: IFSelectWorkSession): StandardBoolean {.noSideEffect,
    importcpp: "ErrorHandle", header: "IFSelect_WorkSession.hxx".}
proc shareOut*(this: IFSelectWorkSession): Handle[IFSelectShareOut] {.noSideEffect,
    importcpp: "ShareOut", header: "IFSelect_WorkSession.hxx".}
proc setShareOut*(this: var IFSelectWorkSession; shareout: Handle[IFSelectShareOut]) {.
    importcpp: "SetShareOut", header: "IFSelect_WorkSession.hxx".}
proc setModeStat*(this: var IFSelectWorkSession; theMode: StandardBoolean) {.
    importcpp: "SetModeStat", header: "IFSelect_WorkSession.hxx".}
proc getModeStat*(this: IFSelectWorkSession): StandardBoolean {.noSideEffect,
    importcpp: "GetModeStat", header: "IFSelect_WorkSession.hxx".}
proc setLibrary*(this: var IFSelectWorkSession; theLib: Handle[IFSelectWorkLibrary]) {.
    importcpp: "SetLibrary", header: "IFSelect_WorkSession.hxx".}
proc workLibrary*(this: IFSelectWorkSession): Handle[IFSelectWorkLibrary] {.
    noSideEffect, importcpp: "WorkLibrary", header: "IFSelect_WorkSession.hxx".}
proc setProtocol*(this: var IFSelectWorkSession; protocol: Handle[InterfaceProtocol]) {.
    importcpp: "SetProtocol", header: "IFSelect_WorkSession.hxx".}
proc protocol*(this: IFSelectWorkSession): Handle[InterfaceProtocol] {.noSideEffect,
    importcpp: "Protocol", header: "IFSelect_WorkSession.hxx".}
proc setSignType*(this: var IFSelectWorkSession; signtype: Handle[IFSelectSignature]) {.
    importcpp: "SetSignType", header: "IFSelect_WorkSession.hxx".}
proc signType*(this: IFSelectWorkSession): Handle[IFSelectSignature] {.noSideEffect,
    importcpp: "SignType", header: "IFSelect_WorkSession.hxx".}
proc hasModel*(this: IFSelectWorkSession): StandardBoolean {.noSideEffect,
    importcpp: "HasModel", header: "IFSelect_WorkSession.hxx".}
proc setModel*(this: var IFSelectWorkSession;
              model: Handle[InterfaceInterfaceModel];
              clearpointed: StandardBoolean = standardTrue) {.importcpp: "SetModel",
    header: "IFSelect_WorkSession.hxx".}
proc model*(this: IFSelectWorkSession): Handle[InterfaceInterfaceModel] {.
    noSideEffect, importcpp: "Model", header: "IFSelect_WorkSession.hxx".}
proc setLoadedFile*(this: var IFSelectWorkSession; theFileName: StandardCString) {.
    importcpp: "SetLoadedFile", header: "IFSelect_WorkSession.hxx".}
proc loadedFile*(this: IFSelectWorkSession): StandardCString {.noSideEffect,
    importcpp: "LoadedFile", header: "IFSelect_WorkSession.hxx".}
proc readFile*(this: var IFSelectWorkSession; filename: StandardCString): IFSelectReturnStatus {.
    importcpp: "ReadFile", header: "IFSelect_WorkSession.hxx".}
proc readStream*(this: var IFSelectWorkSession; theName: StandardCString;
                theIStream: var Istream): IFSelectReturnStatus {.
    importcpp: "ReadStream", header: "IFSelect_WorkSession.hxx".}
proc nbStartingEntities*(this: IFSelectWorkSession): StandardInteger {.noSideEffect,
    importcpp: "NbStartingEntities", header: "IFSelect_WorkSession.hxx".}
proc startingEntity*(this: IFSelectWorkSession; num: StandardInteger): Handle[
    StandardTransient] {.noSideEffect, importcpp: "StartingEntity",
                        header: "IFSelect_WorkSession.hxx".}
proc startingNumber*(this: IFSelectWorkSession; ent: Handle[StandardTransient]): StandardInteger {.
    noSideEffect, importcpp: "StartingNumber", header: "IFSelect_WorkSession.hxx".}
proc numberFromLabel*(this: IFSelectWorkSession; val: StandardCString;
                     afternum: StandardInteger = 0): StandardInteger {.noSideEffect,
    importcpp: "NumberFromLabel", header: "IFSelect_WorkSession.hxx".}
proc entityLabel*(this: IFSelectWorkSession; ent: Handle[StandardTransient]): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "EntityLabel",
                              header: "IFSelect_WorkSession.hxx".}
proc entityName*(this: IFSelectWorkSession; ent: Handle[StandardTransient]): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "EntityName",
                              header: "IFSelect_WorkSession.hxx".}
proc categoryNumber*(this: IFSelectWorkSession; ent: Handle[StandardTransient]): StandardInteger {.
    noSideEffect, importcpp: "CategoryNumber", header: "IFSelect_WorkSession.hxx".}
proc categoryName*(this: IFSelectWorkSession; ent: Handle[StandardTransient]): StandardCString {.
    noSideEffect, importcpp: "CategoryName", header: "IFSelect_WorkSession.hxx".}
proc validityName*(this: IFSelectWorkSession; ent: Handle[StandardTransient]): StandardCString {.
    noSideEffect, importcpp: "ValidityName", header: "IFSelect_WorkSession.hxx".}
proc clearData*(this: var IFSelectWorkSession; mode: StandardInteger) {.
    importcpp: "ClearData", header: "IFSelect_WorkSession.hxx".}
proc computeGraph*(this: var IFSelectWorkSession;
                  enforce: StandardBoolean = standardFalse): StandardBoolean {.
    importcpp: "ComputeGraph", header: "IFSelect_WorkSession.hxx".}
proc hGraph*(this: var IFSelectWorkSession): Handle[InterfaceHGraph] {.
    importcpp: "HGraph", header: "IFSelect_WorkSession.hxx".}
proc graph*(this: var IFSelectWorkSession): InterfaceGraph {.importcpp: "Graph",
    header: "IFSelect_WorkSession.hxx".}
proc shareds*(this: var IFSelectWorkSession; ent: Handle[StandardTransient]): Handle[
    TColStdHSequenceOfTransient] {.importcpp: "Shareds",
                                  header: "IFSelect_WorkSession.hxx".}
proc sharings*(this: var IFSelectWorkSession; ent: Handle[StandardTransient]): Handle[
    TColStdHSequenceOfTransient] {.importcpp: "Sharings",
                                  header: "IFSelect_WorkSession.hxx".}
proc isLoaded*(this: IFSelectWorkSession): StandardBoolean {.noSideEffect,
    importcpp: "IsLoaded", header: "IFSelect_WorkSession.hxx".}
proc computeCheck*(this: var IFSelectWorkSession;
                  enforce: StandardBoolean = standardFalse): StandardBoolean {.
    importcpp: "ComputeCheck", header: "IFSelect_WorkSession.hxx".}
proc modelCheckList*(this: var IFSelectWorkSession;
                    complete: StandardBoolean = standardTrue): InterfaceCheckIterator {.
    importcpp: "ModelCheckList", header: "IFSelect_WorkSession.hxx".}
proc checkOne*(this: var IFSelectWorkSession; ent: Handle[StandardTransient];
              complete: StandardBoolean = standardTrue): InterfaceCheckIterator {.
    importcpp: "CheckOne", header: "IFSelect_WorkSession.hxx".}
proc lastRunCheckList*(this: IFSelectWorkSession): InterfaceCheckIterator {.
    noSideEffect, importcpp: "LastRunCheckList", header: "IFSelect_WorkSession.hxx".}
proc maxIdent*(this: IFSelectWorkSession): StandardInteger {.noSideEffect,
    importcpp: "MaxIdent", header: "IFSelect_WorkSession.hxx".}
proc item*(this: IFSelectWorkSession; id: StandardInteger): Handle[StandardTransient] {.
    noSideEffect, importcpp: "Item", header: "IFSelect_WorkSession.hxx".}
proc itemIdent*(this: IFSelectWorkSession; item: Handle[StandardTransient]): StandardInteger {.
    noSideEffect, importcpp: "ItemIdent", header: "IFSelect_WorkSession.hxx".}
proc namedItem*(this: IFSelectWorkSession; name: StandardCString): Handle[
    StandardTransient] {.noSideEffect, importcpp: "NamedItem",
                        header: "IFSelect_WorkSession.hxx".}
proc namedItem*(this: IFSelectWorkSession; name: Handle[TCollectionHAsciiString]): Handle[
    StandardTransient] {.noSideEffect, importcpp: "NamedItem",
                        header: "IFSelect_WorkSession.hxx".}
proc nameIdent*(this: IFSelectWorkSession; name: StandardCString): StandardInteger {.
    noSideEffect, importcpp: "NameIdent", header: "IFSelect_WorkSession.hxx".}
proc hasName*(this: IFSelectWorkSession; item: Handle[StandardTransient]): StandardBoolean {.
    noSideEffect, importcpp: "HasName", header: "IFSelect_WorkSession.hxx".}
proc name*(this: IFSelectWorkSession; item: Handle[StandardTransient]): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "Name",
                              header: "IFSelect_WorkSession.hxx".}
proc addItem*(this: var IFSelectWorkSession; item: Handle[StandardTransient];
             active: StandardBoolean = standardTrue): StandardInteger {.
    importcpp: "AddItem", header: "IFSelect_WorkSession.hxx".}
proc addNamedItem*(this: var IFSelectWorkSession; name: StandardCString;
                  item: Handle[StandardTransient];
                  active: StandardBoolean = standardTrue): StandardInteger {.
    importcpp: "AddNamedItem", header: "IFSelect_WorkSession.hxx".}
proc setActive*(this: var IFSelectWorkSession; item: Handle[StandardTransient];
               mode: StandardBoolean): StandardBoolean {.importcpp: "SetActive",
    header: "IFSelect_WorkSession.hxx".}
proc removeNamedItem*(this: var IFSelectWorkSession; name: StandardCString): StandardBoolean {.
    importcpp: "RemoveNamedItem", header: "IFSelect_WorkSession.hxx".}
proc removeName*(this: var IFSelectWorkSession; name: StandardCString): StandardBoolean {.
    importcpp: "RemoveName", header: "IFSelect_WorkSession.hxx".}
proc removeItem*(this: var IFSelectWorkSession; item: Handle[StandardTransient]): StandardBoolean {.
    importcpp: "RemoveItem", header: "IFSelect_WorkSession.hxx".}
proc clearItems*(this: var IFSelectWorkSession) {.importcpp: "ClearItems",
    header: "IFSelect_WorkSession.hxx".}
proc itemLabel*(this: IFSelectWorkSession; id: StandardInteger): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "ItemLabel",
                              header: "IFSelect_WorkSession.hxx".}
proc itemIdents*(this: IFSelectWorkSession; `type`: Handle[StandardType]): Handle[
    TColStdHSequenceOfInteger] {.noSideEffect, importcpp: "ItemIdents",
                                header: "IFSelect_WorkSession.hxx".}
proc itemNames*(this: IFSelectWorkSession; `type`: Handle[StandardType]): Handle[
    TColStdHSequenceOfHAsciiString] {.noSideEffect, importcpp: "ItemNames",
                                     header: "IFSelect_WorkSession.hxx".}
proc itemNamesForLabel*(this: IFSelectWorkSession; label: StandardCString): Handle[
    TColStdHSequenceOfHAsciiString] {.noSideEffect,
                                     importcpp: "ItemNamesForLabel",
                                     header: "IFSelect_WorkSession.hxx".}
proc nextIdentForLabel*(this: IFSelectWorkSession; label: StandardCString;
                       id: StandardInteger; mode: StandardInteger = 0): StandardInteger {.
    noSideEffect, importcpp: "NextIdentForLabel",
    header: "IFSelect_WorkSession.hxx".}
proc newParamFromStatic*(this: var IFSelectWorkSession; statname: StandardCString;
                        name: StandardCString = ""): Handle[StandardTransient] {.
    importcpp: "NewParamFromStatic", header: "IFSelect_WorkSession.hxx".}
proc intParam*(this: IFSelectWorkSession; id: StandardInteger): Handle[
    IFSelectIntParam] {.noSideEffect, importcpp: "IntParam",
                       header: "IFSelect_WorkSession.hxx".}
proc intValue*(this: IFSelectWorkSession; it: Handle[IFSelectIntParam]): StandardInteger {.
    noSideEffect, importcpp: "IntValue", header: "IFSelect_WorkSession.hxx".}
proc newIntParam*(this: var IFSelectWorkSession; name: StandardCString = ""): Handle[
    IFSelectIntParam] {.importcpp: "NewIntParam",
                       header: "IFSelect_WorkSession.hxx".}
proc setIntValue*(this: var IFSelectWorkSession; it: Handle[IFSelectIntParam];
                 val: StandardInteger): StandardBoolean {.importcpp: "SetIntValue",
    header: "IFSelect_WorkSession.hxx".}
proc textParam*(this: IFSelectWorkSession; id: StandardInteger): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "TextParam",
                              header: "IFSelect_WorkSession.hxx".}
proc textValue*(this: IFSelectWorkSession; par: Handle[TCollectionHAsciiString]): TCollectionAsciiString {.
    noSideEffect, importcpp: "TextValue", header: "IFSelect_WorkSession.hxx".}
proc newTextParam*(this: var IFSelectWorkSession; name: StandardCString = ""): Handle[
    TCollectionHAsciiString] {.importcpp: "NewTextParam",
                              header: "IFSelect_WorkSession.hxx".}
proc setTextValue*(this: var IFSelectWorkSession;
                  par: Handle[TCollectionHAsciiString]; val: StandardCString): StandardBoolean {.
    importcpp: "SetTextValue", header: "IFSelect_WorkSession.hxx".}
proc signature*(this: IFSelectWorkSession; id: StandardInteger): Handle[
    IFSelectSignature] {.noSideEffect, importcpp: "Signature",
                        header: "IFSelect_WorkSession.hxx".}
proc signValue*(this: IFSelectWorkSession; sign: Handle[IFSelectSignature];
               ent: Handle[StandardTransient]): StandardCString {.noSideEffect,
    importcpp: "SignValue", header: "IFSelect_WorkSession.hxx".}
proc selection*(this: IFSelectWorkSession; id: StandardInteger): Handle[
    IFSelectSelection] {.noSideEffect, importcpp: "Selection",
                        header: "IFSelect_WorkSession.hxx".}
proc evalSelection*(this: IFSelectWorkSession; sel: Handle[IFSelectSelection]): InterfaceEntityIterator {.
    noSideEffect, importcpp: "EvalSelection", header: "IFSelect_WorkSession.hxx".}
proc sources*(this: IFSelectWorkSession; sel: Handle[IFSelectSelection]): IFSelectSelectionIterator {.
    noSideEffect, importcpp: "Sources", header: "IFSelect_WorkSession.hxx".}
proc selectionResult*(this: IFSelectWorkSession; sel: Handle[IFSelectSelection]): Handle[
    TColStdHSequenceOfTransient] {.noSideEffect, importcpp: "SelectionResult",
                                  header: "IFSelect_WorkSession.hxx".}
proc selectionResultFromList*(this: IFSelectWorkSession;
                             sel: Handle[IFSelectSelection];
                             list: Handle[TColStdHSequenceOfTransient]): Handle[
    TColStdHSequenceOfTransient] {.noSideEffect,
                                  importcpp: "SelectionResultFromList",
                                  header: "IFSelect_WorkSession.hxx".}
proc setItemSelection*(this: var IFSelectWorkSession;
                      item: Handle[StandardTransient];
                      sel: Handle[IFSelectSelection]): StandardBoolean {.
    importcpp: "SetItemSelection", header: "IFSelect_WorkSession.hxx".}
proc resetItemSelection*(this: var IFSelectWorkSession;
                        item: Handle[StandardTransient]): StandardBoolean {.
    importcpp: "ResetItemSelection", header: "IFSelect_WorkSession.hxx".}
proc itemSelection*(this: IFSelectWorkSession; item: Handle[StandardTransient]): Handle[
    IFSelectSelection] {.noSideEffect, importcpp: "ItemSelection",
                        header: "IFSelect_WorkSession.hxx".}
proc signCounter*(this: IFSelectWorkSession; id: StandardInteger): Handle[
    IFSelectSignCounter] {.noSideEffect, importcpp: "SignCounter",
                          header: "IFSelect_WorkSession.hxx".}
proc computeCounter*(this: var IFSelectWorkSession;
                    counter: Handle[IFSelectSignCounter];
                    forced: StandardBoolean = standardFalse): StandardBoolean {.
    importcpp: "ComputeCounter", header: "IFSelect_WorkSession.hxx".}
proc computeCounterFromList*(this: var IFSelectWorkSession;
                            counter: Handle[IFSelectSignCounter];
                            list: Handle[TColStdHSequenceOfTransient];
                            clear: StandardBoolean = standardTrue): StandardBoolean {.
    importcpp: "ComputeCounterFromList", header: "IFSelect_WorkSession.hxx".}
proc appliedDispatches*(this: IFSelectWorkSession): Handle[
    TColStdHSequenceOfInteger] {.noSideEffect, importcpp: "AppliedDispatches",
                                header: "IFSelect_WorkSession.hxx".}
proc clearShareOut*(this: var IFSelectWorkSession; onlydisp: StandardBoolean) {.
    importcpp: "ClearShareOut", header: "IFSelect_WorkSession.hxx".}
proc dispatch*(this: IFSelectWorkSession; id: StandardInteger): Handle[
    IFSelectDispatch] {.noSideEffect, importcpp: "Dispatch",
                       header: "IFSelect_WorkSession.hxx".}
proc dispatchRank*(this: IFSelectWorkSession; disp: Handle[IFSelectDispatch]): StandardInteger {.
    noSideEffect, importcpp: "DispatchRank", header: "IFSelect_WorkSession.hxx".}
proc modelCopier*(this: IFSelectWorkSession): Handle[IFSelectModelCopier] {.
    noSideEffect, importcpp: "ModelCopier", header: "IFSelect_WorkSession.hxx".}
proc setModelCopier*(this: var IFSelectWorkSession;
                    copier: Handle[IFSelectModelCopier]) {.
    importcpp: "SetModelCopier", header: "IFSelect_WorkSession.hxx".}
proc nbFinalModifiers*(this: IFSelectWorkSession; formodel: StandardBoolean): StandardInteger {.
    noSideEffect, importcpp: "NbFinalModifiers", header: "IFSelect_WorkSession.hxx".}
proc finalModifierIdents*(this: IFSelectWorkSession; formodel: StandardBoolean): Handle[
    TColStdHSequenceOfInteger] {.noSideEffect, importcpp: "FinalModifierIdents",
                                header: "IFSelect_WorkSession.hxx".}
proc generalModifier*(this: IFSelectWorkSession; id: StandardInteger): Handle[
    IFSelectGeneralModifier] {.noSideEffect, importcpp: "GeneralModifier",
                              header: "IFSelect_WorkSession.hxx".}
proc modelModifier*(this: IFSelectWorkSession; id: StandardInteger): Handle[
    IFSelectModifier] {.noSideEffect, importcpp: "ModelModifier",
                       header: "IFSelect_WorkSession.hxx".}
proc modifierRank*(this: IFSelectWorkSession; item: Handle[IFSelectGeneralModifier]): StandardInteger {.
    noSideEffect, importcpp: "ModifierRank", header: "IFSelect_WorkSession.hxx".}
proc changeModifierRank*(this: var IFSelectWorkSession; formodel: StandardBoolean;
                        before: StandardInteger; after: StandardInteger): StandardBoolean {.
    importcpp: "ChangeModifierRank", header: "IFSelect_WorkSession.hxx".}
proc clearFinalModifiers*(this: var IFSelectWorkSession) {.
    importcpp: "ClearFinalModifiers", header: "IFSelect_WorkSession.hxx".}
proc setAppliedModifier*(this: var IFSelectWorkSession;
                        modif: Handle[IFSelectGeneralModifier];
                        item: Handle[StandardTransient]): StandardBoolean {.
    importcpp: "SetAppliedModifier", header: "IFSelect_WorkSession.hxx".}
proc resetAppliedModifier*(this: var IFSelectWorkSession;
                          modif: Handle[IFSelectGeneralModifier]): StandardBoolean {.
    importcpp: "ResetAppliedModifier", header: "IFSelect_WorkSession.hxx".}
proc usesAppliedModifier*(this: IFSelectWorkSession;
                         modif: Handle[IFSelectGeneralModifier]): Handle[
    StandardTransient] {.noSideEffect, importcpp: "UsesAppliedModifier",
                        header: "IFSelect_WorkSession.hxx".}
proc transformer*(this: IFSelectWorkSession; id: StandardInteger): Handle[
    IFSelectTransformer] {.noSideEffect, importcpp: "Transformer",
                          header: "IFSelect_WorkSession.hxx".}
proc runTransformer*(this: var IFSelectWorkSession;
                    transf: Handle[IFSelectTransformer]): StandardInteger {.
    importcpp: "RunTransformer", header: "IFSelect_WorkSession.hxx".}
proc runModifier*(this: var IFSelectWorkSession; modif: Handle[IFSelectModifier];
                 copy: StandardBoolean): StandardInteger {.
    importcpp: "RunModifier", header: "IFSelect_WorkSession.hxx".}
proc runModifierSelected*(this: var IFSelectWorkSession;
                         modif: Handle[IFSelectModifier];
                         sel: Handle[IFSelectSelection]; copy: StandardBoolean): StandardInteger {.
    importcpp: "RunModifierSelected", header: "IFSelect_WorkSession.hxx".}
proc newTransformStandard*(this: var IFSelectWorkSession; copy: StandardBoolean;
                          name: StandardCString = ""): Handle[IFSelectTransformer] {.
    importcpp: "NewTransformStandard", header: "IFSelect_WorkSession.hxx".}
proc setModelContent*(this: var IFSelectWorkSession; sel: Handle[IFSelectSelection];
                     keep: StandardBoolean): StandardBoolean {.
    importcpp: "SetModelContent", header: "IFSelect_WorkSession.hxx".}
proc filePrefix*(this: IFSelectWorkSession): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "FilePrefix", header: "IFSelect_WorkSession.hxx".}
proc defaultFileRoot*(this: IFSelectWorkSession): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "DefaultFileRoot", header: "IFSelect_WorkSession.hxx".}
proc fileExtension*(this: IFSelectWorkSession): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "FileExtension", header: "IFSelect_WorkSession.hxx".}
proc fileRoot*(this: IFSelectWorkSession; disp: Handle[IFSelectDispatch]): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "FileRoot",
                              header: "IFSelect_WorkSession.hxx".}
proc setFilePrefix*(this: var IFSelectWorkSession; name: StandardCString) {.
    importcpp: "SetFilePrefix", header: "IFSelect_WorkSession.hxx".}
proc setDefaultFileRoot*(this: var IFSelectWorkSession; name: StandardCString): StandardBoolean {.
    importcpp: "SetDefaultFileRoot", header: "IFSelect_WorkSession.hxx".}
proc setFileExtension*(this: var IFSelectWorkSession; name: StandardCString) {.
    importcpp: "SetFileExtension", header: "IFSelect_WorkSession.hxx".}
proc setFileRoot*(this: var IFSelectWorkSession; disp: Handle[IFSelectDispatch];
                 name: StandardCString): StandardBoolean {.
    importcpp: "SetFileRoot", header: "IFSelect_WorkSession.hxx".}
proc giveFileRoot*(this: IFSelectWorkSession; file: StandardCString): StandardCString {.
    noSideEffect, importcpp: "GiveFileRoot", header: "IFSelect_WorkSession.hxx".}
proc giveFileComplete*(this: IFSelectWorkSession; file: StandardCString): StandardCString {.
    noSideEffect, importcpp: "GiveFileComplete", header: "IFSelect_WorkSession.hxx".}
proc clearFile*(this: var IFSelectWorkSession) {.importcpp: "ClearFile",
    header: "IFSelect_WorkSession.hxx".}
proc evaluateFile*(this: var IFSelectWorkSession) {.importcpp: "EvaluateFile",
    header: "IFSelect_WorkSession.hxx".}
proc nbFiles*(this: IFSelectWorkSession): StandardInteger {.noSideEffect,
    importcpp: "NbFiles", header: "IFSelect_WorkSession.hxx".}
proc fileModel*(this: IFSelectWorkSession; num: StandardInteger): Handle[
    InterfaceInterfaceModel] {.noSideEffect, importcpp: "FileModel",
                              header: "IFSelect_WorkSession.hxx".}
proc fileName*(this: IFSelectWorkSession; num: StandardInteger): TCollectionAsciiString {.
    noSideEffect, importcpp: "FileName", header: "IFSelect_WorkSession.hxx".}
proc beginSentFiles*(this: var IFSelectWorkSession; record: StandardBoolean) {.
    importcpp: "BeginSentFiles", header: "IFSelect_WorkSession.hxx".}
proc sentFiles*(this: IFSelectWorkSession): Handle[TColStdHSequenceOfHAsciiString] {.
    noSideEffect, importcpp: "SentFiles", header: "IFSelect_WorkSession.hxx".}
proc sendSplit*(this: var IFSelectWorkSession): StandardBoolean {.
    importcpp: "SendSplit", header: "IFSelect_WorkSession.hxx".}
proc evalSplit*(this: IFSelectWorkSession): Handle[IFSelectPacketList] {.
    noSideEffect, importcpp: "EvalSplit", header: "IFSelect_WorkSession.hxx".}
proc sentList*(this: IFSelectWorkSession; count: StandardInteger = -1): InterfaceEntityIterator {.
    noSideEffect, importcpp: "SentList", header: "IFSelect_WorkSession.hxx".}
proc maxSendingCount*(this: IFSelectWorkSession): StandardInteger {.noSideEffect,
    importcpp: "MaxSendingCount", header: "IFSelect_WorkSession.hxx".}
proc setRemaining*(this: var IFSelectWorkSession; mode: IFSelectRemainMode): StandardBoolean {.
    importcpp: "SetRemaining", header: "IFSelect_WorkSession.hxx".}
proc sendAll*(this: var IFSelectWorkSession; filename: StandardCString;
             computegraph: StandardBoolean = standardFalse): IFSelectReturnStatus {.
    importcpp: "SendAll", header: "IFSelect_WorkSession.hxx".}
proc sendSelected*(this: var IFSelectWorkSession; filename: StandardCString;
                  sel: Handle[IFSelectSelection];
                  computegraph: StandardBoolean = standardFalse): IFSelectReturnStatus {.
    importcpp: "SendSelected", header: "IFSelect_WorkSession.hxx".}
proc writeFile*(this: var IFSelectWorkSession; filename: StandardCString): IFSelectReturnStatus {.
    importcpp: "WriteFile", header: "IFSelect_WorkSession.hxx".}
proc writeFile*(this: var IFSelectWorkSession; filename: StandardCString;
               sel: Handle[IFSelectSelection]): IFSelectReturnStatus {.
    importcpp: "WriteFile", header: "IFSelect_WorkSession.hxx".}
proc nbSources*(this: IFSelectWorkSession; sel: Handle[IFSelectSelection]): StandardInteger {.
    noSideEffect, importcpp: "NbSources", header: "IFSelect_WorkSession.hxx".}
proc source*(this: IFSelectWorkSession; sel: Handle[IFSelectSelection];
            num: StandardInteger = 1): Handle[IFSelectSelection] {.noSideEffect,
    importcpp: "Source", header: "IFSelect_WorkSession.hxx".}
proc isReversedSelectExtract*(this: IFSelectWorkSession;
                             sel: Handle[IFSelectSelection]): StandardBoolean {.
    noSideEffect, importcpp: "IsReversedSelectExtract",
    header: "IFSelect_WorkSession.hxx".}
proc toggleSelectExtract*(this: var IFSelectWorkSession;
                         sel: Handle[IFSelectSelection]): StandardBoolean {.
    importcpp: "ToggleSelectExtract", header: "IFSelect_WorkSession.hxx".}
proc setInputSelection*(this: var IFSelectWorkSession;
                       sel: Handle[IFSelectSelection];
                       input: Handle[IFSelectSelection]): StandardBoolean {.
    importcpp: "SetInputSelection", header: "IFSelect_WorkSession.hxx".}
proc setControl*(this: var IFSelectWorkSession; sel: Handle[IFSelectSelection];
                sc: Handle[IFSelectSelection];
                formain: StandardBoolean = standardTrue): StandardBoolean {.
    importcpp: "SetControl", header: "IFSelect_WorkSession.hxx".}
proc combineAdd*(this: var IFSelectWorkSession; selcomb: Handle[IFSelectSelection];
                seladd: Handle[IFSelectSelection]; atnum: StandardInteger = 0): StandardInteger {.
    importcpp: "CombineAdd", header: "IFSelect_WorkSession.hxx".}
proc combineRemove*(this: var IFSelectWorkSession;
                   selcomb: Handle[IFSelectSelection];
                   selrem: Handle[IFSelectSelection]): StandardBoolean {.
    importcpp: "CombineRemove", header: "IFSelect_WorkSession.hxx".}
proc newSelectPointed*(this: var IFSelectWorkSession;
                      list: Handle[TColStdHSequenceOfTransient];
                      name: StandardCString): Handle[IFSelectSelection] {.
    importcpp: "NewSelectPointed", header: "IFSelect_WorkSession.hxx".}
proc setSelectPointed*(this: IFSelectWorkSession; sel: Handle[IFSelectSelection];
                      list: Handle[TColStdHSequenceOfTransient];
                      mode: StandardInteger): StandardBoolean {.noSideEffect,
    importcpp: "SetSelectPointed", header: "IFSelect_WorkSession.hxx".}
proc giveSelection*(this: IFSelectWorkSession; selname: StandardCString): Handle[
    IFSelectSelection] {.noSideEffect, importcpp: "GiveSelection",
                        header: "IFSelect_WorkSession.hxx".}
proc giveList*(this: IFSelectWorkSession; obj: Handle[StandardTransient]): Handle[
    TColStdHSequenceOfTransient] {.noSideEffect, importcpp: "GiveList",
                                  header: "IFSelect_WorkSession.hxx".}
proc giveList*(this: IFSelectWorkSession; first: StandardCString;
              second: StandardCString = ""): Handle[TColStdHSequenceOfTransient] {.
    noSideEffect, importcpp: "GiveList", header: "IFSelect_WorkSession.hxx".}
proc giveListFromList*(this: IFSelectWorkSession; selname: StandardCString;
                      ent: Handle[StandardTransient]): Handle[
    TColStdHSequenceOfTransient] {.noSideEffect, importcpp: "GiveListFromList",
                                  header: "IFSelect_WorkSession.hxx".}
proc giveListCombined*(this: IFSelectWorkSession;
                      l1: Handle[TColStdHSequenceOfTransient];
                      l2: Handle[TColStdHSequenceOfTransient];
                      mode: StandardInteger): Handle[TColStdHSequenceOfTransient] {.
    noSideEffect, importcpp: "GiveListCombined", header: "IFSelect_WorkSession.hxx".}
proc queryCheckList*(this: var IFSelectWorkSession; chl: InterfaceCheckIterator) {.
    importcpp: "QueryCheckList", header: "IFSelect_WorkSession.hxx".}
proc queryCheckStatus*(this: IFSelectWorkSession; ent: Handle[StandardTransient]): StandardInteger {.
    noSideEffect, importcpp: "QueryCheckStatus", header: "IFSelect_WorkSession.hxx".}
proc queryParent*(this: IFSelectWorkSession; entdad: Handle[StandardTransient];
                 entson: Handle[StandardTransient]): StandardInteger {.
    noSideEffect, importcpp: "QueryParent", header: "IFSelect_WorkSession.hxx".}
proc setParams*(this: var IFSelectWorkSession;
               params: NCollectionVector[Handle[StandardTransient]];
               uselist: NCollectionVector[StandardInteger]) {.
    importcpp: "SetParams", header: "IFSelect_WorkSession.hxx".}
proc traceStatics*(this: IFSelectWorkSession; use: StandardInteger;
                  mode: StandardInteger = 0) {.noSideEffect,
    importcpp: "TraceStatics", header: "IFSelect_WorkSession.hxx".}
proc dumpShare*(this: IFSelectWorkSession) {.noSideEffect, importcpp: "DumpShare",
    header: "IFSelect_WorkSession.hxx".}
proc listItems*(this: IFSelectWorkSession; label: StandardCString = "") {.noSideEffect,
    importcpp: "ListItems", header: "IFSelect_WorkSession.hxx".}
proc listFinalModifiers*(this: IFSelectWorkSession; formodel: StandardBoolean) {.
    noSideEffect, importcpp: "ListFinalModifiers",
    header: "IFSelect_WorkSession.hxx".}
proc dumpSelection*(this: IFSelectWorkSession; sel: Handle[IFSelectSelection]) {.
    noSideEffect, importcpp: "DumpSelection", header: "IFSelect_WorkSession.hxx".}
proc dumpModel*(this: var IFSelectWorkSession; level: StandardInteger;
               s: var StandardOStream) {.importcpp: "DumpModel",
                                      header: "IFSelect_WorkSession.hxx".}
proc traceDumpModel*(this: var IFSelectWorkSession; mode: StandardInteger) {.
    importcpp: "TraceDumpModel", header: "IFSelect_WorkSession.hxx".}
proc dumpEntity*(this: IFSelectWorkSession; ent: Handle[StandardTransient];
                level: StandardInteger; s: var StandardOStream) {.noSideEffect,
    importcpp: "DumpEntity", header: "IFSelect_WorkSession.hxx".}
proc printEntityStatus*(this: var IFSelectWorkSession;
                       ent: Handle[StandardTransient]; s: var StandardOStream) {.
    importcpp: "PrintEntityStatus", header: "IFSelect_WorkSession.hxx".}
proc traceDumpEntity*(this: IFSelectWorkSession; ent: Handle[StandardTransient];
                     level: StandardInteger) {.noSideEffect,
    importcpp: "TraceDumpEntity", header: "IFSelect_WorkSession.hxx".}
proc printCheckList*(this: IFSelectWorkSession; s: var StandardOStream;
                    checklist: InterfaceCheckIterator; failsonly: StandardBoolean;
                    mode: IFSelectPrintCount) {.noSideEffect,
    importcpp: "PrintCheckList", header: "IFSelect_WorkSession.hxx".}
proc printSignatureList*(this: IFSelectWorkSession; s: var StandardOStream;
                        signlist: Handle[IFSelectSignatureList];
                        mode: IFSelectPrintCount) {.noSideEffect,
    importcpp: "PrintSignatureList", header: "IFSelect_WorkSession.hxx".}
proc evaluateSelection*(this: IFSelectWorkSession; sel: Handle[IFSelectSelection]) {.
    noSideEffect, importcpp: "EvaluateSelection",
    header: "IFSelect_WorkSession.hxx".}
proc evaluateDispatch*(this: IFSelectWorkSession; disp: Handle[IFSelectDispatch];
                      mode: StandardInteger = 0) {.noSideEffect,
    importcpp: "EvaluateDispatch", header: "IFSelect_WorkSession.hxx".}
proc evaluateComplete*(this: IFSelectWorkSession; mode: StandardInteger = 0) {.
    noSideEffect, importcpp: "EvaluateComplete", header: "IFSelect_WorkSession.hxx".}
proc listEntities*(this: IFSelectWorkSession; iter: InterfaceEntityIterator;
                  mode: StandardInteger; s: var StandardOStream) {.noSideEffect,
    importcpp: "ListEntities", header: "IFSelect_WorkSession.hxx".}
type
  IFSelectWorkSessionbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "IFSelect_WorkSession::get_type_name(@)",
                            header: "IFSelect_WorkSession.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IFSelect_WorkSession::get_type_descriptor(@)",
    header: "IFSelect_WorkSession.hxx".}
proc dynamicType*(this: IFSelectWorkSession): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IFSelect_WorkSession.hxx".}

