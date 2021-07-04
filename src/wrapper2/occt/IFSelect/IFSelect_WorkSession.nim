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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Boolean,
  ../TCollection/TCollection_AsciiString, ../Interface/Interface_CheckIterator,
  ../TColStd/TColStd_IndexedDataMapOfTransientTransient,
  ../Standard/Standard_Transient, ../NCollection/NCollection_Vector,
  ../NCollection/NCollection_DataMap, ../Standard/Standard_CString,
  IFSelect_ReturnStatus, ../Standard/Standard_Integer,
  ../TColStd/TColStd_HSequenceOfTransient, ../TColStd/TColStd_HSequenceOfInteger,
  ../Standard/Standard_Type, ../Standard/Standard_Transient,
  ../TColStd/TColStd_HSequenceOfHAsciiString, IFSelect_RemainMode,
  ../TColStd/TColStd_SequenceOfTransient, ../TColStd/TColStd_SequenceOfInteger,
  IFSelect_PrintCount, ../TCollection/TCollection_AsciiString

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
  Handle_IFSelect_WorkSession* = handle[IFSelect_WorkSession]

## ! This class can be used to simply manage a process such as
## ! splitting a file, extracting a set of Entities ...
## ! It allows to manage different types of Variables : Integer or
## ! Text Parameters, Selections, Dispatches, in addition to a
## ! ShareOut. To each of these variables, a unique Integer
## ! Identifier is attached. A Name can be attached too as desired.

type
  IFSelect_WorkSession* {.importcpp: "IFSelect_WorkSession",
                         header: "IFSelect_WorkSession.hxx", bycopy.} = object of Standard_Transient ##
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


proc constructIFSelect_WorkSession*(): IFSelect_WorkSession {.constructor,
    importcpp: "IFSelect_WorkSession(@)", header: "IFSelect_WorkSession.hxx".}
proc SetErrorHandle*(this: var IFSelect_WorkSession; toHandle: Standard_Boolean) {.
    importcpp: "SetErrorHandle", header: "IFSelect_WorkSession.hxx".}
proc ErrorHandle*(this: IFSelect_WorkSession): Standard_Boolean {.noSideEffect,
    importcpp: "ErrorHandle", header: "IFSelect_WorkSession.hxx".}
proc ShareOut*(this: IFSelect_WorkSession): handle[IFSelect_ShareOut] {.
    noSideEffect, importcpp: "ShareOut", header: "IFSelect_WorkSession.hxx".}
proc SetShareOut*(this: var IFSelect_WorkSession;
                 shareout: handle[IFSelect_ShareOut]) {.importcpp: "SetShareOut",
    header: "IFSelect_WorkSession.hxx".}
proc SetModeStat*(this: var IFSelect_WorkSession; theMode: Standard_Boolean) {.
    importcpp: "SetModeStat", header: "IFSelect_WorkSession.hxx".}
proc GetModeStat*(this: IFSelect_WorkSession): Standard_Boolean {.noSideEffect,
    importcpp: "GetModeStat", header: "IFSelect_WorkSession.hxx".}
proc SetLibrary*(this: var IFSelect_WorkSession;
                theLib: handle[IFSelect_WorkLibrary]) {.importcpp: "SetLibrary",
    header: "IFSelect_WorkSession.hxx".}
proc WorkLibrary*(this: IFSelect_WorkSession): handle[IFSelect_WorkLibrary] {.
    noSideEffect, importcpp: "WorkLibrary", header: "IFSelect_WorkSession.hxx".}
proc SetProtocol*(this: var IFSelect_WorkSession;
                 protocol: handle[Interface_Protocol]) {.importcpp: "SetProtocol",
    header: "IFSelect_WorkSession.hxx".}
proc Protocol*(this: IFSelect_WorkSession): handle[Interface_Protocol] {.
    noSideEffect, importcpp: "Protocol", header: "IFSelect_WorkSession.hxx".}
proc SetSignType*(this: var IFSelect_WorkSession;
                 signtype: handle[IFSelect_Signature]) {.importcpp: "SetSignType",
    header: "IFSelect_WorkSession.hxx".}
proc SignType*(this: IFSelect_WorkSession): handle[IFSelect_Signature] {.
    noSideEffect, importcpp: "SignType", header: "IFSelect_WorkSession.hxx".}
proc HasModel*(this: IFSelect_WorkSession): Standard_Boolean {.noSideEffect,
    importcpp: "HasModel", header: "IFSelect_WorkSession.hxx".}
proc SetModel*(this: var IFSelect_WorkSession;
              model: handle[Interface_InterfaceModel];
              clearpointed: Standard_Boolean = Standard_True) {.
    importcpp: "SetModel", header: "IFSelect_WorkSession.hxx".}
proc Model*(this: IFSelect_WorkSession): handle[Interface_InterfaceModel] {.
    noSideEffect, importcpp: "Model", header: "IFSelect_WorkSession.hxx".}
proc SetLoadedFile*(this: var IFSelect_WorkSession; theFileName: Standard_CString) {.
    importcpp: "SetLoadedFile", header: "IFSelect_WorkSession.hxx".}
