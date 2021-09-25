##  Created on: 2002-12-12
##  Created by: data exchange team
##  Copyright (c) 2002-2014 OPEN CASCADE SAS
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
discard "forward decl of StepElement_SurfaceSectionField"
discard "forward decl of StepElement_SurfaceElementProperty"
discard "forward decl of StepElement_SurfaceElementProperty"
type
  HandleStepElementSurfaceElementProperty* = Handle[
      StepElementSurfaceElementProperty]

## ! Representation of STEP entity SurfaceElementProperty

type
  StepElementSurfaceElementProperty* {.importcpp: "StepElement_SurfaceElementProperty", header: "StepElement_SurfaceElementProperty.hxx",
                                      bycopy.} = object of StandardTransient ## ! Empty
                                                                        ## constructor


proc constructStepElementSurfaceElementProperty*(): StepElementSurfaceElementProperty {.
    constructor, importcpp: "StepElement_SurfaceElementProperty(@)",
    header: "StepElement_SurfaceElementProperty.hxx".}
proc init*(this: var StepElementSurfaceElementProperty;
          aPropertyId: Handle[TCollectionHAsciiString];
          aDescription: Handle[TCollectionHAsciiString];
          aSection: Handle[StepElementSurfaceSectionField]) {.importcpp: "Init",
    header: "StepElement_SurfaceElementProperty.hxx".}
proc propertyId*(this: StepElementSurfaceElementProperty): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "PropertyId",
                              header: "StepElement_SurfaceElementProperty.hxx".}
proc setPropertyId*(this: var StepElementSurfaceElementProperty;
                   propertyId: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetPropertyId", header: "StepElement_SurfaceElementProperty.hxx".}
proc description*(this: StepElementSurfaceElementProperty): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "Description",
                              header: "StepElement_SurfaceElementProperty.hxx".}
proc setDescription*(this: var StepElementSurfaceElementProperty;
                    description: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetDescription", header: "StepElement_SurfaceElementProperty.hxx".}
proc section*(this: StepElementSurfaceElementProperty): Handle[
    StepElementSurfaceSectionField] {.noSideEffect, importcpp: "Section", header: "StepElement_SurfaceElementProperty.hxx".}
proc setSection*(this: var StepElementSurfaceElementProperty;
                section: Handle[StepElementSurfaceSectionField]) {.
    importcpp: "SetSection", header: "StepElement_SurfaceElementProperty.hxx".}
type
  StepElementSurfaceElementPropertybaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepElement_SurfaceElementProperty::get_type_name(@)",
                            header: "StepElement_SurfaceElementProperty.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepElement_SurfaceElementProperty::get_type_descriptor(@)",
    header: "StepElement_SurfaceElementProperty.hxx".}
proc dynamicType*(this: StepElementSurfaceElementProperty): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepElement_SurfaceElementProperty.hxx".}
