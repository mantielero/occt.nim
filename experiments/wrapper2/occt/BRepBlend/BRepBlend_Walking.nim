##  Created on: 1993-12-06
##  Created by: Jacques GOUSSARD
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

## !!!Ignored construct:  # _BRepBlend_Walking_HeaderFile [NewLine] # _BRepBlend_Walking_HeaderFile [NewLine] # < Standard . hxx > [NewLine] # < Standard_DefineAlloc . hxx > [NewLine] # < Standard_Handle . hxx > [NewLine] # < Blend_Point . hxx > [NewLine] # < math_Vector . hxx > [NewLine] # < Blend_SequenceOfPoint . hxx > [NewLine] # < Standard_Boolean . hxx > [NewLine] # < Standard_Real . hxx > [NewLine] # < Standard_Integer . hxx > [NewLine] # < BRepBlend_SequenceOfPointOnRst . hxx > [NewLine] # < TopAbs_State . hxx > [NewLine] # < Blend_Status . hxx > [NewLine] class BRepBlend_Line ;
## Error: did not expect <!!!

discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of Adaptor3d_TopolTool"
discard "forward decl of ChFiDS_HElSpine"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Adaptor3d_HVertex"
discard "forward decl of Adaptor2d_HCurve2d"
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of BRepBlend_HCurve2dTool"
discard "forward decl of Adaptor3d_HSurfaceTool"
discard "forward decl of BRepBlend_HCurveTool"
discard "forward decl of BRepBlend_BlendTool"
discard "forward decl of BRepBlend_PointOnRst"
discard "forward decl of BRepBlend_Extremity"
discard "forward decl of Blend_Point"
discard "forward decl of Blend_Function"
discard "forward decl of Blend_FuncInv"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Pnt2d"
discard "forward decl of IntSurf_Transition"
type
  BRepBlendWalking* {.importcpp: "BRepBlend_Walking",
                     header: "BRepBlend_Walking.hxx", bycopy.} = object
    bRepBlendLine* {.importc: "BRepBlend_Line".}: Handle


## !!!Ignored construct:  public : BRepBlend_Walking ( const Handle ( Adaptor3d_HSurface ) & Surf1 , const Handle ( Adaptor3d_HSurface ) & Surf2 , const Handle ( Adaptor3d_TopolTool ) & Domain1 , const Handle ( Adaptor3d_TopolTool ) & Domain2 , const Handle ( ChFiDS_HElSpine ) & HGuide ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! To define different domains for control and clipping. void SetDomainsToRecadre ( const Handle ( Adaptor3d_TopolTool ) & RecDomain1 , const Handle ( Adaptor3d_TopolTool ) & RecDomain2 ) ;
## Error: token expected: ) but got: &!!!

proc addSingularPoint*(this: var BRepBlendWalking; p: BlendPoint) {.
    importcpp: "AddSingularPoint", header: "BRepBlend_Walking.hxx".}
proc perform*(this: var BRepBlendWalking; f: var BlendFunction; fInv: var BlendFuncInv;
             pdep: float; pmax: float; maxStep: float; tolGuide: float;
             soldep: MathVector; tolesp: float; fleche: float; appro: bool = false) {.
    importcpp: "Perform", header: "BRepBlend_Walking.hxx".}
proc performFirstSection*(this: var BRepBlendWalking; f: var BlendFunction;
                         pdep: float; parDep: var MathVector; tolesp: float;
                         tolGuide: float; pos1: var TopAbsState;
                         pos2: var TopAbsState): bool {.
    importcpp: "PerformFirstSection", header: "BRepBlend_Walking.hxx".}
proc performFirstSection*(this: var BRepBlendWalking; f: var BlendFunction;
                         fInv: var BlendFuncInv; pdep: float; pmax: float;
                         parDep: MathVector; tolesp: float; tolGuide: float;
                         recOnS1: bool; recOnS2: bool; psol: var float;
                         parSol: var MathVector): bool {.
    importcpp: "PerformFirstSection", header: "BRepBlend_Walking.hxx".}
proc continu*(this: var BRepBlendWalking; f: var BlendFunction; fInv: var BlendFuncInv;
             p: float): bool {.importcpp: "Continu", header: "BRepBlend_Walking.hxx".}
proc continu*(this: var BRepBlendWalking; f: var BlendFunction; fInv: var BlendFuncInv;
             p: float; onS1: bool): bool {.importcpp: "Continu",
                                      header: "BRepBlend_Walking.hxx".}
proc complete*(this: var BRepBlendWalking; f: var BlendFunction;
              fInv: var BlendFuncInv; pmin: float): bool {.importcpp: "Complete",
    header: "BRepBlend_Walking.hxx".}
proc classificationOnS1*(this: var BRepBlendWalking; c: bool) {.
    importcpp: "ClassificationOnS1", header: "BRepBlend_Walking.hxx".}
proc classificationOnS2*(this: var BRepBlendWalking; c: bool) {.
    importcpp: "ClassificationOnS2", header: "BRepBlend_Walking.hxx".}
proc check2d*(this: var BRepBlendWalking; c: bool) {.importcpp: "Check2d",
    header: "BRepBlend_Walking.hxx".}
proc check*(this: var BRepBlendWalking; c: bool) {.importcpp: "Check",
    header: "BRepBlend_Walking.hxx".}
proc twistOnS1*(this: BRepBlendWalking): bool {.noSideEffect, importcpp: "TwistOnS1",
    header: "BRepBlend_Walking.hxx".}
