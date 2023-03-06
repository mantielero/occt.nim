import interface_types
import ../../tkernel/standard/standard_types







##  Created on: 1993-03-16
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





proc newInterfaceCopyMap*(amodel: Handle[InterfaceInterfaceModel]): InterfaceCopyMap {.
    cdecl, constructor, importcpp: "Interface_CopyMap(@)", header: "Interface_CopyMap.hxx".}
proc clear*(this: var InterfaceCopyMap) {.cdecl, importcpp: "Clear", header: "Interface_CopyMap.hxx".}
proc model*(this: InterfaceCopyMap): Handle[InterfaceInterfaceModel] {.noSideEffect,
    cdecl, importcpp: "Model", header: "Interface_CopyMap.hxx".}
proc `bind`*(this: var InterfaceCopyMap; ent: Handle[StandardTransient];
            res: Handle[StandardTransient]) {.cdecl, importcpp: "Bind",
    header: "Interface_CopyMap.hxx".}
proc search*(this: InterfaceCopyMap; ent: Handle[StandardTransient];
            res: var Handle[StandardTransient]): bool {.noSideEffect, cdecl,
    importcpp: "Search", header: "Interface_CopyMap.hxx".}



