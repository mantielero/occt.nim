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

discard "forward decl of IGESData_GlobalNodeOfWriterLib"
discard "forward decl of IGESData_IGESEntity"
discard "forward decl of IGESData_ReadWriteModule"
discard "forward decl of IGESData_Protocol"
discard "forward decl of IGESData_WriterLib"
discard "forward decl of IGESData_NodeOfWriterLib"
discard "forward decl of IGESData_NodeOfWriterLib"
type
  HandleIGESDataNodeOfWriterLib* = Handle[IGESDataNodeOfWriterLib]
  IGESDataNodeOfWriterLib* {.importcpp: "IGESData_NodeOfWriterLib",
                            header: "IGESData_NodeOfWriterLib.hxx", bycopy.} = object of StandardTransient ##
                                                                                                    ## !
                                                                                                    ## Creates
                                                                                                    ## an
                                                                                                    ## empty
                                                                                                    ## Node,
                                                                                                    ## with
                                                                                                    ## no
                                                                                                    ## Next


proc constructIGESDataNodeOfWriterLib*(): IGESDataNodeOfWriterLib {.constructor,
    importcpp: "IGESData_NodeOfWriterLib(@)",
    header: "IGESData_NodeOfWriterLib.hxx".}
proc addNode*(this: var IGESDataNodeOfWriterLib;
             anode: Handle[IGESDataGlobalNodeOfWriterLib]) {.importcpp: "AddNode",
    header: "IGESData_NodeOfWriterLib.hxx".}
proc module*(this: IGESDataNodeOfWriterLib): Handle[IGESDataReadWriteModule] {.
    noSideEffect, importcpp: "Module", header: "IGESData_NodeOfWriterLib.hxx".}
proc protocol*(this: IGESDataNodeOfWriterLib): Handle[IGESDataProtocol] {.
    noSideEffect, importcpp: "Protocol", header: "IGESData_NodeOfWriterLib.hxx".}
proc next*(this: IGESDataNodeOfWriterLib): Handle[IGESDataNodeOfWriterLib] {.
    noSideEffect, importcpp: "Next", header: "IGESData_NodeOfWriterLib.hxx".}
type
  IGESDataNodeOfWriterLibbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "IGESData_NodeOfWriterLib::get_type_name(@)",
                            header: "IGESData_NodeOfWriterLib.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESData_NodeOfWriterLib::get_type_descriptor(@)",
    header: "IGESData_NodeOfWriterLib.hxx".}
proc dynamicType*(this: IGESDataNodeOfWriterLib): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESData_NodeOfWriterLib.hxx".}
