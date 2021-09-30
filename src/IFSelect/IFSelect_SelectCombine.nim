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

discard "forward decl of IFSelect_Selection"
discard "forward decl of IFSelect_SelectionIterator"
discard "forward decl of IFSelect_SelectCombine"
discard "forward decl of IFSelect_SelectCombine"
type
  HandleC1C1* = Handle[IFSelectSelectCombine]

## ! A SelectCombine type Selection defines algebraic operations
## ! between results of several Selections
## ! It is a deferred class : sub-classes will have to define
## ! precise what operator is to be applied

type
  IFSelectSelectCombine* {.importcpp: "IFSelect_SelectCombine",
                          header: "IFSelect_SelectCombine.hxx", bycopy.} = object of IFSelectSelection ##
                                                                                                ## !
                                                                                                ## Returns
                                                                                                ## the
                                                                                                ## count
                                                                                                ## of
                                                                                                ## Input
                                                                                                ## Selections
                                                                                                ##
                                                                                                ## !
                                                                                                ## Defines
                                                                                                ## an
                                                                                                ## empty
                                                                                                ## SelectCombine


proc nbInputs*(this: IFSelectSelectCombine): cint {.noSideEffect,
    importcpp: "NbInputs", header: "IFSelect_SelectCombine.hxx".}
proc input*(this: IFSelectSelectCombine; num: cint): Handle[IFSelectSelection] {.
    noSideEffect, importcpp: "Input", header: "IFSelect_SelectCombine.hxx".}
proc inputRank*(this: IFSelectSelectCombine; sel: Handle[IFSelectSelection]): cint {.
    noSideEffect, importcpp: "InputRank", header: "IFSelect_SelectCombine.hxx".}
proc add*(this: var IFSelectSelectCombine; sel: Handle[IFSelectSelection];
         atnum: cint = 0) {.importcpp: "Add", header: "IFSelect_SelectCombine.hxx".}
proc remove*(this: var IFSelectSelectCombine; sel: Handle[IFSelectSelection]): bool {.
    importcpp: "Remove", header: "IFSelect_SelectCombine.hxx".}
proc remove*(this: var IFSelectSelectCombine; num: cint): bool {.importcpp: "Remove",
    header: "IFSelect_SelectCombine.hxx".}
proc fillIterator*(this: IFSelectSelectCombine; iter: var IFSelectSelectionIterator) {.
    noSideEffect, importcpp: "FillIterator", header: "IFSelect_SelectCombine.hxx".}
type
  IFSelectSelectCombinebaseType* = IFSelectSelection

proc getTypeName*(): cstring {.importcpp: "IFSelect_SelectCombine::get_type_name(@)",
                            header: "IFSelect_SelectCombine.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IFSelect_SelectCombine::get_type_descriptor(@)",
    header: "IFSelect_SelectCombine.hxx".}
proc dynamicType*(this: IFSelectSelectCombine): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IFSelect_SelectCombine.hxx".}

























