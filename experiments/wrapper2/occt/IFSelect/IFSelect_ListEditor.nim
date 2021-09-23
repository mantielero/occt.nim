##  Created on: 1998-07-28
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
  ../TColStd/TColStd_HSequenceOfHAsciiString,
  ../TColStd/TColStd_HSequenceOfInteger, ../Standard/Standard_Transient,
  ../Standard/Standard_Boolean

discard "forward decl of Interface_TypedValue"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of IFSelect_ListEditor"
discard "forward decl of IFSelect_ListEditor"
type
  Handle_IFSelect_ListEditor* = handle[IFSelect_ListEditor]

## ! A ListEditor is an auxiliary operator for Editor/EditForm
## ! I.E. it works on parameter values expressed as strings
## !
## ! For a parameter which is a list, it may not be edited in once
## ! by just setting a new value (as a string)
## !
## ! Firstly, a list can be long (and tedious to be accessed flat)
## ! then requires a better way of accessing
## !
## ! Moreover, not only its VALUES may be changed (SetValue), but
## ! also its LENGTH : items may be added or removed ...
## !
## ! Hence, the way of editing a parameter as a list is :
## ! - edit it separately, with the help of a ListEditor
## ! - it remains possible to prepare a new list of values apart
## ! - then give the new list in once to the EditForm
## !
## ! An EditList is produced by the Editor, with a basic definition
## ! This definition (brought by this class) can be redefined
## ! Hence the Editor may produce a specific ListEditor as needed

type
  IFSelect_ListEditor* {.importcpp: "IFSelect_ListEditor",
                        header: "IFSelect_ListEditor.hxx", bycopy.} = object of Standard_Transient ##
                                                                                            ## !
                                                                                            ## Creates
                                                                                            ## a
                                                                                            ## ListEditor
                                                                                            ## with
                                                                                            ## absolutely
                                                                                            ## no
                                                                                            ## constraint


proc constructIFSelect_ListEditor*(): IFSelect_ListEditor {.constructor,
    importcpp: "IFSelect_ListEditor(@)", header: "IFSelect_ListEditor.hxx".}
proc constructIFSelect_ListEditor*(def: handle[Interface_TypedValue];
                                  max: Standard_Integer = 0): IFSelect_ListEditor {.
    constructor, importcpp: "IFSelect_ListEditor(@)",
    header: "IFSelect_ListEditor.hxx".}
proc LoadModel*(this: var IFSelect_ListEditor;
               model: handle[Interface_InterfaceModel]) {.importcpp: "LoadModel",
    header: "IFSelect_ListEditor.hxx".}
proc LoadValues*(this: var IFSelect_ListEditor;
                vals: handle[TColStd_HSequenceOfHAsciiString]) {.
    importcpp: "LoadValues", header: "IFSelect_ListEditor.hxx".}
proc SetTouched*(this: var IFSelect_ListEditor) {.importcpp: "SetTouched",
    header: "IFSelect_ListEditor.hxx".}
proc ClearEdit*(this: var IFSelect_ListEditor) {.importcpp: "ClearEdit",
    header: "IFSelect_ListEditor.hxx".}
proc LoadEdited*(this: var IFSelect_ListEditor;
                list: handle[TColStd_HSequenceOfHAsciiString]): Standard_Boolean {.
    importcpp: "LoadEdited", header: "IFSelect_ListEditor.hxx".}
proc SetValue*(this: var IFSelect_ListEditor; num: Standard_Integer;
              val: handle[TCollection_HAsciiString]): Standard_Boolean {.
    importcpp: "SetValue", header: "IFSelect_ListEditor.hxx".}
proc AddValue*(this: var IFSelect_ListEditor; val: handle[TCollection_HAsciiString];
              atnum: Standard_Integer = 0): Standard_Boolean {.importcpp: "AddValue",
    header: "IFSelect_ListEditor.hxx".}
proc Remove*(this: var IFSelect_ListEditor; num: Standard_Integer = 0;
            howmany: Standard_Integer = 1): Standard_Boolean {.importcpp: "Remove",
    header: "IFSelect_ListEditor.hxx".}
proc OriginalValues*(this: IFSelect_ListEditor): handle[
    TColStd_HSequenceOfHAsciiString] {.noSideEffect, importcpp: "OriginalValues",
                                      header: "IFSelect_ListEditor.hxx".}
proc EditedValues*(this: IFSelect_ListEditor): handle[
    TColStd_HSequenceOfHAsciiString] {.noSideEffect, importcpp: "EditedValues",
                                      header: "IFSelect_ListEditor.hxx".}
proc NbValues*(this: IFSelect_ListEditor; edited: Standard_Boolean = Standard_True): Standard_Integer {.
    noSideEffect, importcpp: "NbValues", header: "IFSelect_ListEditor.hxx".}
proc Value*(this: IFSelect_ListEditor; num: Standard_Integer;
           edited: Standard_Boolean = Standard_True): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "Value",
                               header: "IFSelect_ListEditor.hxx".}
proc IsChanged*(this: IFSelect_ListEditor; num: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsChanged", header: "IFSelect_ListEditor.hxx".}
proc IsModified*(this: IFSelect_ListEditor; num: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsModified", header: "IFSelect_ListEditor.hxx".}
proc IsAdded*(this: IFSelect_ListEditor; num: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsAdded", header: "IFSelect_ListEditor.hxx".}
proc IsTouched*(this: IFSelect_ListEditor): Standard_Boolean {.noSideEffect,
    importcpp: "IsTouched", header: "IFSelect_ListEditor.hxx".}
type
  IFSelect_ListEditorbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "IFSelect_ListEditor::get_type_name(@)",
                              header: "IFSelect_ListEditor.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IFSelect_ListEditor::get_type_descriptor(@)",
    header: "IFSelect_ListEditor.hxx".}
proc DynamicType*(this: IFSelect_ListEditor): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IFSelect_ListEditor.hxx".}