proc LoadedFile*(this: IFSelect_WorkSession): Standard_CString {.noSideEffect,
    importcpp: "LoadedFile", header: "IFSelect_WorkSession.hxx".}
proc ReadFile*(this: var IFSelect_WorkSession; filename: Standard_CString): IFSelect_ReturnStatus {.
    importcpp: "ReadFile", header: "IFSelect_WorkSession.hxx".}
proc ReadStream*(this: var IFSelect_WorkSession; theName: Standard_CString;
                theIStream: var istream): IFSelect_ReturnStatus {.
    importcpp: "ReadStream", header: "IFSelect_WorkSession.hxx".}
proc NbStartingEntities*(this: IFSelect_WorkSession): Standard_Integer {.
    noSideEffect, importcpp: "NbStartingEntities",
    header: "IFSelect_WorkSession.hxx".}
proc StartingEntity*(this: IFSelect_WorkSession; num: Standard_Integer): handle[
    Standard_Transient] {.noSideEffect, importcpp: "StartingEntity",
                         header: "IFSelect_WorkSession.hxx".}
proc StartingNumber*(this: IFSelect_WorkSession; ent: handle[Standard_Transient]): Standard_Integer {.
    noSideEffect, importcpp: "StartingNumber", header: "IFSelect_WorkSession.hxx".}
proc NumberFromLabel*(this: IFSelect_WorkSession; val: Standard_CString;
                     afternum: Standard_Integer = 0): Standard_Integer {.
    noSideEffect, importcpp: "NumberFromLabel", header: "IFSelect_WorkSession.hxx".}
proc EntityLabel*(this: IFSelect_WorkSession; ent: handle[Standard_Transient]): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "EntityLabel",
                               header: "IFSelect_WorkSession.hxx".}
proc EntityName*(this: IFSelect_WorkSession; ent: handle[Standard_Transient]): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "EntityName",
                               header: "IFSelect_WorkSession.hxx".}
proc CategoryNumber*(this: IFSelect_WorkSession; ent: handle[Standard_Transient]): Standard_Integer {.
    noSideEffect, importcpp: "CategoryNumber", header: "IFSelect_WorkSession.hxx".}
proc CategoryName*(this: IFSelect_WorkSession; ent: handle[Standard_Transient]): Standard_CString {.
    noSideEffect, importcpp: "CategoryName", header: "IFSelect_WorkSession.hxx".}
proc ValidityName*(this: IFSelect_WorkSession; ent: handle[Standard_Transient]): Standard_CString {.
    noSideEffect, importcpp: "ValidityName", header: "IFSelect_WorkSession.hxx".}
proc ClearData*(this: var IFSelect_WorkSession; mode: Standard_Integer) {.
    importcpp: "ClearData", header: "IFSelect_WorkSession.hxx".}
proc ComputeGraph*(this: var IFSelect_WorkSession;
                  enforce: Standard_Boolean = Standard_False): Standard_Boolean {.
    importcpp: "ComputeGraph", header: "IFSelect_WorkSession.hxx".}
proc HGraph*(this: var IFSelect_WorkSession): handle[Interface_HGraph] {.
    importcpp: "HGraph", header: "IFSelect_WorkSession.hxx".}
proc Graph*(this: var IFSelect_WorkSession): Interface_Graph {.importcpp: "Graph",
    header: "IFSelect_WorkSession.hxx".}
proc Shareds*(this: var IFSelect_WorkSession; ent: handle[Standard_Transient]): handle[
    TColStd_HSequenceOfTransient] {.importcpp: "Shareds",
                                   header: "IFSelect_WorkSession.hxx".}
proc Sharings*(this: var IFSelect_WorkSession; ent: handle[Standard_Transient]): handle[
    TColStd_HSequenceOfTransient] {.importcpp: "Sharings",
                                   header: "IFSelect_WorkSession.hxx".}
proc IsLoaded*(this: IFSelect_WorkSession): Standard_Boolean {.noSideEffect,
    importcpp: "IsLoaded", header: "IFSelect_WorkSession.hxx".}
proc ComputeCheck*(this: var IFSelect_WorkSession;
                  enforce: Standard_Boolean = Standard_False): Standard_Boolean {.
    importcpp: "ComputeCheck", header: "IFSelect_WorkSession.hxx".}
proc ModelCheckList*(this: var IFSelect_WorkSession;
                    complete: Standard_Boolean = Standard_True): Interface_CheckIterator {.
    importcpp: "ModelCheckList", header: "IFSelect_WorkSession.hxx".}
proc CheckOne*(this: var IFSelect_WorkSession; ent: handle[Standard_Transient];
              complete: Standard_Boolean = Standard_True): Interface_CheckIterator {.
    importcpp: "CheckOne", header: "IFSelect_WorkSession.hxx".}
proc LastRunCheckList*(this: IFSelect_WorkSession): Interface_CheckIterator {.
    noSideEffect, importcpp: "LastRunCheckList", header: "IFSelect_WorkSession.hxx".}
