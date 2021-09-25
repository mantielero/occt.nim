##  Created on: 2015-07-21
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

discard "forward decl of Standard_Transient"
discard "forward decl of StepDimTol_DatumSystem"
discard "forward decl of StepDimTol_DatumReference"
type
  StepDimTolDatumSystemOrReference* {.importcpp: "StepDimTol_DatumSystemOrReference", header: "StepDimTol_DatumSystemOrReference.hxx",
                                     bycopy.} = object of StepDataSelectType ## ! Returns a
                                                                        ## DatumSystemOrReference select type


proc constructStepDimTolDatumSystemOrReference*(): StepDimTolDatumSystemOrReference {.
    constructor, importcpp: "StepDimTol_DatumSystemOrReference(@)",
    header: "StepDimTol_DatumSystemOrReference.hxx".}
proc caseNum*(this: StepDimTolDatumSystemOrReference;
             ent: Handle[StandardTransient]): int {.noSideEffect,
    importcpp: "CaseNum", header: "StepDimTol_DatumSystemOrReference.hxx".}
proc datumSystem*(this: StepDimTolDatumSystemOrReference): Handle[
    StepDimTolDatumSystem] {.noSideEffect, importcpp: "DatumSystem",
                            header: "StepDimTol_DatumSystemOrReference.hxx".}
proc datumReference*(this: StepDimTolDatumSystemOrReference): Handle[
    StepDimTolDatumReference] {.noSideEffect, importcpp: "DatumReference",
                               header: "StepDimTol_DatumSystemOrReference.hxx".}
