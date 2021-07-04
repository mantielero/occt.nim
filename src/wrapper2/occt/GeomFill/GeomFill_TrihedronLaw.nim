##  Created on: 1997-12-02
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Transient,
  GeomFill_PipeError, ../Standard/Standard_Boolean, ../Standard/Standard_Real,
  ../Standard/Standard_Integer, ../GeomAbs/GeomAbs_Shape,
  ../TColStd/TColStd_Array1OfReal

discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_NotImplemented"
discard "forward decl of gp_Vec"
discard "forward decl of GeomFill_TrihedronLaw"
discard "forward decl of GeomFill_TrihedronLaw"
type
  Handle_GeomFill_TrihedronLaw* = handle[GeomFill_TrihedronLaw]

## ! To define Trihedron along one Curve

type
  GeomFill_TrihedronLaw* {.importcpp: "GeomFill_TrihedronLaw",
                          header: "GeomFill_TrihedronLaw.hxx", bycopy.} = object of Standard_Transient


proc SetCurve*(this: var GeomFill_TrihedronLaw; C: handle[Adaptor3d_HCurve]) {.
    importcpp: "SetCurve", header: "GeomFill_TrihedronLaw.hxx".}
proc Copy*(this: GeomFill_TrihedronLaw): handle[GeomFill_TrihedronLaw] {.
    noSideEffect, importcpp: "Copy", header: "GeomFill_TrihedronLaw.hxx".}
proc ErrorStatus*(this: GeomFill_TrihedronLaw): GeomFill_PipeError {.noSideEffect,
    importcpp: "ErrorStatus", header: "GeomFill_TrihedronLaw.hxx".}
proc D0*(this: var GeomFill_TrihedronLaw; Param: Standard_Real; Tangent: var gp_Vec;
        Normal: var gp_Vec; BiNormal: var gp_Vec): Standard_Boolean {.importcpp: "D0",
    header: "GeomFill_TrihedronLaw.hxx".}
proc D1*(this: var GeomFill_TrihedronLaw; Param: Standard_Real; Tangent: var gp_Vec;
        DTangent: var gp_Vec; Normal: var gp_Vec; DNormal: var gp_Vec;
        BiNormal: var gp_Vec; DBiNormal: var gp_Vec): Standard_Boolean {.
    importcpp: "D1", header: "GeomFill_TrihedronLaw.hxx".}
proc D2*(this: var GeomFill_TrihedronLaw; Param: Standard_Real; Tangent: var gp_Vec;
        DTangent: var gp_Vec; D2Tangent: var gp_Vec; Normal: var gp_Vec;
        DNormal: var gp_Vec; D2Normal: var gp_Vec; BiNormal: var gp_Vec;
        DBiNormal: var gp_Vec; D2BiNormal: var gp_Vec): Standard_Boolean {.
    importcpp: "D2", header: "GeomFill_TrihedronLaw.hxx".}
proc NbIntervals*(this: GeomFill_TrihedronLaw; S: GeomAbs_Shape): Standard_Integer {.
    noSideEffect, importcpp: "NbIntervals", header: "GeomFill_TrihedronLaw.hxx".}
proc Intervals*(this: GeomFill_TrihedronLaw; T: var TColStd_Array1OfReal;
               S: GeomAbs_Shape) {.noSideEffect, importcpp: "Intervals",
                                 header: "GeomFill_TrihedronLaw.hxx".}
proc SetInterval*(this: var GeomFill_TrihedronLaw; First: Standard_Real;
                 Last: Standard_Real) {.importcpp: "SetInterval",
                                      header: "GeomFill_TrihedronLaw.hxx".}
proc GetInterval*(this: var GeomFill_TrihedronLaw; First: var Standard_Real;
                 Last: var Standard_Real) {.importcpp: "GetInterval",
    header: "GeomFill_TrihedronLaw.hxx".}
proc GetAverageLaw*(this: var GeomFill_TrihedronLaw; ATangent: var gp_Vec;
                   ANormal: var gp_Vec; ABiNormal: var gp_Vec) {.
    importcpp: "GetAverageLaw", header: "GeomFill_TrihedronLaw.hxx".}
proc IsConstant*(this: GeomFill_TrihedronLaw): Standard_Boolean {.noSideEffect,
    importcpp: "IsConstant", header: "GeomFill_TrihedronLaw.hxx".}
proc IsOnlyBy3dCurve*(this: GeomFill_TrihedronLaw): Standard_Boolean {.noSideEffect,
    importcpp: "IsOnlyBy3dCurve", header: "GeomFill_TrihedronLaw.hxx".}
type
  GeomFill_TrihedronLawbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "GeomFill_TrihedronLaw::get_type_name(@)",
                              header: "GeomFill_TrihedronLaw.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "GeomFill_TrihedronLaw::get_type_descriptor(@)",
    header: "GeomFill_TrihedronLaw.hxx".}
proc DynamicType*(this: GeomFill_TrihedronLaw): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "GeomFill_TrihedronLaw.hxx".}