proc MaxIdent*(this: IFSelect_WorkSession): Standard_Integer {.noSideEffect,
    importcpp: "MaxIdent", header: "IFSelect_WorkSession.hxx".}
proc Item*(this: IFSelect_WorkSession; id: Standard_Integer): handle[
    Standard_Transient] {.noSideEffect, importcpp: "Item",
                         header: "IFSelect_WorkSession.hxx".}
proc ItemIdent*(this: IFSelect_WorkSession; item: handle[Standard_Transient]): Standard_Integer {.
    noSideEffect, importcpp: "ItemIdent", header: "IFSelect_WorkSession.hxx".}
proc NamedItem*(this: IFSelect_WorkSession; name: Standard_CString): handle[
    Standard_Transient] {.noSideEffect, importcpp: "NamedItem",
                         header: "IFSelect_WorkSession.hxx".}
proc NamedItem*(this: IFSelect_WorkSession; name: handle[TCollection_HAsciiString]): handle[
    Standard_Transient] {.noSideEffect, importcpp: "NamedItem",
                         header: "IFSelect_WorkSession.hxx".}
proc NameIdent*(this: IFSelect_WorkSession; name: Standard_CString): Standard_Integer {.
    noSideEffect, importcpp: "NameIdent", header: "IFSelect_WorkSession.hxx".}
proc HasName*(this: IFSelect_WorkSession; item: handle[Standard_Transient]): Standard_Boolean {.
    noSideEffect, importcpp: "HasName", header: "IFSelect_WorkSession.hxx".}
proc Name*(this: IFSelect_WorkSession; item: handle[Standard_Transient]): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "Name",
                               header: "IFSelect_WorkSession.hxx".}
proc AddItem*(this: var IFSelect_WorkSession; item: handle[Standard_Transient];
             active: Standard_Boolean = Standard_True): Standard_Integer {.
    importcpp: "AddItem", header: "IFSelect_WorkSession.hxx".}
proc AddNamedItem*(this: var IFSelect_WorkSession; name: Standard_CString;
                  item: handle[Standard_Transient];
                  active: Standard_Boolean = Standard_True): Standard_Integer {.
    importcpp: "AddNamedItem", header: "IFSelect_WorkSession.hxx".}
proc SetActive*(this: var IFSelect_WorkSession; item: handle[Standard_Transient];
               mode: Standard_Boolean): Standard_Boolean {.importcpp: "SetActive",
    header: "IFSelect_WorkSession.hxx".}
proc RemoveNamedItem*(this: var IFSelect_WorkSession; name: Standard_CString): Standard_Boolean {.
    importcpp: "RemoveNamedItem", header: "IFSelect_WorkSession.hxx".}
proc RemoveName*(this: var IFSelect_WorkSession; name: Standard_CString): Standard_Boolean {.
    importcpp: "RemoveName", header: "IFSelect_WorkSession.hxx".}
proc RemoveItem*(this: var IFSelect_WorkSession; item: handle[Standard_Transient]): Standard_Boolean {.
    importcpp: "RemoveItem", header: "IFSelect_WorkSession.hxx".}
proc ClearItems*(this: var IFSelect_WorkSession) {.importcpp: "ClearItems",
    header: "IFSelect_WorkSession.hxx".}
proc ItemLabel*(this: IFSelect_WorkSession; id: Standard_Integer): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "ItemLabel",
                               header: "IFSelect_WorkSession.hxx".}
proc ItemIdents*(this: IFSelect_WorkSession; `type`: handle[Standard_Type]): handle[
    TColStd_HSequenceOfInteger] {.noSideEffect, importcpp: "ItemIdents",
                                 header: "IFSelect_WorkSession.hxx".}
proc ItemNames*(this: IFSelect_WorkSession; `type`: handle[Standard_Type]): handle[
    TColStd_HSequenceOfHAsciiString] {.noSideEffect, importcpp: "ItemNames",
                                      header: "IFSelect_WorkSession.hxx".}
proc ItemNamesForLabel*(this: IFSelect_WorkSession; label: Standard_CString): handle[
    TColStd_HSequenceOfHAsciiString] {.noSideEffect,
                                      importcpp: "ItemNamesForLabel",
                                      header: "IFSelect_WorkSession.hxx".}
proc NextIdentForLabel*(this: IFSelect_WorkSession; label: Standard_CString;
                       id: Standard_Integer; mode: Standard_Integer = 0): Standard_Integer {.
    noSideEffect, importcpp: "NextIdentForLabel",
    header: "IFSelect_WorkSession.hxx".}
proc NewParamFromStatic*(this: var IFSelect_WorkSession; statname: Standard_CString;
                        name: Standard_CString = ""): handle[Standard_Transient] {.
    importcpp: "NewParamFromStatic", header: "IFSelect_WorkSession.hxx".}
proc IntParam*(this: IFSelect_WorkSession; id: Standard_Integer): handle[
    IFSelect_IntParam] {.noSideEffect, importcpp: "IntParam",
                        header: "IFSelect_WorkSession.hxx".}
