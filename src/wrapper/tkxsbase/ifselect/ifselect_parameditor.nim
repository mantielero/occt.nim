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

discard "forward decl of Interface_TypedValue"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of IFSelect_EditForm"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of IFSelect_ParamEditor"
type
  HandleIFSelectParamEditor* = Handle[IFSelectParamEditor]

## ! A ParamEditor gives access for edition to a list of TypedValue
## ! (i.e. of Static too)
## ! Its definition is made of the TypedValue to edit themselves,
## ! and can add some constants, which can then be displayed but
## ! not changed (for instance, system name, processor version ...)
## !
## ! I.E. it gives a way of editing or at least displaying
## ! parameters as global

type
  IFSelectParamEditor* {.importcpp: "IFSelect_ParamEditor",
                        header: "IFSelect_ParamEditor.hxx", bycopy.} = object of IFSelectEditor ##
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


proc newIFSelectParamEditor*(nbmax: cint = 100; label: cstring = ""): IFSelectParamEditor {.
    cdecl, constructor, importcpp: "IFSelect_ParamEditor(@)", header: "IFSelect_ParamEditor.hxx".}
proc addValue*(this: var IFSelectParamEditor; val: Handle[InterfaceTypedValue];
              shortname: cstring = "") {.cdecl, importcpp: "AddValue", header: "IFSelect_ParamEditor.hxx".}
proc addConstantText*(this: var IFSelectParamEditor; val: cstring; shortname: cstring;
                     completename: cstring = "") {.cdecl,
    importcpp: "AddConstantText", header: "IFSelect_ParamEditor.hxx".}
proc label*(this: IFSelectParamEditor): TCollectionAsciiString {.noSideEffect, cdecl,
    importcpp: "Label", header: "IFSelect_ParamEditor.hxx".}
proc recognize*(this: IFSelectParamEditor; form: Handle[IFSelectEditForm]): bool {.
    noSideEffect, cdecl, importcpp: "Recognize", header: "IFSelect_ParamEditor.hxx".}
proc stringValue*(this: IFSelectParamEditor; form: Handle[IFSelectEditForm];
                 num: cint): Handle[TCollectionHAsciiString] {.noSideEffect, cdecl,
    importcpp: "StringValue", header: "IFSelect_ParamEditor.hxx".}
proc load*(this: IFSelectParamEditor; form: Handle[IFSelectEditForm];
          ent: Handle[StandardTransient]; model: Handle[InterfaceInterfaceModel]): bool {.
    noSideEffect, cdecl, importcpp: "Load", header: "IFSelect_ParamEditor.hxx".}
proc apply*(this: IFSelectParamEditor; form: Handle[IFSelectEditForm];
           ent: Handle[StandardTransient]; model: Handle[InterfaceInterfaceModel]): bool {.
    noSideEffect, cdecl, importcpp: "Apply", header: "IFSelect_ParamEditor.hxx".}
proc staticEditor*(list: Handle[TColStdHSequenceOfHAsciiString];
                  label: cstring = ""): Handle[IFSelectParamEditor] {.cdecl,
    importcpp: "IFSelect_ParamEditor::StaticEditor(@)", header: "IFSelect_ParamEditor.hxx".}