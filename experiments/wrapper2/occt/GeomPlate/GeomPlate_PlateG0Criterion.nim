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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TColgp/TColgp_SequenceOfXY,
  ../TColgp/TColgp_SequenceOfXYZ, ../AdvApp2Var/AdvApp2Var_Criterion,
  ../Standard/Standard_Real, ../AdvApp2Var/AdvApp2Var_CriterionType,
  ../AdvApp2Var/AdvApp2Var_CriterionRepartition, ../Standard/Standard_Boolean

discard "forward decl of AdvApp2Var_Patch"
discard "forward decl of AdvApp2Var_Context"
type
  GeomPlate_PlateG0Criterion* {.importcpp: "GeomPlate_PlateG0Criterion",
                               header: "GeomPlate_PlateG0Criterion.hxx", bycopy.} = object of AdvApp2Var_Criterion


proc constructGeomPlate_PlateG0Criterion*(Data: TColgp_SequenceOfXY;
    G0Data: TColgp_SequenceOfXYZ; Maximum: Standard_Real;
    Type: AdvApp2Var_CriterionType = AdvApp2Var_Absolute;
    Repart: AdvApp2Var_CriterionRepartition = AdvApp2Var_Regular): GeomPlate_PlateG0Criterion {.
    constructor, importcpp: "GeomPlate_PlateG0Criterion(@)",
    header: "GeomPlate_PlateG0Criterion.hxx".}
proc Value*(this: GeomPlate_PlateG0Criterion; P: var AdvApp2Var_Patch;
           C: AdvApp2Var_Context) {.noSideEffect, importcpp: "Value",
                                  header: "GeomPlate_PlateG0Criterion.hxx".}
proc IsSatisfied*(this: GeomPlate_PlateG0Criterion; P: AdvApp2Var_Patch): Standard_Boolean {.
    noSideEffect, importcpp: "IsSatisfied",
    header: "GeomPlate_PlateG0Criterion.hxx".}