proc IntValue*(this: IFSelect_WorkSession; it: handle[IFSelect_IntParam]): Standard_Integer {.
    noSideEffect, importcpp: "IntValue", header: "IFSelect_WorkSession.hxx".}
proc NewIntParam*(this: var IFSelect_WorkSession; name: Standard_CString = ""): handle[
    IFSelect_IntParam] {.importcpp: "NewIntParam",
                        header: "IFSelect_WorkSession.hxx".}
proc SetIntValue*(this: var IFSelect_WorkSession; it: handle[IFSelect_IntParam];
                 val: Standard_Integer): Standard_Boolean {.
    importcpp: "SetIntValue", header: "IFSelect_WorkSession.hxx".}
proc TextParam*(this: IFSelect_WorkSession; id: Standard_Integer): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "TextParam",
                               header: "IFSelect_WorkSession.hxx".}
proc TextValue*(this: IFSelect_WorkSession; par: handle[TCollection_HAsciiString]): TCollection_AsciiString {.
    noSideEffect, importcpp: "TextValue", header: "IFSelect_WorkSession.hxx".}
proc NewTextParam*(this: var IFSelect_WorkSession; name: Standard_CString = ""): handle[
    TCollection_HAsciiString] {.importcpp: "NewTextParam",
                               header: "IFSelect_WorkSession.hxx".}
proc SetTextValue*(this: var IFSelect_WorkSession;
                  par: handle[TCollection_HAsciiString]; val: Standard_CString): Standard_Boolean {.
    importcpp: "SetTextValue", header: "IFSelect_WorkSession.hxx".}
proc Signature*(this: IFSelect_WorkSession; id: Standard_Integer): handle[
    IFSelect_Signature] {.noSideEffect, importcpp: "Signature",
                         header: "IFSelect_WorkSession.hxx".}
proc SignValue*(this: IFSelect_WorkSession; sign: handle[IFSelect_Signature];
               ent: handle[Standard_Transient]): Standard_CString {.noSideEffect,
    importcpp: "SignValue", header: "IFSelect_WorkSession.hxx".}
proc Selection*(this: IFSelect_WorkSession; id: Standard_Integer): handle[
    IFSelect_Selection] {.noSideEffect, importcpp: "Selection",
                         header: "IFSelect_WorkSession.hxx".}
proc EvalSelection*(this: IFSelect_WorkSession; sel: handle[IFSelect_Selection]): Interface_EntityIterator {.
    noSideEffect, importcpp: "EvalSelection", header: "IFSelect_WorkSession.hxx".}
proc Sources*(this: IFSelect_WorkSession; sel: handle[IFSelect_Selection]): IFSelect_SelectionIterator {.
    noSideEffect, importcpp: "Sources", header: "IFSelect_WorkSession.hxx".}
proc SelectionResult*(this: IFSelect_WorkSession; sel: handle[IFSelect_Selection]): handle[
    TColStd_HSequenceOfTransient] {.noSideEffect, importcpp: "SelectionResult",
                                   header: "IFSelect_WorkSession.hxx".}
proc SelectionResultFromList*(this: IFSelect_WorkSession;
                             sel: handle[IFSelect_Selection];
                             list: handle[TColStd_HSequenceOfTransient]): handle[
    TColStd_HSequenceOfTransient] {.noSideEffect,
                                   importcpp: "SelectionResultFromList",
                                   header: "IFSelect_WorkSession.hxx".}
proc SetItemSelection*(this: var IFSelect_WorkSession;
                      item: handle[Standard_Transient];
                      sel: handle[IFSelect_Selection]): Standard_Boolean {.
    importcpp: "SetItemSelection", header: "IFSelect_WorkSession.hxx".}
proc ResetItemSelection*(this: var IFSelect_WorkSession;
                        item: handle[Standard_Transient]): Standard_Boolean {.
    importcpp: "ResetItemSelection", header: "IFSelect_WorkSession.hxx".}
proc ItemSelection*(this: IFSelect_WorkSession; item: handle[Standard_Transient]): handle[
    IFSelect_Selection] {.noSideEffect, importcpp: "ItemSelection",
                         header: "IFSelect_WorkSession.hxx".}
proc SignCounter*(this: IFSelect_WorkSession; id: Standard_Integer): handle[
    IFSelect_SignCounter] {.noSideEffect, importcpp: "SignCounter",
                           header: "IFSelect_WorkSession.hxx".}
proc ComputeCounter*(this: var IFSelect_WorkSession;
                    counter: handle[IFSelect_SignCounter];
                    forced: Standard_Boolean = Standard_False): Standard_Boolean {.
    importcpp: "ComputeCounter", header: "IFSelect_WorkSession.hxx".}
proc ComputeCounterFromList*(this: var IFSelect_WorkSession;
                            counter: handle[IFSelect_SignCounter];
                            list: handle[TColStd_HSequenceOfTransient];
                            clear: Standard_Boolean = Standard_True): Standard_Boolean {.
    importcpp: "ComputeCounterFromList", header: "IFSelect_WorkSession.hxx".}
