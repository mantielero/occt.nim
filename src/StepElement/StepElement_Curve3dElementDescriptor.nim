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
discard "forward decl of StepElement_Curve3dElementDescriptor"
discard "forward decl of StepElement_Curve3dElementDescriptor"
type
  HandleC1C1* = Handle[StepElementCurve3dElementDescriptor]

## ! Representation of STEP entity Curve3dElementDescriptor

type
  StepElementCurve3dElementDescriptor* {.importcpp: "StepElement_Curve3dElementDescriptor", header: "StepElement_Curve3dElementDescriptor.hxx",
                                        bycopy.} = object of StepElementElementDescriptor ##
                                                                                     ## !
                                                                                     ## Empty
                                                                                     ## constructor


proc constructStepElementCurve3dElementDescriptor*(): StepElementCurve3dElementDescriptor {.
    constructor, importcpp: "StepElement_Curve3dElementDescriptor(@)",
    header: "StepElement_Curve3dElementDescriptor.hxx".}
proc init*(this: var StepElementCurve3dElementDescriptor;
          aElementDescriptorTopologyOrder: StepElementElementOrder;
          aElementDescriptorDescription: Handle[TCollectionHAsciiString]; aPurpose: Handle[
    StepElementHArray1OfHSequenceOfCurveElementPurposeMember]) {.
    importcpp: "Init", header: "StepElement_Curve3dElementDescriptor.hxx".}
proc purpose*(this: StepElementCurve3dElementDescriptor): Handle[
    StepElementHArray1OfHSequenceOfCurveElementPurposeMember] {.noSideEffect,
    importcpp: "Purpose", header: "StepElement_Curve3dElementDescriptor.hxx".}
proc setPurpose*(this: var StepElementCurve3dElementDescriptor; purpose: Handle[
    StepElementHArray1OfHSequenceOfCurveElementPurposeMember]) {.
    importcpp: "SetPurpose", header: "StepElement_Curve3dElementDescriptor.hxx".}
type
  StepElementCurve3dElementDescriptorbaseType* = StepElementElementDescriptor

proc getTypeName*(): cstring {.importcpp: "StepElement_Curve3dElementDescriptor::get_type_name(@)",
                            header: "StepElement_Curve3dElementDescriptor.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepElement_Curve3dElementDescriptor::get_type_descriptor(@)",
    header: "StepElement_Curve3dElementDescriptor.hxx".}
proc dynamicType*(this: StepElementCurve3dElementDescriptor): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepElement_Curve3dElementDescriptor.hxx".}