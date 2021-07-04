##  Created on: 1992-04-06
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

discard "forward decl of IGESData_GlobalNodeOfWriterLib"
discard "forward decl of IGESData_IGESEntity"
discard "forward decl of IGESData_ReadWriteModule"
discard "forward decl of IGESData_Protocol"
discard "forward decl of IGESData_WriterLib"
discard "forward decl of IGESData_NodeOfWriterLib"
discard "forward decl of IGESData_NodeOfWriterLib"
type
  Handle_IGESData_NodeOfWriterLib* = handle[IGESData_NodeOfWriterLib]
  IGESData_NodeOfWriterLib* {.importcpp: "IGESData_NodeOfWriterLib",
                             header: "IGESData_NodeOfWriterLib.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                      ## !
                                                                                                      ## Creates
                                                                                                      ## an
                                                                                                      ## empty
                                                                                                      ## Node,
                                                                                                      ## with
                                                                                                      ## no
                                                                                                      ## Next


proc constructIGESData_NodeOfWriterLib*(): IGESData_NodeOfWriterLib {.constructor,
    importcpp: "IGESData_NodeOfWriterLib(@)",
    header: "IGESData_NodeOfWriterLib.hxx".}
proc AddNode*(this: var IGESData_NodeOfWriterLib;
             anode: handle[IGESData_GlobalNodeOfWriterLib]) {.
    importcpp: "AddNode", header: "IGESData_NodeOfWriterLib.hxx".}
proc Module*(this: IGESData_NodeOfWriterLib): handle[IGESData_ReadWriteModule] {.
    noSideEffect, importcpp: "Module", header: "IGESData_NodeOfWriterLib.hxx".}
proc Protocol*(this: IGESData_NodeOfWriterLib): handle[IGESData_Protocol] {.
    noSideEffect, importcpp: "Protocol", header: "IGESData_NodeOfWriterLib.hxx".}
proc Next*(this: IGESData_NodeOfWriterLib): handle[IGESData_NodeOfWriterLib] {.
    noSideEffect, importcpp: "Next", header: "IGESData_NodeOfWriterLib.hxx".}
type
  IGESData_NodeOfWriterLibbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "IGESData_NodeOfWriterLib::get_type_name(@)",
                              header: "IGESData_NodeOfWriterLib.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESData_NodeOfWriterLib::get_type_descriptor(@)",
    header: "IGESData_NodeOfWriterLib.hxx".}
proc DynamicType*(this: IGESData_NodeOfWriterLib): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESData_NodeOfWriterLib.hxx".}