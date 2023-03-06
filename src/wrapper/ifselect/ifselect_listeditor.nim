import ../tcollection/tcollection_types
import ../standard/standard_types
import ifselect_types
import ../tcolstd/tcolstd_types
import "../interface/interface_types"




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





proc newIFSelectListEditor*(): IFSelectListEditor {.cdecl, constructor,
    importcpp: "IFSelect_ListEditor(@)", header: "IFSelect_ListEditor.hxx".}
proc newIFSelectListEditor*(def: Handle[InterfaceTypedValue]; max: cint = 0): IFSelectListEditor {.
    cdecl, constructor, importcpp: "IFSelect_ListEditor(@)", header: "IFSelect_ListEditor.hxx".}
proc loadModel*(this: var IFSelectListEditor; model: Handle[InterfaceInterfaceModel]) {.
    cdecl, importcpp: "LoadModel", header: "IFSelect_ListEditor.hxx".}
proc loadValues*(this: var IFSelectListEditor;
                vals: Handle[TColStdHSequenceOfHAsciiString]) {.cdecl,
    importcpp: "LoadValues", header: "IFSelect_ListEditor.hxx".}
proc setTouched*(this: var IFSelectListEditor) {.cdecl, importcpp: "SetTouched",
    header: "IFSelect_ListEditor.hxx".}
proc clearEdit*(this: var IFSelectListEditor) {.cdecl, importcpp: "ClearEdit",
    header: "IFSelect_ListEditor.hxx".}
proc loadEdited*(this: var IFSelectListEditor;
                list: Handle[TColStdHSequenceOfHAsciiString]): bool {.cdecl,
    importcpp: "LoadEdited", header: "IFSelect_ListEditor.hxx".}
proc setValue*(this: var IFSelectListEditor; num: cint;
              val: Handle[TCollectionHAsciiString]): bool {.cdecl,
    importcpp: "SetValue", header: "IFSelect_ListEditor.hxx".}
proc addValue*(this: var IFSelectListEditor; val: Handle[TCollectionHAsciiString];
              atnum: cint = 0): bool {.cdecl, importcpp: "AddValue", header: "IFSelect_ListEditor.hxx".}
proc remove*(this: var IFSelectListEditor; num: cint = 0; howmany: cint = 1): bool {.cdecl,
    importcpp: "Remove", header: "IFSelect_ListEditor.hxx".}
proc originalValues*(this: IFSelectListEditor): Handle[
    TColStdHSequenceOfHAsciiString] {.noSideEffect, cdecl,
                                     importcpp: "OriginalValues", header: "IFSelect_ListEditor.hxx".}
proc editedValues*(this: IFSelectListEditor): Handle[TColStdHSequenceOfHAsciiString] {.
    noSideEffect, cdecl, importcpp: "EditedValues", header: "IFSelect_ListEditor.hxx".}
proc nbValues*(this: IFSelectListEditor; edited: bool = true): cint {.noSideEffect,
    cdecl, importcpp: "NbValues", header: "IFSelect_ListEditor.hxx".}
proc value*(this: IFSelectListEditor; num: cint; edited: bool = true): Handle[
    TCollectionHAsciiString] {.noSideEffect, cdecl, importcpp: "Value",
                              header: "IFSelect_ListEditor.hxx".}
proc isChanged*(this: IFSelectListEditor; num: cint): bool {.noSideEffect, cdecl,
    importcpp: "IsChanged", header: "IFSelect_ListEditor.hxx".}
proc isModified*(this: IFSelectListEditor; num: cint): bool {.noSideEffect, cdecl,
    importcpp: "IsModified", header: "IFSelect_ListEditor.hxx".}
proc isAdded*(this: IFSelectListEditor; num: cint): bool {.noSideEffect, cdecl,
    importcpp: "IsAdded", header: "IFSelect_ListEditor.hxx".}
proc isTouched*(this: IFSelectListEditor): bool {.noSideEffect, cdecl,
    importcpp: "IsTouched", header: "IFSelect_ListEditor.hxx".}


