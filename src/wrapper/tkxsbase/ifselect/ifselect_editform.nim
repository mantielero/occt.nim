##  Created on: 1998-02-23
##  Created by: Christian CAILLET
##  Copyright (c) 1998-1999 Matra Datavision
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

discard "forward decl of IFSelect_Editor"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of IFSelect_ListEditor"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of IFSelect_EditForm"
type
  HandleIFSelectEditForm* = Handle[IFSelectEditForm]

## ! An EditForm is the way to apply an Editor on an Entity or on
## ! the Model
## ! It gives read-only or read-write access, with or without undo
## !
## ! It can be complete (all the values of the Editor are present)
## ! or partial (a sub-list of these value are present)
## ! Anyway, all references to Number (argument <num>) refer to
## ! Number of Value for the Editor
## ! While references to Rank are for rank in the EditForm, which
## ! may differ if it is not Complete
## ! Two methods give the correspondance between this Number and
## ! the Rank in the EditForm : RankFromNumber and NumberFromRank

type
  IFSelectEditForm* {.importcpp: "IFSelect_EditForm",
                     header: "IFSelect_EditForm.hxx", bycopy.} = object of StandardTransient ##
                                                                                      ## !
                                                                                      ## Creates
                                                                                      ## a
                                                                                      ## complete
                                                                                      ## EditForm
                                                                                      ## from
                                                                                      ## an
                                                                                      ## Editor
                                                                                      ##
                                                                                      ## !
                                                                                      ## A
                                                                                      ## specific
                                                                                      ## Label
                                                                                      ## can
                                                                                      ## be
                                                                                      ## given


proc newIFSelectEditForm*(editor: Handle[IFSelectEditor]; readonly: bool;
                         undoable: bool; label: cstring = ""): IFSelectEditForm {.
    cdecl, constructor, importcpp: "IFSelect_EditForm(@)", header: "IFSelect_EditForm.hxx".}
proc newIFSelectEditForm*(editor: Handle[IFSelectEditor];
                         nums: TColStdSequenceOfInteger; readonly: bool;
                         undoable: bool; label: cstring = ""): IFSelectEditForm {.
    cdecl, constructor, importcpp: "IFSelect_EditForm(@)", header: "IFSelect_EditForm.hxx".}
proc editKeepStatus*(this: var IFSelectEditForm): var bool {.cdecl,
    importcpp: "EditKeepStatus", header: "IFSelect_EditForm.hxx".}
proc label*(this: IFSelectEditForm): cstring {.noSideEffect, cdecl,
    importcpp: "Label", header: "IFSelect_EditForm.hxx".}
proc isLoaded*(this: IFSelectEditForm): bool {.noSideEffect, cdecl,
    importcpp: "IsLoaded", header: "IFSelect_EditForm.hxx".}
proc clearData*(this: var IFSelectEditForm) {.cdecl, importcpp: "ClearData",
    header: "IFSelect_EditForm.hxx".}
proc setData*(this: var IFSelectEditForm; ent: Handle[StandardTransient];
             model: Handle[InterfaceInterfaceModel]) {.cdecl, importcpp: "SetData",
    header: "IFSelect_EditForm.hxx".}
proc setEntity*(this: var IFSelectEditForm; ent: Handle[StandardTransient]) {.cdecl,
    importcpp: "SetEntity", header: "IFSelect_EditForm.hxx".}
proc setModel*(this: var IFSelectEditForm; model: Handle[InterfaceInterfaceModel]) {.
    cdecl, importcpp: "SetModel", header: "IFSelect_EditForm.hxx".}
proc entity*(this: IFSelectEditForm): Handle[StandardTransient] {.noSideEffect,
    cdecl, importcpp: "Entity", header: "IFSelect_EditForm.hxx".}
proc model*(this: IFSelectEditForm): Handle[InterfaceInterfaceModel] {.noSideEffect,
    cdecl, importcpp: "Model", header: "IFSelect_EditForm.hxx".}
proc editor*(this: IFSelectEditForm): Handle[IFSelectEditor] {.noSideEffect, cdecl,
    importcpp: "Editor", header: "IFSelect_EditForm.hxx".}
proc isComplete*(this: IFSelectEditForm): bool {.noSideEffect, cdecl,
    importcpp: "IsComplete", header: "IFSelect_EditForm.hxx".}
proc nbValues*(this: IFSelectEditForm; editable: bool): cint {.noSideEffect, cdecl,
    importcpp: "NbValues", header: "IFSelect_EditForm.hxx".}
proc numberFromRank*(this: IFSelectEditForm; rank: cint): cint {.noSideEffect, cdecl,
    importcpp: "NumberFromRank", header: "IFSelect_EditForm.hxx".}
proc rankFromNumber*(this: IFSelectEditForm; number: cint): cint {.noSideEffect, cdecl,
    importcpp: "RankFromNumber", header: "IFSelect_EditForm.hxx".}
proc nameNumber*(this: IFSelectEditForm; name: cstring): cint {.noSideEffect, cdecl,
    importcpp: "NameNumber", header: "IFSelect_EditForm.hxx".}
proc nameRank*(this: IFSelectEditForm; name: cstring): cint {.noSideEffect, cdecl,
    importcpp: "NameRank", header: "IFSelect_EditForm.hxx".}
proc loadDefault*(this: var IFSelectEditForm) {.cdecl, importcpp: "LoadDefault",
    header: "IFSelect_EditForm.hxx".}