proc AppliedDispatches*(this: IFSelect_WorkSession): handle[
    TColStd_HSequenceOfInteger] {.noSideEffect, importcpp: "AppliedDispatches",
                                 header: "IFSelect_WorkSession.hxx".}
proc ClearShareOut*(this: var IFSelect_WorkSession; onlydisp: Standard_Boolean) {.
    importcpp: "ClearShareOut", header: "IFSelect_WorkSession.hxx".}
proc Dispatch*(this: IFSelect_WorkSession; id: Standard_Integer): handle[
    IFSelect_Dispatch] {.noSideEffect, importcpp: "Dispatch",
                        header: "IFSelect_WorkSession.hxx".}
proc DispatchRank*(this: IFSelect_WorkSession; disp: handle[IFSelect_Dispatch]): Standard_Integer {.
    noSideEffect, importcpp: "DispatchRank", header: "IFSelect_WorkSession.hxx".}
proc ModelCopier*(this: IFSelect_WorkSession): handle[IFSelect_ModelCopier] {.
    noSideEffect, importcpp: "ModelCopier", header: "IFSelect_WorkSession.hxx".}
proc SetModelCopier*(this: var IFSelect_WorkSession;
                    copier: handle[IFSelect_ModelCopier]) {.
    importcpp: "SetModelCopier", header: "IFSelect_WorkSession.hxx".}
proc NbFinalModifiers*(this: IFSelect_WorkSession; formodel: Standard_Boolean): Standard_Integer {.
    noSideEffect, importcpp: "NbFinalModifiers", header: "IFSelect_WorkSession.hxx".}
proc FinalModifierIdents*(this: IFSelect_WorkSession; formodel: Standard_Boolean): handle[
    TColStd_HSequenceOfInteger] {.noSideEffect, importcpp: "FinalModifierIdents",
                                 header: "IFSelect_WorkSession.hxx".}
proc GeneralModifier*(this: IFSelect_WorkSession; id: Standard_Integer): handle[
    IFSelect_GeneralModifier] {.noSideEffect, importcpp: "GeneralModifier",
                               header: "IFSelect_WorkSession.hxx".}
proc ModelModifier*(this: IFSelect_WorkSession; id: Standard_Integer): handle[
    IFSelect_Modifier] {.noSideEffect, importcpp: "ModelModifier",
                        header: "IFSelect_WorkSession.hxx".}
proc ModifierRank*(this: IFSelect_WorkSession;
                  item: handle[IFSelect_GeneralModifier]): Standard_Integer {.
    noSideEffect, importcpp: "ModifierRank", header: "IFSelect_WorkSession.hxx".}
proc ChangeModifierRank*(this: var IFSelect_WorkSession; formodel: Standard_Boolean;
                        before: Standard_Integer; after: Standard_Integer): Standard_Boolean {.
    importcpp: "ChangeModifierRank", header: "IFSelect_WorkSession.hxx".}
proc ClearFinalModifiers*(this: var IFSelect_WorkSession) {.
    importcpp: "ClearFinalModifiers", header: "IFSelect_WorkSession.hxx".}
proc SetAppliedModifier*(this: var IFSelect_WorkSession;
                        modif: handle[IFSelect_GeneralModifier];
                        item: handle[Standard_Transient]): Standard_Boolean {.
    importcpp: "SetAppliedModifier", header: "IFSelect_WorkSession.hxx".}
proc ResetAppliedModifier*(this: var IFSelect_WorkSession;
                          modif: handle[IFSelect_GeneralModifier]): Standard_Boolean {.
    importcpp: "ResetAppliedModifier", header: "IFSelect_WorkSession.hxx".}
proc UsesAppliedModifier*(this: IFSelect_WorkSession;
                         modif: handle[IFSelect_GeneralModifier]): handle[
    Standard_Transient] {.noSideEffect, importcpp: "UsesAppliedModifier",
                         header: "IFSelect_WorkSession.hxx".}
proc Transformer*(this: IFSelect_WorkSession; id: Standard_Integer): handle[
    IFSelect_Transformer] {.noSideEffect, importcpp: "Transformer",
                           header: "IFSelect_WorkSession.hxx".}
proc RunTransformer*(this: var IFSelect_WorkSession;
                    transf: handle[IFSelect_Transformer]): Standard_Integer {.
    importcpp: "RunTransformer", header: "IFSelect_WorkSession.hxx".}
proc RunModifier*(this: var IFSelect_WorkSession; modif: handle[IFSelect_Modifier];
                 copy: Standard_Boolean): Standard_Integer {.
    importcpp: "RunModifier", header: "IFSelect_WorkSession.hxx".}
proc RunModifierSelected*(this: var IFSelect_WorkSession;
                         modif: handle[IFSelect_Modifier];
                         sel: handle[IFSelect_Selection]; copy: Standard_Boolean): Standard_Integer {.
    importcpp: "RunModifierSelected", header: "IFSelect_WorkSession.hxx".}
proc NewTransformStandard*(this: var IFSelect_WorkSession; copy: Standard_Boolean;
                          name: Standard_CString = ""): handle[IFSelect_Transformer] {.
    importcpp: "NewTransformStandard", header: "IFSelect_WorkSession.hxx".}
