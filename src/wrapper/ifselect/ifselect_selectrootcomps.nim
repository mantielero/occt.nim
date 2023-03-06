import ../tcollection/tcollection_types
import ../standard/standard_types
import ifselect_types
import "../interface/interface_types"




##  Created on: 1992-12-02
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





proc newIFSelectSelectRootComps*(): IFSelectSelectRootComps {.cdecl, constructor,
    importcpp: "IFSelect_SelectRootComps(@)", header: "IFSelect_SelectRootComps.hxx".}
proc rootResult*(this: IFSelectSelectRootComps; g: InterfaceGraph): InterfaceEntityIterator {.
    noSideEffect, cdecl, importcpp: "RootResult", header: "IFSelect_SelectRootComps.hxx".}
proc sort*(this: IFSelectSelectRootComps; rank: cint; ent: Handle[StandardTransient];
          model: Handle[InterfaceInterfaceModel]): bool {.noSideEffect, cdecl,
    importcpp: "Sort", header: "IFSelect_SelectRootComps.hxx".}
proc extractLabel*(this: IFSelectSelectRootComps): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "ExtractLabel", header: "IFSelect_SelectRootComps.hxx".}


