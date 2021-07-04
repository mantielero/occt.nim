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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Real,
  ../Standard/Standard_Transient

discard "forward decl of StepGeom_CartesianPoint"
discard "forward decl of StepShape_BoxDomain"
discard "forward decl of StepShape_BoxDomain"
type
  Handle_StepShape_BoxDomain* = handle[StepShape_BoxDomain]
  StepShape_BoxDomain* {.importcpp: "StepShape_BoxDomain",
                        header: "StepShape_BoxDomain.hxx", bycopy.} = object of Standard_Transient ##
                                                                                            ## !
                                                                                            ## Returns
                                                                                            ## a
                                                                                            ## BoxDomain


proc constructStepShape_BoxDomain*(): StepShape_BoxDomain {.constructor,
    importcpp: "StepShape_BoxDomain(@)", header: "StepShape_BoxDomain.hxx".}
proc Init*(this: var StepShape_BoxDomain; aCorner: handle[StepGeom_CartesianPoint];
          aXlength: Standard_Real; aYlength: Standard_Real; aZlength: Standard_Real) {.
    importcpp: "Init", header: "StepShape_BoxDomain.hxx".}
proc SetCorner*(this: var StepShape_BoxDomain;
               aCorner: handle[StepGeom_CartesianPoint]) {.importcpp: "SetCorner",
    header: "StepShape_BoxDomain.hxx".}
proc Corner*(this: StepShape_BoxDomain): handle[StepGeom_CartesianPoint] {.
    noSideEffect, importcpp: "Corner", header: "StepShape_BoxDomain.hxx".}
proc SetXlength*(this: var StepShape_BoxDomain; aXlength: Standard_Real) {.
    importcpp: "SetXlength", header: "StepShape_BoxDomain.hxx".}
proc Xlength*(this: StepShape_BoxDomain): Standard_Real {.noSideEffect,
    importcpp: "Xlength", header: "StepShape_BoxDomain.hxx".}
proc SetYlength*(this: var StepShape_BoxDomain; aYlength: Standard_Real) {.
    importcpp: "SetYlength", header: "StepShape_BoxDomain.hxx".}
proc Ylength*(this: StepShape_BoxDomain): Standard_Real {.noSideEffect,
    importcpp: "Ylength", header: "StepShape_BoxDomain.hxx".}
proc SetZlength*(this: var StepShape_BoxDomain; aZlength: Standard_Real) {.
    importcpp: "SetZlength", header: "StepShape_BoxDomain.hxx".}
proc Zlength*(this: StepShape_BoxDomain): Standard_Real {.noSideEffect,
    importcpp: "Zlength", header: "StepShape_BoxDomain.hxx".}
type
  StepShape_BoxDomainbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepShape_BoxDomain::get_type_name(@)",
                              header: "StepShape_BoxDomain.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepShape_BoxDomain::get_type_descriptor(@)",
    header: "StepShape_BoxDomain.hxx".}
proc DynamicType*(this: StepShape_BoxDomain): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "StepShape_BoxDomain.hxx".}