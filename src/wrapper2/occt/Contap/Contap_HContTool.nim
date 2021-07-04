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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Integer,
  ../Standard/Standard_Real, ../Standard/Standard_Boolean

discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of Adaptor2d_HCurve2d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of Adaptor3d_HVertex"
discard "forward decl of gp_Pnt"
type
  Contap_HContTool* {.importcpp: "Contap_HContTool",
                     header: "Contap_HContTool.hxx", bycopy.} = object


proc NbSamplesU*(S: handle[Adaptor3d_HSurface]; u1: Standard_Real; u2: Standard_Real): Standard_Integer {.
    importcpp: "Contap_HContTool::NbSamplesU(@)", header: "Contap_HContTool.hxx".}
proc NbSamplesV*(S: handle[Adaptor3d_HSurface]; v1: Standard_Real; v2: Standard_Real): Standard_Integer {.
    importcpp: "Contap_HContTool::NbSamplesV(@)", header: "Contap_HContTool.hxx".}
proc NbSamplePoints*(S: handle[Adaptor3d_HSurface]): Standard_Integer {.
    importcpp: "Contap_HContTool::NbSamplePoints(@)",
    header: "Contap_HContTool.hxx".}
proc SamplePoint*(S: handle[Adaptor3d_HSurface]; Index: Standard_Integer;
                 U: var Standard_Real; V: var Standard_Real) {.
    importcpp: "Contap_HContTool::SamplePoint(@)", header: "Contap_HContTool.hxx".}
proc HasBeenSeen*(C: handle[Adaptor2d_HCurve2d]): Standard_Boolean {.
    importcpp: "Contap_HContTool::HasBeenSeen(@)", header: "Contap_HContTool.hxx".}
proc NbSamplesOnArc*(A: handle[Adaptor2d_HCurve2d]): Standard_Integer {.
    importcpp: "Contap_HContTool::NbSamplesOnArc(@)",
    header: "Contap_HContTool.hxx".}
proc Bounds*(C: handle[Adaptor2d_HCurve2d]; Ufirst: var Standard_Real;
            Ulast: var Standard_Real) {.importcpp: "Contap_HContTool::Bounds(@)",
                                     header: "Contap_HContTool.hxx".}
proc Project*(C: handle[Adaptor2d_HCurve2d]; P: gp_Pnt2d;
             Paramproj: var Standard_Real; Ptproj: var gp_Pnt2d): Standard_Boolean {.
    importcpp: "Contap_HContTool::Project(@)", header: "Contap_HContTool.hxx".}
proc Tolerance*(V: handle[Adaptor3d_HVertex]; C: handle[Adaptor2d_HCurve2d]): Standard_Real {.
    importcpp: "Contap_HContTool::Tolerance(@)", header: "Contap_HContTool.hxx".}
proc Parameter*(V: handle[Adaptor3d_HVertex]; C: handle[Adaptor2d_HCurve2d]): Standard_Real {.
    importcpp: "Contap_HContTool::Parameter(@)", header: "Contap_HContTool.hxx".}
proc NbPoints*(C: handle[Adaptor2d_HCurve2d]): Standard_Integer {.
    importcpp: "Contap_HContTool::NbPoints(@)", header: "Contap_HContTool.hxx".}
proc Value*(C: handle[Adaptor2d_HCurve2d]; Index: Standard_Integer; Pt: var gp_Pnt;
           Tol: var Standard_Real; U: var Standard_Real) {.
    importcpp: "Contap_HContTool::Value(@)", header: "Contap_HContTool.hxx".}
proc IsVertex*(C: handle[Adaptor2d_HCurve2d]; Index: Standard_Integer): Standard_Boolean {.
    importcpp: "Contap_HContTool::IsVertex(@)", header: "Contap_HContTool.hxx".}
proc Vertex*(C: handle[Adaptor2d_HCurve2d]; Index: Standard_Integer;
            V: var handle[Adaptor3d_HVertex]) {.
    importcpp: "Contap_HContTool::Vertex(@)", header: "Contap_HContTool.hxx".}
proc NbSegments*(C: handle[Adaptor2d_HCurve2d]): Standard_Integer {.
    importcpp: "Contap_HContTool::NbSegments(@)", header: "Contap_HContTool.hxx".}
proc HasFirstPoint*(C: handle[Adaptor2d_HCurve2d]; Index: Standard_Integer;
                   IndFirst: var Standard_Integer): Standard_Boolean {.
    importcpp: "Contap_HContTool::HasFirstPoint(@)",
    header: "Contap_HContTool.hxx".}
proc HasLastPoint*(C: handle[Adaptor2d_HCurve2d]; Index: Standard_Integer;
                  IndLast: var Standard_Integer): Standard_Boolean {.
    importcpp: "Contap_HContTool::HasLastPoint(@)", header: "Contap_HContTool.hxx".}
proc IsAllSolution*(C: handle[Adaptor2d_HCurve2d]): Standard_Boolean {.
    importcpp: "Contap_HContTool::IsAllSolution(@)",
    header: "Contap_HContTool.hxx".}