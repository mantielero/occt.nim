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

discard "forward decl of BRepBlend_Line"
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


proc newBRepBlendCSWalking*(curv: Handle[Adaptor3dHCurve];
                           surf: Handle[Adaptor3dHSurface];
                           domain: Handle[Adaptor3dTopolTool]): BRepBlendCSWalking {.
    cdecl, constructor, importcpp: "BRepBlend_CSWalking(@)", dynlib: tkfillet.}
proc perform*(this: var BRepBlendCSWalking; f: var BlendCSFunction; pdep: cfloat;
             pmax: cfloat; maxStep: cfloat; tolGuide: cfloat; soldep: MathVector;
             tolesp: cfloat; fleche: cfloat; appro: bool = false) {.cdecl,
    importcpp: "Perform", dynlib: tkfillet.}
proc complete*(this: var BRepBlendCSWalking; f: var BlendCSFunction; pmin: cfloat): bool {.
    cdecl, importcpp: "Complete", dynlib: tkfillet.}
proc isDone*(this: BRepBlendCSWalking): bool {.noSideEffect, cdecl,
    importcpp: "IsDone", dynlib: tkfillet.}
proc line*(this: BRepBlendCSWalking): Handle[BRepBlendLine] {.noSideEffect, cdecl,
    importcpp: "Line", dynlib: tkfillet.}
##  #define TheVertex Handle(Adaptor3d_HVertex)
##  #define TheVertex_hxx <Adaptor3d_HVertex.hxx>
##  #define TheArc Handle(Adaptor2d_HCurve2d)
##  #define TheArc_hxx <Adaptor2d_HCurve2d.hxx>
##  #define TheSurface Handle(Adaptor3d_HSurface)
##  #define TheSurface_hxx <Adaptor3d_HSurface.hxx>
##  #define TheCurve Handle(Adaptor3d_HCurve)
##  #define TheCurve_hxx <Adaptor3d_HCurve.hxx>
##  #define TheVertexTool Standard_Integer
##  #define TheVertexTool_hxx <Standard_Integer.hxx>
##  #define TheArcTool BRepBlend_HCurve2dTool
##  #define TheArcTool_hxx <BRepBlend_HCurve2dTool.hxx>
##  #define TheSurfaceTool Adaptor3d_HSurfaceTool
##  #define TheSurfaceTool_hxx <Adaptor3d_HSurfaceTool.hxx>
##  #define TheCurveTool BRepBlend_HCurveTool
##  #define TheCurveTool_hxx <BRepBlend_HCurveTool.hxx>
##  #define Handle_TheTopolTool Handle(Adaptor3d_TopolTool)
##  #define TheTopolTool Adaptor3d_TopolTool
##  #define TheTopolTool_hxx <Adaptor3d_TopolTool.hxx>
##  #define TheBlendTool BRepBlend_BlendTool
##  #define TheBlendTool_hxx <BRepBlend_BlendTool.hxx>
##  #define ThePointOnRst BRepBlend_PointOnRst
##  #define ThePointOnRst_hxx <BRepBlend_PointOnRst.hxx>
##  #define TheSeqPointOnRst BRepBlend_SequenceOfPointOnRst
##  #define TheSeqPointOnRst_hxx <BRepBlend_SequenceOfPointOnRst.hxx>
##  #define TheExtremity BRepBlend_Extremity
##  #define TheExtremity_hxx <BRepBlend_Extremity.hxx>
##  #define Handle_TheLine Handle(BRepBlend_Line)
##  #define TheLine BRepBlend_Line
##  #define TheLine_hxx <BRepBlend_Line.hxx>
##  #define Blend_CSWalking BRepBlend_CSWalking
##  #define Blend_CSWalking_hxx <BRepBlend_CSWalking.hxx>
##
##  #include <Blend_CSWalking.lxx>
##
##  #undef TheVertex
##  #undef TheVertex_hxx
##  #undef TheArc
##  #undef TheArc_hxx
##  #undef TheSurface
##  #undef TheSurface_hxx
##  #undef TheCurve
##  #undef TheCurve_hxx
##  #undef TheVertexTool
##  #undef TheVertexTool_hxx
##  #undef TheArcTool
##  #undef TheArcTool_hxx
##  #undef TheSurfaceTool
##  #undef TheSurfaceTool_hxx
##  #undef TheCurveTool
##  #undef TheCurveTool_hxx
##  #undef Handle_TheTopolTool
##  #undef TheTopolTool
##  #undef TheTopolTool_hxx
##  #undef TheBlendTool
##  #undef TheBlendTool_hxx
##  #undef ThePointOnRst
##  #undef ThePointOnRst_hxx
##  #undef TheSeqPointOnRst
##  #undef TheSeqPointOnRst_hxx
##  #undef TheExtremity
##  #undef TheExtremity_hxx
##  #undef Handle_TheLine
##  #undef TheLine
##  #undef TheLine_hxx
##  #undef Blend_CSWalking
##  #undef Blend_CSWalking_hxx
