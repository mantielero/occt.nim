##  Created on: 2013-02-05
##  Created by: Julia GERASIMOVA
##  Copyright (c) 2001-2013 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_Type, ../gp/gp_Pnt,
  GeomFill_HSequenceOfAx2, ../TColStd/TColStd_HSequenceOfReal,
  ../Standard/Standard_Boolean, GeomFill_TrihedronLaw, ../Standard/Standard_Real,
  ../Standard/Standard_Integer, ../GeomAbs/GeomAbs_Shape,
  ../TColStd/TColStd_Array1OfReal

discard "forward decl of GeomFill_Frenet"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of GeomFill_TrihedronLaw"
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of gp_Vec"
discard "forward decl of GeomFill_DiscreteTrihedron"
discard "forward decl of GeomFill_DiscreteTrihedron"
type
  Handle_GeomFill_DiscreteTrihedron* = handle[GeomFill_DiscreteTrihedron]

## ! Defined Discrete Trihedron Law.
## ! The requirement for path curve is only G1.
## ! The result is C0-continuous surface
## ! that can be later approximated to C1.

type
  GeomFill_DiscreteTrihedron* {.importcpp: "GeomFill_DiscreteTrihedron",
                               header: "GeomFill_DiscreteTrihedron.hxx", bycopy.} = object of GeomFill_TrihedronLaw


proc constructGeomFill_DiscreteTrihedron*(): GeomFill_DiscreteTrihedron {.
    constructor, importcpp: "GeomFill_DiscreteTrihedron(@)",
    header: "GeomFill_DiscreteTrihedron.hxx".}
proc Copy*(this: GeomFill_DiscreteTrihedron): handle[GeomFill_TrihedronLaw] {.
    noSideEffect, importcpp: "Copy", header: "GeomFill_DiscreteTrihedron.hxx".}
proc Init*(this: var GeomFill_DiscreteTrihedron) {.importcpp: "Init",
    header: "GeomFill_DiscreteTrihedron.hxx".}
proc SetCurve*(this: var GeomFill_DiscreteTrihedron; C: handle[Adaptor3d_HCurve]) {.
    importcpp: "SetCurve", header: "GeomFill_DiscreteTrihedron.hxx".}
proc D0*(this: var GeomFill_DiscreteTrihedron; Param: Standard_Real;
        Tangent: var gp_Vec; Normal: var gp_Vec; BiNormal: var gp_Vec): Standard_Boolean {.
    importcpp: "D0", header: "GeomFill_DiscreteTrihedron.hxx".}
proc D1*(this: var GeomFill_DiscreteTrihedron; Param: Standard_Real;
        Tangent: var gp_Vec; DTangent: var gp_Vec; Normal: var gp_Vec;
        DNormal: var gp_Vec; BiNormal: var gp_Vec; DBiNormal: var gp_Vec): Standard_Boolean {.
    importcpp: "D1", header: "GeomFill_DiscreteTrihedron.hxx".}
proc D2*(this: var GeomFill_DiscreteTrihedron; Param: Standard_Real;
        Tangent: var gp_Vec; DTangent: var gp_Vec; D2Tangent: var gp_Vec;
        Normal: var gp_Vec; DNormal: var gp_Vec; D2Normal: var gp_Vec;
        BiNormal: var gp_Vec; DBiNormal: var gp_Vec; D2BiNormal: var gp_Vec): Standard_Boolean {.
    importcpp: "D2", header: "GeomFill_DiscreteTrihedron.hxx".}
proc NbIntervals*(this: GeomFill_DiscreteTrihedron; S: GeomAbs_Shape): Standard_Integer {.
    noSideEffect, importcpp: "NbIntervals",
    header: "GeomFill_DiscreteTrihedron.hxx".}
proc Intervals*(this: GeomFill_DiscreteTrihedron; T: var TColStd_Array1OfReal;
               S: GeomAbs_Shape) {.noSideEffect, importcpp: "Intervals",
                                 header: "GeomFill_DiscreteTrihedron.hxx".}
proc GetAverageLaw*(this: var GeomFill_DiscreteTrihedron; ATangent: var gp_Vec;
                   ANormal: var gp_Vec; ABiNormal: var gp_Vec) {.
    importcpp: "GetAverageLaw", header: "GeomFill_DiscreteTrihedron.hxx".}
proc IsConstant*(this: GeomFill_DiscreteTrihedron): Standard_Boolean {.noSideEffect,
    importcpp: "IsConstant", header: "GeomFill_DiscreteTrihedron.hxx".}
proc IsOnlyBy3dCurve*(this: GeomFill_DiscreteTrihedron): Standard_Boolean {.
    noSideEffect, importcpp: "IsOnlyBy3dCurve",
    header: "GeomFill_DiscreteTrihedron.hxx".}
type
  GeomFill_DiscreteTrihedronbase_type* = GeomFill_TrihedronLaw

proc get_type_name*(): cstring {.importcpp: "GeomFill_DiscreteTrihedron::get_type_name(@)",
                              header: "GeomFill_DiscreteTrihedron.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "GeomFill_DiscreteTrihedron::get_type_descriptor(@)",
    header: "GeomFill_DiscreteTrihedron.hxx".}
proc DynamicType*(this: GeomFill_DiscreteTrihedron): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "GeomFill_DiscreteTrihedron.hxx".}