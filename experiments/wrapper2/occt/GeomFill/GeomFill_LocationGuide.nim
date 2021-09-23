##  Created on: 1998-07-08
##  Created by: Stephanie HUMEAU
##  Copyright (c) 1998-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type,
  ../TColgp/TColgp_HArray2OfPnt2d, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean, ../Standard/Standard_Real, ../gp/gp_Mat,
  ../math/math_Vector, GeomFill_PipeError, GeomFill_LocationLaw,
  ../TColgp/TColgp_Array1OfPnt2d, ../TColgp/TColgp_Array1OfVec2d,
  ../GeomAbs/GeomAbs_Shape, ../TColStd/TColStd_Array1OfReal,
  ../TColgp/TColgp_HArray1OfPnt2d

discard "forward decl of GeomFill_TrihedronWithGuide"
discard "forward decl of GeomFill_SectionLaw"
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of Standard_NotImplemented"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_Mat"
discard "forward decl of GeomFill_LocationLaw"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Pnt"
discard "forward decl of Geom_Curve"
discard "forward decl of GeomFill_LocationGuide"
discard "forward decl of GeomFill_LocationGuide"
type
  Handle_GeomFill_LocationGuide* = handle[GeomFill_LocationGuide]
  GeomFill_LocationGuide* {.importcpp: "GeomFill_LocationGuide",
                           header: "GeomFill_LocationGuide.hxx", bycopy.} = object of GeomFill_LocationLaw


proc constructGeomFill_LocationGuide*(Triedre: handle[GeomFill_TrihedronWithGuide]): GeomFill_LocationGuide {.
    constructor, importcpp: "GeomFill_LocationGuide(@)",
    header: "GeomFill_LocationGuide.hxx".}
proc Set*(this: var GeomFill_LocationGuide; Section: handle[GeomFill_SectionLaw];
         rotat: Standard_Boolean; SFirst: Standard_Real; SLast: Standard_Real;
         PrecAngle: Standard_Real; LastAngle: var Standard_Real) {.importcpp: "Set",
    header: "GeomFill_LocationGuide.hxx".}
proc EraseRotation*(this: var GeomFill_LocationGuide) {.importcpp: "EraseRotation",
    header: "GeomFill_LocationGuide.hxx".}
proc SetCurve*(this: var GeomFill_LocationGuide; C: handle[Adaptor3d_HCurve]) {.
    importcpp: "SetCurve", header: "GeomFill_LocationGuide.hxx".}
proc GetCurve*(this: GeomFill_LocationGuide): handle[Adaptor3d_HCurve] {.
    noSideEffect, importcpp: "GetCurve", header: "GeomFill_LocationGuide.hxx".}
proc SetTrsf*(this: var GeomFill_LocationGuide; Transfo: gp_Mat) {.
    importcpp: "SetTrsf", header: "GeomFill_LocationGuide.hxx".}
proc Copy*(this: GeomFill_LocationGuide): handle[GeomFill_LocationLaw] {.
    noSideEffect, importcpp: "Copy", header: "GeomFill_LocationGuide.hxx".}
proc D0*(this: var GeomFill_LocationGuide; Param: Standard_Real; M: var gp_Mat;
        V: var gp_Vec): Standard_Boolean {.importcpp: "D0",
                                       header: "GeomFill_LocationGuide.hxx".}
proc D0*(this: var GeomFill_LocationGuide; Param: Standard_Real; M: var gp_Mat;
        V: var gp_Vec; Poles2d: var TColgp_Array1OfPnt2d): Standard_Boolean {.
    importcpp: "D0", header: "GeomFill_LocationGuide.hxx".}
proc D1*(this: var GeomFill_LocationGuide; Param: Standard_Real; M: var gp_Mat;
        V: var gp_Vec; DM: var gp_Mat; DV: var gp_Vec; Poles2d: var TColgp_Array1OfPnt2d;
        DPoles2d: var TColgp_Array1OfVec2d): Standard_Boolean {.importcpp: "D1",
    header: "GeomFill_LocationGuide.hxx".}
proc D2*(this: var GeomFill_LocationGuide; Param: Standard_Real; M: var gp_Mat;
        V: var gp_Vec; DM: var gp_Mat; DV: var gp_Vec; D2M: var gp_Mat; D2V: var gp_Vec;
        Poles2d: var TColgp_Array1OfPnt2d; DPoles2d: var TColgp_Array1OfVec2d;
        D2Poles2d: var TColgp_Array1OfVec2d): Standard_Boolean {.importcpp: "D2",
    header: "GeomFill_LocationGuide.hxx".}
proc HasFirstRestriction*(this: GeomFill_LocationGuide): Standard_Boolean {.
    noSideEffect, importcpp: "HasFirstRestriction",
    header: "GeomFill_LocationGuide.hxx".}