proc SetModelContent*(this: var IFSelect_WorkSession;
                     sel: handle[IFSelect_Selection]; keep: Standard_Boolean): Standard_Boolean {.
    importcpp: "SetModelContent", header: "IFSelect_WorkSession.hxx".}
proc FilePrefix*(this: IFSelect_WorkSession): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "FilePrefix", header: "IFSelect_WorkSession.hxx".}
proc DefaultFileRoot*(this: IFSelect_WorkSession): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "DefaultFileRoot", header: "IFSelect_WorkSession.hxx".}
proc FileExtension*(this: IFSelect_WorkSession): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "FileExtension", header: "IFSelect_WorkSession.hxx".}
proc FileRoot*(this: IFSelect_WorkSession; disp: handle[IFSelect_Dispatch]): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "FileRoot",
                               header: "IFSelect_WorkSession.hxx".}
proc SetFilePrefix*(this: var IFSelect_WorkSession; name: Standard_CString) {.
    importcpp: "SetFilePrefix", header: "IFSelect_WorkSession.hxx".}
proc SetDefaultFileRoot*(this: var IFSelect_WorkSession; name: Standard_CString): Standard_Boolean {.
    importcpp: "SetDefaultFileRoot", header: "IFSelect_WorkSession.hxx".}
proc SetFileExtension*(this: var IFSelect_WorkSession; name: Standard_CString) {.
    importcpp: "SetFileExtension", header: "IFSelect_WorkSession.hxx".}
proc SetFileRoot*(this: var IFSelect_WorkSession; disp: handle[IFSelect_Dispatch];
                 name: Standard_CString): Standard_Boolean {.
    importcpp: "SetFileRoot", header: "IFSelect_WorkSession.hxx".}
proc GiveFileRoot*(this: IFSelect_WorkSession; file: Standard_CString): Standard_CString {.
    noSideEffect, importcpp: "GiveFileRoot", header: "IFSelect_WorkSession.hxx".}
proc GiveFileComplete*(this: IFSelect_WorkSession; file: Standard_CString): Standard_CString {.
    noSideEffect, importcpp: "GiveFileComplete", header: "IFSelect_WorkSession.hxx".}
proc ClearFile*(this: var IFSelect_WorkSession) {.importcpp: "ClearFile",
    header: "IFSelect_WorkSession.hxx".}
proc EvaluateFile*(this: var IFSelect_WorkSession) {.importcpp: "EvaluateFile",
    header: "IFSelect_WorkSession.hxx".}
proc NbFiles*(this: IFSelect_WorkSession): Standard_Integer {.noSideEffect,
    importcpp: "NbFiles", header: "IFSelect_WorkSession.hxx".}
proc FileModel*(this: IFSelect_WorkSession; num: Standard_Integer): handle[
    Interface_InterfaceModel] {.noSideEffect, importcpp: "FileModel",
                               header: "IFSelect_WorkSession.hxx".}
proc FileName*(this: IFSelect_WorkSession; num: Standard_Integer): TCollection_AsciiString {.
    noSideEffect, importcpp: "FileName", header: "IFSelect_WorkSession.hxx".}
proc BeginSentFiles*(this: var IFSelect_WorkSession; record: Standard_Boolean) {.
    importcpp: "BeginSentFiles", header: "IFSelect_WorkSession.hxx".}
proc SentFiles*(this: IFSelect_WorkSession): handle[TColStd_HSequenceOfHAsciiString] {.
    noSideEffect, importcpp: "SentFiles", header: "IFSelect_WorkSession.hxx".}
proc SendSplit*(this: var IFSelect_WorkSession): Standard_Boolean {.
    importcpp: "SendSplit", header: "IFSelect_WorkSession.hxx".}
proc EvalSplit*(this: IFSelect_WorkSession): handle[IFSelect_PacketList] {.
    noSideEffect, importcpp: "EvalSplit", header: "IFSelect_WorkSession.hxx".}
proc SentList*(this: IFSelect_WorkSession; count: Standard_Integer = -1): Interface_EntityIterator {.
    noSideEffect, importcpp: "SentList", header: "IFSelect_WorkSession.hxx".}
proc MaxSendingCount*(this: IFSelect_WorkSession): Standard_Integer {.noSideEffect,
    importcpp: "MaxSendingCount", header: "IFSelect_WorkSession.hxx".}
proc SetRemaining*(this: var IFSelect_WorkSession; mode: IFSelect_RemainMode): Standard_Boolean {.
    importcpp: "SetRemaining", header: "IFSelect_WorkSession.hxx".}
proc SendAll*(this: var IFSelect_WorkSession; filename: Standard_CString;
             computegraph: Standard_Boolean = Standard_False): IFSelect_ReturnStatus {.
    importcpp: "SendAll", header: "IFSelect_WorkSession.hxx".}
