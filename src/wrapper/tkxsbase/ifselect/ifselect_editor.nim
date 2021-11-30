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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Interface_TypedValue"
discard "forward decl of IFSelect_EditForm"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of IFSelect_ListEditor"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of IFSelect_Editor"
type
  HandleIFSelectEditor* = Handle[IFSelectEditor]

## ! An Editor defines a set of values and a way to edit them, on
## ! an entity or on the model (e.g. on its header)
## !
## ! Each Value is controlled by a TypedValue, with a number (it is
## ! an Integer) and a name under two forms (complete and short)
## ! and an edit mode

type
  IFSelectEditor* {.importcpp: "IFSelect_Editor", header: "IFSelect_Editor.hxx",
                   bycopy.} = object of StandardTransient ## ! Sets a Typed Value for a given ident and short name, with an
                                                     ## ! Edit Mode
                                                     ## ! Prepares the list of Typed Values (gives its count)
                                                     ## ! This count can be tuned later, to a LOWER value, this allows
                                                     ## ! to initialize with a "maximum reservation" then cut the extra


proc setValue*(this: var IFSelectEditor; num: cint;
              typval: Handle[InterfaceTypedValue]; shortname: cstring = "";
              accessmode: IFSelectEditValue = iFSelectEditable) {.cdecl,
    importcpp: "SetValue", header: "IFSelect_Editor.hxx".}
proc setList*(this: var IFSelectEditor; num: cint; max: cint = 0) {.cdecl,
    importcpp: "SetList", header: "IFSelect_Editor.hxx".}
proc nbValues*(this: IFSelectEditor): cint {.noSideEffect, cdecl,
    importcpp: "NbValues", header: "IFSelect_Editor.hxx".}
proc typedValue*(this: IFSelectEditor; num: cint): Handle[InterfaceTypedValue] {.
    noSideEffect, cdecl, importcpp: "TypedValue", header: "IFSelect_Editor.hxx".}
proc isList*(this: IFSelectEditor; num: cint): bool {.noSideEffect, cdecl,
    importcpp: "IsList", header: "IFSelect_Editor.hxx".}
proc maxList*(this: IFSelectEditor; num: cint): cint {.noSideEffect, cdecl,
    importcpp: "MaxList", header: "IFSelect_Editor.hxx".}
proc name*(this: IFSelectEditor; num: cint; isshort: bool = false): cstring {.
    noSideEffect, cdecl, importcpp: "Name", header: "IFSelect_Editor.hxx".}
proc editMode*(this: IFSelectEditor; num: cint): IFSelectEditValue {.noSideEffect,
    cdecl, importcpp: "EditMode", header: "IFSelect_Editor.hxx".}
proc nameNumber*(this: IFSelectEditor; name: cstring): cint {.noSideEffect, cdecl,
    importcpp: "NameNumber", header: "IFSelect_Editor.hxx".}
proc printNames*(this: IFSelectEditor; s: var StandardOStream) {.noSideEffect, cdecl,
    importcpp: "PrintNames", header: "IFSelect_Editor.hxx".}
proc printDefs*(this: IFSelectEditor; s: var StandardOStream; labels: bool = false) {.
    noSideEffect, cdecl, importcpp: "PrintDefs", header: "IFSelect_Editor.hxx".}
proc maxNameLength*(this: IFSelectEditor; what: cint): cint {.noSideEffect, cdecl,
    importcpp: "MaxNameLength", header: "IFSelect_Editor.hxx".}
proc label*(this: IFSelectEditor): TCollectionAsciiString {.noSideEffect, cdecl,
    importcpp: "Label", header: "IFSelect_Editor.hxx".}
proc form*(this: IFSelectEditor; readonly: bool; undoable: bool = true): Handle[
    IFSelectEditForm] {.noSideEffect, cdecl, importcpp: "Form", header: "IFSelect_Editor.hxx".}
proc recognize*(this: IFSelectEditor; form: Handle[IFSelectEditForm]): bool {.
    noSideEffect, cdecl, importcpp: "Recognize", header: "IFSelect_Editor.hxx".}
proc stringValue*(this: IFSelectEditor; form: Handle[IFSelectEditForm]; num: cint): Handle[
    TCollectionHAsciiString] {.noSideEffect, cdecl, importcpp: "StringValue",
                              header: "IFSelect_Editor.hxx".}
proc listEditor*(this: IFSelectEditor; num: cint): Handle[IFSelectListEditor] {.
    noSideEffect, cdecl, importcpp: "ListEditor", header: "IFSelect_Editor.hxx".}
proc listValue*(this: IFSelectEditor; form: Handle[IFSelectEditForm]; num: cint): Handle[
    TColStdHSequenceOfHAsciiString] {.noSideEffect, cdecl, importcpp: "ListValue",
                                     header: "IFSelect_Editor.hxx".}
proc load*(this: IFSelectEditor; form: Handle[IFSelectEditForm];
          ent: Handle[StandardTransient]; model: Handle[InterfaceInterfaceModel]): bool {.
    noSideEffect, cdecl, importcpp: "Load", header: "IFSelect_Editor.hxx".}
proc update*(this: IFSelectEditor; form: Handle[IFSelectEditForm]; num: cint;
            newval: Handle[TCollectionHAsciiString]; enforce: bool): bool {.
    noSideEffect, cdecl, importcpp: "Update", header: "IFSelect_Editor.hxx".}
proc updateList*(this: IFSelectEditor; form: Handle[IFSelectEditForm]; num: cint;
                newlist: Handle[TColStdHSequenceOfHAsciiString]; enforce: bool): bool {.
    noSideEffect, cdecl, importcpp: "UpdateList", header: "IFSelect_Editor.hxx".}
proc apply*(this: IFSelectEditor; form: Handle[IFSelectEditForm];
           ent: Handle[StandardTransient]; model: Handle[InterfaceInterfaceModel]): bool {.
    noSideEffect, cdecl, importcpp: "Apply", header: "IFSelect_Editor.hxx".}