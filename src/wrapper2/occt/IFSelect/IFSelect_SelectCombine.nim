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
  ../Standard/Standard, ../Standard/Standard_Type, IFSelect_TSeqOfSelection,
  IFSelect_Selection, ../Standard/Standard_Integer, ../Standard/Standard_Boolean

discard "forward decl of IFSelect_Selection"
discard "forward decl of IFSelect_SelectionIterator"
discard "forward decl of IFSelect_SelectCombine"
discard "forward decl of IFSelect_SelectCombine"
type
  Handle_IFSelect_SelectCombine* = handle[IFSelect_SelectCombine]

## ! A SelectCombine type Selection defines algebraic operations
## ! between results of several Selections
## ! It is a deferred class : sub-classes will have to define
## ! precise what operator is to be applied

type
  IFSelect_SelectCombine* {.importcpp: "IFSelect_SelectCombine",
                           header: "IFSelect_SelectCombine.hxx", bycopy.} = object of IFSelect_Selection ##
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


proc NbInputs*(this: IFSelect_SelectCombine): Standard_Integer {.noSideEffect,
    importcpp: "NbInputs", header: "IFSelect_SelectCombine.hxx".}
proc Input*(this: IFSelect_SelectCombine; num: Standard_Integer): handle[
    IFSelect_Selection] {.noSideEffect, importcpp: "Input",
                         header: "IFSelect_SelectCombine.hxx".}
proc InputRank*(this: IFSelect_SelectCombine; sel: handle[IFSelect_Selection]): Standard_Integer {.
    noSideEffect, importcpp: "InputRank", header: "IFSelect_SelectCombine.hxx".}
proc Add*(this: var IFSelect_SelectCombine; sel: handle[IFSelect_Selection];
         atnum: Standard_Integer = 0) {.importcpp: "Add",
                                    header: "IFSelect_SelectCombine.hxx".}
proc Remove*(this: var IFSelect_SelectCombine; sel: handle[IFSelect_Selection]): Standard_Boolean {.
    importcpp: "Remove", header: "IFSelect_SelectCombine.hxx".}
proc Remove*(this: var IFSelect_SelectCombine; num: Standard_Integer): Standard_Boolean {.
    importcpp: "Remove", header: "IFSelect_SelectCombine.hxx".}
proc FillIterator*(this: IFSelect_SelectCombine;
                  iter: var IFSelect_SelectionIterator) {.noSideEffect,
    importcpp: "FillIterator", header: "IFSelect_SelectCombine.hxx".}
type
  IFSelect_SelectCombinebase_type* = IFSelect_Selection

proc get_type_name*(): cstring {.importcpp: "IFSelect_SelectCombine::get_type_name(@)",
                              header: "IFSelect_SelectCombine.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IFSelect_SelectCombine::get_type_descriptor(@)",
    header: "IFSelect_SelectCombine.hxx".}
proc DynamicType*(this: IFSelect_SelectCombine): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IFSelect_SelectCombine.hxx".}