##  Created on: 1992-11-17
##  Created by: Christian CAILLET
##  Copyright (c) 1992-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, IFSelect_TSeqOfDispatch,
  IFSelect_SequenceOfGeneralModifier, ../Standard/Standard_Integer,
  ../Standard/Standard_Transient, ../Standard/Standard_Boolean

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of Interface_InterfaceError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_Transient"
discard "forward decl of IFSelect_Dispatch"
discard "forward decl of IFSelect_GeneralModifier"
discard "forward decl of IFSelect_Modifier"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of IFSelect_ShareOut"
discard "forward decl of IFSelect_ShareOut"
type
  Handle_IFSelect_ShareOut* = handle[IFSelect_ShareOut]

## ! This class gathers the informations required to produce one or
## ! several file(s) from the content of an InterfaceModel (passing
## ! through the creation of intermediate Models).
## !
## ! It can correspond to a complete Divide up of a set of Entities
## ! intended to be exhaustive and to limit duplications. Or to a
## ! simple Extraction of some Entities, in order to work on them.
## !
## ! A ShareOut is composed of a list of Dispatches.
## ! To Each Dispatch in the ShareOut, is bound an Id. Number
## ! This Id. Number allows to identify a Display inside the
## ! ShareOut in a stable way (for instance, to attach file names)
## !
## ! ShareOut can be seen as a "passive" description, activated
## ! through a ShareOutResult, which gives the InterfaceModel on
## ! which to work, as a unique source. Thus it is easy to change
## ! it without coherence problems
## !
## ! Services about it are provided by the class ShareOutResult
## ! which is a service class : simulation (list of files and of
## ! entities per file; "forgotten" entities; duplicated entities),
## ! exploitation (generation of derivated Models, each of them
## ! generating an output file)

type
  IFSelect_ShareOut* {.importcpp: "IFSelect_ShareOut",
                      header: "IFSelect_ShareOut.hxx", bycopy.} = object of Standard_Transient ##
                                                                                        ## !
                                                                                        ## Creates
                                                                                        ## an
                                                                                        ## empty
                                                                                        ## ShareOut


proc constructIFSelect_ShareOut*(): IFSelect_ShareOut {.constructor,
    importcpp: "IFSelect_ShareOut(@)", header: "IFSelect_ShareOut.hxx".}
proc Clear*(this: var IFSelect_ShareOut; onlydisp: Standard_Boolean) {.
    importcpp: "Clear", header: "IFSelect_ShareOut.hxx".}
proc ClearResult*(this: var IFSelect_ShareOut; alsoname: Standard_Boolean) {.
    importcpp: "ClearResult", header: "IFSelect_ShareOut.hxx".}
proc RemoveItem*(this: var IFSelect_ShareOut; item: handle[Standard_Transient]): Standard_Boolean {.
    importcpp: "RemoveItem", header: "IFSelect_ShareOut.hxx".}
proc LastRun*(this: IFSelect_ShareOut): Standard_Integer {.noSideEffect,
    importcpp: "LastRun", header: "IFSelect_ShareOut.hxx".}
proc SetLastRun*(this: var IFSelect_ShareOut; last: Standard_Integer) {.
    importcpp: "SetLastRun", header: "IFSelect_ShareOut.hxx".}
proc NbDispatches*(this: IFSelect_ShareOut): Standard_Integer {.noSideEffect,
    importcpp: "NbDispatches", header: "IFSelect_ShareOut.hxx".}
proc DispatchRank*(this: IFSelect_ShareOut; disp: handle[IFSelect_Dispatch]): Standard_Integer {.
    noSideEffect, importcpp: "DispatchRank", header: "IFSelect_ShareOut.hxx".}
proc Dispatch*(this: IFSelect_ShareOut; num: Standard_Integer): handle[
    IFSelect_Dispatch] {.noSideEffect, importcpp: "Dispatch",
                        header: "IFSelect_ShareOut.hxx".}
proc AddDispatch*(this: var IFSelect_ShareOut; disp: handle[IFSelect_Dispatch]) {.
    importcpp: "AddDispatch", header: "IFSelect_ShareOut.hxx".}
proc RemoveDispatch*(this: var IFSelect_ShareOut; rank: Standard_Integer): Standard_Boolean {.
    importcpp: "RemoveDispatch", header: "IFSelect_ShareOut.hxx".}
proc AddModifier*(this: var IFSelect_ShareOut;
                 modifier: handle[IFSelect_GeneralModifier];
                 atnum: Standard_Integer) {.importcpp: "AddModifier",
    header: "IFSelect_ShareOut.hxx".}
