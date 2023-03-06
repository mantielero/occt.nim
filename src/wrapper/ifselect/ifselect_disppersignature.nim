import ../tcollection/tcollection_types
import ../standard/standard_types
import ifselect_types
import "../interface/interface_types"




##  Created on: 1994-12-21
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





proc newIFSelectDispPerSignature*(): IFSelectDispPerSignature {.cdecl, constructor,
    importcpp: "IFSelect_DispPerSignature(@)", header: "IFSelect_DispPerSignature.hxx".}
proc signCounter*(this: IFSelectDispPerSignature): Handle[IFSelectSignCounter] {.
    noSideEffect, cdecl, importcpp: "SignCounter", header: "IFSelect_DispPerSignature.hxx".}
proc setSignCounter*(this: var IFSelectDispPerSignature;
                    sign: Handle[IFSelectSignCounter]) {.cdecl,
    importcpp: "SetSignCounter", header: "IFSelect_DispPerSignature.hxx".}
proc signName*(this: IFSelectDispPerSignature): cstring {.noSideEffect, cdecl,
    importcpp: "SignName", header: "IFSelect_DispPerSignature.hxx".}
proc label*(this: IFSelectDispPerSignature): TCollectionAsciiString {.noSideEffect,
    cdecl, importcpp: "Label", header: "IFSelect_DispPerSignature.hxx".}
proc limitedMax*(this: IFSelectDispPerSignature; nbent: cint; max: var cint): bool {.
    noSideEffect, cdecl, importcpp: "LimitedMax", header: "IFSelect_DispPerSignature.hxx".}
proc packets*(this: IFSelectDispPerSignature; g: InterfaceGraph;
             packs: var IFGraphSubPartsIterator) {.noSideEffect, cdecl,
    importcpp: "Packets", header: "IFSelect_DispPerSignature.hxx".}


