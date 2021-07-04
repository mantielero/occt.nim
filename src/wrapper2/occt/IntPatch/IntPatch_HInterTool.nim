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
  ../Standard/Standard_Handle, ../Standard/Standard_Real,
  ../Standard/Standard_Boolean, ../Standard/Standard_Integer

discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of Adaptor2d_HCurve2d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of Adaptor3d_HVertex"
discard "forward decl of gp_Pnt"
type
  IntPatch_HInterTool* {.importcpp: "IntPatch_HInterTool",
                        header: "IntPatch_HInterTool.hxx", bycopy.} = object


proc constructIntPatch_HInterTool*(): IntPatch_HInterTool {.constructor,
    importcpp: "IntPatch_HInterTool(@)", header: "IntPatch_HInterTool.hxx".}
proc SingularOnUMin*(S: handle[Adaptor3d_HSurface]): Standard_Boolean {.
    importcpp: "IntPatch_HInterTool::SingularOnUMin(@)",
    header: "IntPatch_HInterTool.hxx".}
proc SingularOnUMax*(S: handle[Adaptor3d_HSurface]): Standard_Boolean {.
    importcpp: "IntPatch_HInterTool::SingularOnUMax(@)",
    header: "IntPatch_HInterTool.hxx".}
proc SingularOnVMin*(S: handle[Adaptor3d_HSurface]): Standard_Boolean {.
    importcpp: "IntPatch_HInterTool::SingularOnVMin(@)",
    header: "IntPatch_HInterTool.hxx".}
proc SingularOnVMax*(S: handle[Adaptor3d_HSurface]): Standard_Boolean {.
    importcpp: "IntPatch_HInterTool::SingularOnVMax(@)",
    header: "IntPatch_HInterTool.hxx".}
proc NbSamplesU*(S: handle[Adaptor3d_HSurface]; u1: Standard_Real; u2: Standard_Real): Standard_Integer {.
    importcpp: "IntPatch_HInterTool::NbSamplesU(@)",
    header: "IntPatch_HInterTool.hxx".}
proc NbSamplesV*(S: handle[Adaptor3d_HSurface]; v1: Standard_Real; v2: Standard_Real): Standard_Integer {.
    importcpp: "IntPatch_HInterTool::NbSamplesV(@)",
    header: "IntPatch_HInterTool.hxx".}
proc NbSamplePoints*(this: var IntPatch_HInterTool; S: handle[Adaptor3d_HSurface]): Standard_Integer {.
    importcpp: "NbSamplePoints", header: "IntPatch_HInterTool.hxx".}
proc SamplePoint*(this: IntPatch_HInterTool; S: handle[Adaptor3d_HSurface];
                 Index: Standard_Integer; U: var Standard_Real; V: var Standard_Real) {.
    noSideEffect, importcpp: "SamplePoint", header: "IntPatch_HInterTool.hxx".}
proc HasBeenSeen*(C: handle[Adaptor2d_HCurve2d]): Standard_Boolean {.
    importcpp: "IntPatch_HInterTool::HasBeenSeen(@)",
    header: "IntPatch_HInterTool.hxx".}
proc NbSamplesOnArc*(A: handle[Adaptor2d_HCurve2d]): Standard_Integer {.
    importcpp: "IntPatch_HInterTool::NbSamplesOnArc(@)",
    header: "IntPatch_HInterTool.hxx".}
proc Bounds*(C: handle[Adaptor2d_HCurve2d]; Ufirst: var Standard_Real;
            Ulast: var Standard_Real) {.importcpp: "IntPatch_HInterTool::Bounds(@)",
                                     header: "IntPatch_HInterTool.hxx".}
proc Project*(C: handle[Adaptor2d_HCurve2d]; P: gp_Pnt2d;
             Paramproj: var Standard_Real; Ptproj: var gp_Pnt2d): Standard_Boolean {.
    importcpp: "IntPatch_HInterTool::Project(@)",
    header: "IntPatch_HInterTool.hxx".}
proc Tolerance*(V: handle[Adaptor3d_HVertex]; C: handle[Adaptor2d_HCurve2d]): Standard_Real {.
    importcpp: "IntPatch_HInterTool::Tolerance(@)",
    header: "IntPatch_HInterTool.hxx".}
proc Parameter*(V: handle[Adaptor3d_HVertex]; C: handle[Adaptor2d_HCurve2d]): Standard_Real {.
    importcpp: "IntPatch_HInterTool::Parameter(@)",
    header: "IntPatch_HInterTool.hxx".}
proc NbPoints*(C: handle[Adaptor2d_HCurve2d]): Standard_Integer {.
    importcpp: "IntPatch_HInterTool::NbPoints(@)",
    header: "IntPatch_HInterTool.hxx".}
proc Value*(C: handle[Adaptor2d_HCurve2d]; Index: Standard_Integer; Pt: var gp_Pnt;
           Tol: var Standard_Real; U: var Standard_Real) {.
    importcpp: "IntPatch_HInterTool::Value(@)", header: "IntPatch_HInterTool.hxx".}
proc IsVertex*(C: handle[Adaptor2d_HCurve2d]; Index: Standard_Integer): Standard_Boolean {.
    importcpp: "IntPatch_HInterTool::IsVertex(@)",
    header: "IntPatch_HInterTool.hxx".}
proc Vertex*(C: handle[Adaptor2d_HCurve2d]; Index: Standard_Integer;
            V: var handle[Adaptor3d_HVertex]) {.
    importcpp: "IntPatch_HInterTool::Vertex(@)", header: "IntPatch_HInterTool.hxx".}
proc NbSegments*(C: handle[Adaptor2d_HCurve2d]): Standard_Integer {.
    importcpp: "IntPatch_HInterTool::NbSegments(@)",
    header: "IntPatch_HInterTool.hxx".}
proc HasFirstPoint*(C: handle[Adaptor2d_HCurve2d]; Index: Standard_Integer;
                   IndFirst: var Standard_Integer): Standard_Boolean {.
    importcpp: "IntPatch_HInterTool::HasFirstPoint(@)",
    header: "IntPatch_HInterTool.hxx".}
proc HasLastPoint*(C: handle[Adaptor2d_HCurve2d]; Index: Standard_Integer;
                  IndLast: var Standard_Integer): Standard_Boolean {.
    importcpp: "IntPatch_HInterTool::HasLastPoint(@)",
    header: "IntPatch_HInterTool.hxx".}
proc IsAllSolution*(C: handle[Adaptor2d_HCurve2d]): Standard_Boolean {.
    importcpp: "IntPatch_HInterTool::IsAllSolution(@)",
    header: "IntPatch_HInterTool.hxx".}