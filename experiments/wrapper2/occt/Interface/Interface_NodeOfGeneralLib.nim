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

discard "forward decl of Interface_GlobalNodeOfGeneralLib"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_GeneralModule"
discard "forward decl of Interface_Protocol"
discard "forward decl of Interface_GeneralLib"
discard "forward decl of Interface_NodeOfGeneralLib"
discard "forward decl of Interface_NodeOfGeneralLib"
type
  HandleInterfaceNodeOfGeneralLib* = Handle[InterfaceNodeOfGeneralLib]
  InterfaceNodeOfGeneralLib* {.importcpp: "Interface_NodeOfGeneralLib",
                              header: "Interface_NodeOfGeneralLib.hxx", bycopy.} = object of StandardTransient ##
                                                                                                        ## !
                                                                                                        ## Creates
                                                                                                        ## an
                                                                                                        ## empty
                                                                                                        ## Node,
                                                                                                        ## with
                                                                                                        ## no
                                                                                                        ## Next


proc constructInterfaceNodeOfGeneralLib*(): InterfaceNodeOfGeneralLib {.
    constructor, importcpp: "Interface_NodeOfGeneralLib(@)",
    header: "Interface_NodeOfGeneralLib.hxx".}
proc addNode*(this: var InterfaceNodeOfGeneralLib;
             anode: Handle[InterfaceGlobalNodeOfGeneralLib]) {.
    importcpp: "AddNode", header: "Interface_NodeOfGeneralLib.hxx".}
proc module*(this: InterfaceNodeOfGeneralLib): Handle[InterfaceGeneralModule] {.
    noSideEffect, importcpp: "Module", header: "Interface_NodeOfGeneralLib.hxx".}
proc protocol*(this: InterfaceNodeOfGeneralLib): Handle[InterfaceProtocol] {.
    noSideEffect, importcpp: "Protocol", header: "Interface_NodeOfGeneralLib.hxx".}
proc next*(this: InterfaceNodeOfGeneralLib): Handle[InterfaceNodeOfGeneralLib] {.
    noSideEffect, importcpp: "Next", header: "Interface_NodeOfGeneralLib.hxx".}
type
  InterfaceNodeOfGeneralLibbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Interface_NodeOfGeneralLib::get_type_name(@)",
                            header: "Interface_NodeOfGeneralLib.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Interface_NodeOfGeneralLib::get_type_descriptor(@)",
    header: "Interface_NodeOfGeneralLib.hxx".}
proc dynamicType*(this: InterfaceNodeOfGeneralLib): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "Interface_NodeOfGeneralLib.hxx".}
