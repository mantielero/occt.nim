##  Created on: 1998-07-30
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
  ../Standard/Standard, ../Standard/Standard_Type,
  ../TCollection/TCollection_AsciiString, IFSelect_Editor,
  ../Standard/Standard_Integer, ../Standard/Standard_CString,
  ../Standard/Standard_Boolean, ../TColStd/TColStd_HSequenceOfHAsciiString

discard "forward decl of Interface_TypedValue"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of IFSelect_EditForm"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of IFSelect_ParamEditor"
discard "forward decl of IFSelect_ParamEditor"
type
  Handle_IFSelect_ParamEditor* = handle[IFSelect_ParamEditor]

## ! A ParamEditor gives access for edition to a list of TypedValue
## ! (i.e. of Static too)
## ! Its definition is made of the TypedValue to edit themselves,
## ! and can add some constants, which can then be displayed but
## ! not changed (for instance, system name, processor version ...)
## !
## ! I.E. it gives a way of editing or at least displaying
## ! parameters as global

type
  IFSelect_ParamEditor* {.importcpp: "IFSelect_ParamEditor",
                         header: "IFSelect_ParamEditor.hxx", bycopy.} = object of IFSelect_Editor ##
                                                                                           ## !
                                                                                           ## Creates
                                                                                           ## a
                                                                                           ## ParamEditor,
                                                                                           ## empty,
                                                                                           ## with
                                                                                           ## a
                                                                                           ## maximum
                                                                                           ## count
                                                                                           ## of
                                                                                           ## params
                                                                                           ##
                                                                                           ## !
                                                                                           ## (default
                                                                                           ## is
                                                                                           ## 100)
                                                                                           ##
                                                                                           ## !
                                                                                           ## And
                                                                                           ## a
                                                                                           ## label,
                                                                                           ## by
                                                                                           ## default
                                                                                           ## it
                                                                                           ## will
                                                                                           ## be
                                                                                           ## "Param
                                                                                           ## Editor"


proc constructIFSelect_ParamEditor*(nbmax: Standard_Integer = 100;
                                   label: Standard_CString = ""): IFSelect_ParamEditor {.
    constructor, importcpp: "IFSelect_ParamEditor(@)",
    header: "IFSelect_ParamEditor.hxx".}
proc AddValue*(this: var IFSelect_ParamEditor; val: handle[Interface_TypedValue];
              shortname: Standard_CString = "") {.importcpp: "AddValue",
    header: "IFSelect_ParamEditor.hxx".}
proc AddConstantText*(this: var IFSelect_ParamEditor; val: Standard_CString;
                     shortname: Standard_CString;
                     completename: Standard_CString = "") {.
    importcpp: "AddConstantText", header: "IFSelect_ParamEditor.hxx".}
proc Label*(this: IFSelect_ParamEditor): TCollection_AsciiString {.noSideEffect,
    importcpp: "Label", header: "IFSelect_ParamEditor.hxx".}
proc Recognize*(this: IFSelect_ParamEditor; form: handle[IFSelect_EditForm]): Standard_Boolean {.
    noSideEffect, importcpp: "Recognize", header: "IFSelect_ParamEditor.hxx".}
proc StringValue*(this: IFSelect_ParamEditor; form: handle[IFSelect_EditForm];
                 num: Standard_Integer): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "StringValue", header: "IFSelect_ParamEditor.hxx".}
proc Load*(this: IFSelect_ParamEditor; form: handle[IFSelect_EditForm];
          ent: handle[Standard_Transient]; model: handle[Interface_InterfaceModel]): Standard_Boolean {.
    noSideEffect, importcpp: "Load", header: "IFSelect_ParamEditor.hxx".}
proc Apply*(this: IFSelect_ParamEditor; form: handle[IFSelect_EditForm];
           ent: handle[Standard_Transient];
           model: handle[Interface_InterfaceModel]): Standard_Boolean {.
    noSideEffect, importcpp: "Apply", header: "IFSelect_ParamEditor.hxx".}
proc StaticEditor*(list: handle[TColStd_HSequenceOfHAsciiString];
                  label: Standard_CString = ""): handle[IFSelect_ParamEditor] {.
    importcpp: "IFSelect_ParamEditor::StaticEditor(@)",
    header: "IFSelect_ParamEditor.hxx".}
type
  IFSelect_ParamEditorbase_type* = IFSelect_Editor

proc get_type_name*(): cstring {.importcpp: "IFSelect_ParamEditor::get_type_name(@)",
                              header: "IFSelect_ParamEditor.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IFSelect_ParamEditor::get_type_descriptor(@)",
    header: "IFSelect_ParamEditor.hxx".}
proc DynamicType*(this: IFSelect_ParamEditor): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IFSelect_ParamEditor.hxx".}