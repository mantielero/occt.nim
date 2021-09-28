##  Created on: 1992-02-11
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

discard "forward decl of StepData_GlobalNodeOfWriterLib"
discard "forward decl of Standard_Transient"
discard "forward decl of StepData_ReadWriteModule"
discard "forward decl of StepData_Protocol"
discard "forward decl of StepData_WriterLib"
discard "forward decl of StepData_NodeOfWriterLib"
discard "forward decl of StepData_NodeOfWriterLib"
type
  HandleStepDataNodeOfWriterLib* = Handle[StepDataNodeOfWriterLib]
  StepDataNodeOfWriterLib* {.importcpp: "StepData_NodeOfWriterLib",
                            header: "StepData_NodeOfWriterLib.hxx", bycopy.} = object of StandardTransient ##
                                                                                                    ## !
                                                                                                    ## Creates
                                                                                                    ## an
                                                                                                    ## empty
                                                                                                    ## Node,
                                                                                                    ## with
                                                                                                    ## no
                                                                                                    ## Next


proc constructStepDataNodeOfWriterLib*(): StepDataNodeOfWriterLib {.constructor,
    importcpp: "StepData_NodeOfWriterLib(@)",
    header: "StepData_NodeOfWriterLib.hxx".}
proc addNode*(this: var StepDataNodeOfWriterLib;
             anode: Handle[StepDataGlobalNodeOfWriterLib]) {.importcpp: "AddNode",
    header: "StepData_NodeOfWriterLib.hxx".}
proc module*(this: StepDataNodeOfWriterLib): Handle[StepDataReadWriteModule] {.
    noSideEffect, importcpp: "Module", header: "StepData_NodeOfWriterLib.hxx".}
proc protocol*(this: StepDataNodeOfWriterLib): Handle[StepDataProtocol] {.
    noSideEffect, importcpp: "Protocol", header: "StepData_NodeOfWriterLib.hxx".}
proc next*(this: StepDataNodeOfWriterLib): Handle[StepDataNodeOfWriterLib] {.
    noSideEffect, importcpp: "Next", header: "StepData_NodeOfWriterLib.hxx".}
type
  StepDataNodeOfWriterLibbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepData_NodeOfWriterLib::get_type_name(@)",
                            header: "StepData_NodeOfWriterLib.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepData_NodeOfWriterLib::get_type_descriptor(@)",
    header: "StepData_NodeOfWriterLib.hxx".}
proc dynamicType*(this: StepDataNodeOfWriterLib): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "StepData_NodeOfWriterLib.hxx".}














































