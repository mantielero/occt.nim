import ../standard/standard_types
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



proc newIFSelectSelectionIterator*(): IFSelectSelectionIterator {.cdecl,
    constructor, importcpp: "IFSelect_SelectionIterator(@)", header: "IFSelect_SelectionIterator.hxx".}
proc newIFSelectSelectionIterator*(sel: Handle[IFSelectSelection]): IFSelectSelectionIterator {.
    cdecl, constructor, importcpp: "IFSelect_SelectionIterator(@)", header: "IFSelect_SelectionIterator.hxx".}
proc addFromIter*(this: var IFSelectSelectionIterator;
                 iter: var IFSelectSelectionIterator) {.cdecl,
    importcpp: "AddFromIter", header: "IFSelect_SelectionIterator.hxx".}
proc addItem*(this: var IFSelectSelectionIterator; sel: Handle[IFSelectSelection]) {.
    cdecl, importcpp: "AddItem", header: "IFSelect_SelectionIterator.hxx".}
proc addList*(this: var IFSelectSelectionIterator; list: IFSelectTSeqOfSelection) {.
    cdecl, importcpp: "AddList", header: "IFSelect_SelectionIterator.hxx".}
proc more*(this: IFSelectSelectionIterator): bool {.noSideEffect, cdecl,
    importcpp: "More", header: "IFSelect_SelectionIterator.hxx".}
proc next*(this: var IFSelectSelectionIterator) {.cdecl, importcpp: "Next",
    header: "IFSelect_SelectionIterator.hxx".}
proc value*(this: IFSelectSelectionIterator): Handle[IFSelectSelection] {.
    noSideEffect, cdecl, importcpp: "Value", header: "IFSelect_SelectionIterator.hxx".}


