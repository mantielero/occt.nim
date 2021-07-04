##  Created on: 1994-02-16
##  Created by: Christian CAILLET
##  Copyright (c) 1994-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, IFSelect_Selection,
  ../Standard/Standard_Boolean

discard "forward decl of IFSelect_Selection"
discard "forward decl of IFSelect_SelectionIterator"
discard "forward decl of IFSelect_SelectControl"
discard "forward decl of IFSelect_SelectControl"
type
  Handle_IFSelect_SelectControl* = handle[IFSelect_SelectControl]

## ! A SelectControl kind Selection works with two input Selections
## ! in a dissymmetric way : the Main Input which gives an input
## ! list of Entities, to be processed, and the Second Input which
## ! gives another list, to be used to filter the main input.
## !
## ! e.g. : SelectDiff retains the items of the Main Input which
## ! are not in the Control Input (which acts as Diff Input)
## ! or a specific selection which retains Entities from the Main
## ! Input if and only if they are concerned by an entity from
## ! the Control Input (such as Views in IGES, etc...)
## !
## ! The way RootResult and Label are produced are at charge of
## ! each sub-class

type
  IFSelect_SelectControl* {.importcpp: "IFSelect_SelectControl",
                           header: "IFSelect_SelectControl.hxx", bycopy.} = object of IFSelect_Selection ##
                                                                                                  ## !
                                                                                                  ## Returns
                                                                                                  ## the
                                                                                                  ## Main
                                                                                                  ## Input
                                                                                                  ## Selection


proc MainInput*(this: IFSelect_SelectControl): handle[IFSelect_Selection] {.
    noSideEffect, importcpp: "MainInput", header: "IFSelect_SelectControl.hxx".}
proc HasSecondInput*(this: IFSelect_SelectControl): Standard_Boolean {.noSideEffect,
    importcpp: "HasSecondInput", header: "IFSelect_SelectControl.hxx".}
proc SecondInput*(this: IFSelect_SelectControl): handle[IFSelect_Selection] {.
    noSideEffect, importcpp: "SecondInput", header: "IFSelect_SelectControl.hxx".}
proc SetMainInput*(this: var IFSelect_SelectControl; sel: handle[IFSelect_Selection]) {.
    importcpp: "SetMainInput", header: "IFSelect_SelectControl.hxx".}
proc SetSecondInput*(this: var IFSelect_SelectControl;
                    sel: handle[IFSelect_Selection]) {.
    importcpp: "SetSecondInput", header: "IFSelect_SelectControl.hxx".}
proc FillIterator*(this: IFSelect_SelectControl;
                  iter: var IFSelect_SelectionIterator) {.noSideEffect,
    importcpp: "FillIterator", header: "IFSelect_SelectControl.hxx".}
type
  IFSelect_SelectControlbase_type* = IFSelect_Selection

proc get_type_name*(): cstring {.importcpp: "IFSelect_SelectControl::get_type_name(@)",
                              header: "IFSelect_SelectControl.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IFSelect_SelectControl::get_type_descriptor(@)",
    header: "IFSelect_SelectControl.hxx".}
proc DynamicType*(this: IFSelect_SelectControl): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IFSelect_SelectControl.hxx".}