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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  ../TColStd/TColStd_Array1OfTransient, ../TColStd/TColStd_Array1OfAsciiString,
  ../TColStd/TColStd_Array1OfInteger, ../Standard/Standard_Transient,
  ../Standard/Standard_CString, IFSelect_EditValue, ../Standard/Standard_Boolean,
  ../TColStd/TColStd_HSequenceOfHAsciiString,
  ../TCollection/TCollection_AsciiString, ../NCollection/NCollection_DataMap

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Interface_TypedValue"
discard "forward decl of IFSelect_EditForm"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of IFSelect_ListEditor"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of IFSelect_Editor"
discard "forward decl of IFSelect_Editor"
type
  Handle_IFSelect_Editor* = handle[IFSelect_Editor]

## ! An Editor defines a set of values and a way to edit them, on
## ! an entity or on the model (e.g. on its header)
## !
## ! Each Value is controlled by a TypedValue, with a number (it is
## ! an Integer) and a name under two forms (complete and short)
## ! and an edit mode

type
  IFSelect_Editor* {.importcpp: "IFSelect_Editor", header: "IFSelect_Editor.hxx",
                    bycopy.} = object of Standard_Transient ## ! Sets a Typed Value for a given ident and short name, with an
                                                       ## ! Edit Mode
                                                       ## ! Prepares the list of Typed Values (gives its count)
                                                       ## ! This count can be tuned later, to a LOWER value, this allows
                                                       ## ! to initialize with a "maximum reservation" then cut the extra


proc SetValue*(this: var IFSelect_Editor; num: Standard_Integer;
              typval: handle[Interface_TypedValue];
              shortname: Standard_CString = "";
              accessmode: IFSelect_EditValue = IFSelect_Editable) {.
    importcpp: "SetValue", header: "IFSelect_Editor.hxx".}
proc SetList*(this: var IFSelect_Editor; num: Standard_Integer;
             max: Standard_Integer = 0) {.importcpp: "SetList",
                                      header: "IFSelect_Editor.hxx".}
proc NbValues*(this: IFSelect_Editor): Standard_Integer {.noSideEffect,
    importcpp: "NbValues", header: "IFSelect_Editor.hxx".}
proc TypedValue*(this: IFSelect_Editor; num: Standard_Integer): handle[
    Interface_TypedValue] {.noSideEffect, importcpp: "TypedValue",
                           header: "IFSelect_Editor.hxx".}
proc IsList*(this: IFSelect_Editor; num: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsList", header: "IFSelect_Editor.hxx".}
proc MaxList*(this: IFSelect_Editor; num: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "MaxList", header: "IFSelect_Editor.hxx".}
proc Name*(this: IFSelect_Editor; num: Standard_Integer;
          isshort: Standard_Boolean = Standard_False): Standard_CString {.
    noSideEffect, importcpp: "Name", header: "IFSelect_Editor.hxx".}
proc EditMode*(this: IFSelect_Editor; num: Standard_Integer): IFSelect_EditValue {.
    noSideEffect, importcpp: "EditMode", header: "IFSelect_Editor.hxx".}
proc NameNumber*(this: IFSelect_Editor; name: Standard_CString): Standard_Integer {.
    noSideEffect, importcpp: "NameNumber", header: "IFSelect_Editor.hxx".}
proc PrintNames*(this: IFSelect_Editor; S: var Standard_OStream) {.noSideEffect,
    importcpp: "PrintNames", header: "IFSelect_Editor.hxx".}
proc PrintDefs*(this: IFSelect_Editor; S: var Standard_OStream;
               labels: Standard_Boolean = Standard_False) {.noSideEffect,
    importcpp: "PrintDefs", header: "IFSelect_Editor.hxx".}
proc MaxNameLength*(this: IFSelect_Editor; what: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "MaxNameLength", header: "IFSelect_Editor.hxx".}
proc Label*(this: IFSelect_Editor): TCollection_AsciiString {.noSideEffect,
    importcpp: "Label", header: "IFSelect_Editor.hxx".}
proc Form*(this: IFSelect_Editor; readonly: Standard_Boolean;
          undoable: Standard_Boolean = Standard_True): handle[IFSelect_EditForm] {.
    noSideEffect, importcpp: "Form", header: "IFSelect_Editor.hxx".}
proc Recognize*(this: IFSelect_Editor; form: handle[IFSelect_EditForm]): Standard_Boolean {.
    noSideEffect, importcpp: "Recognize", header: "IFSelect_Editor.hxx".}
proc StringValue*(this: IFSelect_Editor; form: handle[IFSelect_EditForm];
                 num: Standard_Integer): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "StringValue", header: "IFSelect_Editor.hxx".}
proc ListEditor*(this: IFSelect_Editor; num: Standard_Integer): handle[
    IFSelect_ListEditor] {.noSideEffect, importcpp: "ListEditor",
                          header: "IFSelect_Editor.hxx".}
proc ListValue*(this: IFSelect_Editor; form: handle[IFSelect_EditForm];
               num: Standard_Integer): handle[TColStd_HSequenceOfHAsciiString] {.
    noSideEffect, importcpp: "ListValue", header: "IFSelect_Editor.hxx".}
proc Load*(this: IFSelect_Editor; form: handle[IFSelect_EditForm];
          ent: handle[Standard_Transient]; model: handle[Interface_InterfaceModel]): Standard_Boolean {.
    noSideEffect, importcpp: "Load", header: "IFSelect_Editor.hxx".}
proc Update*(this: IFSelect_Editor; form: handle[IFSelect_EditForm];
            num: Standard_Integer; newval: handle[TCollection_HAsciiString];
            enforce: Standard_Boolean): Standard_Boolean {.noSideEffect,
    importcpp: "Update", header: "IFSelect_Editor.hxx".}
proc UpdateList*(this: IFSelect_Editor; form: handle[IFSelect_EditForm];
                num: Standard_Integer;
                newlist: handle[TColStd_HSequenceOfHAsciiString];
                enforce: Standard_Boolean): Standard_Boolean {.noSideEffect,
    importcpp: "UpdateList", header: "IFSelect_Editor.hxx".}
proc Apply*(this: IFSelect_Editor; form: handle[IFSelect_EditForm];
           ent: handle[Standard_Transient];
           model: handle[Interface_InterfaceModel]): Standard_Boolean {.
    noSideEffect, importcpp: "Apply", header: "IFSelect_Editor.hxx".}
type
  IFSelect_Editorbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "IFSelect_Editor::get_type_name(@)",
                              header: "IFSelect_Editor.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IFSelect_Editor::get_type_descriptor(@)",
    header: "IFSelect_Editor.hxx".}
proc DynamicType*(this: IFSelect_Editor): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IFSelect_Editor.hxx".}