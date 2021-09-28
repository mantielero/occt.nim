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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_Axis2Placement"
discard "forward decl of StepGeom_Hyperbola"
discard "forward decl of StepGeom_Hyperbola"
type
  HandleC1C1* = Handle[StepGeomHyperbola]
  StepGeomHyperbola* {.importcpp: "StepGeom_Hyperbola",
                      header: "StepGeom_Hyperbola.hxx", bycopy.} = object of StepGeomConic ##
                                                                                    ## !
                                                                                    ## Returns
                                                                                    ## a
                                                                                    ## Hyperbola


proc constructStepGeomHyperbola*(): StepGeomHyperbola {.constructor,
    importcpp: "StepGeom_Hyperbola(@)", header: "StepGeom_Hyperbola.hxx".}
proc init*(this: var StepGeomHyperbola; aName: Handle[TCollectionHAsciiString];
          aPosition: StepGeomAxis2Placement; aSemiAxis: cfloat;
          aSemiImagAxis: cfloat) {.importcpp: "Init",
                                 header: "StepGeom_Hyperbola.hxx".}
proc setSemiAxis*(this: var StepGeomHyperbola; aSemiAxis: cfloat) {.
    importcpp: "SetSemiAxis", header: "StepGeom_Hyperbola.hxx".}
proc semiAxis*(this: StepGeomHyperbola): cfloat {.noSideEffect,
    importcpp: "SemiAxis", header: "StepGeom_Hyperbola.hxx".}
proc setSemiImagAxis*(this: var StepGeomHyperbola; aSemiImagAxis: cfloat) {.
    importcpp: "SetSemiImagAxis", header: "StepGeom_Hyperbola.hxx".}
proc semiImagAxis*(this: StepGeomHyperbola): cfloat {.noSideEffect,
    importcpp: "SemiImagAxis", header: "StepGeom_Hyperbola.hxx".}
type
  StepGeomHyperbolabaseType* = StepGeomConic

proc getTypeName*(): cstring {.importcpp: "StepGeom_Hyperbola::get_type_name(@)",
                            header: "StepGeom_Hyperbola.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepGeom_Hyperbola::get_type_descriptor(@)",
    header: "StepGeom_Hyperbola.hxx".}
proc dynamicType*(this: StepGeomHyperbola): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepGeom_Hyperbola.hxx".}

























