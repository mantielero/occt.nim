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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Transient

discard "forward decl of Interface_GlobalNodeOfReaderLib"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_ReaderModule"
discard "forward decl of Interface_Protocol"
discard "forward decl of Interface_ReaderLib"
discard "forward decl of Interface_NodeOfReaderLib"
discard "forward decl of Interface_NodeOfReaderLib"
type
  Handle_Interface_NodeOfReaderLib* = handle[Interface_NodeOfReaderLib]
  Interface_NodeOfReaderLib* {.importcpp: "Interface_NodeOfReaderLib",
                              header: "Interface_NodeOfReaderLib.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                        ## !
                                                                                                        ## Creates
                                                                                                        ## an
                                                                                                        ## empty
                                                                                                        ## Node,
                                                                                                        ## with
                                                                                                        ## no
                                                                                                        ## Next


proc constructInterface_NodeOfReaderLib*(): Interface_NodeOfReaderLib {.
    constructor, importcpp: "Interface_NodeOfReaderLib(@)",
    header: "Interface_NodeOfReaderLib.hxx".}
proc AddNode*(this: var Interface_NodeOfReaderLib;
             anode: handle[Interface_GlobalNodeOfReaderLib]) {.
    importcpp: "AddNode", header: "Interface_NodeOfReaderLib.hxx".}
proc Module*(this: Interface_NodeOfReaderLib): handle[Interface_ReaderModule] {.
    noSideEffect, importcpp: "Module", header: "Interface_NodeOfReaderLib.hxx".}
proc Protocol*(this: Interface_NodeOfReaderLib): handle[Interface_Protocol] {.
    noSideEffect, importcpp: "Protocol", header: "Interface_NodeOfReaderLib.hxx".}
proc Next*(this: Interface_NodeOfReaderLib): handle[Interface_NodeOfReaderLib] {.
    noSideEffect, importcpp: "Next", header: "Interface_NodeOfReaderLib.hxx".}
type
  Interface_NodeOfReaderLibbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Interface_NodeOfReaderLib::get_type_name(@)",
                              header: "Interface_NodeOfReaderLib.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Interface_NodeOfReaderLib::get_type_descriptor(@)",
    header: "Interface_NodeOfReaderLib.hxx".}
proc DynamicType*(this: Interface_NodeOfReaderLib): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "Interface_NodeOfReaderLib.hxx".}