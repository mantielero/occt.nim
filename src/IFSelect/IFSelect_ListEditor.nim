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

discard "forward decl of Interface_TypedValue"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of IFSelect_ListEditor"
discard "forward decl of IFSelect_ListEditor"
type
  HandleC1C1* = Handle[IFSelectListEditor]

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
  IFSelectListEditor* {.importcpp: "IFSelect_ListEditor",
                       header: "IFSelect_ListEditor.hxx", bycopy.} = object of StandardTransient ##
                                                                                          ## !
                                                                                          ## Creates
                                                                                          ## a
                                                                                          ## ListEditor
                                                                                          ## with
                                                                                          ## absolutely
                                                                                          ## no
                                                                                          ## constraint


proc constructIFSelectListEditor*(): IFSelectListEditor {.constructor,
    importcpp: "IFSelect_ListEditor(@)", header: "IFSelect_ListEditor.hxx".}
proc constructIFSelectListEditor*(def: Handle[InterfaceTypedValue]; max: cint = 0): IFSelectListEditor {.
    constructor, importcpp: "IFSelect_ListEditor(@)",
    header: "IFSelect_ListEditor.hxx".}
proc loadModel*(this: var IFSelectListEditor; model: Handle[InterfaceInterfaceModel]) {.
    importcpp: "LoadModel", header: "IFSelect_ListEditor.hxx".}
proc loadValues*(this: var IFSelectListEditor;
                vals: Handle[TColStdHSequenceOfHAsciiString]) {.
    importcpp: "LoadValues", header: "IFSelect_ListEditor.hxx".}
proc setTouched*(this: var IFSelectListEditor) {.importcpp: "SetTouched",
    header: "IFSelect_ListEditor.hxx".}
proc clearEdit*(this: var IFSelectListEditor) {.importcpp: "ClearEdit",
    header: "IFSelect_ListEditor.hxx".}
proc loadEdited*(this: var IFSelectListEditor;
                list: Handle[TColStdHSequenceOfHAsciiString]): bool {.
    importcpp: "LoadEdited", header: "IFSelect_ListEditor.hxx".}
proc setValue*(this: var IFSelectListEditor; num: cint;
              val: Handle[TCollectionHAsciiString]): bool {.importcpp: "SetValue",
    header: "IFSelect_ListEditor.hxx".}
proc addValue*(this: var IFSelectListEditor; val: Handle[TCollectionHAsciiString];
              atnum: cint = 0): bool {.importcpp: "AddValue",
                                  header: "IFSelect_ListEditor.hxx".}
proc remove*(this: var IFSelectListEditor; num: cint = 0; howmany: cint = 1): bool {.
    importcpp: "Remove", header: "IFSelect_ListEditor.hxx".}
proc originalValues*(this: IFSelectListEditor): Handle[
    TColStdHSequenceOfHAsciiString] {.noSideEffect, importcpp: "OriginalValues",
                                     header: "IFSelect_ListEditor.hxx".}
proc editedValues*(this: IFSelectListEditor): Handle[TColStdHSequenceOfHAsciiString] {.
    noSideEffect, importcpp: "EditedValues", header: "IFSelect_ListEditor.hxx".}
proc nbValues*(this: IFSelectListEditor; edited: bool = true): cint {.noSideEffect,
    importcpp: "NbValues", header: "IFSelect_ListEditor.hxx".}
proc value*(this: IFSelectListEditor; num: cint; edited: bool = true): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "Value",
                              header: "IFSelect_ListEditor.hxx".}
proc isChanged*(this: IFSelectListEditor; num: cint): bool {.noSideEffect,
    importcpp: "IsChanged", header: "IFSelect_ListEditor.hxx".}
proc isModified*(this: IFSelectListEditor; num: cint): bool {.noSideEffect,
    importcpp: "IsModified", header: "IFSelect_ListEditor.hxx".}
proc isAdded*(this: IFSelectListEditor; num: cint): bool {.noSideEffect,
    importcpp: "IsAdded", header: "IFSelect_ListEditor.hxx".}
proc isTouched*(this: IFSelectListEditor): bool {.noSideEffect,
    importcpp: "IsTouched", header: "IFSelect_ListEditor.hxx".}
type
  IFSelectListEditorbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "IFSelect_ListEditor::get_type_name(@)",
                            header: "IFSelect_ListEditor.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IFSelect_ListEditor::get_type_descriptor(@)",
    header: "IFSelect_ListEditor.hxx".}
proc dynamicType*(this: IFSelectListEditor): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IFSelect_ListEditor.hxx".}

























