import ifselect_types

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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of Interface_InterfaceError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_Transient"
discard "forward decl of IFSelect_Dispatch"
discard "forward decl of IFSelect_GeneralModifier"
discard "forward decl of IFSelect_Modifier"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of IFSelect_ShareOut"




proc newIFSelectShareOut*(): IFSelectShareOut {.cdecl, constructor,
    importcpp: "IFSelect_ShareOut(@)", header: "IFSelect_ShareOut.hxx".}
proc clear*(this: var IFSelectShareOut; onlydisp: bool) {.cdecl, importcpp: "Clear",
    header: "IFSelect_ShareOut.hxx".}
proc clearResult*(this: var IFSelectShareOut; alsoname: bool) {.cdecl,
    importcpp: "ClearResult", header: "IFSelect_ShareOut.hxx".}
proc removeItem*(this: var IFSelectShareOut; item: Handle[StandardTransient]): bool {.
    cdecl, importcpp: "RemoveItem", header: "IFSelect_ShareOut.hxx".}
proc lastRun*(this: IFSelectShareOut): cint {.noSideEffect, cdecl,
    importcpp: "LastRun", header: "IFSelect_ShareOut.hxx".}
proc setLastRun*(this: var IFSelectShareOut; last: cint) {.cdecl,
    importcpp: "SetLastRun", header: "IFSelect_ShareOut.hxx".}
proc nbDispatches*(this: IFSelectShareOut): cint {.noSideEffect, cdecl,
    importcpp: "NbDispatches", header: "IFSelect_ShareOut.hxx".}
proc dispatchRank*(this: IFSelectShareOut; disp: Handle[IFSelectDispatch]): cint {.
    noSideEffect, cdecl, importcpp: "DispatchRank", header: "IFSelect_ShareOut.hxx".}
proc dispatch*(this: IFSelectShareOut; num: cint): Handle[IFSelectDispatch] {.
    noSideEffect, cdecl, importcpp: "Dispatch", header: "IFSelect_ShareOut.hxx".}
proc addDispatch*(this: var IFSelectShareOut; disp: Handle[IFSelectDispatch]) {.cdecl,
    importcpp: "AddDispatch", header: "IFSelect_ShareOut.hxx".}
proc removeDispatch*(this: var IFSelectShareOut; rank: cint): bool {.cdecl,
    importcpp: "RemoveDispatch", header: "IFSelect_ShareOut.hxx".}
proc addModifier*(this: var IFSelectShareOut;
                 modifier: Handle[IFSelectGeneralModifier]; atnum: cint) {.cdecl,
    importcpp: "AddModifier", header: "IFSelect_ShareOut.hxx".}
proc addModifier*(this: var IFSelectShareOut;
                 modifier: Handle[IFSelectGeneralModifier]; dispnum: cint;
                 atnum: cint) {.cdecl, importcpp: "AddModifier", header: "IFSelect_ShareOut.hxx".}
proc addModif*(this: var IFSelectShareOut;
              modifier: Handle[IFSelectGeneralModifier]; formodel: bool;
              atnum: cint = 0) {.cdecl, importcpp: "AddModif", header: "IFSelect_ShareOut.hxx".}
proc nbModifiers*(this: IFSelectShareOut; formodel: bool): cint {.noSideEffect, cdecl,
    importcpp: "NbModifiers", header: "IFSelect_ShareOut.hxx".}
proc generalModifier*(this: IFSelectShareOut; formodel: bool; num: cint): Handle[
    IFSelectGeneralModifier] {.noSideEffect, cdecl, importcpp: "GeneralModifier",
                              header: "IFSelect_ShareOut.hxx".}
proc modelModifier*(this: IFSelectShareOut; num: cint): Handle[IFSelectModifier] {.
    noSideEffect, cdecl, importcpp: "ModelModifier", header: "IFSelect_ShareOut.hxx".}
proc modifierRank*(this: IFSelectShareOut;
                  modifier: Handle[IFSelectGeneralModifier]): cint {.noSideEffect,
    cdecl, importcpp: "ModifierRank", header: "IFSelect_ShareOut.hxx".}
proc removeModifier*(this: var IFSelectShareOut; formodel: bool; num: cint): bool {.
    cdecl, importcpp: "RemoveModifier", header: "IFSelect_ShareOut.hxx".}
proc changeModifierRank*(this: var IFSelectShareOut; formodel: bool; befor: cint;
                        after: cint): bool {.cdecl, importcpp: "ChangeModifierRank",
    header: "IFSelect_ShareOut.hxx".}
proc setRootName*(this: var IFSelectShareOut; num: cint;
                 name: Handle[TCollectionHAsciiString]): bool {.cdecl,
    importcpp: "SetRootName", header: "IFSelect_ShareOut.hxx".}
proc hasRootName*(this: IFSelectShareOut; num: cint): bool {.noSideEffect, cdecl,
    importcpp: "HasRootName", header: "IFSelect_ShareOut.hxx".}
proc rootName*(this: IFSelectShareOut; num: cint): Handle[TCollectionHAsciiString] {.
    noSideEffect, cdecl, importcpp: "RootName", header: "IFSelect_ShareOut.hxx".}
proc rootNumber*(this: IFSelectShareOut; name: Handle[TCollectionHAsciiString]): cint {.
    noSideEffect, cdecl, importcpp: "RootNumber", header: "IFSelect_ShareOut.hxx".}
proc setPrefix*(this: var IFSelectShareOut; pref: Handle[TCollectionHAsciiString]) {.
    cdecl, importcpp: "SetPrefix", header: "IFSelect_ShareOut.hxx".}
proc setDefaultRootName*(this: var IFSelectShareOut;
                        defrt: Handle[TCollectionHAsciiString]): bool {.cdecl,
    importcpp: "SetDefaultRootName", header: "IFSelect_ShareOut.hxx".}
proc setExtension*(this: var IFSelectShareOut; ext: Handle[TCollectionHAsciiString]) {.
    cdecl, importcpp: "SetExtension", header: "IFSelect_ShareOut.hxx".}
proc prefix*(this: IFSelectShareOut): Handle[TCollectionHAsciiString] {.
    noSideEffect, cdecl, importcpp: "Prefix", header: "IFSelect_ShareOut.hxx".}
proc defaultRootName*(this: IFSelectShareOut): Handle[TCollectionHAsciiString] {.
    noSideEffect, cdecl, importcpp: "DefaultRootName", header: "IFSelect_ShareOut.hxx".}
proc extension*(this: IFSelectShareOut): Handle[TCollectionHAsciiString] {.
    noSideEffect, cdecl, importcpp: "Extension", header: "IFSelect_ShareOut.hxx".}
proc fileName*(this: var IFSelectShareOut; dnum: cint; pnum: cint; nbpack: cint = 0): TCollectionAsciiString {.
    cdecl, importcpp: "FileName", header: "IFSelect_ShareOut.hxx".}
