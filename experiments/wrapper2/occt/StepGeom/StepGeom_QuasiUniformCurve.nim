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

discard "forward decl of StepGeom_QuasiUniformCurve"
discard "forward decl of StepGeom_QuasiUniformCurve"
type
  HandleStepGeomQuasiUniformCurve* = Handle[StepGeomQuasiUniformCurve]
  StepGeomQuasiUniformCurve* {.importcpp: "StepGeom_QuasiUniformCurve",
                              header: "StepGeom_QuasiUniformCurve.hxx", bycopy.} = object of StepGeomBSplineCurve ##
                                                                                                           ## !
                                                                                                           ## Returns
                                                                                                           ## a
                                                                                                           ## QuasiUniformCurve


proc constructStepGeomQuasiUniformCurve*(): StepGeomQuasiUniformCurve {.
    constructor, importcpp: "StepGeom_QuasiUniformCurve(@)",
    header: "StepGeom_QuasiUniformCurve.hxx".}
type
  StepGeomQuasiUniformCurvebaseType* = StepGeomBSplineCurve

proc getTypeName*(): cstring {.importcpp: "StepGeom_QuasiUniformCurve::get_type_name(@)",
                            header: "StepGeom_QuasiUniformCurve.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepGeom_QuasiUniformCurve::get_type_descriptor(@)",
    header: "StepGeom_QuasiUniformCurve.hxx".}
proc dynamicType*(this: StepGeomQuasiUniformCurve): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepGeom_QuasiUniformCurve.hxx".}
