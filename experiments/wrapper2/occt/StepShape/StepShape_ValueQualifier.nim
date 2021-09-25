##  Created on: 2001-04-24
##  Created by: Christian CAILLET
##  Copyright (c) 2001-2014 OPEN CASCADE SAS
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
discard "forward decl of StepShape_PrecisionQualifier"
discard "forward decl of StepShape_TypeQualifier"
discard "forward decl of StepShape_ValueFormatTypeQualifier"
type
  StepShapeValueQualifier* {.importcpp: "StepShape_ValueQualifier",
                            header: "StepShape_ValueQualifier.hxx", bycopy.} = object of StepDataSelectType


proc constructStepShapeValueQualifier*(): StepShapeValueQualifier {.constructor,
    importcpp: "StepShape_ValueQualifier(@)",
    header: "StepShape_ValueQualifier.hxx".}
proc caseNum*(this: StepShapeValueQualifier; ent: Handle[StandardTransient]): int {.
    noSideEffect, importcpp: "CaseNum", header: "StepShape_ValueQualifier.hxx".}
proc precisionQualifier*(this: StepShapeValueQualifier): Handle[
    StepShapePrecisionQualifier] {.noSideEffect, importcpp: "PrecisionQualifier",
                                  header: "StepShape_ValueQualifier.hxx".}
proc typeQualifier*(this: StepShapeValueQualifier): Handle[StepShapeTypeQualifier] {.
    noSideEffect, importcpp: "TypeQualifier",
    header: "StepShape_ValueQualifier.hxx".}
proc valueFormatTypeQualifier*(this: StepShapeValueQualifier): Handle[
    StepShapeValueFormatTypeQualifier] {.noSideEffect,
                                        importcpp: "ValueFormatTypeQualifier",
                                        header: "StepShape_ValueQualifier.hxx".}