proc HasLastRestriction*(this: GeomFill_LocationGuide): Standard_Boolean {.
    noSideEffect, importcpp: "HasLastRestriction",
    header: "GeomFill_LocationGuide.hxx".}
proc TraceNumber*(this: GeomFill_LocationGuide): Standard_Integer {.noSideEffect,
    importcpp: "TraceNumber", header: "GeomFill_LocationGuide.hxx".}
proc ErrorStatus*(this: GeomFill_LocationGuide): GeomFill_PipeError {.noSideEffect,
    importcpp: "ErrorStatus", header: "GeomFill_LocationGuide.hxx".}
proc NbIntervals*(this: GeomFill_LocationGuide; S: GeomAbs_Shape): Standard_Integer {.
    noSideEffect, importcpp: "NbIntervals", header: "GeomFill_LocationGuide.hxx".}
proc Intervals*(this: GeomFill_LocationGuide; T: var TColStd_Array1OfReal;
               S: GeomAbs_Shape) {.noSideEffect, importcpp: "Intervals",
                                 header: "GeomFill_LocationGuide.hxx".}
proc SetInterval*(this: var GeomFill_LocationGuide; First: Standard_Real;
                 Last: Standard_Real) {.importcpp: "SetInterval",
                                      header: "GeomFill_LocationGuide.hxx".}
proc GetInterval*(this: GeomFill_LocationGuide; First: var Standard_Real;
                 Last: var Standard_Real) {.noSideEffect, importcpp: "GetInterval",
    header: "GeomFill_LocationGuide.hxx".}
proc GetDomain*(this: GeomFill_LocationGuide; First: var Standard_Real;
               Last: var Standard_Real) {.noSideEffect, importcpp: "GetDomain",
                                       header: "GeomFill_LocationGuide.hxx".}
proc SetTolerance*(this: var GeomFill_LocationGuide; Tol3d: Standard_Real;
                  Tol2d: Standard_Real) {.importcpp: "SetTolerance",
                                        header: "GeomFill_LocationGuide.hxx".}
proc Resolution*(this: GeomFill_LocationGuide; Index: Standard_Integer;
                Tol: Standard_Real; TolU: var Standard_Real; TolV: var Standard_Real) {.
    noSideEffect, importcpp: "Resolution", header: "GeomFill_LocationGuide.hxx".}
proc GetMaximalNorm*(this: var GeomFill_LocationGuide): Standard_Real {.
    importcpp: "GetMaximalNorm", header: "GeomFill_LocationGuide.hxx".}
proc GetAverageLaw*(this: var GeomFill_LocationGuide; AM: var gp_Mat; AV: var gp_Vec) {.
    importcpp: "GetAverageLaw", header: "GeomFill_LocationGuide.hxx".}
proc IsTranslation*(this: GeomFill_LocationGuide; Error: var Standard_Real): Standard_Boolean {.
    noSideEffect, importcpp: "IsTranslation", header: "GeomFill_LocationGuide.hxx".}
proc IsRotation*(this: GeomFill_LocationGuide; Error: var Standard_Real): Standard_Boolean {.
    noSideEffect, importcpp: "IsRotation", header: "GeomFill_LocationGuide.hxx".}
proc Rotation*(this: GeomFill_LocationGuide; Center: var gp_Pnt) {.noSideEffect,
    importcpp: "Rotation", header: "GeomFill_LocationGuide.hxx".}
proc Section*(this: GeomFill_LocationGuide): handle[Geom_Curve] {.noSideEffect,
    importcpp: "Section", header: "GeomFill_LocationGuide.hxx".}
proc Guide*(this: GeomFill_LocationGuide): handle[Adaptor3d_HCurve] {.noSideEffect,
    importcpp: "Guide", header: "GeomFill_LocationGuide.hxx".}
proc SetOrigine*(this: var GeomFill_LocationGuide; Param1: Standard_Real;
                Param2: Standard_Real) {.importcpp: "SetOrigine",
                                       header: "GeomFill_LocationGuide.hxx".}
proc ComputeAutomaticLaw*(this: GeomFill_LocationGuide;
                         ParAndRad: var handle[TColgp_HArray1OfPnt2d]): GeomFill_PipeError {.
    noSideEffect, importcpp: "ComputeAutomaticLaw",
    header: "GeomFill_LocationGuide.hxx".}
type
  GeomFill_LocationGuidebase_type* = GeomFill_LocationLaw

proc get_type_name*(): cstring {.importcpp: "GeomFill_LocationGuide::get_type_name(@)",
                              header: "GeomFill_LocationGuide.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "GeomFill_LocationGuide::get_type_descriptor(@)",
    header: "GeomFill_LocationGuide.hxx".}
proc DynamicType*(this: GeomFill_LocationGuide): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "GeomFill_LocationGuide.hxx".}