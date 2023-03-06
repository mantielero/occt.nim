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





proc nbInputs*(this: IFSelectSelectCombine): cint {.noSideEffect, cdecl,
    importcpp: "NbInputs", header: "IFSelect_SelectCombine.hxx".}
proc input*(this: IFSelectSelectCombine; num: cint): Handle[IFSelectSelection] {.
    noSideEffect, cdecl, importcpp: "Input", header: "IFSelect_SelectCombine.hxx".}
proc inputRank*(this: IFSelectSelectCombine; sel: Handle[IFSelectSelection]): cint {.
    noSideEffect, cdecl, importcpp: "InputRank", header: "IFSelect_SelectCombine.hxx".}
proc add*(this: var IFSelectSelectCombine; sel: Handle[IFSelectSelection];
         atnum: cint = 0) {.cdecl, importcpp: "Add", header: "IFSelect_SelectCombine.hxx".}
proc remove*(this: var IFSelectSelectCombine; sel: Handle[IFSelectSelection]): bool {.
    cdecl, importcpp: "Remove", header: "IFSelect_SelectCombine.hxx".}
proc remove*(this: var IFSelectSelectCombine; num: cint): bool {.cdecl,
    importcpp: "Remove", header: "IFSelect_SelectCombine.hxx".}
proc fillIterator*(this: IFSelectSelectCombine; iter: var IFSelectSelectionIterator) {.
    noSideEffect, cdecl, importcpp: "FillIterator", header: "IFSelect_SelectCombine.hxx".}


