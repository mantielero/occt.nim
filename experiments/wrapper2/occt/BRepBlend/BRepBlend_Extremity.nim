##  Created on: 1994-01-25
##  Created by: Jacques GOUSSARD
##  Copyright (c) 1994-1999 Matra Datavision
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
  ../Standard/Standard_Handle, BRepBlend_SequenceOfPointOnRst, ../gp/gp_Pnt,
  ../gp/gp_Vec, ../Standard/Standard_Real, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer

discard "forward decl of Adaptor3d_HVertex"
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of Adaptor2d_HCurve2d"
discard "forward decl of IntSurf_Transition"
discard "forward decl of BRepBlend_PointOnRst"
type
  BRepBlend_Extremity* {.importcpp: "BRepBlend_Extremity",
                        header: "BRepBlend_Extremity.hxx", bycopy.} = object


proc constructBRepBlend_Extremity*(): BRepBlend_Extremity {.constructor,
    importcpp: "BRepBlend_Extremity(@)", header: "BRepBlend_Extremity.hxx".}
proc constructBRepBlend_Extremity*(P: gp_Pnt; U: Standard_Real; V: Standard_Real;
                                  Param: Standard_Real; Tol: Standard_Real): BRepBlend_Extremity {.
    constructor, importcpp: "BRepBlend_Extremity(@)",
    header: "BRepBlend_Extremity.hxx".}
proc constructBRepBlend_Extremity*(P: gp_Pnt; U: Standard_Real; V: Standard_Real;
                                  Param: Standard_Real; Tol: Standard_Real;
                                  Vtx: handle[Adaptor3d_HVertex]): BRepBlend_Extremity {.
    constructor, importcpp: "BRepBlend_Extremity(@)",
    header: "BRepBlend_Extremity.hxx".}
proc constructBRepBlend_Extremity*(P: gp_Pnt; W: Standard_Real; Param: Standard_Real;
                                  Tol: Standard_Real): BRepBlend_Extremity {.
    constructor, importcpp: "BRepBlend_Extremity(@)",
    header: "BRepBlend_Extremity.hxx".}
proc SetValue*(this: var BRepBlend_Extremity; P: gp_Pnt; U: Standard_Real;
              V: Standard_Real; Param: Standard_Real; Tol: Standard_Real) {.
    importcpp: "SetValue", header: "BRepBlend_Extremity.hxx".}
proc SetValue*(this: var BRepBlend_Extremity; P: gp_Pnt; U: Standard_Real;
              V: Standard_Real; Param: Standard_Real; Tol: Standard_Real;
              Vtx: handle[Adaptor3d_HVertex]) {.importcpp: "SetValue",
    header: "BRepBlend_Extremity.hxx".}
proc SetValue*(this: var BRepBlend_Extremity; P: gp_Pnt; W: Standard_Real;
              Param: Standard_Real; Tol: Standard_Real) {.importcpp: "SetValue",
    header: "BRepBlend_Extremity.hxx".}
proc Value*(this: BRepBlend_Extremity): gp_Pnt {.noSideEffect, importcpp: "Value",
    header: "BRepBlend_Extremity.hxx".}
proc SetTangent*(this: var BRepBlend_Extremity; Tangent: gp_Vec) {.
    importcpp: "SetTangent", header: "BRepBlend_Extremity.hxx".}
proc HasTangent*(this: BRepBlend_Extremity): Standard_Boolean {.noSideEffect,
    importcpp: "HasTangent", header: "BRepBlend_Extremity.hxx".}
proc Tangent*(this: BRepBlend_Extremity): gp_Vec {.noSideEffect,
    importcpp: "Tangent", header: "BRepBlend_Extremity.hxx".}
proc Tolerance*(this: BRepBlend_Extremity): Standard_Real {.noSideEffect,
    importcpp: "Tolerance", header: "BRepBlend_Extremity.hxx".}
proc SetVertex*(this: var BRepBlend_Extremity; V: handle[Adaptor3d_HVertex]) {.
    importcpp: "SetVertex", header: "BRepBlend_Extremity.hxx".}
proc AddArc*(this: var BRepBlend_Extremity; A: handle[Adaptor2d_HCurve2d];
            Param: Standard_Real; TLine: IntSurf_Transition;
            TArc: IntSurf_Transition) {.importcpp: "AddArc",
                                      header: "BRepBlend_Extremity.hxx".}
proc Parameters*(this: BRepBlend_Extremity; U: var Standard_Real; V: var Standard_Real) {.
    noSideEffect, importcpp: "Parameters", header: "BRepBlend_Extremity.hxx".}
proc IsVertex*(this: BRepBlend_Extremity): Standard_Boolean {.noSideEffect,
    importcpp: "IsVertex", header: "BRepBlend_Extremity.hxx".}
proc Vertex*(this: BRepBlend_Extremity): handle[Adaptor3d_HVertex] {.noSideEffect,
    importcpp: "Vertex", header: "BRepBlend_Extremity.hxx".}
proc NbPointOnRst*(this: BRepBlend_Extremity): Standard_Integer {.noSideEffect,
    importcpp: "NbPointOnRst", header: "BRepBlend_Extremity.hxx".}
proc PointOnRst*(this: BRepBlend_Extremity; Index: Standard_Integer): BRepBlend_PointOnRst {.
    noSideEffect, importcpp: "PointOnRst", header: "BRepBlend_Extremity.hxx".}
proc Parameter*(this: BRepBlend_Extremity): Standard_Real {.noSideEffect,
    importcpp: "Parameter", header: "BRepBlend_Extremity.hxx".}
proc ParameterOnGuide*(this: BRepBlend_Extremity): Standard_Real {.noSideEffect,
    importcpp: "ParameterOnGuide", header: "BRepBlend_Extremity.hxx".}