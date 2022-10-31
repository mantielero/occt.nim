import ../../tkernel/tcollection/tcollection_types
import ../../tkernel/standard/standard_types
import ifselect_types





##  Created on: 1998-10-19
##  Created by: Christian CAILLET
##  Copyright (c) 1998-1999 Matra Datavision
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





proc newIFSelectSelectSuite*(): IFSelectSelectSuite {.cdecl, constructor,
    importcpp: "IFSelect_SelectSuite(@)", header: "IFSelect_SelectSuite.hxx".}
proc addInput*(this: var IFSelectSelectSuite; item: Handle[IFSelectSelection]): bool {.
    cdecl, importcpp: "AddInput", header: "IFSelect_SelectSuite.hxx".}
proc addPrevious*(this: var IFSelectSelectSuite; item: Handle[IFSelectSelectDeduct]) {.
    cdecl, importcpp: "AddPrevious", header: "IFSelect_SelectSuite.hxx".}
proc addNext*(this: var IFSelectSelectSuite; item: Handle[IFSelectSelectDeduct]) {.
    cdecl, importcpp: "AddNext", header: "IFSelect_SelectSuite.hxx".}
proc nbItems*(this: IFSelectSelectSuite): cint {.noSideEffect, cdecl,
    importcpp: "NbItems", header: "IFSelect_SelectSuite.hxx".}
proc item*(this: IFSelectSelectSuite; num: cint): Handle[IFSelectSelectDeduct] {.
    noSideEffect, cdecl, importcpp: "Item", header: "IFSelect_SelectSuite.hxx".}
proc setLabel*(this: var IFSelectSelectSuite; lab: cstring) {.cdecl,
    importcpp: "SetLabel", header: "IFSelect_SelectSuite.hxx".}
proc rootResult*(this: IFSelectSelectSuite; g: InterfaceGraph): InterfaceEntityIterator {.
    noSideEffect, cdecl, importcpp: "RootResult", header: "IFSelect_SelectSuite.hxx".}
proc label*(this: IFSelectSelectSuite): TCollectionAsciiString {.noSideEffect, cdecl,
    importcpp: "Label", header: "IFSelect_SelectSuite.hxx".}


