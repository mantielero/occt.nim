##  Created on: 1997-11-20
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
  ../Standard/Standard_Boolean, ../Standard/Standard_Real,
  ../TColgp/TColgp_Array1OfPnt2d, ../TColgp/TColgp_Array1OfVec2d,
  ../Standard/Standard_Integer, GeomFill_PipeError, ../GeomAbs/GeomAbs_Shape,
  ../TColStd/TColStd_Array1OfReal

discard "forward decl of Standard_NotImplemented"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of gp_Mat"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Pnt"
discard "forward decl of GeomFill_LocationLaw"
discard "forward decl of GeomFill_LocationLaw"
type
  Handle_GeomFill_LocationLaw* = handle[GeomFill_LocationLaw]

## ! To define location  law in Sweeping location is --
## ! defined   by an  Matrix  M and  an Vector  V,  and
## ! transform an point P in MP+V.

type
  GeomFill_LocationLaw* {.importcpp: "GeomFill_LocationLaw",
                         header: "GeomFill_LocationLaw.hxx", bycopy.} = object of Standard_Transient


proc SetCurve*(this: var GeomFill_LocationLaw; C: handle[Adaptor3d_HCurve]) {.
    importcpp: "SetCurve", header: "GeomFill_LocationLaw.hxx".}
proc GetCurve*(this: GeomFill_LocationLaw): handle[Adaptor3d_HCurve] {.noSideEffect,
    importcpp: "GetCurve", header: "GeomFill_LocationLaw.hxx".}
proc SetTrsf*(this: var GeomFill_LocationLaw; Transfo: gp_Mat) {.importcpp: "SetTrsf",
    header: "GeomFill_LocationLaw.hxx".}
proc Copy*(this: GeomFill_LocationLaw): handle[GeomFill_LocationLaw] {.noSideEffect,
    importcpp: "Copy", header: "GeomFill_LocationLaw.hxx".}
proc D0*(this: var GeomFill_LocationLaw; Param: Standard_Real; M: var gp_Mat;
        V: var gp_Vec): Standard_Boolean {.importcpp: "D0",
                                       header: "GeomFill_LocationLaw.hxx".}
proc D0*(this: var GeomFill_LocationLaw; Param: Standard_Real; M: var gp_Mat;
        V: var gp_Vec; Poles2d: var TColgp_Array1OfPnt2d): Standard_Boolean {.
    importcpp: "D0", header: "GeomFill_LocationLaw.hxx".}
proc D1*(this: var GeomFill_LocationLaw; Param: Standard_Real; M: var gp_Mat;
        V: var gp_Vec; DM: var gp_Mat; DV: var gp_Vec; Poles2d: var TColgp_Array1OfPnt2d;
        DPoles2d: var TColgp_Array1OfVec2d): Standard_Boolean {.importcpp: "D1",
    header: "GeomFill_LocationLaw.hxx".}
proc D2*(this: var GeomFill_LocationLaw; Param: Standard_Real; M: var gp_Mat;
        V: var gp_Vec; DM: var gp_Mat; DV: var gp_Vec; D2M: var gp_Mat; D2V: var gp_Vec;
        Poles2d: var TColgp_Array1OfPnt2d; DPoles2d: var TColgp_Array1OfVec2d;
        D2Poles2d: var TColgp_Array1OfVec2d): Standard_Boolean {.importcpp: "D2",
    header: "GeomFill_LocationLaw.hxx".}
proc Nb2dCurves*(this: GeomFill_LocationLaw): Standard_Integer {.noSideEffect,
    importcpp: "Nb2dCurves", header: "GeomFill_LocationLaw.hxx".}
proc HasFirstRestriction*(this: GeomFill_LocationLaw): Standard_Boolean {.
    noSideEffect, importcpp: "HasFirstRestriction",
    header: "GeomFill_LocationLaw.hxx".}
proc HasLastRestriction*(this: GeomFill_LocationLaw): Standard_Boolean {.
    noSideEffect, importcpp: "HasLastRestriction",
    header: "GeomFill_LocationLaw.hxx".}
proc TraceNumber*(this: GeomFill_LocationLaw): Standard_Integer {.noSideEffect,
    importcpp: "TraceNumber", header: "GeomFill_LocationLaw.hxx".}
proc ErrorStatus*(this: GeomFill_LocationLaw): GeomFill_PipeError {.noSideEffect,
    importcpp: "ErrorStatus", header: "GeomFill_LocationLaw.hxx".}
proc NbIntervals*(this: GeomFill_LocationLaw; S: GeomAbs_Shape): Standard_Integer {.
    noSideEffect, importcpp: "NbIntervals", header: "GeomFill_LocationLaw.hxx".}
proc Intervals*(this: GeomFill_LocationLaw; T: var TColStd_Array1OfReal;
               S: GeomAbs_Shape) {.noSideEffect, importcpp: "Intervals",
                                 header: "GeomFill_LocationLaw.hxx".}
proc SetInterval*(this: var GeomFill_LocationLaw; First: Standard_Real;
                 Last: Standard_Real) {.importcpp: "SetInterval",
                                      header: "GeomFill_LocationLaw.hxx".}
proc GetInterval*(this: GeomFill_LocationLaw; First: var Standard_Real;
                 Last: var Standard_Real) {.noSideEffect, importcpp: "GetInterval",
    header: "GeomFill_LocationLaw.hxx".}
proc GetDomain*(this: GeomFill_LocationLaw; First: var Standard_Real;
               Last: var Standard_Real) {.noSideEffect, importcpp: "GetDomain",
                                       header: "GeomFill_LocationLaw.hxx".}
proc Resolution*(this: GeomFill_LocationLaw; Index: Standard_Integer;
                Tol: Standard_Real; TolU: var Standard_Real; TolV: var Standard_Real) {.
    noSideEffect, importcpp: "Resolution", header: "GeomFill_LocationLaw.hxx".}
proc SetTolerance*(this: var GeomFill_LocationLaw; Tol3d: Standard_Real;
                  Tol2d: Standard_Real) {.importcpp: "SetTolerance",
                                        header: "GeomFill_LocationLaw.hxx".}
proc GetMaximalNorm*(this: var GeomFill_LocationLaw): Standard_Real {.
    importcpp: "GetMaximalNorm", header: "GeomFill_LocationLaw.hxx".}
proc GetAverageLaw*(this: var GeomFill_LocationLaw; AM: var gp_Mat; AV: var gp_Vec) {.
    importcpp: "GetAverageLaw", header: "GeomFill_LocationLaw.hxx".}
proc IsTranslation*(this: GeomFill_LocationLaw; Error: var Standard_Real): Standard_Boolean {.
    noSideEffect, importcpp: "IsTranslation", header: "GeomFill_LocationLaw.hxx".}
proc IsRotation*(this: GeomFill_LocationLaw; Error: var Standard_Real): Standard_Boolean {.
    noSideEffect, importcpp: "IsRotation", header: "GeomFill_LocationLaw.hxx".}
proc Rotation*(this: GeomFill_LocationLaw; Center: var gp_Pnt) {.noSideEffect,
    importcpp: "Rotation", header: "GeomFill_LocationLaw.hxx".}
type
  GeomFill_LocationLawbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "GeomFill_LocationLaw::get_type_name(@)",
                              header: "GeomFill_LocationLaw.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "GeomFill_LocationLaw::get_type_descriptor(@)",
    header: "GeomFill_LocationLaw.hxx".}
proc DynamicType*(this: GeomFill_LocationLaw): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "GeomFill_LocationLaw.hxx".}