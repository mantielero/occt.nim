##  Created on: 1995-07-02
##  Created by: Laurent BUCHARD
##  Copyright (c) 1995-1999 Matra Datavision
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

discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of Adaptor2d_HCurve2d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of Adaptor3d_HVertex"
discard "forward decl of gp_Pnt"
type
  IntPatchHInterTool* {.importcpp: "IntPatch_HInterTool",
                       header: "IntPatch_HInterTool.hxx", bycopy.} = object


proc constructIntPatchHInterTool*(): IntPatchHInterTool {.constructor,
    importcpp: "IntPatch_HInterTool(@)", header: "IntPatch_HInterTool.hxx".}
proc singularOnUMin*(s: Handle[Adaptor3dHSurface]): StandardBoolean {.
    importcpp: "IntPatch_HInterTool::SingularOnUMin(@)",
    header: "IntPatch_HInterTool.hxx".}
proc singularOnUMax*(s: Handle[Adaptor3dHSurface]): StandardBoolean {.
    importcpp: "IntPatch_HInterTool::SingularOnUMax(@)",
    header: "IntPatch_HInterTool.hxx".}
proc singularOnVMin*(s: Handle[Adaptor3dHSurface]): StandardBoolean {.
    importcpp: "IntPatch_HInterTool::SingularOnVMin(@)",
    header: "IntPatch_HInterTool.hxx".}
proc singularOnVMax*(s: Handle[Adaptor3dHSurface]): StandardBoolean {.
    importcpp: "IntPatch_HInterTool::SingularOnVMax(@)",
    header: "IntPatch_HInterTool.hxx".}
proc nbSamplesU*(s: Handle[Adaptor3dHSurface]; u1: StandardReal; u2: StandardReal): StandardInteger {.
    importcpp: "IntPatch_HInterTool::NbSamplesU(@)",
    header: "IntPatch_HInterTool.hxx".}
proc nbSamplesV*(s: Handle[Adaptor3dHSurface]; v1: StandardReal; v2: StandardReal): StandardInteger {.
    importcpp: "IntPatch_HInterTool::NbSamplesV(@)",
    header: "IntPatch_HInterTool.hxx".}
proc nbSamplePoints*(this: var IntPatchHInterTool; s: Handle[Adaptor3dHSurface]): StandardInteger {.
    importcpp: "NbSamplePoints", header: "IntPatch_HInterTool.hxx".}
proc samplePoint*(this: IntPatchHInterTool; s: Handle[Adaptor3dHSurface];
                 index: StandardInteger; u: var StandardReal; v: var StandardReal) {.
    noSideEffect, importcpp: "SamplePoint", header: "IntPatch_HInterTool.hxx".}
proc hasBeenSeen*(c: Handle[Adaptor2dHCurve2d]): StandardBoolean {.
    importcpp: "IntPatch_HInterTool::HasBeenSeen(@)",
    header: "IntPatch_HInterTool.hxx".}
proc nbSamplesOnArc*(a: Handle[Adaptor2dHCurve2d]): StandardInteger {.
    importcpp: "IntPatch_HInterTool::NbSamplesOnArc(@)",
    header: "IntPatch_HInterTool.hxx".}
proc bounds*(c: Handle[Adaptor2dHCurve2d]; ufirst: var StandardReal;
            ulast: var StandardReal) {.importcpp: "IntPatch_HInterTool::Bounds(@)",
                                    header: "IntPatch_HInterTool.hxx".}
proc project*(c: Handle[Adaptor2dHCurve2d]; p: GpPnt2d; paramproj: var StandardReal;
             ptproj: var GpPnt2d): StandardBoolean {.
    importcpp: "IntPatch_HInterTool::Project(@)",
    header: "IntPatch_HInterTool.hxx".}
proc tolerance*(v: Handle[Adaptor3dHVertex]; c: Handle[Adaptor2dHCurve2d]): StandardReal {.
    importcpp: "IntPatch_HInterTool::Tolerance(@)",
    header: "IntPatch_HInterTool.hxx".}
proc parameter*(v: Handle[Adaptor3dHVertex]; c: Handle[Adaptor2dHCurve2d]): StandardReal {.
    importcpp: "IntPatch_HInterTool::Parameter(@)",
    header: "IntPatch_HInterTool.hxx".}
proc nbPoints*(c: Handle[Adaptor2dHCurve2d]): StandardInteger {.
    importcpp: "IntPatch_HInterTool::NbPoints(@)",
    header: "IntPatch_HInterTool.hxx".}
proc value*(c: Handle[Adaptor2dHCurve2d]; index: StandardInteger; pt: var GpPnt;
           tol: var StandardReal; u: var StandardReal) {.
    importcpp: "IntPatch_HInterTool::Value(@)", header: "IntPatch_HInterTool.hxx".}
proc isVertex*(c: Handle[Adaptor2dHCurve2d]; index: StandardInteger): StandardBoolean {.
    importcpp: "IntPatch_HInterTool::IsVertex(@)",
    header: "IntPatch_HInterTool.hxx".}
proc vertex*(c: Handle[Adaptor2dHCurve2d]; index: StandardInteger;
            v: var Handle[Adaptor3dHVertex]) {.
    importcpp: "IntPatch_HInterTool::Vertex(@)", header: "IntPatch_HInterTool.hxx".}
proc nbSegments*(c: Handle[Adaptor2dHCurve2d]): StandardInteger {.
    importcpp: "IntPatch_HInterTool::NbSegments(@)",
    header: "IntPatch_HInterTool.hxx".}
proc hasFirstPoint*(c: Handle[Adaptor2dHCurve2d]; index: StandardInteger;
                   indFirst: var StandardInteger): StandardBoolean {.
    importcpp: "IntPatch_HInterTool::HasFirstPoint(@)",
    header: "IntPatch_HInterTool.hxx".}
proc hasLastPoint*(c: Handle[Adaptor2dHCurve2d]; index: StandardInteger;
                  indLast: var StandardInteger): StandardBoolean {.
    importcpp: "IntPatch_HInterTool::HasLastPoint(@)",
    header: "IntPatch_HInterTool.hxx".}
proc isAllSolution*(c: Handle[Adaptor2dHCurve2d]): StandardBoolean {.
    importcpp: "IntPatch_HInterTool::IsAllSolution(@)",
    header: "IntPatch_HInterTool.hxx".}

