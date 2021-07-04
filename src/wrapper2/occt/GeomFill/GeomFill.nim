##  Created on: 1993-09-28
##  Created by: Bruno DUMORTIER
##  Copyright (c) 1993-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../Convert/Convert_ParameterisationType,
  ../Standard/Standard_Real, ../TColgp/TColgp_Array1OfPnt,
  ../TColStd/TColStd_Array1OfReal, ../Standard/Standard_Boolean,
  ../TColgp/TColgp_Array1OfVec, ../Standard/Standard_Integer,
  ../TColStd/TColStd_Array1OfInteger

discard "forward decl of Geom_Surface"
discard "forward decl of Geom_Curve"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Pnt"
discard "forward decl of GeomFill_Filling"
discard "forward decl of GeomFill_Stretch"
discard "forward decl of GeomFill_Coons"
discard "forward decl of GeomFill_Curved"
discard "forward decl of GeomFill_BezierCurves"
discard "forward decl of GeomFill_BSplineCurves"
discard "forward decl of GeomFill_Profiler"
discard "forward decl of GeomFill_SectionGenerator"
discard "forward decl of GeomFill_Line"
discard "forward decl of GeomFill_AppSurf"
discard "forward decl of GeomFill_SweepSectionGenerator"
discard "forward decl of GeomFill_AppSweep"
discard "forward decl of GeomFill_Generator"
discard "forward decl of GeomFill_Pipe"
discard "forward decl of GeomFill_Tensor"
discard "forward decl of GeomFill_ConstrainedFilling"
discard "forward decl of GeomFill_Boundary"
discard "forward decl of GeomFill_DegeneratedBound"
discard "forward decl of GeomFill_SimpleBound"
discard "forward decl of GeomFill_BoundWithSurf"
discard "forward decl of GeomFill_CoonsAlgPatch"
discard "forward decl of GeomFill_TgtField"
discard "forward decl of GeomFill_TgtOnCoons"
discard "forward decl of GeomFill_CornerState"
discard "forward decl of GeomFill_CircularBlendFunc"
discard "forward decl of GeomFill_SweepFunction"
discard "forward decl of GeomFill_LocFunction"
discard "forward decl of GeomFill_PolynomialConvertor"
discard "forward decl of GeomFill_QuasiAngularConvertor"
discard "forward decl of GeomFill_SnglrFunc"
discard "forward decl of GeomFill_FunctionDraft"
discard "forward decl of GeomFill_PlanFunc"
discard "forward decl of GeomFill_FunctionGuide"
discard "forward decl of GeomFill_SectionLaw"
discard "forward decl of GeomFill_UniformSection"
discard "forward decl of GeomFill_EvolvedSection"
discard "forward decl of GeomFill_NSections"
discard "forward decl of GeomFill_LocationLaw"
discard "forward decl of GeomFill_CurveAndTrihedron"
discard "forward decl of GeomFill_LocationDraft"
discard "forward decl of GeomFill_LocationGuide"
discard "forward decl of GeomFill_TrihedronLaw"
discard "forward decl of GeomFill_Fixed"
discard "forward decl of GeomFill_Frenet"
discard "forward decl of GeomFill_CorrectedFrenet"
discard "forward decl of GeomFill_DiscreteTrihedron"
discard "forward decl of GeomFill_ConstantBiNormal"
discard "forward decl of GeomFill_Darboux"
discard "forward decl of GeomFill_DraftTrihedron"
discard "forward decl of GeomFill_TrihedronWithGuide"
discard "forward decl of GeomFill_GuideTrihedronAC"
discard "forward decl of GeomFill_GuideTrihedronPlan"
discard "forward decl of GeomFill_Sweep"
discard "forward decl of GeomFill_SectionPlacement"
type
  GeomFill* {.importcpp: "GeomFill", header: "GeomFill.hxx", bycopy.} = object ## ! Builds a ruled surface between the two curves, Curve1 and Curve2.