proc AddModifier*(this: var IFSelect_ShareOut;
                 modifier: handle[IFSelect_GeneralModifier];
                 dispnum: Standard_Integer; atnum: Standard_Integer) {.
    importcpp: "AddModifier", header: "IFSelect_ShareOut.hxx".}
proc AddModif*(this: var IFSelect_ShareOut;
              modifier: handle[IFSelect_GeneralModifier];
              formodel: Standard_Boolean; atnum: Standard_Integer = 0) {.
    importcpp: "AddModif", header: "IFSelect_ShareOut.hxx".}
proc NbModifiers*(this: IFSelect_ShareOut; formodel: Standard_Boolean): Standard_Integer {.
    noSideEffect, importcpp: "NbModifiers", header: "IFSelect_ShareOut.hxx".}
proc GeneralModifier*(this: IFSelect_ShareOut; formodel: Standard_Boolean;
                     num: Standard_Integer): handle[IFSelect_GeneralModifier] {.
    noSideEffect, importcpp: "GeneralModifier", header: "IFSelect_ShareOut.hxx".}
proc ModelModifier*(this: IFSelect_ShareOut; num: Standard_Integer): handle[
    IFSelect_Modifier] {.noSideEffect, importcpp: "ModelModifier",
                        header: "IFSelect_ShareOut.hxx".}
proc ModifierRank*(this: IFSelect_ShareOut;
                  modifier: handle[IFSelect_GeneralModifier]): Standard_Integer {.
    noSideEffect, importcpp: "ModifierRank", header: "IFSelect_ShareOut.hxx".}
proc RemoveModifier*(this: var IFSelect_ShareOut; formodel: Standard_Boolean;
                    num: Standard_Integer): Standard_Boolean {.
    importcpp: "RemoveModifier", header: "IFSelect_ShareOut.hxx".}
proc ChangeModifierRank*(this: var IFSelect_ShareOut; formodel: Standard_Boolean;
                        befor: Standard_Integer; after: Standard_Integer): Standard_Boolean {.
    importcpp: "ChangeModifierRank", header: "IFSelect_ShareOut.hxx".}
proc SetRootName*(this: var IFSelect_ShareOut; num: Standard_Integer;
                 name: handle[TCollection_HAsciiString]): Standard_Boolean {.
    importcpp: "SetRootName", header: "IFSelect_ShareOut.hxx".}
proc HasRootName*(this: IFSelect_ShareOut; num: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "HasRootName", header: "IFSelect_ShareOut.hxx".}
proc RootName*(this: IFSelect_ShareOut; num: Standard_Integer): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "RootName",
                               header: "IFSelect_ShareOut.hxx".}
proc RootNumber*(this: IFSelect_ShareOut; name: handle[TCollection_HAsciiString]): Standard_Integer {.
    noSideEffect, importcpp: "RootNumber", header: "IFSelect_ShareOut.hxx".}
proc SetPrefix*(this: var IFSelect_ShareOut; pref: handle[TCollection_HAsciiString]) {.
    importcpp: "SetPrefix", header: "IFSelect_ShareOut.hxx".}
proc SetDefaultRootName*(this: var IFSelect_ShareOut;
                        defrt: handle[TCollection_HAsciiString]): Standard_Boolean {.
    importcpp: "SetDefaultRootName", header: "IFSelect_ShareOut.hxx".}
proc SetExtension*(this: var IFSelect_ShareOut;
                  ext: handle[TCollection_HAsciiString]) {.
    importcpp: "SetExtension", header: "IFSelect_ShareOut.hxx".}
proc Prefix*(this: IFSelect_ShareOut): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Prefix", header: "IFSelect_ShareOut.hxx".}
proc DefaultRootName*(this: IFSelect_ShareOut): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "DefaultRootName", header: "IFSelect_ShareOut.hxx".}
proc Extension*(this: IFSelect_ShareOut): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Extension", header: "IFSelect_ShareOut.hxx".}
proc FileName*(this: var IFSelect_ShareOut; dnum: Standard_Integer;
              pnum: Standard_Integer; nbpack: Standard_Integer = 0): TCollection_AsciiString {.
    importcpp: "FileName", header: "IFSelect_ShareOut.hxx".}
type
  IFSelect_ShareOutbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "IFSelect_ShareOut::get_type_name(@)",
                              header: "IFSelect_ShareOut.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IFSelect_ShareOut::get_type_descriptor(@)",
    header: "IFSelect_ShareOut.hxx".}
proc DynamicType*(this: IFSelect_ShareOut): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IFSelect_ShareOut.hxx".}