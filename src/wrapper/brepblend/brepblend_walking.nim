import brepblend_types
import ../math/math_types
import ../topabs/topabs_types
import ../blend/blend_types
import ../standard/standard_types
import ../adaptor3d/adaptor3d_types
import ../chfids/chfids_types





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



proc newBRepBlendWalking*(surf1: Handle[Adaptor3dHSurface];
                         surf2: Handle[Adaptor3dHSurface];
                         domain1: Handle[Adaptor3dTopolTool];
                         domain2: Handle[Adaptor3dTopolTool];
                         hGuide: Handle[ChFiDS_HElSpine]): BRepBlendWalking {.
    cdecl, constructor, importcpp: "BRepBlend_Walking(@)", header: "BRepBlend_Walking.hxx".}
proc setDomainsToRecadre*(this: var BRepBlendWalking;
                         recDomain1: Handle[Adaptor3dTopolTool];
                         recDomain2: Handle[Adaptor3dTopolTool]) {.cdecl,
    importcpp: "SetDomainsToRecadre", header: "BRepBlend_Walking.hxx".}
proc addSingularPoint*(this: var BRepBlendWalking; p: BlendPoint) {.cdecl,
    importcpp: "AddSingularPoint", header: "BRepBlend_Walking.hxx".}
proc perform*(this: var BRepBlendWalking; f: var BlendFunction; fInv: var BlendFuncInv;
             pdep: cfloat; pmax: cfloat; maxStep: cfloat; tolGuide: cfloat;
             soldep: MathVector; tolesp: cfloat; fleche: cfloat; appro: bool = false) {.
    cdecl, importcpp: "Perform", header: "BRepBlend_Walking.hxx".}
proc performFirstSection*(this: var BRepBlendWalking; f: var BlendFunction;
                         pdep: cfloat; parDep: var MathVector; tolesp: cfloat;
                         tolGuide: cfloat; pos1: var TopAbsState;
                         pos2: var TopAbsState): bool {.cdecl,
    importcpp: "PerformFirstSection", header: "BRepBlend_Walking.hxx".}
proc performFirstSection*(this: var BRepBlendWalking; f: var BlendFunction;
                         fInv: var BlendFuncInv; pdep: cfloat; pmax: cfloat;
                         parDep: MathVector; tolesp: cfloat; tolGuide: cfloat;
                         recOnS1: bool; recOnS2: bool; psol: var cfloat;
                         parSol: var MathVector): bool {.cdecl,
    importcpp: "PerformFirstSection", header: "BRepBlend_Walking.hxx".}
proc continu*(this: var BRepBlendWalking; f: var BlendFunction; fInv: var BlendFuncInv;
             p: cfloat): bool {.cdecl, importcpp: "Continu", header: "BRepBlend_Walking.hxx".}
proc continu*(this: var BRepBlendWalking; f: var BlendFunction; fInv: var BlendFuncInv;
             p: cfloat; onS1: bool): bool {.cdecl, importcpp: "Continu",
                                       header: "BRepBlend_Walking.hxx".}
proc complete*(this: var BRepBlendWalking; f: var BlendFunction;
              fInv: var BlendFuncInv; pmin: cfloat): bool {.cdecl,
    importcpp: "Complete", header: "BRepBlend_Walking.hxx".}
proc classificationOnS1*(this: var BRepBlendWalking; c: bool) {.cdecl,
    importcpp: "ClassificationOnS1", header: "BRepBlend_Walking.hxx".}
proc classificationOnS2*(this: var BRepBlendWalking; c: bool) {.cdecl,
    importcpp: "ClassificationOnS2", header: "BRepBlend_Walking.hxx".}
proc check2d*(this: var BRepBlendWalking; c: bool) {.cdecl, importcpp: "Check2d",
    header: "BRepBlend_Walking.hxx".}
proc check*(this: var BRepBlendWalking; c: bool) {.cdecl, importcpp: "Check",
    header: "BRepBlend_Walking.hxx".}
proc twistOnS1*(this: BRepBlendWalking): bool {.noSideEffect, cdecl,
    importcpp: "TwistOnS1", header: "BRepBlend_Walking.hxx".}
proc twistOnS2*(this: BRepBlendWalking): bool {.noSideEffect, cdecl,
    importcpp: "TwistOnS2", header: "BRepBlend_Walking.hxx".}
proc isDone*(this: BRepBlendWalking): bool {.noSideEffect, cdecl, importcpp: "IsDone",
    header: "BRepBlend_Walking.hxx".}
proc line*(this: BRepBlendWalking): Handle[BRepBlendLine] {.noSideEffect, cdecl,
    importcpp: "Line", header: "BRepBlend_Walking.hxx".}
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
##  #define Blend_Walking BRepBlend_Walking
##  #define Blend_Walking_hxx <BRepBlend_Walking.hxx>
##
##  #include <Blend_Walking.lxx>
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
##  #undef Blend_Walking
##  #undef Blend_Walking_hxx



