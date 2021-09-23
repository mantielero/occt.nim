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

## !!!Ignored construct:  # _BRepBlend_Walking_HeaderFile [NewLine] # _BRepBlend_Walking_HeaderFile [NewLine] # ../Standard/Standard.hxx [NewLine] # ../Standard/Standard_DefineAlloc.hxx [NewLine] # ../Standard/Standard_Handle.hxx [NewLine] # ../Blend/Blend_Point.hxx [NewLine] # ../math/math_Vector.hxx [NewLine] # ../Blend/Blend_SequenceOfPoint.hxx [NewLine] # ../Standard/Standard_Boolean.hxx [NewLine] # ../Standard/Standard_Real.hxx [NewLine] # ../Standard/Standard_Integer.hxx [NewLine] # BRepBlend_SequenceOfPointOnRst.hxx [NewLine] # ../TopAbs/TopAbs_State.hxx [NewLine] # ../Blend/Blend_Status.hxx [NewLine] class BRepBlend_Line ;
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
  BRepBlend_Walking* {.importcpp: "BRepBlend_Walking",
                      header: "BRepBlend_Walking.hxx", bycopy.} = object


proc constructBRepBlend_Walking*(Surf1: handle[Adaptor3d_HSurface];
                                Surf2: handle[Adaptor3d_HSurface];
                                Domain1: handle[Adaptor3d_TopolTool];
                                Domain2: handle[Adaptor3d_TopolTool];
                                HGuide: handle[ChFiDS_HElSpine]): BRepBlend_Walking {.
    constructor, importcpp: "BRepBlend_Walking(@)", header: "BRepBlend_Walking.hxx".}
proc SetDomainsToRecadre*(this: var BRepBlend_Walking;
                         RecDomain1: handle[Adaptor3d_TopolTool];
                         RecDomain2: handle[Adaptor3d_TopolTool]) {.
    importcpp: "SetDomainsToRecadre", header: "BRepBlend_Walking.hxx".}
proc AddSingularPoint*(this: var BRepBlend_Walking; P: Blend_Point) {.
    importcpp: "AddSingularPoint", header: "BRepBlend_Walking.hxx".}
proc Perform*(this: var BRepBlend_Walking; F: var Blend_Function;
             FInv: var Blend_FuncInv; Pdep: Standard_Real; Pmax: Standard_Real;
             MaxStep: Standard_Real; TolGuide: Standard_Real; Soldep: math_Vector;
             Tolesp: Standard_Real; Fleche: Standard_Real;
             Appro: Standard_Boolean = Standard_False) {.importcpp: "Perform",
    header: "BRepBlend_Walking.hxx".}
proc PerformFirstSection*(this: var BRepBlend_Walking; F: var Blend_Function;
                         Pdep: Standard_Real; ParDep: var math_Vector;
                         Tolesp: Standard_Real; TolGuide: Standard_Real;
                         Pos1: var TopAbs_State; Pos2: var TopAbs_State): Standard_Boolean {.
    importcpp: "PerformFirstSection", header: "BRepBlend_Walking.hxx".}
proc PerformFirstSection*(this: var BRepBlend_Walking; F: var Blend_Function;
                         FInv: var Blend_FuncInv; Pdep: Standard_Real;
                         Pmax: Standard_Real; ParDep: math_Vector;
                         Tolesp: Standard_Real; TolGuide: Standard_Real;
                         RecOnS1: Standard_Boolean; RecOnS2: Standard_Boolean;
                         Psol: var Standard_Real; ParSol: var math_Vector): Standard_Boolean {.
    importcpp: "PerformFirstSection", header: "BRepBlend_Walking.hxx".}
proc Continu*(this: var BRepBlend_Walking; F: var Blend_Function;
             FInv: var Blend_FuncInv; P: Standard_Real): Standard_Boolean {.
    importcpp: "Continu", header: "BRepBlend_Walking.hxx".}
proc Continu*(this: var BRepBlend_Walking; F: var Blend_Function;
             FInv: var Blend_FuncInv; P: Standard_Real; OnS1: Standard_Boolean): Standard_Boolean {.
    importcpp: "Continu", header: "BRepBlend_Walking.hxx".}
proc Complete*(this: var BRepBlend_Walking; F: var Blend_Function;
              FInv: var Blend_FuncInv; Pmin: Standard_Real): Standard_Boolean {.
    importcpp: "Complete", header: "BRepBlend_Walking.hxx".}
proc ClassificationOnS1*(this: var BRepBlend_Walking; C: Standard_Boolean) {.
    importcpp: "ClassificationOnS1", header: "BRepBlend_Walking.hxx".}
proc ClassificationOnS2*(this: var BRepBlend_Walking; C: Standard_Boolean) {.
    importcpp: "ClassificationOnS2", header: "BRepBlend_Walking.hxx".}
proc Check2d*(this: var BRepBlend_Walking; C: Standard_Boolean) {.
    importcpp: "Check2d", header: "BRepBlend_Walking.hxx".}
