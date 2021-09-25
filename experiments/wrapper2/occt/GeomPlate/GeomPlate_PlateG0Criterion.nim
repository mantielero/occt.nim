##  Created on: 1997-03-05
##  Created by: Joelle CHAUVET
##  Copyright (c) 1997-1999 Matra Datavision
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

discard "forward decl of AdvApp2Var_Patch"
discard "forward decl of AdvApp2Var_Context"
type
  GeomPlatePlateG0Criterion* {.importcpp: "GeomPlate_PlateG0Criterion",
                              header: "GeomPlate_PlateG0Criterion.hxx", bycopy.} = object of AdvApp2VarCriterion


proc constructGeomPlatePlateG0Criterion*(data: TColgpSequenceOfXY;
                                        g0Data: TColgpSequenceOfXYZ;
                                        maximum: float; `type`: AdvApp2VarCriterionType = advApp2VarAbsolute;
    repart: AdvApp2VarCriterionRepartition = advApp2VarRegular): GeomPlatePlateG0Criterion {.
    constructor, importcpp: "GeomPlate_PlateG0Criterion(@)",
    header: "GeomPlate_PlateG0Criterion.hxx".}
proc value*(this: GeomPlatePlateG0Criterion; p: var AdvApp2VarPatch;
           c: AdvApp2VarContext) {.noSideEffect, importcpp: "Value",
                                 header: "GeomPlate_PlateG0Criterion.hxx".}
proc isSatisfied*(this: GeomPlatePlateG0Criterion; p: AdvApp2VarPatch): bool {.
    noSideEffect, importcpp: "IsSatisfied",
    header: "GeomPlate_PlateG0Criterion.hxx".}
