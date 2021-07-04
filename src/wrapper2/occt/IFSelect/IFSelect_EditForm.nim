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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Boolean,
  ../TCollection/TCollection_AsciiString, ../TColStd/TColStd_Array1OfInteger,
  ../TColStd/TColStd_Array1OfTransient, ../Standard/Standard_Integer,
  ../Standard/Standard_Transient, ../Standard/Standard_CString,
  ../TColStd/TColStd_SequenceOfInteger,
  ../TColStd/TColStd_HSequenceOfHAsciiString

discard "forward decl of IFSelect_Editor"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of IFSelect_ListEditor"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of IFSelect_EditForm"
discard "forward decl of IFSelect_EditForm"
type
  Handle_IFSelect_EditForm* = handle[IFSelect_EditForm]

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
  IFSelect_EditForm* {.importcpp: "IFSelect_EditForm",
                      header: "IFSelect_EditForm.hxx", bycopy.} = object of Standard_Transient ##
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


proc constructIFSelect_EditForm*(editor: handle[IFSelect_Editor];
                                readonly: Standard_Boolean;
                                undoable: Standard_Boolean;
                                label: Standard_CString = ""): IFSelect_EditForm {.
    constructor, importcpp: "IFSelect_EditForm(@)", header: "IFSelect_EditForm.hxx".}
proc constructIFSelect_EditForm*(editor: handle[IFSelect_Editor];
                                nums: TColStd_SequenceOfInteger;
                                readonly: Standard_Boolean;
                                undoable: Standard_Boolean;
                                label: Standard_CString = ""): IFSelect_EditForm {.
    constructor, importcpp: "IFSelect_EditForm(@)", header: "IFSelect_EditForm.hxx".}
proc EditKeepStatus*(this: var IFSelect_EditForm): var Standard_Boolean {.
    importcpp: "EditKeepStatus", header: "IFSelect_EditForm.hxx".}
proc Label*(this: IFSelect_EditForm): Standard_CString {.noSideEffect,
    importcpp: "Label", header: "IFSelect_EditForm.hxx".}
proc IsLoaded*(this: IFSelect_EditForm): Standard_Boolean {.noSideEffect,
    importcpp: "IsLoaded", header: "IFSelect_EditForm.hxx".}
proc ClearData*(this: var IFSelect_EditForm) {.importcpp: "ClearData",
    header: "IFSelect_EditForm.hxx".}
proc SetData*(this: var IFSelect_EditForm; ent: handle[Standard_Transient];
             model: handle[Interface_InterfaceModel]) {.importcpp: "SetData",
    header: "IFSelect_EditForm.hxx".}
proc SetEntity*(this: var IFSelect_EditForm; ent: handle[Standard_Transient]) {.
    importcpp: "SetEntity", header: "IFSelect_EditForm.hxx".}
proc SetModel*(this: var IFSelect_EditForm; model: handle[Interface_InterfaceModel]) {.
    importcpp: "SetModel", header: "IFSelect_EditForm.hxx".}
proc Entity*(this: IFSelect_EditForm): handle[Standard_Transient] {.noSideEffect,
    importcpp: "Entity", header: "IFSelect_EditForm.hxx".}
proc Model*(this: IFSelect_EditForm): handle[Interface_InterfaceModel] {.
    noSideEffect, importcpp: "Model", header: "IFSelect_EditForm.hxx".}
proc Editor*(this: IFSelect_EditForm): handle[IFSelect_Editor] {.noSideEffect,
    importcpp: "Editor", header: "IFSelect_EditForm.hxx".}
proc IsComplete*(this: IFSelect_EditForm): Standard_Boolean {.noSideEffect,
    importcpp: "IsComplete", header: "IFSelect_EditForm.hxx".}
proc NbValues*(this: IFSelect_EditForm; editable: Standard_Boolean): Standard_Integer {.
    noSideEffect, importcpp: "NbValues", header: "IFSelect_EditForm.hxx".}
proc NumberFromRank*(this: IFSelect_EditForm; rank: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "NumberFromRank", header: "IFSelect_EditForm.hxx".}
proc RankFromNumber*(this: IFSelect_EditForm; number: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "RankFromNumber", header: "IFSelect_EditForm.hxx".}
proc NameNumber*(this: IFSelect_EditForm; name: Standard_CString): Standard_Integer {.
    noSideEffect, importcpp: "NameNumber", header: "IFSelect_EditForm.hxx".}
proc NameRank*(this: IFSelect_EditForm; name: Standard_CString): Standard_Integer {.
    noSideEffect, importcpp: "NameRank", header: "IFSelect_EditForm.hxx".}
proc LoadDefault*(this: var IFSelect_EditForm) {.importcpp: "LoadDefault",
    header: "IFSelect_EditForm.hxx".}
proc LoadData*(this: var IFSelect_EditForm; ent: handle[Standard_Transient];
              model: handle[Interface_InterfaceModel]): Standard_Boolean {.
    importcpp: "LoadData", header: "IFSelect_EditForm.hxx".}
proc LoadEntity*(this: var IFSelect_EditForm; ent: handle[Standard_Transient]): Standard_Boolean {.
    importcpp: "LoadEntity", header: "IFSelect_EditForm.hxx".}
proc LoadModel*(this: var IFSelect_EditForm; model: handle[Interface_InterfaceModel]): Standard_Boolean {.
    importcpp: "LoadModel", header: "IFSelect_EditForm.hxx".}
