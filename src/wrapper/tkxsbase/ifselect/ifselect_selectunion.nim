import ../../tkernel/tcollection/tcollection_types
import ifselect_types





##  Created on: 1993-01-11
##  Created by: Christian CAILLET
##  Copyright (c) 1993-1999 Matra Datavision
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





proc newIFSelectSelectUnion*(): IFSelectSelectUnion {.cdecl, constructor,
    importcpp: "IFSelect_SelectUnion(@)", header: "IFSelect_SelectUnion.hxx".}
proc rootResult*(this: IFSelectSelectUnion; g: InterfaceGraph): InterfaceEntityIterator {.
    noSideEffect, cdecl, importcpp: "RootResult", header: "IFSelect_SelectUnion.hxx".}
proc label*(this: IFSelectSelectUnion): TCollectionAsciiString {.noSideEffect, cdecl,
    importcpp: "Label", header: "IFSelect_SelectUnion.hxx".}


