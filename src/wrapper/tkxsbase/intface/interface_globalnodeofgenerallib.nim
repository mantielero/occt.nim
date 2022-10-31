import ../../tkernel/standard/standard_types


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

type
  HandleInterfaceGlobalNodeOfGeneralLib* = Handle[InterfaceGlobalNodeOfGeneralLib]
  InterfaceGlobalNodeOfGeneralLib* {.importcpp: "Interface_GlobalNodeOfGeneralLib", header: "Interface_GlobalNodeOfGeneralLib.hxx",
                                    bycopy.} = object of StandardTransient ## ! Creates an empty
                                                                      ## GlobalNode, with no Next


proc newInterfaceGlobalNodeOfGeneralLib*(): InterfaceGlobalNodeOfGeneralLib {.
    cdecl, constructor, importcpp: "Interface_GlobalNodeOfGeneralLib(@)",
    header: "Interface_GlobalNodeOfGeneralLib.hxx".}
proc add*(this: var InterfaceGlobalNodeOfGeneralLib;
         amodule: Handle[InterfaceGeneralModule];
         aprotocol: Handle[InterfaceProtocol]) {.cdecl, importcpp: "Add",
    header: "Interface_GlobalNodeOfGeneralLib.hxx".}
proc module*(this: InterfaceGlobalNodeOfGeneralLib): Handle[InterfaceGeneralModule] {.
    noSideEffect, cdecl, importcpp: "Module", header: "Interface_GlobalNodeOfGeneralLib.hxx".}
proc protocol*(this: InterfaceGlobalNodeOfGeneralLib): Handle[InterfaceProtocol] {.
    noSideEffect, cdecl, importcpp: "Protocol", header: "Interface_GlobalNodeOfGeneralLib.hxx".}
proc next*(this: InterfaceGlobalNodeOfGeneralLib): Handle[
    InterfaceGlobalNodeOfGeneralLib] {.noSideEffect, cdecl, importcpp: "Next",
                                      header: "Interface_GlobalNodeOfGeneralLib.hxx".}
type
  InterfaceGlobalNodeOfGeneralLibbaseType* = StandardTransient

