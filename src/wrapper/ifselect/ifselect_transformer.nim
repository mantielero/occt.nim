import ../../tkernel/tcollection/tcollection_types
import ../../tkernel/standard/standard_types
import ifselect_types
import "../interface/interface_types"




##  Created on: 1994-05-27
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





proc perform*(this: var IFSelectTransformer; g: InterfaceGraph;
             protocol: Handle[InterfaceProtocol];
             checks: var InterfaceCheckIterator;
             newmod: var Handle[InterfaceInterfaceModel]): bool {.cdecl,
    importcpp: "Perform", header: "IFSelect_Transformer.hxx".}
proc changeProtocol*(this: IFSelectTransformer;
                    newproto: var Handle[InterfaceProtocol]): bool {.noSideEffect,
    cdecl, importcpp: "ChangeProtocol", header: "IFSelect_Transformer.hxx".}
proc updated*(this: IFSelectTransformer; entfrom: Handle[StandardTransient];
             entto: var Handle[StandardTransient]): bool {.noSideEffect, cdecl,
    importcpp: "Updated", header: "IFSelect_Transformer.hxx".}
proc label*(this: IFSelectTransformer): TCollectionAsciiString {.noSideEffect, cdecl,
    importcpp: "Label", header: "IFSelect_Transformer.hxx".}


