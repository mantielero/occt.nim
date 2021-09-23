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
  ../Standard/Standard, ../Standard/Standard_Type, StepShape_HalfSpaceSolid,
  ../Standard/Standard_Boolean

discard "forward decl of StepShape_BoxDomain"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_Surface"
discard "forward decl of StepShape_BoxedHalfSpace"
discard "forward decl of StepShape_BoxedHalfSpace"
type
  Handle_StepShape_BoxedHalfSpace* = handle[StepShape_BoxedHalfSpace]
  StepShape_BoxedHalfSpace* {.importcpp: "StepShape_BoxedHalfSpace",
                             header: "StepShape_BoxedHalfSpace.hxx", bycopy.} = object of StepShape_HalfSpaceSolid ##
                                                                                                            ## !
                                                                                                            ## Returns
                                                                                                            ## a
                                                                                                            ## BoxedHalfSpace


proc constructStepShape_BoxedHalfSpace*(): StepShape_BoxedHalfSpace {.constructor,
    importcpp: "StepShape_BoxedHalfSpace(@)",
    header: "StepShape_BoxedHalfSpace.hxx".}
proc Init*(this: var StepShape_BoxedHalfSpace;
          aName: handle[TCollection_HAsciiString];
          aBaseSurface: handle[StepGeom_Surface];
          aAgreementFlag: Standard_Boolean;
          aEnclosure: handle[StepShape_BoxDomain]) {.importcpp: "Init",
    header: "StepShape_BoxedHalfSpace.hxx".}
proc SetEnclosure*(this: var StepShape_BoxedHalfSpace;
                  aEnclosure: handle[StepShape_BoxDomain]) {.
    importcpp: "SetEnclosure", header: "StepShape_BoxedHalfSpace.hxx".}
proc Enclosure*(this: StepShape_BoxedHalfSpace): handle[StepShape_BoxDomain] {.
    noSideEffect, importcpp: "Enclosure", header: "StepShape_BoxedHalfSpace.hxx".}
type
  StepShape_BoxedHalfSpacebase_type* = StepShape_HalfSpaceSolid

proc get_type_name*(): cstring {.importcpp: "StepShape_BoxedHalfSpace::get_type_name(@)",
                              header: "StepShape_BoxedHalfSpace.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepShape_BoxedHalfSpace::get_type_descriptor(@)",
    header: "StepShape_BoxedHalfSpace.hxx".}
proc DynamicType*(this: StepShape_BoxedHalfSpace): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepShape_BoxedHalfSpace.hxx".}