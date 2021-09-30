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

discard "forward decl of StepGeom_CartesianPoint"
discard "forward decl of StepShape_BoxDomain"
discard "forward decl of StepShape_BoxDomain"
type
  HandleC1C1* = Handle[StepShapeBoxDomain]
  StepShapeBoxDomain* {.importcpp: "StepShape_BoxDomain",
                       header: "StepShape_BoxDomain.hxx", bycopy.} = object of StandardTransient ##
                                                                                          ## !
                                                                                          ## Returns
                                                                                          ## a
                                                                                          ## BoxDomain


proc constructStepShapeBoxDomain*(): StepShapeBoxDomain {.constructor,
    importcpp: "StepShape_BoxDomain(@)", header: "StepShape_BoxDomain.hxx".}
proc init*(this: var StepShapeBoxDomain; aCorner: Handle[StepGeomCartesianPoint];
          aXlength: cfloat; aYlength: cfloat; aZlength: cfloat) {.importcpp: "Init",
    header: "StepShape_BoxDomain.hxx".}
proc setCorner*(this: var StepShapeBoxDomain;
               aCorner: Handle[StepGeomCartesianPoint]) {.importcpp: "SetCorner",
    header: "StepShape_BoxDomain.hxx".}
proc corner*(this: StepShapeBoxDomain): Handle[StepGeomCartesianPoint] {.
    noSideEffect, importcpp: "Corner", header: "StepShape_BoxDomain.hxx".}
proc setXlength*(this: var StepShapeBoxDomain; aXlength: cfloat) {.
    importcpp: "SetXlength", header: "StepShape_BoxDomain.hxx".}
proc xlength*(this: StepShapeBoxDomain): cfloat {.noSideEffect, importcpp: "Xlength",
    header: "StepShape_BoxDomain.hxx".}
proc setYlength*(this: var StepShapeBoxDomain; aYlength: cfloat) {.
    importcpp: "SetYlength", header: "StepShape_BoxDomain.hxx".}
proc ylength*(this: StepShapeBoxDomain): cfloat {.noSideEffect, importcpp: "Ylength",
    header: "StepShape_BoxDomain.hxx".}
proc setZlength*(this: var StepShapeBoxDomain; aZlength: cfloat) {.
    importcpp: "SetZlength", header: "StepShape_BoxDomain.hxx".}
proc zlength*(this: StepShapeBoxDomain): cfloat {.noSideEffect, importcpp: "Zlength",
    header: "StepShape_BoxDomain.hxx".}
type
  StepShapeBoxDomainbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepShape_BoxDomain::get_type_name(@)",
                            header: "StepShape_BoxDomain.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepShape_BoxDomain::get_type_descriptor(@)",
    header: "StepShape_BoxDomain.hxx".}
proc dynamicType*(this: StepShapeBoxDomain): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepShape_BoxDomain.hxx".}

























