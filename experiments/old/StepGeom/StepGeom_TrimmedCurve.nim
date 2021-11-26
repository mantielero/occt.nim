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

discard "forward decl of StepGeom_Curve"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_TrimmingSelect"
discard "forward decl of StepGeom_TrimmedCurve"
discard "forward decl of StepGeom_TrimmedCurve"
type
  HandleC1C1* = Handle[StepGeomTrimmedCurve]
  StepGeomTrimmedCurve* {.importcpp: "StepGeom_TrimmedCurve",
                         header: "StepGeom_TrimmedCurve.hxx", bycopy.} = object of StepGeomBoundedCurve ##
                                                                                                 ## !
                                                                                                 ## Returns
                                                                                                 ## a
                                                                                                 ## TrimmedCurve


proc constructStepGeomTrimmedCurve*(): StepGeomTrimmedCurve {.constructor,
    importcpp: "StepGeom_TrimmedCurve(@)", header: "StepGeom_TrimmedCurve.hxx".}
proc init*(this: var StepGeomTrimmedCurve; aName: Handle[TCollectionHAsciiString];
          aBasisCurve: Handle[StepGeomCurve];
          aTrim1: Handle[StepGeomHArray1OfTrimmingSelect];
          aTrim2: Handle[StepGeomHArray1OfTrimmingSelect];
          aSenseAgreement: StandardBoolean;
          aMasterRepresentation: StepGeomTrimmingPreference) {.importcpp: "Init",
    header: "StepGeom_TrimmedCurve.hxx".}
proc setBasisCurve*(this: var StepGeomTrimmedCurve;
                   aBasisCurve: Handle[StepGeomCurve]) {.
    importcpp: "SetBasisCurve", header: "StepGeom_TrimmedCurve.hxx".}
proc basisCurve*(this: StepGeomTrimmedCurve): Handle[StepGeomCurve] {.noSideEffect,
    importcpp: "BasisCurve", header: "StepGeom_TrimmedCurve.hxx".}
proc setTrim1*(this: var StepGeomTrimmedCurve;
              aTrim1: Handle[StepGeomHArray1OfTrimmingSelect]) {.
    importcpp: "SetTrim1", header: "StepGeom_TrimmedCurve.hxx".}
proc trim1*(this: StepGeomTrimmedCurve): Handle[StepGeomHArray1OfTrimmingSelect] {.
    noSideEffect, importcpp: "Trim1", header: "StepGeom_TrimmedCurve.hxx".}
proc trim1Value*(this: StepGeomTrimmedCurve; num: int): StepGeomTrimmingSelect {.
    noSideEffect, importcpp: "Trim1Value", header: "StepGeom_TrimmedCurve.hxx".}
proc nbTrim1*(this: StepGeomTrimmedCurve): int {.noSideEffect, importcpp: "NbTrim1",
    header: "StepGeom_TrimmedCurve.hxx".}
proc setTrim2*(this: var StepGeomTrimmedCurve;
              aTrim2: Handle[StepGeomHArray1OfTrimmingSelect]) {.
    importcpp: "SetTrim2", header: "StepGeom_TrimmedCurve.hxx".}
proc trim2*(this: StepGeomTrimmedCurve): Handle[StepGeomHArray1OfTrimmingSelect] {.
    noSideEffect, importcpp: "Trim2", header: "StepGeom_TrimmedCurve.hxx".}
proc trim2Value*(this: StepGeomTrimmedCurve; num: int): StepGeomTrimmingSelect {.
    noSideEffect, importcpp: "Trim2Value", header: "StepGeom_TrimmedCurve.hxx".}
proc nbTrim2*(this: StepGeomTrimmedCurve): int {.noSideEffect, importcpp: "NbTrim2",
    header: "StepGeom_TrimmedCurve.hxx".}
proc setSenseAgreement*(this: var StepGeomTrimmedCurve;
                       aSenseAgreement: StandardBoolean) {.
    importcpp: "SetSenseAgreement", header: "StepGeom_TrimmedCurve.hxx".}
proc senseAgreement*(this: StepGeomTrimmedCurve): StandardBoolean {.noSideEffect,
    importcpp: "SenseAgreement", header: "StepGeom_TrimmedCurve.hxx".}
proc setMasterRepresentation*(this: var StepGeomTrimmedCurve;
                             aMasterRepresentation: StepGeomTrimmingPreference) {.
    importcpp: "SetMasterRepresentation", header: "StepGeom_TrimmedCurve.hxx".}
proc masterRepresentation*(this: StepGeomTrimmedCurve): StepGeomTrimmingPreference {.
    noSideEffect, importcpp: "MasterRepresentation",
    header: "StepGeom_TrimmedCurve.hxx".}
type
  StepGeomTrimmedCurvebaseType* = StepGeomBoundedCurve

proc getTypeName*(): cstring {.importcpp: "StepGeom_TrimmedCurve::get_type_name(@)",
                            header: "StepGeom_TrimmedCurve.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepGeom_TrimmedCurve::get_type_descriptor(@)",
    header: "StepGeom_TrimmedCurve.hxx".}
proc dynamicType*(this: StepGeomTrimmedCurve): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepGeom_TrimmedCurve.hxx".}