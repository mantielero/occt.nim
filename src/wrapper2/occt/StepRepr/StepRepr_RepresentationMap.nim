##  Created on: 1995-12-01
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Transient

discard "forward decl of StepRepr_RepresentationItem"
discard "forward decl of StepRepr_Representation"
discard "forward decl of StepRepr_RepresentationMap"
discard "forward decl of StepRepr_RepresentationMap"
type
  Handle_StepRepr_RepresentationMap* = handle[StepRepr_RepresentationMap]
  StepRepr_RepresentationMap* {.importcpp: "StepRepr_RepresentationMap",
                               header: "StepRepr_RepresentationMap.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                          ## !
                                                                                                          ## Returns
                                                                                                          ## a
                                                                                                          ## RepresentationMap


proc constructStepRepr_RepresentationMap*(): StepRepr_RepresentationMap {.
    constructor, importcpp: "StepRepr_RepresentationMap(@)",
    header: "StepRepr_RepresentationMap.hxx".}
proc Init*(this: var StepRepr_RepresentationMap;
          aMappingOrigin: handle[StepRepr_RepresentationItem];
          aMappedRepresentation: handle[StepRepr_Representation]) {.
    importcpp: "Init", header: "StepRepr_RepresentationMap.hxx".}
proc SetMappingOrigin*(this: var StepRepr_RepresentationMap;
                      aMappingOrigin: handle[StepRepr_RepresentationItem]) {.
    importcpp: "SetMappingOrigin", header: "StepRepr_RepresentationMap.hxx".}
proc MappingOrigin*(this: StepRepr_RepresentationMap): handle[
    StepRepr_RepresentationItem] {.noSideEffect, importcpp: "MappingOrigin",
                                  header: "StepRepr_RepresentationMap.hxx".}
proc SetMappedRepresentation*(this: var StepRepr_RepresentationMap;
    aMappedRepresentation: handle[StepRepr_Representation]) {.
    importcpp: "SetMappedRepresentation", header: "StepRepr_RepresentationMap.hxx".}
proc MappedRepresentation*(this: StepRepr_RepresentationMap): handle[
    StepRepr_Representation] {.noSideEffect, importcpp: "MappedRepresentation",
                              header: "StepRepr_RepresentationMap.hxx".}
type
  StepRepr_RepresentationMapbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepRepr_RepresentationMap::get_type_name(@)",
                              header: "StepRepr_RepresentationMap.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepRepr_RepresentationMap::get_type_descriptor(@)",
    header: "StepRepr_RepresentationMap.hxx".}
proc DynamicType*(this: StepRepr_RepresentationMap): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepRepr_RepresentationMap.hxx".}