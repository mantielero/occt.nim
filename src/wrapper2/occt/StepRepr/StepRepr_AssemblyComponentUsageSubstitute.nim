##  Created on: 1998-06-30
##  Created by: Christian CAILLET
##  Copyright (c) 1998-1999 Matra Datavision
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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepRepr_AssemblyComponentUsage"
discard "forward decl of StepRepr_AssemblyComponentUsageSubstitute"
discard "forward decl of StepRepr_AssemblyComponentUsageSubstitute"
type
  Handle_StepRepr_AssemblyComponentUsageSubstitute* = handle[
      StepRepr_AssemblyComponentUsageSubstitute]
  StepRepr_AssemblyComponentUsageSubstitute* {.
      importcpp: "StepRepr_AssemblyComponentUsageSubstitute",
      header: "StepRepr_AssemblyComponentUsageSubstitute.hxx", bycopy.} = object of Standard_Transient


proc constructStepRepr_AssemblyComponentUsageSubstitute*(): StepRepr_AssemblyComponentUsageSubstitute {.
    constructor, importcpp: "StepRepr_AssemblyComponentUsageSubstitute(@)",
    header: "StepRepr_AssemblyComponentUsageSubstitute.hxx".}
proc Init*(this: var StepRepr_AssemblyComponentUsageSubstitute;
          aName: handle[TCollection_HAsciiString];
          aDef: handle[TCollection_HAsciiString];
          aBase: handle[StepRepr_AssemblyComponentUsage];
          aSubs: handle[StepRepr_AssemblyComponentUsage]) {.importcpp: "Init",
    header: "StepRepr_AssemblyComponentUsageSubstitute.hxx".}
proc Name*(this: StepRepr_AssemblyComponentUsageSubstitute): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "Name", header: "StepRepr_AssemblyComponentUsageSubstitute.hxx".}
proc SetName*(this: var StepRepr_AssemblyComponentUsageSubstitute;
             aName: handle[TCollection_HAsciiString]) {.importcpp: "SetName",
    header: "StepRepr_AssemblyComponentUsageSubstitute.hxx".}
proc Definition*(this: StepRepr_AssemblyComponentUsageSubstitute): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "Definition", header: "StepRepr_AssemblyComponentUsageSubstitute.hxx".}
proc SetDefinition*(this: var StepRepr_AssemblyComponentUsageSubstitute;
                   aDef: handle[TCollection_HAsciiString]) {.
    importcpp: "SetDefinition",
    header: "StepRepr_AssemblyComponentUsageSubstitute.hxx".}
proc Base*(this: StepRepr_AssemblyComponentUsageSubstitute): handle[
    StepRepr_AssemblyComponentUsage] {.noSideEffect, importcpp: "Base", header: "StepRepr_AssemblyComponentUsageSubstitute.hxx".}
proc SetBase*(this: var StepRepr_AssemblyComponentUsageSubstitute;
             aBase: handle[StepRepr_AssemblyComponentUsage]) {.
    importcpp: "SetBase", header: "StepRepr_AssemblyComponentUsageSubstitute.hxx".}
proc Substitute*(this: StepRepr_AssemblyComponentUsageSubstitute): handle[
    StepRepr_AssemblyComponentUsage] {.noSideEffect, importcpp: "Substitute", header: "StepRepr_AssemblyComponentUsageSubstitute.hxx".}
proc SetSubstitute*(this: var StepRepr_AssemblyComponentUsageSubstitute;
                   aSubstitute: handle[StepRepr_AssemblyComponentUsage]) {.
    importcpp: "SetSubstitute",
    header: "StepRepr_AssemblyComponentUsageSubstitute.hxx".}
type
  StepRepr_AssemblyComponentUsageSubstitutebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepRepr_AssemblyComponentUsageSubstitute::get_type_name(@)", header: "StepRepr_AssemblyComponentUsageSubstitute.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepRepr_AssemblyComponentUsageSubstitute::get_type_descriptor(@)",
    header: "StepRepr_AssemblyComponentUsageSubstitute.hxx".}
proc DynamicType*(this: StepRepr_AssemblyComponentUsageSubstitute): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepRepr_AssemblyComponentUsageSubstitute.hxx".}