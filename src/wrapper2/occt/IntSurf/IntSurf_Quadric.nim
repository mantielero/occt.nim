##  Created on: 1992-04-13
##  Created by: Jacques GOUSSARD
##  Copyright (c) 1992-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../gp/gp_Ax3, ../gp/gp_Lin,
  ../GeomAbs/GeomAbs_SurfaceType, ../Standard/Standard_Real,
  ../Standard/Standard_Boolean, ../gp/gp_Pln, ../gp/gp_Sphere, ../gp/gp_Cylinder,
  ../gp/gp_Cone, ../gp/gp_Torus, ../Standard/Standard_Integer

discard "forward decl of gp_Pln"
discard "forward decl of gp_Cylinder"
discard "forward decl of gp_Sphere"
discard "forward decl of gp_Cone"
discard "forward decl of gp_Torus"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
type
  IntSurf_Quadric* {.importcpp: "IntSurf_Quadric", header: "IntSurf_Quadric.hxx",
                    bycopy.} = object


proc constructIntSurf_Quadric*(): IntSurf_Quadric {.constructor,
    importcpp: "IntSurf_Quadric(@)", header: "IntSurf_Quadric.hxx".}
proc constructIntSurf_Quadric*(P: gp_Pln): IntSurf_Quadric {.constructor,
    importcpp: "IntSurf_Quadric(@)", header: "IntSurf_Quadric.hxx".}
proc constructIntSurf_Quadric*(C: gp_Cylinder): IntSurf_Quadric {.constructor,
    importcpp: "IntSurf_Quadric(@)", header: "IntSurf_Quadric.hxx".}
proc constructIntSurf_Quadric*(S: gp_Sphere): IntSurf_Quadric {.constructor,
    importcpp: "IntSurf_Quadric(@)", header: "IntSurf_Quadric.hxx".}
proc constructIntSurf_Quadric*(C: gp_Cone): IntSurf_Quadric {.constructor,
    importcpp: "IntSurf_Quadric(@)", header: "IntSurf_Quadric.hxx".}
proc constructIntSurf_Quadric*(T: gp_Torus): IntSurf_Quadric {.constructor,
    importcpp: "IntSurf_Quadric(@)", header: "IntSurf_Quadric.hxx".}
proc SetValue*(this: var IntSurf_Quadric; P: gp_Pln) {.importcpp: "SetValue",
    header: "IntSurf_Quadric.hxx".}
proc SetValue*(this: var IntSurf_Quadric; C: gp_Cylinder) {.importcpp: "SetValue",
    header: "IntSurf_Quadric.hxx".}
proc SetValue*(this: var IntSurf_Quadric; S: gp_Sphere) {.importcpp: "SetValue",
    header: "IntSurf_Quadric.hxx".}
proc SetValue*(this: var IntSurf_Quadric; C: gp_Cone) {.importcpp: "SetValue",
    header: "IntSurf_Quadric.hxx".}
proc SetValue*(this: var IntSurf_Quadric; T: gp_Torus) {.importcpp: "SetValue",
    header: "IntSurf_Quadric.hxx".}
proc Distance*(this: IntSurf_Quadric; P: gp_Pnt): Standard_Real {.noSideEffect,
    importcpp: "Distance", header: "IntSurf_Quadric.hxx".}
proc Gradient*(this: IntSurf_Quadric; P: gp_Pnt): gp_Vec {.noSideEffect,
    importcpp: "Gradient", header: "IntSurf_Quadric.hxx".}
proc ValAndGrad*(this: IntSurf_Quadric; P: gp_Pnt; Dist: var Standard_Real;
                Grad: var gp_Vec) {.noSideEffect, importcpp: "ValAndGrad",
                                 header: "IntSurf_Quadric.hxx".}
proc TypeQuadric*(this: IntSurf_Quadric): GeomAbs_SurfaceType {.noSideEffect,
    importcpp: "TypeQuadric", header: "IntSurf_Quadric.hxx".}
proc Plane*(this: IntSurf_Quadric): gp_Pln {.noSideEffect, importcpp: "Plane",
    header: "IntSurf_Quadric.hxx".}
proc Sphere*(this: IntSurf_Quadric): gp_Sphere {.noSideEffect, importcpp: "Sphere",
    header: "IntSurf_Quadric.hxx".}
proc Cylinder*(this: IntSurf_Quadric): gp_Cylinder {.noSideEffect,
    importcpp: "Cylinder", header: "IntSurf_Quadric.hxx".}
proc Cone*(this: IntSurf_Quadric): gp_Cone {.noSideEffect, importcpp: "Cone",
    header: "IntSurf_Quadric.hxx".}
proc Torus*(this: IntSurf_Quadric): gp_Torus {.noSideEffect, importcpp: "Torus",
    header: "IntSurf_Quadric.hxx".}
proc Value*(this: IntSurf_Quadric; U: Standard_Real; V: Standard_Real): gp_Pnt {.
    noSideEffect, importcpp: "Value", header: "IntSurf_Quadric.hxx".}
proc D1*(this: IntSurf_Quadric; U: Standard_Real; V: Standard_Real; P: var gp_Pnt;
        D1U: var gp_Vec; D1V: var gp_Vec) {.noSideEffect, importcpp: "D1",
                                      header: "IntSurf_Quadric.hxx".}
proc DN*(this: IntSurf_Quadric; U: Standard_Real; V: Standard_Real;
        Nu: Standard_Integer; Nv: Standard_Integer): gp_Vec {.noSideEffect,
    importcpp: "DN", header: "IntSurf_Quadric.hxx".}
proc Normale*(this: IntSurf_Quadric; U: Standard_Real; V: Standard_Real): gp_Vec {.
    noSideEffect, importcpp: "Normale", header: "IntSurf_Quadric.hxx".}
proc Parameters*(this: IntSurf_Quadric; P: gp_Pnt; U: var Standard_Real;
                V: var Standard_Real) {.noSideEffect, importcpp: "Parameters",
                                     header: "IntSurf_Quadric.hxx".}
proc Normale*(this: IntSurf_Quadric; P: gp_Pnt): gp_Vec {.noSideEffect,
    importcpp: "Normale", header: "IntSurf_Quadric.hxx".}