proc Check*(this: var BRepBlend_Walking; C: Standard_Boolean) {.importcpp: "Check",
    header: "BRepBlend_Walking.hxx".}
proc TwistOnS1*(this: BRepBlend_Walking): Standard_Boolean {.noSideEffect,
    importcpp: "TwistOnS1", header: "BRepBlend_Walking.hxx".}
proc TwistOnS2*(this: BRepBlend_Walking): Standard_Boolean {.noSideEffect,
    importcpp: "TwistOnS2", header: "BRepBlend_Walking.hxx".}
proc IsDone*(this: BRepBlend_Walking): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "BRepBlend_Walking.hxx".}
proc Line*(this: BRepBlend_Walking): handle[BRepBlend_Line] {.noSideEffect,
    importcpp: "Line", header: "BRepBlend_Walking.hxx".}
## !!!Ignored construct:  # TheVertex opencascade :: handle < Adaptor3d_HVertex > [end of template] [NewLine] # TheVertex_hxx < Adaptor3d_HVertex . hxx > [NewLine] # TheArc opencascade :: handle < Adaptor2d_HCurve2d > [end of template] [NewLine] # TheArc_hxx < Adaptor2d_HCurve2d . hxx > [NewLine] # TheSurface opencascade :: handle < Adaptor3d_HSurface > [end of template] [NewLine] # TheSurface_hxx < Adaptor3d_HSurface . hxx > [NewLine] # TheCurve opencascade :: handle < Adaptor3d_HCurve > [end of template] [NewLine] # TheCurve_hxx < Adaptor3d_HCurve . hxx > [NewLine] # TheVertexTool Standard_Integer [NewLine] # TheVertexTool_hxx < Standard_Integer . hxx > [NewLine] # TheArcTool BRepBlend_HCurve2dTool [NewLine] # TheArcTool_hxx < BRepBlend_HCurve2dTool . hxx > [NewLine] # TheSurfaceTool Adaptor3d_HSurfaceTool [NewLine] # TheSurfaceTool_hxx < Adaptor3d_HSurfaceTool . hxx > [NewLine] # TheCurveTool BRepBlend_HCurveTool [NewLine] # TheCurveTool_hxx < BRepBlend_HCurveTool . hxx > [NewLine] # Handle_TheTopolTool opencascade :: handle < Adaptor3d_TopolTool > [end of template] [NewLine] # TheTopolTool Adaptor3d_TopolTool [NewLine] # TheTopolTool_hxx < Adaptor3d_TopolTool . hxx > [NewLine] # TheBlendTool BRepBlend_BlendTool [NewLine] # TheBlendTool_hxx < BRepBlend_BlendTool . hxx > [NewLine] # ThePointOnRst BRepBlend_PointOnRst [NewLine] # ThePointOnRst_hxx < BRepBlend_PointOnRst . hxx > [NewLine] # TheSeqPointOnRst BRepBlend_SequenceOfPointOnRst [NewLine] # TheSeqPointOnRst_hxx < BRepBlend_SequenceOfPointOnRst . hxx > [NewLine] # TheExtremity BRepBlend_Extremity [NewLine] # TheExtremity_hxx < BRepBlend_Extremity . hxx > [NewLine] # Handle_TheLine opencascade :: handle < BRepBlend_Line > [end of template] [NewLine] # TheLine BRepBlend_Line [NewLine] # TheLine_hxx < BRepBlend_Line . hxx > [NewLine] # Blend_Walking BRepBlend_Walking [NewLine] # Blend_Walking_hxx < BRepBlend_Walking . hxx > [NewLine] # < Blend_Walking . lxx > [NewLine] # TheVertex [NewLine] # TheVertex_hxx [NewLine] # TheArc [NewLine] # TheArc_hxx [NewLine] # TheSurface [NewLine] # TheSurface_hxx [NewLine] # TheCurve [NewLine] # TheCurve_hxx [NewLine] # TheVertexTool [NewLine] # TheVertexTool_hxx [NewLine] # TheArcTool [NewLine] # TheArcTool_hxx [NewLine] # TheSurfaceTool [NewLine] # TheSurfaceTool_hxx [NewLine] # TheCurveTool [NewLine] # TheCurveTool_hxx [NewLine] # Handle_TheTopolTool [NewLine] # TheTopolTool [NewLine] # TheTopolTool_hxx [NewLine] # TheBlendTool [NewLine] # TheBlendTool_hxx [NewLine] # ThePointOnRst [NewLine] # ThePointOnRst_hxx [NewLine] # TheSeqPointOnRst [NewLine] # TheSeqPointOnRst_hxx [NewLine] # TheExtremity [NewLine] # TheExtremity_hxx [NewLine] # Handle_TheLine [NewLine] # TheLine [NewLine] # TheLine_hxx [NewLine] # Blend_Walking [NewLine] # Blend_Walking_hxx [NewLine] #  _BRepBlend_Walking_HeaderFile [NewLine]
## Error: did not expect <!!!