proc twistOnS2*(this: BRepBlendWalking): bool {.noSideEffect, importcpp: "TwistOnS2",
    header: "BRepBlend_Walking.hxx".}
proc isDone*(this: BRepBlendWalking): bool {.noSideEffect, importcpp: "IsDone",
    header: "BRepBlend_Walking.hxx".}
## !!!Ignored construct:  & Line ( ) const ;
## Error: identifier expected, but got: &!!!

## !!!Ignored construct:  Standard_Boolean Recadre ( Blend_FuncInv & FInv , const Standard_Boolean OnFirst , const math_Vector & Sol , math_Vector & Solrst , Standard_Integer & Indexsol , Standard_Boolean & IsVtx , Handle ( Adaptor3d_HVertex ) & Vtx , const Standard_Real Extrap = 0.0 ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  void Transition ( const Standard_Boolean OnFirst , const Handle ( Adaptor2d_HCurve2d ) & A , const Standard_Real Param , IntSurf_Transition & TLine , IntSurf_Transition & TArc ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  void MakeExtremity ( BRepBlend_Extremity & Extrem , const Standard_Boolean OnFirst , const Standard_Integer Index , const Standard_Real Param , const Standard_Boolean IsVtx , const Handle ( Adaptor3d_HVertex ) & Vtx ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  void MakeSingularExtremity ( BRepBlend_Extremity & Extrem , const Standard_Boolean OnFirst , const Handle ( Adaptor3d_HVertex ) & Vtx ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  line ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  surf1 ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  surf2 ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  domain1 ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  domain2 ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  recdomain1 ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  recdomain2 ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  hguide ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  # TheVertex Handle ( Adaptor3d_HVertex ) [NewLine] # TheVertex_hxx < Adaptor3d_HVertex . hxx > [NewLine] # TheArc Handle ( Adaptor2d_HCurve2d ) [NewLine] # TheArc_hxx < Adaptor2d_HCurve2d . hxx > [NewLine] # TheSurface Handle ( Adaptor3d_HSurface ) [NewLine] # TheSurface_hxx < Adaptor3d_HSurface . hxx > [NewLine] # TheCurve Handle ( Adaptor3d_HCurve ) [NewLine] # TheCurve_hxx < Adaptor3d_HCurve . hxx > [NewLine] # TheVertexTool Standard_Integer [NewLine] # TheVertexTool_hxx < Standard_Integer . hxx > [NewLine] # TheArcTool BRepBlend_HCurve2dTool [NewLine] # TheArcTool_hxx < BRepBlend_HCurve2dTool . hxx > [NewLine] # TheSurfaceTool Adaptor3d_HSurfaceTool [NewLine] # TheSurfaceTool_hxx < Adaptor3d_HSurfaceTool . hxx > [NewLine] # TheCurveTool BRepBlend_HCurveTool [NewLine] # TheCurveTool_hxx < BRepBlend_HCurveTool . hxx > [NewLine] # Handle_TheTopolTool Handle ( Adaptor3d_TopolTool ) [NewLine] # TheTopolTool Adaptor3d_TopolTool [NewLine] # TheTopolTool_hxx < Adaptor3d_TopolTool . hxx > [NewLine] # TheBlendTool BRepBlend_BlendTool [NewLine] # TheBlendTool_hxx < BRepBlend_BlendTool . hxx > [NewLine] # ThePointOnRst BRepBlend_PointOnRst [NewLine] # ThePointOnRst_hxx < BRepBlend_PointOnRst . hxx > [NewLine] # TheSeqPointOnRst BRepBlend_SequenceOfPointOnRst [NewLine] # TheSeqPointOnRst_hxx < BRepBlend_SequenceOfPointOnRst . hxx > [NewLine] # TheExtremity BRepBlend_Extremity [NewLine] # TheExtremity_hxx < BRepBlend_Extremity . hxx > [NewLine] # Handle_TheLine Handle ( BRepBlend_Line ) [NewLine] # TheLine BRepBlend_Line [NewLine] # TheLine_hxx < BRepBlend_Line . hxx > [NewLine] # Blend_Walking BRepBlend_Walking [NewLine] # Blend_Walking_hxx < BRepBlend_Walking . hxx > [NewLine] # < Blend_Walking . lxx > [NewLine] # TheVertex [NewLine] # TheVertex_hxx [NewLine] # TheArc [NewLine] # TheArc_hxx [NewLine] # TheSurface [NewLine] # TheSurface_hxx [NewLine] # TheCurve [NewLine] # TheCurve_hxx [NewLine] # TheVertexTool [NewLine] # TheVertexTool_hxx [NewLine] # TheArcTool [NewLine] # TheArcTool_hxx [NewLine] # TheSurfaceTool [NewLine] # TheSurfaceTool_hxx [NewLine] # TheCurveTool [NewLine] # TheCurveTool_hxx [NewLine] # Handle_TheTopolTool [NewLine] # TheTopolTool [NewLine] # TheTopolTool_hxx [NewLine] # TheBlendTool [NewLine] # TheBlendTool_hxx [NewLine] # ThePointOnRst [NewLine] # ThePointOnRst_hxx [NewLine] # TheSeqPointOnRst [NewLine] # TheSeqPointOnRst_hxx [NewLine] # TheExtremity [NewLine] # TheExtremity_hxx [NewLine] # Handle_TheLine [NewLine] # TheLine [NewLine] # TheLine_hxx [NewLine] # Blend_Walking [NewLine] # Blend_Walking_hxx [NewLine] #  _BRepBlend_Walking_HeaderFile
## Error: did not expect <!!!














































