import interface_types
import ../../tkernel/standard/standard_types







##  Created on: 1998-01-08
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





proc newInterfaceGTool*(): InterfaceGTool {.cdecl, constructor,
    importcpp: "Interface_GTool(@)", header: "Interface_GTool.hxx".}
proc newInterfaceGTool*(proto: Handle[InterfaceProtocol]; nbent: cint = 0): InterfaceGTool {.
    cdecl, constructor, importcpp: "Interface_GTool(@)", header: "Interface_GTool.hxx".}
proc setSignType*(this: var InterfaceGTool; sign: Handle[InterfaceSignType]) {.cdecl,
    importcpp: "SetSignType", header: "Interface_GTool.hxx".}
proc signType*(this: InterfaceGTool): Handle[InterfaceSignType] {.noSideEffect,
    cdecl, importcpp: "SignType", header: "Interface_GTool.hxx".}
proc signValue*(this: InterfaceGTool; ent: Handle[StandardTransient];
               model: Handle[InterfaceInterfaceModel]): cstring {.noSideEffect,
    cdecl, importcpp: "SignValue", header: "Interface_GTool.hxx".}
proc signName*(this: InterfaceGTool): cstring {.noSideEffect, cdecl,
    importcpp: "SignName", header: "Interface_GTool.hxx".}
proc setProtocol*(this: var InterfaceGTool; proto: Handle[InterfaceProtocol];
                 enforce: bool = false) {.cdecl, importcpp: "SetProtocol",
                                      header: "Interface_GTool.hxx".}
proc protocol*(this: InterfaceGTool): Handle[InterfaceProtocol] {.noSideEffect,
    cdecl, importcpp: "Protocol", header: "Interface_GTool.hxx".}
proc lib*(this: var InterfaceGTool): var InterfaceGeneralLib {.cdecl, importcpp: "Lib",
    header: "Interface_GTool.hxx".}
proc reservate*(this: var InterfaceGTool; nb: cint; enforce: bool = false) {.cdecl,
    importcpp: "Reservate", header: "Interface_GTool.hxx".}
proc clearEntities*(this: var InterfaceGTool) {.cdecl, importcpp: "ClearEntities",
    header: "Interface_GTool.hxx".}
proc select*(this: var InterfaceGTool; ent: Handle[StandardTransient];
            gmod: var Handle[InterfaceGeneralModule]; cn: var cint;
            enforce: bool = false): bool {.cdecl, importcpp: "Select", header: "Interface_GTool.hxx".}



