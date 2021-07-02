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


proc constructBRepBlendWalking*(surf1: Handle[Adaptor3dHSurface];
                               surf2: Handle[Adaptor3dHSurface];
                               domain1: Handle[Adaptor3dTopolTool];
                               domain2: Handle[Adaptor3dTopolTool];
                               hGuide: Handle[ChFiDS_HElSpine]): BRepBlendWalking {.
    constructor, importcpp: "BRepBlend_Walking(@)", header: "BRepBlend_Walking.hxx".}
proc setDomainsToRecadre*(this: var BRepBlendWalking;
                         recDomain1: Handle[Adaptor3dTopolTool];
                         recDomain2: Handle[Adaptor3dTopolTool]) {.
    importcpp: "SetDomainsToRecadre", header: "BRepBlend_Walking.hxx".}
proc addSingularPoint*(this: var BRepBlendWalking; p: BlendPoint) {.
    importcpp: "AddSingularPoint", header: "BRepBlend_Walking.hxx".}
proc perform*(this: var BRepBlendWalking; f: var BlendFunction; fInv: var BlendFuncInv;
             pdep: StandardReal; pmax: StandardReal; maxStep: StandardReal;
             tolGuide: StandardReal; soldep: MathVector; tolesp: StandardReal;
             fleche: StandardReal; appro: StandardBoolean = standardFalse) {.
    importcpp: "Perform", header: "BRepBlend_Walking.hxx".}
proc performFirstSection*(this: var BRepBlendWalking; f: var BlendFunction;
                         pdep: StandardReal; parDep: var MathVector;
                         tolesp: StandardReal; tolGuide: StandardReal;
                         pos1: var TopAbsState; pos2: var TopAbsState): StandardBoolean {.
    importcpp: "PerformFirstSection", header: "BRepBlend_Walking.hxx".}
proc performFirstSection*(this: var BRepBlendWalking; f: var BlendFunction;
                         fInv: var BlendFuncInv; pdep: StandardReal;
                         pmax: StandardReal; parDep: MathVector;
                         tolesp: StandardReal; tolGuide: StandardReal;
                         recOnS1: StandardBoolean; recOnS2: StandardBoolean;
                         psol: var StandardReal; parSol: var MathVector): StandardBoolean {.
    importcpp: "PerformFirstSection", header: "BRepBlend_Walking.hxx".}
proc continu*(this: var BRepBlendWalking; f: var BlendFunction; fInv: var BlendFuncInv;
             p: StandardReal): StandardBoolean {.importcpp: "Continu",
    header: "BRepBlend_Walking.hxx".}
proc continu*(this: var BRepBlendWalking; f: var BlendFunction; fInv: var BlendFuncInv;
             p: StandardReal; onS1: StandardBoolean): StandardBoolean {.
    importcpp: "Continu", header: "BRepBlend_Walking.hxx".}
proc complete*(this: var BRepBlendWalking; f: var BlendFunction;
              fInv: var BlendFuncInv; pmin: StandardReal): StandardBoolean {.
    importcpp: "Complete", header: "BRepBlend_Walking.hxx".}
proc classificationOnS1*(this: var BRepBlendWalking; c: StandardBoolean) {.
    importcpp: "ClassificationOnS1", header: "BRepBlend_Walking.hxx".}
proc classificationOnS2*(this: var BRepBlendWalking; c: StandardBoolean) {.
    importcpp: "ClassificationOnS2", header: "BRepBlend_Walking.hxx".}
proc check2d*(this: var BRepBlendWalking; c: StandardBoolean) {.importcpp: "Check2d",
    header: "BRepBlend_Walking.hxx".}
proc check*(this: var BRepBlendWalking; c: StandardBoolean) {.importcpp: "Check",
    header: "BRepBlend_Walking.hxx".}
proc twistOnS1*(this: BRepBlendWalking): StandardBoolean {.noSideEffect,
    importcpp: "TwistOnS1", header: "BRepBlend_Walking.hxx".}
proc twistOnS2*(this: BRepBlendWalking): StandardBoolean {.noSideEffect,
    importcpp: "TwistOnS2", header: "BRepBlend_Walking.hxx".}
