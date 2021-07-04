##  Created on: 1993-08-26
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
  IFSelect_SequenceOfInterfaceModel, ../TColStd/TColStd_SequenceOfAsciiString,
  IFSelect_SequenceOfAppliedModifiers, ../TColStd/TColStd_HArray1OfInteger,
  ../TColStd/TColStd_HSequenceOfHAsciiString, ../Standard/Standard_Transient,
  ../Standard/Standard_Boolean, ../Standard/Standard_Integer,
  ../Standard/Standard_CString

discard "forward decl of IFSelect_ShareOut"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of IFSelect_AppliedModifiers"
discard "forward decl of Interface_CheckIterator"
discard "forward decl of IFSelect_ShareOutResult"
discard "forward decl of IFSelect_WorkLibrary"
discard "forward decl of Interface_Protocol"
discard "forward decl of Interface_CopyTool"
discard "forward decl of Interface_Graph"
discard "forward decl of Interface_EntityIterator"
discard "forward decl of IFSelect_ModelCopier"
discard "forward decl of IFSelect_ModelCopier"
type
  Handle_IFSelect_ModelCopier* = handle[IFSelect_ModelCopier]

## ! This class performs the Copy operations involved by the
## ! description of a ShareOut (evaluated by a ShareOutResult)
## ! plus, if there are, the Modifications on the results, with
## ! the help of Modifiers. Each Modifier can work on one or more
## ! resulting packets, accoding its criteria : it operates on a
## ! Model once copied and filled with the content of the packet.
## !
## ! Modifiers can be :
## ! - Model Modifiers, inheriting from the specific class Modifier
## ! able to run on the content of a Model (header or entities),
## ! activated by the ModelCopier itself
## ! - File Modifiers, inheriting directly from GeneralModifier,
## ! intended to be activated under the control of a WorkLibrary,
## ! once the Model has been produced (i.e. to act on output
## ! format, or other specific file features)
## !
## ! The Copy operations can be :
## ! - immediately put to files : for each packet, a Model is
## ! created and filled, then the file is output, at that's all
## ! - memorized : for each packet, a Model is created and filled,
## ! it is memorized with the corresponding file name.
## ! it is possible to query the result of memorization (list of
## ! produced Models and their file names)
## ! -> it is also possible to send it into the files :
## ! once files are written, the result is cleared
## !
## ! In addition, a list of really written files is managed :
## ! A first call to BeginSentFiles clears the list and commands,
## ! either to begin a new list, or to stop recording it. A call
## ! to SentFiles returns the list (if recording has been required)
## ! This list allows to globally exploit the set of produced files
## !
## ! Remark : For operations which concern specific Entities, see
## ! also in package IFAdapt : a sub-class of ModelCopier allows
## ! to work with EntityModifier, in addition to Modifier itself
## ! which still applies to a whole copied Model.

type
  IFSelect_ModelCopier* {.importcpp: "IFSelect_ModelCopier",
                         header: "IFSelect_ModelCopier.hxx", bycopy.} = object of Standard_Transient ##
                                                                                              ## !
                                                                                              ## Creates
                                                                                              ## an
                                                                                              ## empty
                                                                                              ## ModelCopier
                                                                                              ##
                                                                                              ## !
                                                                                              ## Internal
                                                                                              ## routine
                                                                                              ## which
                                                                                              ## does
                                                                                              ## the
                                                                                              ## effective
                                                                                              ## Copy.
                                                                                              ## It
                                                                                              ## allows
                                                                                              ## to
                                                                                              ##
                                                                                              ## !
                                                                                              ## work,
                                                                                              ## either
                                                                                              ## with
                                                                                              ## a
                                                                                              ## standard
                                                                                              ## CopyTool,
                                                                                              ## or
                                                                                              ## a
                                                                                              ## specialised
                                                                                              ## one
                                                                                              ##
                                                                                              ## !
                                                                                              ## Copying
                                                                                              ## itself
                                                                                              ## is
                                                                                              ## done
                                                                                              ## by
                                                                                              ## <WL>
                                                                                              ## which
                                                                                              ## uses
                                                                                              ## a
                                                                                              ## CopyTool


proc constructIFSelect_ModelCopier*(): IFSelect_ModelCopier {.constructor,
    importcpp: "IFSelect_ModelCopier(@)", header: "IFSelect_ModelCopier.hxx".}
proc SetShareOut*(this: var IFSelect_ModelCopier; sho: handle[IFSelect_ShareOut]) {.
    importcpp: "SetShareOut", header: "IFSelect_ModelCopier.hxx".}
proc ClearResult*(this: var IFSelect_ModelCopier) {.importcpp: "ClearResult",
    header: "IFSelect_ModelCopier.hxx".}
proc AddFile*(this: var IFSelect_ModelCopier; filename: TCollection_AsciiString;
             content: handle[Interface_InterfaceModel]): Standard_Boolean {.
    importcpp: "AddFile", header: "IFSelect_ModelCopier.hxx".}