proc LoadData*(this: var IFSelect_EditForm): Standard_Boolean {.
    importcpp: "LoadData", header: "IFSelect_EditForm.hxx".}
proc ListEditor*(this: IFSelect_EditForm; num: Standard_Integer): handle[
    IFSelect_ListEditor] {.noSideEffect, importcpp: "ListEditor",
                          header: "IFSelect_EditForm.hxx".}
proc LoadValue*(this: var IFSelect_EditForm; num: Standard_Integer;
               val: handle[TCollection_HAsciiString]) {.importcpp: "LoadValue",
    header: "IFSelect_EditForm.hxx".}
proc LoadList*(this: var IFSelect_EditForm; num: Standard_Integer;
              list: handle[TColStd_HSequenceOfHAsciiString]) {.
    importcpp: "LoadList", header: "IFSelect_EditForm.hxx".}
proc OriginalValue*(this: IFSelect_EditForm; num: Standard_Integer): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "OriginalValue",
                               header: "IFSelect_EditForm.hxx".}
proc OriginalList*(this: IFSelect_EditForm; num: Standard_Integer): handle[
    TColStd_HSequenceOfHAsciiString] {.noSideEffect, importcpp: "OriginalList",
                                      header: "IFSelect_EditForm.hxx".}
proc EditedValue*(this: IFSelect_EditForm; num: Standard_Integer): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "EditedValue",
                               header: "IFSelect_EditForm.hxx".}
proc EditedList*(this: IFSelect_EditForm; num: Standard_Integer): handle[
    TColStd_HSequenceOfHAsciiString] {.noSideEffect, importcpp: "EditedList",
                                      header: "IFSelect_EditForm.hxx".}
proc IsModified*(this: IFSelect_EditForm; num: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsModified", header: "IFSelect_EditForm.hxx".}
proc IsTouched*(this: IFSelect_EditForm; num: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsTouched", header: "IFSelect_EditForm.hxx".}
proc Modify*(this: var IFSelect_EditForm; num: Standard_Integer;
            newval: handle[TCollection_HAsciiString];
            enforce: Standard_Boolean = Standard_False): Standard_Boolean {.
    importcpp: "Modify", header: "IFSelect_EditForm.hxx".}
proc ModifyList*(this: var IFSelect_EditForm; num: Standard_Integer;
                edited: handle[IFSelect_ListEditor];
                enforce: Standard_Boolean = Standard_False): Standard_Boolean {.
    importcpp: "ModifyList", header: "IFSelect_EditForm.hxx".}
proc ModifyListValue*(this: var IFSelect_EditForm; num: Standard_Integer;
                     list: handle[TColStd_HSequenceOfHAsciiString];
                     enforce: Standard_Boolean = Standard_False): Standard_Boolean {.
    importcpp: "ModifyListValue", header: "IFSelect_EditForm.hxx".}
proc Touch*(this: var IFSelect_EditForm; num: Standard_Integer;
           newval: handle[TCollection_HAsciiString]): Standard_Boolean {.
    importcpp: "Touch", header: "IFSelect_EditForm.hxx".}
proc TouchList*(this: var IFSelect_EditForm; num: Standard_Integer;
               newlist: handle[TColStd_HSequenceOfHAsciiString]): Standard_Boolean {.
    importcpp: "TouchList", header: "IFSelect_EditForm.hxx".}
proc NbTouched*(this: IFSelect_EditForm): Standard_Integer {.noSideEffect,
    importcpp: "NbTouched", header: "IFSelect_EditForm.hxx".}
proc ClearEdit*(this: var IFSelect_EditForm; num: Standard_Integer = 0) {.
    importcpp: "ClearEdit", header: "IFSelect_EditForm.hxx".}
proc PrintDefs*(this: IFSelect_EditForm; S: var Standard_OStream) {.noSideEffect,
    importcpp: "PrintDefs", header: "IFSelect_EditForm.hxx".}
proc PrintValues*(this: IFSelect_EditForm; S: var Standard_OStream;
                 what: Standard_Integer; names: Standard_Boolean;
                 alsolist: Standard_Boolean = Standard_False) {.noSideEffect,
    importcpp: "PrintValues", header: "IFSelect_EditForm.hxx".}
proc Apply*(this: var IFSelect_EditForm): Standard_Boolean {.importcpp: "Apply",
    header: "IFSelect_EditForm.hxx".}
proc Recognize*(this: IFSelect_EditForm): Standard_Boolean {.noSideEffect,
    importcpp: "Recognize", header: "IFSelect_EditForm.hxx".}
proc ApplyData*(this: var IFSelect_EditForm; ent: handle[Standard_Transient];
               model: handle[Interface_InterfaceModel]): Standard_Boolean {.
    importcpp: "ApplyData", header: "IFSelect_EditForm.hxx".}
proc Undo*(this: var IFSelect_EditForm): Standard_Boolean {.importcpp: "Undo",
    header: "IFSelect_EditForm.hxx".}
type
  IFSelect_EditFormbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "IFSelect_EditForm::get_type_name(@)",
                              header: "IFSelect_EditForm.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IFSelect_EditForm::get_type_descriptor(@)",
    header: "IFSelect_EditForm.hxx".}
proc DynamicType*(this: IFSelect_EditForm): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IFSelect_EditForm.hxx".}