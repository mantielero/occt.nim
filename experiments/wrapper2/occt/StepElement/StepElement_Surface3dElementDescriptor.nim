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
discard "forward decl of StepElement_Surface3dElementDescriptor"
discard "forward decl of StepElement_Surface3dElementDescriptor"
type
  HandleStepElementSurface3dElementDescriptor* = Handle[
      StepElementSurface3dElementDescriptor]

## ! Representation of STEP entity Surface3dElementDescriptor

type
  StepElementSurface3dElementDescriptor* {.
      importcpp: "StepElement_Surface3dElementDescriptor",
      header: "StepElement_Surface3dElementDescriptor.hxx", bycopy.} = object of StepElementElementDescriptor ##
                                                                                                       ## !
                                                                                                       ## Empty
                                                                                                       ## constructor


proc constructStepElementSurface3dElementDescriptor*(): StepElementSurface3dElementDescriptor {.
    constructor, importcpp: "StepElement_Surface3dElementDescriptor(@)",
    header: "StepElement_Surface3dElementDescriptor.hxx".}
proc init*(this: var StepElementSurface3dElementDescriptor;
          aElementDescriptorTopologyOrder: StepElementElementOrder;
          aElementDescriptorDescription: Handle[TCollectionHAsciiString]; aPurpose: Handle[
    StepElementHArray1OfHSequenceOfSurfaceElementPurposeMember];
          aShape: StepElementElement2dShape) {.importcpp: "Init",
    header: "StepElement_Surface3dElementDescriptor.hxx".}
proc purpose*(this: StepElementSurface3dElementDescriptor): Handle[
    StepElementHArray1OfHSequenceOfSurfaceElementPurposeMember] {.noSideEffect,
    importcpp: "Purpose", header: "StepElement_Surface3dElementDescriptor.hxx".}
proc setPurpose*(this: var StepElementSurface3dElementDescriptor; purpose: Handle[
    StepElementHArray1OfHSequenceOfSurfaceElementPurposeMember]) {.
    importcpp: "SetPurpose", header: "StepElement_Surface3dElementDescriptor.hxx".}
proc shape*(this: StepElementSurface3dElementDescriptor): StepElementElement2dShape {.
    noSideEffect, importcpp: "Shape",
    header: "StepElement_Surface3dElementDescriptor.hxx".}
proc setShape*(this: var StepElementSurface3dElementDescriptor;
              shape: StepElementElement2dShape) {.importcpp: "SetShape",
    header: "StepElement_Surface3dElementDescriptor.hxx".}
type
  StepElementSurface3dElementDescriptorbaseType* = StepElementElementDescriptor

proc getTypeName*(): cstring {.importcpp: "StepElement_Surface3dElementDescriptor::get_type_name(@)", header: "StepElement_Surface3dElementDescriptor.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepElement_Surface3dElementDescriptor::get_type_descriptor(@)",
    header: "StepElement_Surface3dElementDescriptor.hxx".}
proc dynamicType*(this: StepElementSurface3dElementDescriptor): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepElement_Surface3dElementDescriptor.hxx".}