proc NameFile*(this: var IFSelect_ModelCopier; num: Standard_Integer;
              filename: TCollection_AsciiString): Standard_Boolean {.
    importcpp: "NameFile", header: "IFSelect_ModelCopier.hxx".}
proc ClearFile*(this: var IFSelect_ModelCopier; num: Standard_Integer): Standard_Boolean {.
    importcpp: "ClearFile", header: "IFSelect_ModelCopier.hxx".}
proc SetAppliedModifiers*(this: var IFSelect_ModelCopier; num: Standard_Integer;
                         applied: handle[IFSelect_AppliedModifiers]): Standard_Boolean {.
    importcpp: "SetAppliedModifiers", header: "IFSelect_ModelCopier.hxx".}
proc ClearAppliedModifiers*(this: var IFSelect_ModelCopier; num: Standard_Integer): Standard_Boolean {.
    importcpp: "ClearAppliedModifiers", header: "IFSelect_ModelCopier.hxx".}
proc Copy*(this: var IFSelect_ModelCopier; eval: var IFSelect_ShareOutResult;
          WL: handle[IFSelect_WorkLibrary]; protocol: handle[Interface_Protocol]): Interface_CheckIterator {.
    importcpp: "Copy", header: "IFSelect_ModelCopier.hxx".}
proc SendCopied*(this: var IFSelect_ModelCopier; WL: handle[IFSelect_WorkLibrary];
                protocol: handle[Interface_Protocol]): Interface_CheckIterator {.
    importcpp: "SendCopied", header: "IFSelect_ModelCopier.hxx".}
proc Send*(this: var IFSelect_ModelCopier; eval: var IFSelect_ShareOutResult;
          WL: handle[IFSelect_WorkLibrary]; protocol: handle[Interface_Protocol]): Interface_CheckIterator {.
    importcpp: "Send", header: "IFSelect_ModelCopier.hxx".}
proc SendAll*(this: var IFSelect_ModelCopier; filename: Standard_CString;
             G: Interface_Graph; WL: handle[IFSelect_WorkLibrary];
             protocol: handle[Interface_Protocol]): Interface_CheckIterator {.
    importcpp: "SendAll", header: "IFSelect_ModelCopier.hxx".}
proc SendSelected*(this: var IFSelect_ModelCopier; filename: Standard_CString;
                  G: Interface_Graph; WL: handle[IFSelect_WorkLibrary];
                  protocol: handle[Interface_Protocol];
                  iter: Interface_EntityIterator): Interface_CheckIterator {.
    importcpp: "SendSelected", header: "IFSelect_ModelCopier.hxx".}
proc CopiedRemaining*(this: var IFSelect_ModelCopier; G: Interface_Graph;
                     WL: handle[IFSelect_WorkLibrary]; TC: var Interface_CopyTool;
                     newmod: var handle[Interface_InterfaceModel]) {.
    importcpp: "CopiedRemaining", header: "IFSelect_ModelCopier.hxx".}
proc SetRemaining*(this: IFSelect_ModelCopier; CG: var Interface_Graph): Standard_Boolean {.
    noSideEffect, importcpp: "SetRemaining", header: "IFSelect_ModelCopier.hxx".}
proc NbFiles*(this: IFSelect_ModelCopier): Standard_Integer {.noSideEffect,
    importcpp: "NbFiles", header: "IFSelect_ModelCopier.hxx".}
proc FileName*(this: IFSelect_ModelCopier; num: Standard_Integer): TCollection_AsciiString {.
    noSideEffect, importcpp: "FileName", header: "IFSelect_ModelCopier.hxx".}
proc FileModel*(this: IFSelect_ModelCopier; num: Standard_Integer): handle[
    Interface_InterfaceModel] {.noSideEffect, importcpp: "FileModel",
                               header: "IFSelect_ModelCopier.hxx".}
proc AppliedModifiers*(this: IFSelect_ModelCopier; num: Standard_Integer): handle[
    IFSelect_AppliedModifiers] {.noSideEffect, importcpp: "AppliedModifiers",
                                header: "IFSelect_ModelCopier.hxx".}
proc BeginSentFiles*(this: var IFSelect_ModelCopier; sho: handle[IFSelect_ShareOut];
                    record: Standard_Boolean) {.importcpp: "BeginSentFiles",
    header: "IFSelect_ModelCopier.hxx".}
proc AddSentFile*(this: var IFSelect_ModelCopier; filename: Standard_CString) {.
    importcpp: "AddSentFile", header: "IFSelect_ModelCopier.hxx".}
proc SentFiles*(this: IFSelect_ModelCopier): handle[TColStd_HSequenceOfHAsciiString] {.
    noSideEffect, importcpp: "SentFiles", header: "IFSelect_ModelCopier.hxx".}
type
  IFSelect_ModelCopierbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "IFSelect_ModelCopier::get_type_name(@)",
                              header: "IFSelect_ModelCopier.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IFSelect_ModelCopier::get_type_descriptor(@)",
    header: "IFSelect_ModelCopier.hxx".}
proc DynamicType*(this: IFSelect_ModelCopier): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IFSelect_ModelCopier.hxx".}