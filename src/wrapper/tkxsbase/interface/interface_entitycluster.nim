import interface_types
import ../../tkernel/standard/standard_types







##  Created on: 1992-11-02
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





proc newInterfaceEntityCluster*(): InterfaceEntityCluster {.cdecl, constructor,
    importcpp: "Interface_EntityCluster(@)", header: "Interface_EntityCluster.hxx".}
proc newInterfaceEntityCluster*(ent: Handle[StandardTransient]): InterfaceEntityCluster {.
    cdecl, constructor, importcpp: "Interface_EntityCluster(@)", header: "Interface_EntityCluster.hxx".}
proc newInterfaceEntityCluster*(ec: Handle[InterfaceEntityCluster]): InterfaceEntityCluster {.
    cdecl, constructor, importcpp: "Interface_EntityCluster(@)", header: "Interface_EntityCluster.hxx".}
proc newInterfaceEntityCluster*(ant: Handle[StandardTransient];
                               ec: Handle[InterfaceEntityCluster]): InterfaceEntityCluster {.
    cdecl, constructor, importcpp: "Interface_EntityCluster(@)", header: "Interface_EntityCluster.hxx".}
proc append*(this: var InterfaceEntityCluster; ent: Handle[StandardTransient]) {.
    cdecl, importcpp: "Append", header: "Interface_EntityCluster.hxx".}
proc remove*(this: var InterfaceEntityCluster; ent: Handle[StandardTransient]): bool {.
    cdecl, importcpp: "Remove", header: "Interface_EntityCluster.hxx".}
proc remove*(this: var InterfaceEntityCluster; num: cint): bool {.cdecl,
    importcpp: "Remove", header: "Interface_EntityCluster.hxx".}
proc nbEntities*(this: InterfaceEntityCluster): cint {.noSideEffect, cdecl,
    importcpp: "NbEntities", header: "Interface_EntityCluster.hxx".}
proc value*(this: InterfaceEntityCluster; num: cint): Handle[StandardTransient] {.
    noSideEffect, cdecl, importcpp: "Value", header: "Interface_EntityCluster.hxx".}
proc setValue*(this: var InterfaceEntityCluster; num: cint;
              ent: Handle[StandardTransient]) {.cdecl, importcpp: "SetValue",
    header: "Interface_EntityCluster.hxx".}
proc fillIterator*(this: InterfaceEntityCluster; iter: var InterfaceEntityIterator) {.
    noSideEffect, cdecl, importcpp: "FillIterator", header: "Interface_EntityCluster.hxx".}
proc destroyInterfaceEntityCluster*(this: var InterfaceEntityCluster) {.cdecl,
    importcpp: "#.~Interface_EntityCluster()", header: "Interface_EntityCluster.hxx".}



