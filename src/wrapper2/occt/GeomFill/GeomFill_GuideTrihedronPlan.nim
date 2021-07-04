##  Created on: 1998-06-23
##  Created by: Stephanie HUMEAU
##  Copyright (c) 1998-1999 Matra Datavision
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
  ../TColgp/TColgp_HArray2OfPnt2d, ../math/math_Vector,
  ../Standard/Standard_Integer, GeomFill_PipeError, GeomFill_TrihedronWithGuide,
  ../Standard/Standard_Boolean, ../Standard/Standard_Real,
  ../GeomAbs/GeomAbs_Shape, ../TColStd/TColStd_Array1OfReal

discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of GeomFill_Frenet"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of GeomFill_TrihedronLaw"
discard "forward decl of gp_Vec"
discard "forward decl of GeomFill_GuideTrihedronPlan"
discard "forward decl of GeomFill_GuideTrihedronPlan"
type
  Handle_GeomFill_GuideTrihedronPlan* = handle[GeomFill_GuideTrihedronPlan]

## ! Trihedron in  the case of sweeping along a guide curve defined
## ! by the orthogonal  plan on  the trajectory

type
  GeomFill_GuideTrihedronPlan* {.importcpp: "GeomFill_GuideTrihedronPlan",
                                header: "GeomFill_GuideTrihedronPlan.hxx", bycopy.} = object of GeomFill_TrihedronWithGuide


proc constructGeomFill_GuideTrihedronPlan*(theGuide: handle[Adaptor3d_HCurve]): GeomFill_GuideTrihedronPlan {.
    constructor, importcpp: "GeomFill_GuideTrihedronPlan(@)",
    header: "GeomFill_GuideTrihedronPlan.hxx".}
proc SetCurve*(this: var GeomFill_GuideTrihedronPlan;
              thePath: handle[Adaptor3d_HCurve]) {.importcpp: "SetCurve",
    header: "GeomFill_GuideTrihedronPlan.hxx".}
proc Copy*(this: GeomFill_GuideTrihedronPlan): handle[GeomFill_TrihedronLaw] {.
    noSideEffect, importcpp: "Copy", header: "GeomFill_GuideTrihedronPlan.hxx".}
proc ErrorStatus*(this: GeomFill_GuideTrihedronPlan): GeomFill_PipeError {.
    noSideEffect, importcpp: "ErrorStatus",
    header: "GeomFill_GuideTrihedronPlan.hxx".}
proc Guide*(this: GeomFill_GuideTrihedronPlan): handle[Adaptor3d_HCurve] {.
    noSideEffect, importcpp: "Guide", header: "GeomFill_GuideTrihedronPlan.hxx".}
proc D0*(this: var GeomFill_GuideTrihedronPlan; Param: Standard_Real;
        Tangent: var gp_Vec; Normal: var gp_Vec; BiNormal: var gp_Vec): Standard_Boolean {.
    importcpp: "D0", header: "GeomFill_GuideTrihedronPlan.hxx".}
proc D1*(this: var GeomFill_GuideTrihedronPlan; Param: Standard_Real;
        Tangent: var gp_Vec; DTangent: var gp_Vec; Normal: var gp_Vec;
        DNormal: var gp_Vec; BiNormal: var gp_Vec; DBiNormal: var gp_Vec): Standard_Boolean {.
    importcpp: "D1", header: "GeomFill_GuideTrihedronPlan.hxx".}
proc D2*(this: var GeomFill_GuideTrihedronPlan; Param: Standard_Real;
        Tangent: var gp_Vec; DTangent: var gp_Vec; D2Tangent: var gp_Vec;
        Normal: var gp_Vec; DNormal: var gp_Vec; D2Normal: var gp_Vec;
        BiNormal: var gp_Vec; DBiNormal: var gp_Vec; D2BiNormal: var gp_Vec): Standard_Boolean {.
    importcpp: "D2", header: "GeomFill_GuideTrihedronPlan.hxx".}
proc SetInterval*(this: var GeomFill_GuideTrihedronPlan; First: Standard_Real;
                 Last: Standard_Real) {.importcpp: "SetInterval",
                                      header: "GeomFill_GuideTrihedronPlan.hxx".}
proc NbIntervals*(this: GeomFill_GuideTrihedronPlan; S: GeomAbs_Shape): Standard_Integer {.
    noSideEffect, importcpp: "NbIntervals",
    header: "GeomFill_GuideTrihedronPlan.hxx".}
proc Intervals*(this: GeomFill_GuideTrihedronPlan; T: var TColStd_Array1OfReal;
               S: GeomAbs_Shape) {.noSideEffect, importcpp: "Intervals",
                                 header: "GeomFill_GuideTrihedronPlan.hxx".}
proc GetAverageLaw*(this: var GeomFill_GuideTrihedronPlan; ATangent: var gp_Vec;
                   ANormal: var gp_Vec; ABiNormal: var gp_Vec) {.
    importcpp: "GetAverageLaw", header: "GeomFill_GuideTrihedronPlan.hxx".}
proc IsConstant*(this: GeomFill_GuideTrihedronPlan): Standard_Boolean {.
    noSideEffect, importcpp: "IsConstant",
    header: "GeomFill_GuideTrihedronPlan.hxx".}
proc IsOnlyBy3dCurve*(this: GeomFill_GuideTrihedronPlan): Standard_Boolean {.
    noSideEffect, importcpp: "IsOnlyBy3dCurve",
    header: "GeomFill_GuideTrihedronPlan.hxx".}
proc Origine*(this: var GeomFill_GuideTrihedronPlan; OrACR1: Standard_Real;
             OrACR2: Standard_Real) {.importcpp: "Origine",
                                    header: "GeomFill_GuideTrihedronPlan.hxx".}
type
  GeomFill_GuideTrihedronPlanbase_type* = GeomFill_TrihedronWithGuide

proc get_type_name*(): cstring {.importcpp: "GeomFill_GuideTrihedronPlan::get_type_name(@)",
                              header: "GeomFill_GuideTrihedronPlan.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "GeomFill_GuideTrihedronPlan::get_type_descriptor(@)",
    header: "GeomFill_GuideTrihedronPlan.hxx".}
proc DynamicType*(this: GeomFill_GuideTrihedronPlan): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "GeomFill_GuideTrihedronPlan.hxx".}