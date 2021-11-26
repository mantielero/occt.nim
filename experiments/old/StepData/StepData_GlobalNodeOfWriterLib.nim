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

discard "forward decl of StepData_ReadWriteModule"
discard "forward decl of StepData_Protocol"
discard "forward decl of Standard_Transient"
discard "forward decl of StepData_WriterLib"
discard "forward decl of StepData_NodeOfWriterLib"
discard "forward decl of StepData_GlobalNodeOfWriterLib"
discard "forward decl of StepData_GlobalNodeOfWriterLib"
type
  HandleStepDataGlobalNodeOfWriterLib* = Handle[StepDataGlobalNodeOfWriterLib]
  StepDataGlobalNodeOfWriterLib* {.importcpp: "StepData_GlobalNodeOfWriterLib",
                                  header: "StepData_GlobalNodeOfWriterLib.hxx",
                                  bycopy.} = object of StandardTransient ## ! Creates an empty GlobalNode, with no Next


proc constructStepDataGlobalNodeOfWriterLib*(): StepDataGlobalNodeOfWriterLib {.
    constructor, importcpp: "StepData_GlobalNodeOfWriterLib(@)",
    header: "StepData_GlobalNodeOfWriterLib.hxx".}
proc add*(this: var StepDataGlobalNodeOfWriterLib;
         amodule: Handle[StepDataReadWriteModule];
         aprotocol: Handle[StepDataProtocol]) {.importcpp: "Add",
    header: "StepData_GlobalNodeOfWriterLib.hxx".}
proc module*(this: StepDataGlobalNodeOfWriterLib): Handle[StepDataReadWriteModule] {.
    noSideEffect, importcpp: "Module", header: "StepData_GlobalNodeOfWriterLib.hxx".}
proc protocol*(this: StepDataGlobalNodeOfWriterLib): Handle[StepDataProtocol] {.
    noSideEffect, importcpp: "Protocol",
    header: "StepData_GlobalNodeOfWriterLib.hxx".}
proc next*(this: StepDataGlobalNodeOfWriterLib): Handle[
    StepDataGlobalNodeOfWriterLib] {.noSideEffect, importcpp: "Next", header: "StepData_GlobalNodeOfWriterLib.hxx".}
type
  StepDataGlobalNodeOfWriterLibbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepData_GlobalNodeOfWriterLib::get_type_name(@)",
                            header: "StepData_GlobalNodeOfWriterLib.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepData_GlobalNodeOfWriterLib::get_type_descriptor(@)",
    header: "StepData_GlobalNodeOfWriterLib.hxx".}
proc dynamicType*(this: StepDataGlobalNodeOfWriterLib): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepData_GlobalNodeOfWriterLib.hxx".}














































