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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepRepr_AssemblyComponentUsage"
discard "forward decl of StepRepr_AssemblyComponentUsageSubstitute"
discard "forward decl of StepRepr_AssemblyComponentUsageSubstitute"
type
  HandleC1C1* = Handle[StepReprAssemblyComponentUsageSubstitute]
  StepReprAssemblyComponentUsageSubstitute* {.
      importcpp: "StepRepr_AssemblyComponentUsageSubstitute",
      header: "StepRepr_AssemblyComponentUsageSubstitute.hxx", bycopy.} = object of StandardTransient


proc constructStepReprAssemblyComponentUsageSubstitute*(): StepReprAssemblyComponentUsageSubstitute {.
    constructor, importcpp: "StepRepr_AssemblyComponentUsageSubstitute(@)",
    header: "StepRepr_AssemblyComponentUsageSubstitute.hxx".}
proc init*(this: var StepReprAssemblyComponentUsageSubstitute;
          aName: Handle[TCollectionHAsciiString];
          aDef: Handle[TCollectionHAsciiString];
          aBase: Handle[StepReprAssemblyComponentUsage];
          aSubs: Handle[StepReprAssemblyComponentUsage]) {.importcpp: "Init",
    header: "StepRepr_AssemblyComponentUsageSubstitute.hxx".}
proc name*(this: StepReprAssemblyComponentUsageSubstitute): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "Name", header: "StepRepr_AssemblyComponentUsageSubstitute.hxx".}
proc setName*(this: var StepReprAssemblyComponentUsageSubstitute;
             aName: Handle[TCollectionHAsciiString]) {.importcpp: "SetName",
    header: "StepRepr_AssemblyComponentUsageSubstitute.hxx".}
proc definition*(this: StepReprAssemblyComponentUsageSubstitute): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "Definition", header: "StepRepr_AssemblyComponentUsageSubstitute.hxx".}
proc setDefinition*(this: var StepReprAssemblyComponentUsageSubstitute;
                   aDef: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetDefinition",
    header: "StepRepr_AssemblyComponentUsageSubstitute.hxx".}
proc base*(this: StepReprAssemblyComponentUsageSubstitute): Handle[
    StepReprAssemblyComponentUsage] {.noSideEffect, importcpp: "Base", header: "StepRepr_AssemblyComponentUsageSubstitute.hxx".}
proc setBase*(this: var StepReprAssemblyComponentUsageSubstitute;
             aBase: Handle[StepReprAssemblyComponentUsage]) {.
    importcpp: "SetBase", header: "StepRepr_AssemblyComponentUsageSubstitute.hxx".}
proc substitute*(this: StepReprAssemblyComponentUsageSubstitute): Handle[
    StepReprAssemblyComponentUsage] {.noSideEffect, importcpp: "Substitute", header: "StepRepr_AssemblyComponentUsageSubstitute.hxx".}
proc setSubstitute*(this: var StepReprAssemblyComponentUsageSubstitute;
                   aSubstitute: Handle[StepReprAssemblyComponentUsage]) {.
    importcpp: "SetSubstitute",
    header: "StepRepr_AssemblyComponentUsageSubstitute.hxx".}
type
  StepReprAssemblyComponentUsageSubstitutebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepRepr_AssemblyComponentUsageSubstitute::get_type_name(@)", header: "StepRepr_AssemblyComponentUsageSubstitute.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepRepr_AssemblyComponentUsageSubstitute::get_type_descriptor(@)",
    header: "StepRepr_AssemblyComponentUsageSubstitute.hxx".}
proc dynamicType*(this: StepReprAssemblyComponentUsageSubstitute): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "StepRepr_AssemblyComponentUsageSubstitute.hxx".}