import brepblend_types
import ../gp/gp_types
import ../intsurf/intsurf_types
import ../standard/standard_types
import ../adaptor3d/adaptor3d_types
import ../adaptor2d/adaptor2d_types





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



proc newBRepBlendExtremity*(): BRepBlendExtremity {.cdecl, constructor,
    importcpp: "BRepBlend_Extremity(@)", header: "BRepBlend_Extremity.hxx".}
proc newBRepBlendExtremity*(p: gp_Pnt; u: cfloat; v: cfloat; param: cfloat; tol: cfloat): BRepBlendExtremity {.
    cdecl, constructor, importcpp: "BRepBlend_Extremity(@)", header: "BRepBlend_Extremity.hxx".}
proc newBRepBlendExtremity*(p: gp_Pnt; u: cfloat; v: cfloat; param: cfloat; tol: cfloat;
                           vtx: Handle[Adaptor3dHVertex]): BRepBlendExtremity {.
    cdecl, constructor, importcpp: "BRepBlend_Extremity(@)", header: "BRepBlend_Extremity.hxx".}
proc newBRepBlendExtremity*(p: gp_Pnt; w: cfloat; param: cfloat; tol: cfloat): BRepBlendExtremity {.
    cdecl, constructor, importcpp: "BRepBlend_Extremity(@)", header: "BRepBlend_Extremity.hxx".}
proc setValue*(this: var BRepBlendExtremity; p: gp_Pnt; u: cfloat; v: cfloat; param: cfloat;
              tol: cfloat) {.cdecl, importcpp: "SetValue", header: "BRepBlend_Extremity.hxx".}
proc setValue*(this: var BRepBlendExtremity; p: gp_Pnt; u: cfloat; v: cfloat; param: cfloat;
              tol: cfloat; vtx: Handle[Adaptor3dHVertex]) {.cdecl,
    importcpp: "SetValue", header: "BRepBlend_Extremity.hxx".}
proc setValue*(this: var BRepBlendExtremity; p: gp_Pnt; w: cfloat; param: cfloat; tol: cfloat) {.
    cdecl, importcpp: "SetValue", header: "BRepBlend_Extremity.hxx".}
proc value*(this: BRepBlendExtremity): gp_Pnt {.noSideEffect, cdecl, importcpp: "Value",
    header: "BRepBlend_Extremity.hxx".}
proc setTangent*(this: var BRepBlendExtremity; tangent: gp_Vec) {.cdecl,
    importcpp: "SetTangent", header: "BRepBlend_Extremity.hxx".}
proc hasTangent*(this: BRepBlendExtremity): bool {.noSideEffect, cdecl,
    importcpp: "HasTangent", header: "BRepBlend_Extremity.hxx".}
proc tangent*(this: BRepBlendExtremity): gp_Vec {.noSideEffect, cdecl,
    importcpp: "Tangent", header: "BRepBlend_Extremity.hxx".}
proc tolerance*(this: BRepBlendExtremity): cfloat {.noSideEffect, cdecl,
    importcpp: "Tolerance", header: "BRepBlend_Extremity.hxx".}
proc setVertex*(this: var BRepBlendExtremity; v: Handle[Adaptor3dHVertex]) {.cdecl,
    importcpp: "SetVertex", header: "BRepBlend_Extremity.hxx".}
proc addArc*(this: var BRepBlendExtremity; a: Handle[Adaptor2dHCurve2d];
            param: cfloat; tLine: IntSurfTransition; tArc: IntSurfTransition) {.cdecl,
    importcpp: "AddArc", header: "BRepBlend_Extremity.hxx".}
proc parameters*(this: BRepBlendExtremity; u: var cfloat; v: var cfloat) {.noSideEffect,
    cdecl, importcpp: "Parameters", header: "BRepBlend_Extremity.hxx".}
proc isVertex*(this: BRepBlendExtremity): bool {.noSideEffect, cdecl,
    importcpp: "IsVertex", header: "BRepBlend_Extremity.hxx".}
proc vertex*(this: BRepBlendExtremity): Handle[Adaptor3dHVertex] {.noSideEffect,
    cdecl, importcpp: "Vertex", header: "BRepBlend_Extremity.hxx".}
proc nbPointOnRst*(this: BRepBlendExtremity): cint {.noSideEffect, cdecl,
    importcpp: "NbPointOnRst", header: "BRepBlend_Extremity.hxx".}
proc pointOnRst*(this: BRepBlendExtremity; index: cint): BRepBlendPointOnRst {.
    noSideEffect, cdecl, importcpp: "PointOnRst", header: "BRepBlend_Extremity.hxx".}
proc parameter*(this: BRepBlendExtremity): cfloat {.noSideEffect, cdecl,
    importcpp: "Parameter", header: "BRepBlend_Extremity.hxx".}
proc parameterOnGuide*(this: BRepBlendExtremity): cfloat {.noSideEffect, cdecl,
    importcpp: "ParameterOnGuide", header: "BRepBlend_Extremity.hxx".}