proc SendSelected*(this: var IFSelect_WorkSession; filename: Standard_CString;
                  sel: handle[IFSelect_Selection];
                  computegraph: Standard_Boolean = Standard_False): IFSelect_ReturnStatus {.
    importcpp: "SendSelected", header: "IFSelect_WorkSession.hxx".}
proc WriteFile*(this: var IFSelect_WorkSession; filename: Standard_CString): IFSelect_ReturnStatus {.
    importcpp: "WriteFile", header: "IFSelect_WorkSession.hxx".}
proc WriteFile*(this: var IFSelect_WorkSession; filename: Standard_CString;
               sel: handle[IFSelect_Selection]): IFSelect_ReturnStatus {.
    importcpp: "WriteFile", header: "IFSelect_WorkSession.hxx".}
proc NbSources*(this: IFSelect_WorkSession; sel: handle[IFSelect_Selection]): Standard_Integer {.
    noSideEffect, importcpp: "NbSources", header: "IFSelect_WorkSession.hxx".}
proc Source*(this: IFSelect_WorkSession; sel: handle[IFSelect_Selection];
            num: Standard_Integer = 1): handle[IFSelect_Selection] {.noSideEffect,
    importcpp: "Source", header: "IFSelect_WorkSession.hxx".}
proc IsReversedSelectExtract*(this: IFSelect_WorkSession;
                             sel: handle[IFSelect_Selection]): Standard_Boolean {.
    noSideEffect, importcpp: "IsReversedSelectExtract",
    header: "IFSelect_WorkSession.hxx".}
proc ToggleSelectExtract*(this: var IFSelect_WorkSession;
                         sel: handle[IFSelect_Selection]): Standard_Boolean {.
    importcpp: "ToggleSelectExtract", header: "IFSelect_WorkSession.hxx".}
proc SetInputSelection*(this: var IFSelect_WorkSession;
                       sel: handle[IFSelect_Selection];
                       input: handle[IFSelect_Selection]): Standard_Boolean {.
    importcpp: "SetInputSelection", header: "IFSelect_WorkSession.hxx".}
proc SetControl*(this: var IFSelect_WorkSession; sel: handle[IFSelect_Selection];
                sc: handle[IFSelect_Selection];
                formain: Standard_Boolean = Standard_True): Standard_Boolean {.
    importcpp: "SetControl", header: "IFSelect_WorkSession.hxx".}
proc CombineAdd*(this: var IFSelect_WorkSession;
                selcomb: handle[IFSelect_Selection];
                seladd: handle[IFSelect_Selection]; atnum: Standard_Integer = 0): Standard_Integer {.
    importcpp: "CombineAdd", header: "IFSelect_WorkSession.hxx".}
proc CombineRemove*(this: var IFSelect_WorkSession;
                   selcomb: handle[IFSelect_Selection];
                   selrem: handle[IFSelect_Selection]): Standard_Boolean {.
    importcpp: "CombineRemove", header: "IFSelect_WorkSession.hxx".}
proc NewSelectPointed*(this: var IFSelect_WorkSession;
                      list: handle[TColStd_HSequenceOfTransient];
                      name: Standard_CString): handle[IFSelect_Selection] {.
    importcpp: "NewSelectPointed", header: "IFSelect_WorkSession.hxx".}
proc SetSelectPointed*(this: IFSelect_WorkSession; sel: handle[IFSelect_Selection];
                      list: handle[TColStd_HSequenceOfTransient];
                      mode: Standard_Integer): Standard_Boolean {.noSideEffect,
    importcpp: "SetSelectPointed", header: "IFSelect_WorkSession.hxx".}
proc GiveSelection*(this: IFSelect_WorkSession; selname: Standard_CString): handle[
    IFSelect_Selection] {.noSideEffect, importcpp: "GiveSelection",
                         header: "IFSelect_WorkSession.hxx".}
proc GiveList*(this: IFSelect_WorkSession; obj: handle[Standard_Transient]): handle[
    TColStd_HSequenceOfTransient] {.noSideEffect, importcpp: "GiveList",
                                   header: "IFSelect_WorkSession.hxx".}
proc GiveList*(this: IFSelect_WorkSession; first: Standard_CString;
              second: Standard_CString = ""): handle[TColStd_HSequenceOfTransient] {.
    noSideEffect, importcpp: "GiveList", header: "IFSelect_WorkSession.hxx".}
proc GiveListFromList*(this: IFSelect_WorkSession; selname: Standard_CString;
                      ent: handle[Standard_Transient]): handle[
    TColStd_HSequenceOfTransient] {.noSideEffect, importcpp: "GiveListFromList",
                                   header: "IFSelect_WorkSession.hxx".}
proc GiveListCombined*(this: IFSelect_WorkSession;
                      l1: handle[TColStd_HSequenceOfTransient];
                      l2: handle[TColStd_HSequenceOfTransient];
                      mode: Standard_Integer): handle[TColStd_HSequenceOfTransient] {.
    noSideEffect, importcpp: "GiveListCombined", header: "IFSelect_WorkSession.hxx".}
proc QueryCheckList*(this: var IFSelect_WorkSession; chl: Interface_CheckIterator) {.
    importcpp: "QueryCheckList", header: "IFSelect_WorkSession.hxx".}
