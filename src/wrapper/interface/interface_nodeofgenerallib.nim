import interface_types
import ../standard/standard_types







##  Created on: 1992-02-03
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



proc newInterfaceNodeOfGeneralLib*(): InterfaceNodeOfGeneralLib {.cdecl,
    constructor, importcpp: "Interface_NodeOfGeneralLib(@)", header: "Interface_NodeOfGeneralLib.hxx".}
proc addNode*(this: var InterfaceNodeOfGeneralLib;
             anode: Handle[InterfaceGlobalNodeOfGeneralLib]) {.cdecl,
    importcpp: "AddNode", header: "Interface_NodeOfGeneralLib.hxx".}
proc module*(this: InterfaceNodeOfGeneralLib): Handle[InterfaceGeneralModule] {.
    noSideEffect, cdecl, importcpp: "Module", header: "Interface_NodeOfGeneralLib.hxx".}
proc protocol*(this: InterfaceNodeOfGeneralLib): Handle[InterfaceProtocol] {.
    noSideEffect, cdecl, importcpp: "Protocol", header: "Interface_NodeOfGeneralLib.hxx".}
proc next*(this: InterfaceNodeOfGeneralLib): Handle[InterfaceNodeOfGeneralLib] {.
    noSideEffect, cdecl, importcpp: "Next", header: "Interface_NodeOfGeneralLib.hxx".}




