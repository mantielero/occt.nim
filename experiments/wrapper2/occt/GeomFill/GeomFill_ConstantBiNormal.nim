##  Created on: 1997-12-09
##  Created by: Philippe MANGIN
##  Copyright (c) 1997-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, ../gp/gp_Vec,
  GeomFill_TrihedronLaw, ../Standard/Standard_Boolean, ../Standard/Standard_Real,
  ../Standard/Standard_Integer, ../GeomAbs/GeomAbs_Shape,
  ../TColStd/TColStd_Array1OfReal

discard "forward decl of GeomFill_Frenet"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of gp_Dir"
discard "forward decl of GeomFill_TrihedronLaw"
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of gp_Vec"
discard "forward decl of GeomFill_ConstantBiNormal"
discard "forward decl of GeomFill_ConstantBiNormal"
type
  Handle_GeomFill_ConstantBiNormal* = handle[GeomFill_ConstantBiNormal]

## ! Defined an Trihedron Law  where the BiNormal, is fixed

type
  GeomFill_ConstantBiNormal* {.importcpp: "GeomFill_ConstantBiNormal",
                              header: "GeomFill_ConstantBiNormal.hxx", bycopy.} = object of GeomFill_TrihedronLaw


proc constructGeomFill_ConstantBiNormal*(BiNormal: gp_Dir): GeomFill_ConstantBiNormal {.
    constructor, importcpp: "GeomFill_ConstantBiNormal(@)",
    header: "GeomFill_ConstantBiNormal.hxx".}
proc Copy*(this: GeomFill_ConstantBiNormal): handle[GeomFill_TrihedronLaw] {.
    noSideEffect, importcpp: "Copy", header: "GeomFill_ConstantBiNormal.hxx".}
proc SetCurve*(this: var GeomFill_ConstantBiNormal; C: handle[Adaptor3d_HCurve]) {.
    importcpp: "SetCurve", header: "GeomFill_ConstantBiNormal.hxx".}
proc D0*(this: var GeomFill_ConstantBiNormal; Param: Standard_Real;
        Tangent: var gp_Vec; Normal: var gp_Vec; BiNormal: var gp_Vec): Standard_Boolean {.
    importcpp: "D0", header: "GeomFill_ConstantBiNormal.hxx".}
proc D1*(this: var GeomFill_ConstantBiNormal; Param: Standard_Real;
        Tangent: var gp_Vec; DTangent: var gp_Vec; Normal: var gp_Vec;
        DNormal: var gp_Vec; BiNormal: var gp_Vec; DBiNormal: var gp_Vec): Standard_Boolean {.
    importcpp: "D1", header: "GeomFill_ConstantBiNormal.hxx".}
proc D2*(this: var GeomFill_ConstantBiNormal; Param: Standard_Real;
        Tangent: var gp_Vec; DTangent: var gp_Vec; D2Tangent: var gp_Vec;
        Normal: var gp_Vec; DNormal: var gp_Vec; D2Normal: var gp_Vec;
        BiNormal: var gp_Vec; DBiNormal: var gp_Vec; D2BiNormal: var gp_Vec): Standard_Boolean {.
    importcpp: "D2", header: "GeomFill_ConstantBiNormal.hxx".}
proc NbIntervals*(this: GeomFill_ConstantBiNormal; S: GeomAbs_Shape): Standard_Integer {.
    noSideEffect, importcpp: "NbIntervals", header: "GeomFill_ConstantBiNormal.hxx".}
proc Intervals*(this: GeomFill_ConstantBiNormal; T: var TColStd_Array1OfReal;
               S: GeomAbs_Shape) {.noSideEffect, importcpp: "Intervals",
                                 header: "GeomFill_ConstantBiNormal.hxx".}
proc GetAverageLaw*(this: var GeomFill_ConstantBiNormal; ATangent: var gp_Vec;
                   ANormal: var gp_Vec; ABiNormal: var gp_Vec) {.
    importcpp: "GetAverageLaw", header: "GeomFill_ConstantBiNormal.hxx".}
proc IsConstant*(this: GeomFill_ConstantBiNormal): Standard_Boolean {.noSideEffect,
    importcpp: "IsConstant", header: "GeomFill_ConstantBiNormal.hxx".}
proc IsOnlyBy3dCurve*(this: GeomFill_ConstantBiNormal): Standard_Boolean {.
    noSideEffect, importcpp: "IsOnlyBy3dCurve",
    header: "GeomFill_ConstantBiNormal.hxx".}
type
  GeomFill_ConstantBiNormalbase_type* = GeomFill_TrihedronLaw

proc get_type_name*(): cstring {.importcpp: "GeomFill_ConstantBiNormal::get_type_name(@)",
                              header: "GeomFill_ConstantBiNormal.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "GeomFill_ConstantBiNormal::get_type_descriptor(@)",
    header: "GeomFill_ConstantBiNormal.hxx".}
proc DynamicType*(this: GeomFill_ConstantBiNormal): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "GeomFill_ConstantBiNormal.hxx".}