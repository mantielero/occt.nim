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

discard "forward decl of StepRepr_RepresentationItem"
discard "forward decl of StepRepr_Representation"
discard "forward decl of StepRepr_RepresentationMap"
discard "forward decl of StepRepr_RepresentationMap"
type
  HandleC1C1* = Handle[StepReprRepresentationMap]
  StepReprRepresentationMap* {.importcpp: "StepRepr_RepresentationMap",
                              header: "StepRepr_RepresentationMap.hxx", bycopy.} = object of StandardTransient ##
                                                                                                        ## !
                                                                                                        ## Returns
                                                                                                        ## a
                                                                                                        ## RepresentationMap


proc constructStepReprRepresentationMap*(): StepReprRepresentationMap {.
    constructor, importcpp: "StepRepr_RepresentationMap(@)",
    header: "StepRepr_RepresentationMap.hxx".}
proc init*(this: var StepReprRepresentationMap;
          aMappingOrigin: Handle[StepReprRepresentationItem];
          aMappedRepresentation: Handle[StepReprRepresentation]) {.
    importcpp: "Init", header: "StepRepr_RepresentationMap.hxx".}
proc setMappingOrigin*(this: var StepReprRepresentationMap;
                      aMappingOrigin: Handle[StepReprRepresentationItem]) {.
    importcpp: "SetMappingOrigin", header: "StepRepr_RepresentationMap.hxx".}
proc mappingOrigin*(this: StepReprRepresentationMap): Handle[
    StepReprRepresentationItem] {.noSideEffect, importcpp: "MappingOrigin",
                                 header: "StepRepr_RepresentationMap.hxx".}
proc setMappedRepresentation*(this: var StepReprRepresentationMap;
    aMappedRepresentation: Handle[StepReprRepresentation]) {.
    importcpp: "SetMappedRepresentation", header: "StepRepr_RepresentationMap.hxx".}
proc mappedRepresentation*(this: StepReprRepresentationMap): Handle[
    StepReprRepresentation] {.noSideEffect, importcpp: "MappedRepresentation",
                             header: "StepRepr_RepresentationMap.hxx".}
type
  StepReprRepresentationMapbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepRepr_RepresentationMap::get_type_name(@)",
                            header: "StepRepr_RepresentationMap.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepRepr_RepresentationMap::get_type_descriptor(@)",
    header: "StepRepr_RepresentationMap.hxx".}
proc dynamicType*(this: StepReprRepresentationMap): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepRepr_RepresentationMap.hxx".}