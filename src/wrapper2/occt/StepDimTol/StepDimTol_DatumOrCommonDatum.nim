##  Created on: 2015-07-16
##  Created by: Irina KRYLOVA
##  Copyright (c) 2015 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Integer,
  ../StepData/StepData_SelectType

discard "forward decl of Standard_Transient"
discard "forward decl of StepDimTol_Datum"
discard "forward decl of StepDimTol_HArray1OfDatumReferenceElement"
type
  StepDimTol_DatumOrCommonDatum* {.importcpp: "StepDimTol_DatumOrCommonDatum",
                                  header: "StepDimTol_DatumOrCommonDatum.hxx",
                                  bycopy.} = object of StepData_SelectType ## ! Returns a
                                                                      ## DatumOrCommonDatum select type


proc constructStepDimTol_DatumOrCommonDatum*(): StepDimTol_DatumOrCommonDatum {.
    constructor, importcpp: "StepDimTol_DatumOrCommonDatum(@)",
    header: "StepDimTol_DatumOrCommonDatum.hxx".}
proc CaseNum*(this: StepDimTol_DatumOrCommonDatum; ent: handle[Standard_Transient]): Standard_Integer {.
    noSideEffect, importcpp: "CaseNum", header: "StepDimTol_DatumOrCommonDatum.hxx".}
proc Datum*(this: StepDimTol_DatumOrCommonDatum): handle[StepDimTol_Datum] {.
    noSideEffect, importcpp: "Datum", header: "StepDimTol_DatumOrCommonDatum.hxx".}
proc CommonDatumList*(this: StepDimTol_DatumOrCommonDatum): handle[
    StepDimTol_HArray1OfDatumReferenceElement] {.noSideEffect,
    importcpp: "CommonDatumList", header: "StepDimTol_DatumOrCommonDatum.hxx".}