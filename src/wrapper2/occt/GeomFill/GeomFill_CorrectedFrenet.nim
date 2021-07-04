##  Created on: 1997-12-19
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
  ../Standard/Standard_Boolean, ../TColStd/TColStd_HArray1OfReal,
  ../TColgp/TColgp_HArray1OfVec, GeomFill_TrihedronLaw, ../Standard/Standard_Real,
  ../TColStd/TColStd_SequenceOfReal, ../TColgp/TColgp_SequenceOfVec,
  ../Standard/Standard_Integer, ../GeomAbs/GeomAbs_Shape,
  ../TColStd/TColStd_Array1OfReal, GeomFill_Trihedron

discard "forward decl of GeomFill_Frenet"
discard "forward decl of Law_Function"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of GeomFill_TrihedronLaw"
discard "forward decl of gp_Vec"
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of GeomFill_CorrectedFrenet"
discard "forward decl of GeomFill_CorrectedFrenet"
type
  Handle_GeomFill_CorrectedFrenet* = handle[GeomFill_CorrectedFrenet]

## ! Defined an Corrected Frenet  Trihedron  Law It is
## ! like Frenet with an Torsion's minimization

type
  GeomFill_CorrectedFrenet* {.importcpp: "GeomFill_CorrectedFrenet",
                             header: "GeomFill_CorrectedFrenet.hxx", bycopy.} = object of GeomFill_TrihedronLaw


proc constructGeomFill_CorrectedFrenet*(): GeomFill_CorrectedFrenet {.constructor,
    importcpp: "GeomFill_CorrectedFrenet(@)",
    header: "GeomFill_CorrectedFrenet.hxx".}
proc constructGeomFill_CorrectedFrenet*(ForEvaluation: Standard_Boolean): GeomFill_CorrectedFrenet {.
    constructor, importcpp: "GeomFill_CorrectedFrenet(@)",
    header: "GeomFill_CorrectedFrenet.hxx".}
proc Copy*(this: GeomFill_CorrectedFrenet): handle[GeomFill_TrihedronLaw] {.
    noSideEffect, importcpp: "Copy", header: "GeomFill_CorrectedFrenet.hxx".}
proc SetCurve*(this: var GeomFill_CorrectedFrenet; C: handle[Adaptor3d_HCurve]) {.
    importcpp: "SetCurve", header: "GeomFill_CorrectedFrenet.hxx".}
proc SetInterval*(this: var GeomFill_CorrectedFrenet; First: Standard_Real;
                 Last: Standard_Real) {.importcpp: "SetInterval",
                                      header: "GeomFill_CorrectedFrenet.hxx".}
proc D0*(this: var GeomFill_CorrectedFrenet; Param: Standard_Real;
        Tangent: var gp_Vec; Normal: var gp_Vec; BiNormal: var gp_Vec): Standard_Boolean {.
    importcpp: "D0", header: "GeomFill_CorrectedFrenet.hxx".}
proc D1*(this: var GeomFill_CorrectedFrenet; Param: Standard_Real;
        Tangent: var gp_Vec; DTangent: var gp_Vec; Normal: var gp_Vec;
        DNormal: var gp_Vec; BiNormal: var gp_Vec; DBiNormal: var gp_Vec): Standard_Boolean {.
    importcpp: "D1", header: "GeomFill_CorrectedFrenet.hxx".}
proc D2*(this: var GeomFill_CorrectedFrenet; Param: Standard_Real;
        Tangent: var gp_Vec; DTangent: var gp_Vec; D2Tangent: var gp_Vec;
        Normal: var gp_Vec; DNormal: var gp_Vec; D2Normal: var gp_Vec;
        BiNormal: var gp_Vec; DBiNormal: var gp_Vec; D2BiNormal: var gp_Vec): Standard_Boolean {.
    importcpp: "D2", header: "GeomFill_CorrectedFrenet.hxx".}
proc NbIntervals*(this: GeomFill_CorrectedFrenet; S: GeomAbs_Shape): Standard_Integer {.
    noSideEffect, importcpp: "NbIntervals", header: "GeomFill_CorrectedFrenet.hxx".}
proc Intervals*(this: GeomFill_CorrectedFrenet; T: var TColStd_Array1OfReal;
               S: GeomAbs_Shape) {.noSideEffect, importcpp: "Intervals",
                                 header: "GeomFill_CorrectedFrenet.hxx".}
proc EvaluateBestMode*(this: var GeomFill_CorrectedFrenet): GeomFill_Trihedron {.
    importcpp: "EvaluateBestMode", header: "GeomFill_CorrectedFrenet.hxx".}
proc GetAverageLaw*(this: var GeomFill_CorrectedFrenet; ATangent: var gp_Vec;
                   ANormal: var gp_Vec; ABiNormal: var gp_Vec) {.
    importcpp: "GetAverageLaw", header: "GeomFill_CorrectedFrenet.hxx".}
proc IsConstant*(this: GeomFill_CorrectedFrenet): Standard_Boolean {.noSideEffect,
    importcpp: "IsConstant", header: "GeomFill_CorrectedFrenet.hxx".}
proc IsOnlyBy3dCurve*(this: GeomFill_CorrectedFrenet): Standard_Boolean {.
    noSideEffect, importcpp: "IsOnlyBy3dCurve",
    header: "GeomFill_CorrectedFrenet.hxx".}
type
  GeomFill_CorrectedFrenetbase_type* = GeomFill_TrihedronLaw

proc get_type_name*(): cstring {.importcpp: "GeomFill_CorrectedFrenet::get_type_name(@)",
                              header: "GeomFill_CorrectedFrenet.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "GeomFill_CorrectedFrenet::get_type_descriptor(@)",
    header: "GeomFill_CorrectedFrenet.hxx".}
proc DynamicType*(this: GeomFill_CorrectedFrenet): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "GeomFill_CorrectedFrenet.hxx".}