proc Surface*(Curve1: handle[Geom_Curve]; Curve2: handle[Geom_Curve]): handle[
    Geom_Surface] {.importcpp: "GeomFill::Surface(@)", header: "GeomFill.hxx".}
proc GetCircle*(TConv: Convert_ParameterisationType; ns1: gp_Vec; ns2: gp_Vec;
               nplan: gp_Vec; pt1: gp_Pnt; pt2: gp_Pnt; Rayon: Standard_Real;
               Center: gp_Pnt; Poles: var TColgp_Array1OfPnt;
               Weigths: var TColStd_Array1OfReal) {.
    importcpp: "GeomFill::GetCircle(@)", header: "GeomFill.hxx".}
proc GetCircle*(TConv: Convert_ParameterisationType; ns1: gp_Vec; ns2: gp_Vec;
               dn1w: gp_Vec; dn2w: gp_Vec; nplan: gp_Vec; dnplan: gp_Vec; pts1: gp_Pnt;
               pts2: gp_Pnt; tang1: gp_Vec; tang2: gp_Vec; Rayon: Standard_Real;
               DRayon: Standard_Real; Center: gp_Pnt; DCenter: gp_Vec;
               Poles: var TColgp_Array1OfPnt; DPoles: var TColgp_Array1OfVec;
               Weigths: var TColStd_Array1OfReal;
               DWeigths: var TColStd_Array1OfReal): Standard_Boolean {.
    importcpp: "GeomFill::GetCircle(@)", header: "GeomFill.hxx".}
proc GetCircle*(TConv: Convert_ParameterisationType; ns1: gp_Vec; ns2: gp_Vec;
               dn1w: gp_Vec; dn2w: gp_Vec; d2n1w: gp_Vec; d2n2w: gp_Vec; nplan: gp_Vec;
               dnplan: gp_Vec; d2nplan: gp_Vec; pts1: gp_Pnt; pts2: gp_Pnt;
               tang1: gp_Vec; tang2: gp_Vec; Dtang1: gp_Vec; Dtang2: gp_Vec;
               Rayon: Standard_Real; DRayon: Standard_Real; D2Rayon: Standard_Real;
               Center: gp_Pnt; DCenter: gp_Vec; D2Center: gp_Vec;
               Poles: var TColgp_Array1OfPnt; DPoles: var TColgp_Array1OfVec;
               D2Poles: var TColgp_Array1OfVec; Weigths: var TColStd_Array1OfReal;
               DWeigths: var TColStd_Array1OfReal;
               D2Weigths: var TColStd_Array1OfReal): Standard_Boolean {.
    importcpp: "GeomFill::GetCircle(@)", header: "GeomFill.hxx".}
proc GetShape*(MaxAng: Standard_Real; NbPoles: var Standard_Integer;
              NbKnots: var Standard_Integer; Degree: var Standard_Integer;
              TypeConv: var Convert_ParameterisationType) {.
    importcpp: "GeomFill::GetShape(@)", header: "GeomFill.hxx".}
proc Knots*(TypeConv: Convert_ParameterisationType;
           TKnots: var TColStd_Array1OfReal) {.importcpp: "GeomFill::Knots(@)",
    header: "GeomFill.hxx".}
proc Mults*(TypeConv: Convert_ParameterisationType;
           TMults: var TColStd_Array1OfInteger) {.importcpp: "GeomFill::Mults(@)",
    header: "GeomFill.hxx".}
proc GetMinimalWeights*(TConv: Convert_ParameterisationType;
                       AngleMin: Standard_Real; AngleMax: Standard_Real;
                       Weigths: var TColStd_Array1OfReal) {.
    importcpp: "GeomFill::GetMinimalWeights(@)", header: "GeomFill.hxx".}
proc GetTolerance*(TConv: Convert_ParameterisationType; AngleMin: Standard_Real;
                  Radius: Standard_Real; AngularTol: Standard_Real;
                  SpatialTol: Standard_Real): Standard_Real {.
    importcpp: "GeomFill::GetTolerance(@)", header: "GeomFill.hxx".}