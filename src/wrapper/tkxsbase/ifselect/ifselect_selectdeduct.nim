import ../../tkernel/standard/standard_types
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





proc setInput*(this: var IFSelectSelectDeduct; sel: Handle[IFSelectSelection]) {.
    cdecl, importcpp: "SetInput", header: "IFSelect_SelectDeduct.hxx".}
proc input*(this: IFSelectSelectDeduct): Handle[IFSelectSelection] {.noSideEffect,
    cdecl, importcpp: "Input", header: "IFSelect_SelectDeduct.hxx".}
proc hasInput*(this: IFSelectSelectDeduct): bool {.noSideEffect, cdecl,
    importcpp: "HasInput", header: "IFSelect_SelectDeduct.hxx".}
proc hasAlternate*(this: IFSelectSelectDeduct): bool {.noSideEffect, cdecl,
    importcpp: "HasAlternate", header: "IFSelect_SelectDeduct.hxx".}
proc alternate*(this: var IFSelectSelectDeduct): var Handle[IFSelectSelectPointed] {.
    cdecl, importcpp: "Alternate", header: "IFSelect_SelectDeduct.hxx".}
proc inputResult*(this: IFSelectSelectDeduct; g: InterfaceGraph): InterfaceEntityIterator {.
    noSideEffect, cdecl, importcpp: "InputResult", header: "IFSelect_SelectDeduct.hxx".}
proc fillIterator*(this: IFSelectSelectDeduct; iter: var IFSelectSelectionIterator) {.
    noSideEffect, cdecl, importcpp: "FillIterator", header: "IFSelect_SelectDeduct.hxx".}