proc loadData*(this: var IFSelectEditForm; ent: Handle[StandardTransient];
              model: Handle[InterfaceInterfaceModel]): bool {.cdecl,
    importcpp: "LoadData", header: "IFSelect_EditForm.hxx".}
proc loadEntity*(this: var IFSelectEditForm; ent: Handle[StandardTransient]): bool {.
    cdecl, importcpp: "LoadEntity", header: "IFSelect_EditForm.hxx".}
proc loadModel*(this: var IFSelectEditForm; model: Handle[InterfaceInterfaceModel]): bool {.
    cdecl, importcpp: "LoadModel", header: "IFSelect_EditForm.hxx".}
proc loadData*(this: var IFSelectEditForm): bool {.cdecl, importcpp: "LoadData",
    header: "IFSelect_EditForm.hxx".}
proc listEditor*(this: IFSelectEditForm; num: cint): Handle[IFSelectListEditor] {.
    noSideEffect, cdecl, importcpp: "ListEditor", header: "IFSelect_EditForm.hxx".}
proc loadValue*(this: var IFSelectEditForm; num: cint;
               val: Handle[TCollectionHAsciiString]) {.cdecl,
    importcpp: "LoadValue", header: "IFSelect_EditForm.hxx".}
proc loadList*(this: var IFSelectEditForm; num: cint;
              list: Handle[TColStdHSequenceOfHAsciiString]) {.cdecl,
    importcpp: "LoadList", header: "IFSelect_EditForm.hxx".}
proc originalValue*(this: IFSelectEditForm; num: cint): Handle[
    TCollectionHAsciiString] {.noSideEffect, cdecl, importcpp: "OriginalValue",
                              header: "IFSelect_EditForm.hxx".}
proc originalList*(this: IFSelectEditForm; num: cint): Handle[
    TColStdHSequenceOfHAsciiString] {.noSideEffect, cdecl,
                                     importcpp: "OriginalList", header: "IFSelect_EditForm.hxx".}
proc editedValue*(this: IFSelectEditForm; num: cint): Handle[TCollectionHAsciiString] {.
    noSideEffect, cdecl, importcpp: "EditedValue", header: "IFSelect_EditForm.hxx".}
proc editedList*(this: IFSelectEditForm; num: cint): Handle[
    TColStdHSequenceOfHAsciiString] {.noSideEffect, cdecl, importcpp: "EditedList",
                                     header: "IFSelect_EditForm.hxx".}
proc isModified*(this: IFSelectEditForm; num: cint): bool {.noSideEffect, cdecl,
    importcpp: "IsModified", header: "IFSelect_EditForm.hxx".}
proc isTouched*(this: IFSelectEditForm; num: cint): bool {.noSideEffect, cdecl,
    importcpp: "IsTouched", header: "IFSelect_EditForm.hxx".}
proc modify*(this: var IFSelectEditForm; num: cint;
            newval: Handle[TCollectionHAsciiString]; enforce: bool = false): bool {.
    cdecl, importcpp: "Modify", header: "IFSelect_EditForm.hxx".}
proc modifyList*(this: var IFSelectEditForm; num: cint;
                edited: Handle[IFSelectListEditor]; enforce: bool = false): bool {.
    cdecl, importcpp: "ModifyList", header: "IFSelect_EditForm.hxx".}
proc modifyListValue*(this: var IFSelectEditForm; num: cint;
                     list: Handle[TColStdHSequenceOfHAsciiString];
                     enforce: bool = false): bool {.cdecl,
    importcpp: "ModifyListValue", header: "IFSelect_EditForm.hxx".}
proc touch*(this: var IFSelectEditForm; num: cint;
           newval: Handle[TCollectionHAsciiString]): bool {.cdecl,
    importcpp: "Touch", header: "IFSelect_EditForm.hxx".}
proc touchList*(this: var IFSelectEditForm; num: cint;
               newlist: Handle[TColStdHSequenceOfHAsciiString]): bool {.cdecl,
    importcpp: "TouchList", header: "IFSelect_EditForm.hxx".}
proc nbTouched*(this: IFSelectEditForm): cint {.noSideEffect, cdecl,
    importcpp: "NbTouched", header: "IFSelect_EditForm.hxx".}
proc clearEdit*(this: var IFSelectEditForm; num: cint = 0) {.cdecl,
    importcpp: "ClearEdit", header: "IFSelect_EditForm.hxx".}
proc printDefs*(this: IFSelectEditForm; s: var StandardOStream) {.noSideEffect, cdecl,
    importcpp: "PrintDefs", header: "IFSelect_EditForm.hxx".}
proc printValues*(this: IFSelectEditForm; s: var StandardOStream; what: cint;
                 names: bool; alsolist: bool = false) {.noSideEffect, cdecl,
    importcpp: "PrintValues", header: "IFSelect_EditForm.hxx".}
proc apply*(this: var IFSelectEditForm): bool {.cdecl, importcpp: "Apply",
    header: "IFSelect_EditForm.hxx".}
proc recognize*(this: IFSelectEditForm): bool {.noSideEffect, cdecl,
    importcpp: "Recognize", header: "IFSelect_EditForm.hxx".}
proc applyData*(this: var IFSelectEditForm; ent: Handle[StandardTransient];
               model: Handle[InterfaceInterfaceModel]): bool {.cdecl,
    importcpp: "ApplyData", header: "IFSelect_EditForm.hxx".}
proc undo*(this: var IFSelectEditForm): bool {.cdecl, importcpp: "Undo",
    header: "IFSelect_EditForm.hxx".}