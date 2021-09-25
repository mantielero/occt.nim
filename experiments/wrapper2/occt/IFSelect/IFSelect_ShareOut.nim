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
discard "forward decl of IFSelect_ShareOut"
type
  HandleIFSelectShareOut* = Handle[IFSelectShareOut]

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
  IFSelectShareOut* {.importcpp: "IFSelect_ShareOut",
                     header: "IFSelect_ShareOut.hxx", bycopy.} = object of StandardTransient ##
                                                                                      ## !
                                                                                      ## Creates
                                                                                      ## an
                                                                                      ## empty
                                                                                      ## ShareOut


proc constructIFSelectShareOut*(): IFSelectShareOut {.constructor,
    importcpp: "IFSelect_ShareOut(@)", header: "IFSelect_ShareOut.hxx".}
proc clear*(this: var IFSelectShareOut; onlydisp: bool) {.importcpp: "Clear",
    header: "IFSelect_ShareOut.hxx".}
proc clearResult*(this: var IFSelectShareOut; alsoname: bool) {.
    importcpp: "ClearResult", header: "IFSelect_ShareOut.hxx".}
proc removeItem*(this: var IFSelectShareOut; item: Handle[StandardTransient]): bool {.
    importcpp: "RemoveItem", header: "IFSelect_ShareOut.hxx".}
proc lastRun*(this: IFSelectShareOut): int {.noSideEffect, importcpp: "LastRun",
    header: "IFSelect_ShareOut.hxx".}
proc setLastRun*(this: var IFSelectShareOut; last: int) {.importcpp: "SetLastRun",
    header: "IFSelect_ShareOut.hxx".}
proc nbDispatches*(this: IFSelectShareOut): int {.noSideEffect,
    importcpp: "NbDispatches", header: "IFSelect_ShareOut.hxx".}
proc dispatchRank*(this: IFSelectShareOut; disp: Handle[IFSelectDispatch]): int {.
    noSideEffect, importcpp: "DispatchRank", header: "IFSelect_ShareOut.hxx".}
proc dispatch*(this: IFSelectShareOut; num: int): Handle[IFSelectDispatch] {.
    noSideEffect, importcpp: "Dispatch", header: "IFSelect_ShareOut.hxx".}
proc addDispatch*(this: var IFSelectShareOut; disp: Handle[IFSelectDispatch]) {.
    importcpp: "AddDispatch", header: "IFSelect_ShareOut.hxx".}
proc removeDispatch*(this: var IFSelectShareOut; rank: int): bool {.
    importcpp: "RemoveDispatch", header: "IFSelect_ShareOut.hxx".}
proc addModifier*(this: var IFSelectShareOut;
                 modifier: Handle[IFSelectGeneralModifier]; atnum: int) {.
    importcpp: "AddModifier", header: "IFSelect_ShareOut.hxx".}
proc addModifier*(this: var IFSelectShareOut;
                 modifier: Handle[IFSelectGeneralModifier]; dispnum: int; atnum: int) {.
    importcpp: "AddModifier", header: "IFSelect_ShareOut.hxx".}
proc addModif*(this: var IFSelectShareOut;
              modifier: Handle[IFSelectGeneralModifier]; formodel: bool;
              atnum: int = 0) {.importcpp: "AddModif", header: "IFSelect_ShareOut.hxx".}
proc nbModifiers*(this: IFSelectShareOut; formodel: bool): int {.noSideEffect,
    importcpp: "NbModifiers", header: "IFSelect_ShareOut.hxx".}
proc generalModifier*(this: IFSelectShareOut; formodel: bool; num: int): Handle[
    IFSelectGeneralModifier] {.noSideEffect, importcpp: "GeneralModifier",
                              header: "IFSelect_ShareOut.hxx".}
proc modelModifier*(this: IFSelectShareOut; num: int): Handle[IFSelectModifier] {.
    noSideEffect, importcpp: "ModelModifier", header: "IFSelect_ShareOut.hxx".}
proc modifierRank*(this: IFSelectShareOut;
                  modifier: Handle[IFSelectGeneralModifier]): int {.noSideEffect,
    importcpp: "ModifierRank", header: "IFSelect_ShareOut.hxx".}
proc removeModifier*(this: var IFSelectShareOut; formodel: bool; num: int): bool {.
    importcpp: "RemoveModifier", header: "IFSelect_ShareOut.hxx".}
proc changeModifierRank*(this: var IFSelectShareOut; formodel: bool; befor: int;
                        after: int): bool {.importcpp: "ChangeModifierRank",
    header: "IFSelect_ShareOut.hxx".}
proc setRootName*(this: var IFSelectShareOut; num: int;
                 name: Handle[TCollectionHAsciiString]): bool {.
    importcpp: "SetRootName", header: "IFSelect_ShareOut.hxx".}
proc hasRootName*(this: IFSelectShareOut; num: int): bool {.noSideEffect,
    importcpp: "HasRootName", header: "IFSelect_ShareOut.hxx".}
proc rootName*(this: IFSelectShareOut; num: int): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "RootName", header: "IFSelect_ShareOut.hxx".}
proc rootNumber*(this: IFSelectShareOut; name: Handle[TCollectionHAsciiString]): int {.
    noSideEffect, importcpp: "RootNumber", header: "IFSelect_ShareOut.hxx".}
proc setPrefix*(this: var IFSelectShareOut; pref: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetPrefix", header: "IFSelect_ShareOut.hxx".}
proc setDefaultRootName*(this: var IFSelectShareOut;
                        defrt: Handle[TCollectionHAsciiString]): bool {.
    importcpp: "SetDefaultRootName", header: "IFSelect_ShareOut.hxx".}
proc setExtension*(this: var IFSelectShareOut; ext: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetExtension", header: "IFSelect_ShareOut.hxx".}
proc prefix*(this: IFSelectShareOut): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Prefix", header: "IFSelect_ShareOut.hxx".}
proc defaultRootName*(this: IFSelectShareOut): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "DefaultRootName", header: "IFSelect_ShareOut.hxx".}
proc extension*(this: IFSelectShareOut): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Extension", header: "IFSelect_ShareOut.hxx".}
proc fileName*(this: var IFSelectShareOut; dnum: int; pnum: int; nbpack: int = 0): TCollectionAsciiString {.
    importcpp: "FileName", header: "IFSelect_ShareOut.hxx".}
type
  IFSelectShareOutbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "IFSelect_ShareOut::get_type_name(@)",
                            header: "IFSelect_ShareOut.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IFSelect_ShareOut::get_type_descriptor(@)",
    header: "IFSelect_ShareOut.hxx".}
proc dynamicType*(this: IFSelectShareOut): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IFSelect_ShareOut.hxx".}
