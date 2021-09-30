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

## !!!Ignored construct:  # _BRepBlend_CSWalking_HeaderFile [NewLine] # _BRepBlend_CSWalking_HeaderFile [NewLine] # < Standard . hxx > [NewLine] # < Standard_DefineAlloc . hxx > [NewLine] # < Standard_Handle . hxx > [NewLine] # < Standard_Boolean . hxx > [NewLine] # < Standard_Real . hxx > [NewLine] # < TColStd_HArray1OfReal . hxx > [NewLine] # < Blend_Point . hxx > [NewLine] # < Standard_Integer . hxx > [NewLine] # < BRepBlend_SequenceOfPointOnRst . hxx > [NewLine] # < math_Vector . hxx > [NewLine] # < Blend_Status . hxx > [NewLine] class BRepBlend_Line ;
## Error: did not expect <!!!

discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of Adaptor3d_TopolTool"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Adaptor3d_HVertex"
discard "forward decl of Adaptor2d_HCurve2d"
discard "forward decl of BRepBlend_HCurve2dTool"
discard "forward decl of Adaptor3d_HSurfaceTool"
discard "forward decl of BRepBlend_HCurveTool"
discard "forward decl of BRepBlend_BlendTool"
discard "forward decl of BRepBlend_PointOnRst"
discard "forward decl of BRepBlend_Extremity"
discard "forward decl of Blend_CSFunction"
discard "forward decl of IntSurf_Transition"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Vec2d"
type
  BRepBlendCSWalking* {.importcpp: "BRepBlend_CSWalking",
                       header: "BRepBlend_CSWalking.hxx", bycopy.} = object
    bRepBlendLine* {.importc: "BRepBlend_Line".}: Handle


## !!!Ignored construct:  public : BRepBlend_CSWalking ( const Handle ( Adaptor3d_HCurve ) & Curv , const Handle ( Adaptor3d_HSurface ) & Surf , const Handle ( Adaptor3d_TopolTool ) & Domain ) ;
## Error: token expected: ) but got: &!!!

proc perform*(this: var BRepBlendCSWalking; f: var BlendCSFunction; pdep: float;
             pmax: float; maxStep: float; tolGuide: float; soldep: MathVector;
             tolesp: float; fleche: float; appro: bool = false) {.importcpp: "Perform",
    header: "BRepBlend_CSWalking.hxx".}
proc complete*(this: var BRepBlendCSWalking; f: var BlendCSFunction; pmin: float): bool {.
    importcpp: "Complete", header: "BRepBlend_CSWalking.hxx".}
proc isDone*(this: BRepBlendCSWalking): bool {.noSideEffect, importcpp: "IsDone",
    header: "BRepBlend_CSWalking.hxx".}
## !!!Ignored construct:  & Line ( ) const ;
## Error: identifier expected, but got: &!!!

## !!!Ignored construct:  void Transition ( const Handle ( Adaptor2d_HCurve2d ) & A , const Standard_Real Param , IntSurf_Transition & TLine , IntSurf_Transition & TArc ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  void MakeExtremity ( BRepBlend_Extremity & Extrem , const Standard_Integer Index , const Standard_Real Param , const Standard_Boolean IsVtx , const Handle ( Adaptor3d_HVertex ) & Vtx ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  line ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  surf ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  curv ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  domain ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  firstsol ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  # TheVertex Handle ( Adaptor3d_HVertex ) [NewLine] # TheVertex_hxx < Adaptor3d_HVertex . hxx > [NewLine] # TheArc Handle ( Adaptor2d_HCurve2d ) [NewLine] # TheArc_hxx < Adaptor2d_HCurve2d . hxx > [NewLine] # TheSurface Handle ( Adaptor3d_HSurface ) [NewLine] # TheSurface_hxx < Adaptor3d_HSurface . hxx > [NewLine] # TheCurve Handle ( Adaptor3d_HCurve ) [NewLine] # TheCurve_hxx < Adaptor3d_HCurve . hxx > [NewLine] # TheVertexTool Standard_Integer [NewLine] # TheVertexTool_hxx < Standard_Integer . hxx > [NewLine] # TheArcTool BRepBlend_HCurve2dTool [NewLine] # TheArcTool_hxx < BRepBlend_HCurve2dTool . hxx > [NewLine] # TheSurfaceTool Adaptor3d_HSurfaceTool [NewLine] # TheSurfaceTool_hxx < Adaptor3d_HSurfaceTool . hxx > [NewLine] # TheCurveTool BRepBlend_HCurveTool [NewLine] # TheCurveTool_hxx < BRepBlend_HCurveTool . hxx > [NewLine] # Handle_TheTopolTool Handle ( Adaptor3d_TopolTool ) [NewLine] # TheTopolTool Adaptor3d_TopolTool [NewLine] # TheTopolTool_hxx < Adaptor3d_TopolTool . hxx > [NewLine] # TheBlendTool BRepBlend_BlendTool [NewLine] # TheBlendTool_hxx < BRepBlend_BlendTool . hxx > [NewLine] # ThePointOnRst BRepBlend_PointOnRst [NewLine] # ThePointOnRst_hxx < BRepBlend_PointOnRst . hxx > [NewLine] # TheSeqPointOnRst BRepBlend_SequenceOfPointOnRst [NewLine] # TheSeqPointOnRst_hxx < BRepBlend_SequenceOfPointOnRst . hxx > [NewLine] # TheExtremity BRepBlend_Extremity [NewLine] # TheExtremity_hxx < BRepBlend_Extremity . hxx > [NewLine] # Handle_TheLine Handle ( BRepBlend_Line ) [NewLine] # TheLine BRepBlend_Line [NewLine] # TheLine_hxx < BRepBlend_Line . hxx > [NewLine] # Blend_CSWalking BRepBlend_CSWalking [NewLine] # Blend_CSWalking_hxx < BRepBlend_CSWalking . hxx > [NewLine] # < Blend_CSWalking . lxx > [NewLine] # TheVertex [NewLine] # TheVertex_hxx [NewLine] # TheArc [NewLine] # TheArc_hxx [NewLine] # TheSurface [NewLine] # TheSurface_hxx [NewLine] # TheCurve [NewLine] # TheCurve_hxx [NewLine] # TheVertexTool [NewLine] # TheVertexTool_hxx [NewLine] # TheArcTool [NewLine] # TheArcTool_hxx [NewLine] # TheSurfaceTool [NewLine] # TheSurfaceTool_hxx [NewLine] # TheCurveTool [NewLine] # TheCurveTool_hxx [NewLine] # Handle_TheTopolTool [NewLine] # TheTopolTool [NewLine] # TheTopolTool_hxx [NewLine] # TheBlendTool [NewLine] # TheBlendTool_hxx [NewLine] # ThePointOnRst [NewLine] # ThePointOnRst_hxx [NewLine] # TheSeqPointOnRst [NewLine] # TheSeqPointOnRst_hxx [NewLine] # TheExtremity [NewLine] # TheExtremity_hxx [NewLine] # Handle_TheLine [NewLine] # TheLine [NewLine] # TheLine_hxx [NewLine] # Blend_CSWalking [NewLine] # Blend_CSWalking_hxx [NewLine] #  _BRepBlend_CSWalking_HeaderFile
## Error: did not expect <!!!














































