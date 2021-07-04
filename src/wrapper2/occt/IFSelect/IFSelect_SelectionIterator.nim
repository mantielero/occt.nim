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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Integer,
  IFSelect_HSeqOfSelection, IFSelect_TSeqOfSelection, ../Standard/Standard_Boolean

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of IFSelect_Selection"
type
  IFSelect_SelectionIterator* {.importcpp: "IFSelect_SelectionIterator",
                               header: "IFSelect_SelectionIterator.hxx", bycopy.} = object ##
                                                                                      ## !
                                                                                      ## Creates
                                                                                      ## an
                                                                                      ## empty
                                                                                      ## iterator,
                                                                                      ## ready
                                                                                      ## to
                                                                                      ## be
                                                                                      ## filled


proc constructIFSelect_SelectionIterator*(): IFSelect_SelectionIterator {.
    constructor, importcpp: "IFSelect_SelectionIterator(@)",
    header: "IFSelect_SelectionIterator.hxx".}
proc constructIFSelect_SelectionIterator*(sel: handle[IFSelect_Selection]): IFSelect_SelectionIterator {.
    constructor, importcpp: "IFSelect_SelectionIterator(@)",
    header: "IFSelect_SelectionIterator.hxx".}
proc AddFromIter*(this: var IFSelect_SelectionIterator;
                 iter: var IFSelect_SelectionIterator) {.importcpp: "AddFromIter",
    header: "IFSelect_SelectionIterator.hxx".}
proc AddItem*(this: var IFSelect_SelectionIterator; sel: handle[IFSelect_Selection]) {.
    importcpp: "AddItem", header: "IFSelect_SelectionIterator.hxx".}
proc AddList*(this: var IFSelect_SelectionIterator; list: IFSelect_TSeqOfSelection) {.
    importcpp: "AddList", header: "IFSelect_SelectionIterator.hxx".}
proc More*(this: IFSelect_SelectionIterator): Standard_Boolean {.noSideEffect,
    importcpp: "More", header: "IFSelect_SelectionIterator.hxx".}
proc Next*(this: var IFSelect_SelectionIterator) {.importcpp: "Next",
    header: "IFSelect_SelectionIterator.hxx".}
proc Value*(this: IFSelect_SelectionIterator): handle[IFSelect_Selection] {.
    noSideEffect, importcpp: "Value", header: "IFSelect_SelectionIterator.hxx".}