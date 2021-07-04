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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Transient

discard "forward decl of StepData_GlobalNodeOfWriterLib"
discard "forward decl of Standard_Transient"
discard "forward decl of StepData_ReadWriteModule"
discard "forward decl of StepData_Protocol"
discard "forward decl of StepData_WriterLib"
discard "forward decl of StepData_NodeOfWriterLib"
discard "forward decl of StepData_NodeOfWriterLib"
type
  Handle_StepData_NodeOfWriterLib* = handle[StepData_NodeOfWriterLib]
  StepData_NodeOfWriterLib* {.importcpp: "StepData_NodeOfWriterLib",
                             header: "StepData_NodeOfWriterLib.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                      ## !
                                                                                                      ## Creates
                                                                                                      ## an
                                                                                                      ## empty
                                                                                                      ## Node,
                                                                                                      ## with
                                                                                                      ## no
                                                                                                      ## Next


proc constructStepData_NodeOfWriterLib*(): StepData_NodeOfWriterLib {.constructor,
    importcpp: "StepData_NodeOfWriterLib(@)",
    header: "StepData_NodeOfWriterLib.hxx".}
proc AddNode*(this: var StepData_NodeOfWriterLib;
             anode: handle[StepData_GlobalNodeOfWriterLib]) {.
    importcpp: "AddNode", header: "StepData_NodeOfWriterLib.hxx".}
proc Module*(this: StepData_NodeOfWriterLib): handle[StepData_ReadWriteModule] {.
    noSideEffect, importcpp: "Module", header: "StepData_NodeOfWriterLib.hxx".}
proc Protocol*(this: StepData_NodeOfWriterLib): handle[StepData_Protocol] {.
    noSideEffect, importcpp: "Protocol", header: "StepData_NodeOfWriterLib.hxx".}
proc Next*(this: StepData_NodeOfWriterLib): handle[StepData_NodeOfWriterLib] {.
    noSideEffect, importcpp: "Next", header: "StepData_NodeOfWriterLib.hxx".}
type
  StepData_NodeOfWriterLibbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepData_NodeOfWriterLib::get_type_name(@)",
                              header: "StepData_NodeOfWriterLib.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepData_NodeOfWriterLib::get_type_descriptor(@)",
    header: "StepData_NodeOfWriterLib.hxx".}
proc DynamicType*(this: StepData_NodeOfWriterLib): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepData_NodeOfWriterLib.hxx".}