proc QueryCheckStatus*(this: IFSelect_WorkSession; ent: handle[Standard_Transient]): Standard_Integer {.
    noSideEffect, importcpp: "QueryCheckStatus", header: "IFSelect_WorkSession.hxx".}
proc QueryParent*(this: IFSelect_WorkSession; entdad: handle[Standard_Transient];
                 entson: handle[Standard_Transient]): Standard_Integer {.
    noSideEffect, importcpp: "QueryParent", header: "IFSelect_WorkSession.hxx".}
proc SetParams*(this: var IFSelect_WorkSession;
               params: NCollection_Vector[handle[Standard_Transient]];
               uselist: NCollection_Vector[Standard_Integer]) {.
    importcpp: "SetParams", header: "IFSelect_WorkSession.hxx".}
proc TraceStatics*(this: IFSelect_WorkSession; use: Standard_Integer;
                  mode: Standard_Integer = 0) {.noSideEffect,
    importcpp: "TraceStatics", header: "IFSelect_WorkSession.hxx".}
proc DumpShare*(this: IFSelect_WorkSession) {.noSideEffect, importcpp: "DumpShare",
    header: "IFSelect_WorkSession.hxx".}
proc ListItems*(this: IFSelect_WorkSession; label: Standard_CString = "") {.
    noSideEffect, importcpp: "ListItems", header: "IFSelect_WorkSession.hxx".}
proc ListFinalModifiers*(this: IFSelect_WorkSession; formodel: Standard_Boolean) {.
    noSideEffect, importcpp: "ListFinalModifiers",
    header: "IFSelect_WorkSession.hxx".}
proc DumpSelection*(this: IFSelect_WorkSession; sel: handle[IFSelect_Selection]) {.
    noSideEffect, importcpp: "DumpSelection", header: "IFSelect_WorkSession.hxx".}
proc DumpModel*(this: var IFSelect_WorkSession; level: Standard_Integer;
               S: var Standard_OStream) {.importcpp: "DumpModel",
                                       header: "IFSelect_WorkSession.hxx".}
proc TraceDumpModel*(this: var IFSelect_WorkSession; mode: Standard_Integer) {.
    importcpp: "TraceDumpModel", header: "IFSelect_WorkSession.hxx".}
proc DumpEntity*(this: IFSelect_WorkSession; ent: handle[Standard_Transient];
                level: Standard_Integer; S: var Standard_OStream) {.noSideEffect,
    importcpp: "DumpEntity", header: "IFSelect_WorkSession.hxx".}
proc PrintEntityStatus*(this: var IFSelect_WorkSession;
                       ent: handle[Standard_Transient]; S: var Standard_OStream) {.
    importcpp: "PrintEntityStatus", header: "IFSelect_WorkSession.hxx".}
proc TraceDumpEntity*(this: IFSelect_WorkSession; ent: handle[Standard_Transient];
                     level: Standard_Integer) {.noSideEffect,
    importcpp: "TraceDumpEntity", header: "IFSelect_WorkSession.hxx".}
proc PrintCheckList*(this: IFSelect_WorkSession; S: var Standard_OStream;
                    checklist: Interface_CheckIterator;
                    failsonly: Standard_Boolean; mode: IFSelect_PrintCount) {.
    noSideEffect, importcpp: "PrintCheckList", header: "IFSelect_WorkSession.hxx".}
proc PrintSignatureList*(this: IFSelect_WorkSession; S: var Standard_OStream;
                        signlist: handle[IFSelect_SignatureList];
                        mode: IFSelect_PrintCount) {.noSideEffect,
    importcpp: "PrintSignatureList", header: "IFSelect_WorkSession.hxx".}
proc EvaluateSelection*(this: IFSelect_WorkSession; sel: handle[IFSelect_Selection]) {.
    noSideEffect, importcpp: "EvaluateSelection",
    header: "IFSelect_WorkSession.hxx".}
proc EvaluateDispatch*(this: IFSelect_WorkSession; disp: handle[IFSelect_Dispatch];
                      mode: Standard_Integer = 0) {.noSideEffect,
    importcpp: "EvaluateDispatch", header: "IFSelect_WorkSession.hxx".}
proc EvaluateComplete*(this: IFSelect_WorkSession; mode: Standard_Integer = 0) {.
    noSideEffect, importcpp: "EvaluateComplete", header: "IFSelect_WorkSession.hxx".}
proc ListEntities*(this: IFSelect_WorkSession; iter: Interface_EntityIterator;
                  mode: Standard_Integer; S: var Standard_OStream) {.noSideEffect,
    importcpp: "ListEntities", header: "IFSelect_WorkSession.hxx".}
type
  IFSelect_WorkSessionbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "IFSelect_WorkSession::get_type_name(@)",
                              header: "IFSelect_WorkSession.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IFSelect_WorkSession::get_type_descriptor(@)",
    header: "IFSelect_WorkSession.hxx".}
proc DynamicType*(this: IFSelect_WorkSession): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IFSelect_WorkSession.hxx".}