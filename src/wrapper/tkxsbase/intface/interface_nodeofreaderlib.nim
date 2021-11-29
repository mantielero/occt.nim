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

discard "forward decl of Interface_GlobalNodeOfReaderLib"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_ReaderModule"
discard "forward decl of Interface_Protocol"
discard "forward decl of Interface_ReaderLib"
discard "forward decl of Interface_NodeOfReaderLib"
type
  HandleInterfaceNodeOfReaderLib* = Handle[InterfaceNodeOfReaderLib]
  InterfaceNodeOfReaderLib* {.importcpp: "Interface_NodeOfReaderLib",
                             header: "Interface_NodeOfReaderLib.hxx", bycopy.} = object of StandardTransient ##
                                                                                                      ## !
                                                                                                      ## Creates
                                                                                                      ## an
                                                                                                      ## empty
                                                                                                      ## Node,
                                                                                                      ## with
                                                                                                      ## no
                                                                                                      ## Next


proc newInterfaceNodeOfReaderLib*(): InterfaceNodeOfReaderLib {.cdecl, constructor,
    importcpp: "Interface_NodeOfReaderLib(@)", header: "Interface_NodeOfReaderLib.hxx".}
proc addNode*(this: var InterfaceNodeOfReaderLib;
             anode: Handle[InterfaceGlobalNodeOfReaderLib]) {.cdecl,
    importcpp: "AddNode", header: "Interface_NodeOfReaderLib.hxx".}
proc module*(this: InterfaceNodeOfReaderLib): Handle[InterfaceReaderModule] {.
    noSideEffect, cdecl, importcpp: "Module", header: "Interface_NodeOfReaderLib.hxx".}
proc protocol*(this: InterfaceNodeOfReaderLib): Handle[InterfaceProtocol] {.
    noSideEffect, cdecl, importcpp: "Protocol", header: "Interface_NodeOfReaderLib.hxx".}
proc next*(this: InterfaceNodeOfReaderLib): Handle[InterfaceNodeOfReaderLib] {.
    noSideEffect, cdecl, importcpp: "Next", header: "Interface_NodeOfReaderLib.hxx".}
type
  InterfaceNodeOfReaderLibbaseType* = StandardTransient
