import ../standard/standard_types
import ifselect_types





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





proc mainInput*(this: IFSelectSelectControl): Handle[IFSelectSelection] {.
    noSideEffect, cdecl, importcpp: "MainInput", header: "IFSelect_SelectControl.hxx".}
proc hasSecondInput*(this: IFSelectSelectControl): bool {.noSideEffect, cdecl,
    importcpp: "HasSecondInput", header: "IFSelect_SelectControl.hxx".}
proc secondInput*(this: IFSelectSelectControl): Handle[IFSelectSelection] {.
    noSideEffect, cdecl, importcpp: "SecondInput", header: "IFSelect_SelectControl.hxx".}
proc setMainInput*(this: var IFSelectSelectControl; sel: Handle[IFSelectSelection]) {.
    cdecl, importcpp: "SetMainInput", header: "IFSelect_SelectControl.hxx".}
proc setSecondInput*(this: var IFSelectSelectControl; sel: Handle[IFSelectSelection]) {.
    cdecl, importcpp: "SetSecondInput", header: "IFSelect_SelectControl.hxx".}
proc fillIterator*(this: IFSelectSelectControl; iter: var IFSelectSelectionIterator) {.
    noSideEffect, cdecl, importcpp: "FillIterator", header: "IFSelect_SelectControl.hxx".}


