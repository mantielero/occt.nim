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
  ../Standard/Standard, ../Standard/Standard_Type,
  StepGeom_HArray1OfTrimmingSelect, ../Standard/Standard_Boolean,
  StepGeom_TrimmingPreference, StepGeom_BoundedCurve, ../Standard/Standard_Integer

discard "forward decl of StepGeom_Curve"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_TrimmingSelect"
discard "forward decl of StepGeom_TrimmedCurve"
discard "forward decl of StepGeom_TrimmedCurve"
type
  Handle_StepGeom_TrimmedCurve* = handle[StepGeom_TrimmedCurve]
  StepGeom_TrimmedCurve* {.importcpp: "StepGeom_TrimmedCurve",
                          header: "StepGeom_TrimmedCurve.hxx", bycopy.} = object of StepGeom_BoundedCurve ##
                                                                                                   ## !
                                                                                                   ## Returns
                                                                                                   ## a
                                                                                                   ## TrimmedCurve


proc constructStepGeom_TrimmedCurve*(): StepGeom_TrimmedCurve {.constructor,
    importcpp: "StepGeom_TrimmedCurve(@)", header: "StepGeom_TrimmedCurve.hxx".}
proc Init*(this: var StepGeom_TrimmedCurve; aName: handle[TCollection_HAsciiString];
          aBasisCurve: handle[StepGeom_Curve];
          aTrim1: handle[StepGeom_HArray1OfTrimmingSelect];
          aTrim2: handle[StepGeom_HArray1OfTrimmingSelect];
          aSenseAgreement: Standard_Boolean;
          aMasterRepresentation: StepGeom_TrimmingPreference) {.importcpp: "Init",
    header: "StepGeom_TrimmedCurve.hxx".}
proc SetBasisCurve*(this: var StepGeom_TrimmedCurve;
                   aBasisCurve: handle[StepGeom_Curve]) {.
    importcpp: "SetBasisCurve", header: "StepGeom_TrimmedCurve.hxx".}
proc BasisCurve*(this: StepGeom_TrimmedCurve): handle[StepGeom_Curve] {.
    noSideEffect, importcpp: "BasisCurve", header: "StepGeom_TrimmedCurve.hxx".}
proc SetTrim1*(this: var StepGeom_TrimmedCurve;
              aTrim1: handle[StepGeom_HArray1OfTrimmingSelect]) {.
    importcpp: "SetTrim1", header: "StepGeom_TrimmedCurve.hxx".}
proc Trim1*(this: StepGeom_TrimmedCurve): handle[StepGeom_HArray1OfTrimmingSelect] {.
    noSideEffect, importcpp: "Trim1", header: "StepGeom_TrimmedCurve.hxx".}
proc Trim1Value*(this: StepGeom_TrimmedCurve; num: Standard_Integer): StepGeom_TrimmingSelect {.
    noSideEffect, importcpp: "Trim1Value", header: "StepGeom_TrimmedCurve.hxx".}
proc NbTrim1*(this: StepGeom_TrimmedCurve): Standard_Integer {.noSideEffect,
    importcpp: "NbTrim1", header: "StepGeom_TrimmedCurve.hxx".}
proc SetTrim2*(this: var StepGeom_TrimmedCurve;
              aTrim2: handle[StepGeom_HArray1OfTrimmingSelect]) {.
    importcpp: "SetTrim2", header: "StepGeom_TrimmedCurve.hxx".}
proc Trim2*(this: StepGeom_TrimmedCurve): handle[StepGeom_HArray1OfTrimmingSelect] {.
    noSideEffect, importcpp: "Trim2", header: "StepGeom_TrimmedCurve.hxx".}
proc Trim2Value*(this: StepGeom_TrimmedCurve; num: Standard_Integer): StepGeom_TrimmingSelect {.
    noSideEffect, importcpp: "Trim2Value", header: "StepGeom_TrimmedCurve.hxx".}
proc NbTrim2*(this: StepGeom_TrimmedCurve): Standard_Integer {.noSideEffect,
    importcpp: "NbTrim2", header: "StepGeom_TrimmedCurve.hxx".}
proc SetSenseAgreement*(this: var StepGeom_TrimmedCurve;
                       aSenseAgreement: Standard_Boolean) {.
    importcpp: "SetSenseAgreement", header: "StepGeom_TrimmedCurve.hxx".}
proc SenseAgreement*(this: StepGeom_TrimmedCurve): Standard_Boolean {.noSideEffect,
    importcpp: "SenseAgreement", header: "StepGeom_TrimmedCurve.hxx".}
proc SetMasterRepresentation*(this: var StepGeom_TrimmedCurve;
                             aMasterRepresentation: StepGeom_TrimmingPreference) {.
    importcpp: "SetMasterRepresentation", header: "StepGeom_TrimmedCurve.hxx".}
proc MasterRepresentation*(this: StepGeom_TrimmedCurve): StepGeom_TrimmingPreference {.
    noSideEffect, importcpp: "MasterRepresentation",
    header: "StepGeom_TrimmedCurve.hxx".}
type
  StepGeom_TrimmedCurvebase_type* = StepGeom_BoundedCurve

proc get_type_name*(): cstring {.importcpp: "StepGeom_TrimmedCurve::get_type_name(@)",
                              header: "StepGeom_TrimmedCurve.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepGeom_TrimmedCurve::get_type_descriptor(@)",
    header: "StepGeom_TrimmedCurve.hxx".}
proc DynamicType*(this: StepGeom_TrimmedCurve): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepGeom_TrimmedCurve.hxx".}