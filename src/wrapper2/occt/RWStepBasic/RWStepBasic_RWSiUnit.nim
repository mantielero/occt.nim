##  Created on: 1995-12-04
##  Created by: EXPRESS->CDL V0.2 Translator
##  Copyright (c) 1995-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean, ../StepBasic/StepBasic_SiPrefix,
  ../Standard/Standard_CString, ../StepBasic/StepBasic_SiUnitName

discard "forward decl of StepData_StepReaderData"
discard "forward decl of Interface_Check"
discard "forward decl of StepBasic_SiUnit"
discard "forward decl of StepData_StepWriter"
discard "forward decl of TCollection_AsciiString"
type
  RWStepBasic_RWSiUnit* {.importcpp: "RWStepBasic_RWSiUnit",
                         header: "RWStepBasic_RWSiUnit.hxx", bycopy.} = object


proc constructRWStepBasic_RWSiUnit*(): RWStepBasic_RWSiUnit {.constructor,
    importcpp: "RWStepBasic_RWSiUnit(@)", header: "RWStepBasic_RWSiUnit.hxx".}
proc ReadStep*(this: RWStepBasic_RWSiUnit; data: handle[StepData_StepReaderData];
              num: Standard_Integer; ach: var handle[Interface_Check];
              ent: handle[StepBasic_SiUnit]) {.noSideEffect, importcpp: "ReadStep",
    header: "RWStepBasic_RWSiUnit.hxx".}
proc WriteStep*(this: RWStepBasic_RWSiUnit; SW: var StepData_StepWriter;
               ent: handle[StepBasic_SiUnit]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepBasic_RWSiUnit.hxx".}
proc DecodePrefix*(this: RWStepBasic_RWSiUnit; aPrefix: var StepBasic_SiPrefix;
                  text: Standard_CString): Standard_Boolean {.noSideEffect,
    importcpp: "DecodePrefix", header: "RWStepBasic_RWSiUnit.hxx".}
proc DecodeName*(this: RWStepBasic_RWSiUnit; aName: var StepBasic_SiUnitName;
                text: Standard_CString): Standard_Boolean {.noSideEffect,
    importcpp: "DecodeName", header: "RWStepBasic_RWSiUnit.hxx".}
proc EncodePrefix*(this: RWStepBasic_RWSiUnit; aPrefix: StepBasic_SiPrefix): TCollection_AsciiString {.
    noSideEffect, importcpp: "EncodePrefix", header: "RWStepBasic_RWSiUnit.hxx".}
proc EncodeName*(this: RWStepBasic_RWSiUnit; aName: StepBasic_SiUnitName): TCollection_AsciiString {.
    noSideEffect, importcpp: "EncodeName", header: "RWStepBasic_RWSiUnit.hxx".}