proc isDone*(this: BRepBlendWalking): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "BRepBlend_Walking.hxx".}
proc line*(this: BRepBlendWalking): Handle[BRepBlendLine] {.noSideEffect,
    importcpp: "Line", header: "BRepBlend_Walking.hxx".}
## !!!Ignored construct:  # TheVertex opencascade :: handle < Adaptor3d_HVertex > [end of template] [NewLine] # TheVertex_hxx < Adaptor3d_HVertex . hxx > [NewLine] # TheArc opencascade :: handle < Adaptor2d_HCurve2d > [end of template] [NewLine] # TheArc_hxx < Adaptor2d_HCurve2d . hxx > [NewLine] # TheSurface opencascade :: handle < Adaptor3d_HSurface > [end of template] [NewLine] # TheSurface_hxx < Adaptor3d_HSurface . hxx > [NewLine] # TheCurve opencascade :: handle < Adaptor3d_HCurve > [end of template] [NewLine] # TheCurve_hxx < Adaptor3d_HCurve . hxx > [NewLine] # TheVertexTool Standard_Integer [NewLine] # TheVertexTool_hxx < Standard_Integer . hxx > [NewLine] # TheArcTool BRepBlend_HCurve2dTool [NewLine] # TheArcTool_hxx < BRepBlend_HCurve2dTool . hxx > [NewLine] # TheSurfaceTool Adaptor3d_HSurfaceTool [NewLine] # TheSurfaceTool_hxx < Adaptor3d_HSurfaceTool . hxx > [NewLine] # TheCurveTool BRepBlend_HCurveTool [NewLine] # TheCurveTool_hxx < BRepBlend_HCurveTool . hxx > [NewLine] # Handle_TheTopolTool opencascade :: handle < Adaptor3d_TopolTool > [end of template] [NewLine] # TheTopolTool Adaptor3d_TopolTool [NewLine] # TheTopolTool_hxx < Adaptor3d_TopolTool . hxx > [NewLine] # TheBlendTool BRepBlend_BlendTool [NewLine] # TheBlendTool_hxx < BRepBlend_BlendTool . hxx > [NewLine] # ThePointOnRst BRepBlend_PointOnRst [NewLine] # ThePointOnRst_hxx < BRepBlend_PointOnRst . hxx > [NewLine] # TheSeqPointOnRst BRepBlend_SequenceOfPointOnRst [NewLine] # TheSeqPointOnRst_hxx < BRepBlend_SequenceOfPointOnRst . hxx > [NewLine] # TheExtremity BRepBlend_Extremity [NewLine] # TheExtremity_hxx < BRepBlend_Extremity . hxx > [NewLine] # Handle_TheLine opencascade :: handle < BRepBlend_Line > [end of template] [NewLine] # TheLine BRepBlend_Line [NewLine] # TheLine_hxx < BRepBlend_Line . hxx > [NewLine] # Blend_Walking BRepBlend_Walking [NewLine] # Blend_Walking_hxx < BRepBlend_Walking . hxx > [NewLine] # < Blend_Walking . lxx > [NewLine] # TheVertex [NewLine] # TheVertex_hxx [NewLine] # TheArc [NewLine] # TheArc_hxx [NewLine] # TheSurface [NewLine] # TheSurface_hxx [NewLine] # TheCurve [NewLine] # TheCurve_hxx [NewLine] # TheVertexTool [NewLine] # TheVertexTool_hxx [NewLine] # TheArcTool [NewLine] # TheArcTool_hxx [NewLine] # TheSurfaceTool [NewLine] # TheSurfaceTool_hxx [NewLine] # TheCurveTool [NewLine] # TheCurveTool_hxx [NewLine] # Handle_TheTopolTool [NewLine] # TheTopolTool [NewLine] # TheTopolTool_hxx [NewLine] # TheBlendTool [NewLine] # TheBlendTool_hxx [NewLine] # ThePointOnRst [NewLine] # ThePointOnRst_hxx [NewLine] # TheSeqPointOnRst [NewLine] # TheSeqPointOnRst_hxx [NewLine] # TheExtremity [NewLine] # TheExtremity_hxx [NewLine] # Handle_TheLine [NewLine] # TheLine [NewLine] # TheLine_hxx [NewLine] # Blend_Walking [NewLine] # Blend_Walking_hxx [NewLine] #  _BRepBlend_Walking_HeaderFile
## Error: did not expect <!!!


