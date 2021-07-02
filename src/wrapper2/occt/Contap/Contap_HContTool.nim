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
  ContapHContTool* {.importcpp: "Contap_HContTool", header: "Contap_HContTool.hxx",
                    bycopy.} = object


proc nbSamplesU*(s: Handle[Adaptor3dHSurface]; u1: StandardReal; u2: StandardReal): StandardInteger {.
    importcpp: "Contap_HContTool::NbSamplesU(@)", header: "Contap_HContTool.hxx".}
proc nbSamplesV*(s: Handle[Adaptor3dHSurface]; v1: StandardReal; v2: StandardReal): StandardInteger {.
    importcpp: "Contap_HContTool::NbSamplesV(@)", header: "Contap_HContTool.hxx".}
proc nbSamplePoints*(s: Handle[Adaptor3dHSurface]): StandardInteger {.
    importcpp: "Contap_HContTool::NbSamplePoints(@)",
    header: "Contap_HContTool.hxx".}
proc samplePoint*(s: Handle[Adaptor3dHSurface]; index: StandardInteger;
                 u: var StandardReal; v: var StandardReal) {.
    importcpp: "Contap_HContTool::SamplePoint(@)", header: "Contap_HContTool.hxx".}
proc hasBeenSeen*(c: Handle[Adaptor2dHCurve2d]): StandardBoolean {.
    importcpp: "Contap_HContTool::HasBeenSeen(@)", header: "Contap_HContTool.hxx".}
proc nbSamplesOnArc*(a: Handle[Adaptor2dHCurve2d]): StandardInteger {.
    importcpp: "Contap_HContTool::NbSamplesOnArc(@)",
    header: "Contap_HContTool.hxx".}
proc bounds*(c: Handle[Adaptor2dHCurve2d]; ufirst: var StandardReal;
            ulast: var StandardReal) {.importcpp: "Contap_HContTool::Bounds(@)",
                                    header: "Contap_HContTool.hxx".}
proc project*(c: Handle[Adaptor2dHCurve2d]; p: GpPnt2d; paramproj: var StandardReal;
             ptproj: var GpPnt2d): StandardBoolean {.
    importcpp: "Contap_HContTool::Project(@)", header: "Contap_HContTool.hxx".}
proc tolerance*(v: Handle[Adaptor3dHVertex]; c: Handle[Adaptor2dHCurve2d]): StandardReal {.
    importcpp: "Contap_HContTool::Tolerance(@)", header: "Contap_HContTool.hxx".}
proc parameter*(v: Handle[Adaptor3dHVertex]; c: Handle[Adaptor2dHCurve2d]): StandardReal {.
    importcpp: "Contap_HContTool::Parameter(@)", header: "Contap_HContTool.hxx".}
proc nbPoints*(c: Handle[Adaptor2dHCurve2d]): StandardInteger {.
    importcpp: "Contap_HContTool::NbPoints(@)", header: "Contap_HContTool.hxx".}
proc value*(c: Handle[Adaptor2dHCurve2d]; index: StandardInteger; pt: var GpPnt;
           tol: var StandardReal; u: var StandardReal) {.
    importcpp: "Contap_HContTool::Value(@)", header: "Contap_HContTool.hxx".}
proc isVertex*(c: Handle[Adaptor2dHCurve2d]; index: StandardInteger): StandardBoolean {.
    importcpp: "Contap_HContTool::IsVertex(@)", header: "Contap_HContTool.hxx".}
proc vertex*(c: Handle[Adaptor2dHCurve2d]; index: StandardInteger;
            v: var Handle[Adaptor3dHVertex]) {.
    importcpp: "Contap_HContTool::Vertex(@)", header: "Contap_HContTool.hxx".}
proc nbSegments*(c: Handle[Adaptor2dHCurve2d]): StandardInteger {.
    importcpp: "Contap_HContTool::NbSegments(@)", header: "Contap_HContTool.hxx".}
proc hasFirstPoint*(c: Handle[Adaptor2dHCurve2d]; index: StandardInteger;
                   indFirst: var StandardInteger): StandardBoolean {.
    importcpp: "Contap_HContTool::HasFirstPoint(@)",
    header: "Contap_HContTool.hxx".}
proc hasLastPoint*(c: Handle[Adaptor2dHCurve2d]; index: StandardInteger;
                  indLast: var StandardInteger): StandardBoolean {.
    importcpp: "Contap_HContTool::HasLastPoint(@)", header: "Contap_HContTool.hxx".}
proc isAllSolution*(c: Handle[Adaptor2dHCurve2d]): StandardBoolean {.
    importcpp: "Contap_HContTool::IsAllSolution(@)",
    header: "Contap_HContTool.hxx".}

