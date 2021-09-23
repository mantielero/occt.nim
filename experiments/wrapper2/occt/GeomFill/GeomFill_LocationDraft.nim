##  Created on: 1998-04-21
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
  ../Standard/Standard, ../Standard/Standard_Type, ../gp/gp_Mat, ../gp/gp_Dir,
  ../Standard/Standard_Real, ../Standard/Standard_Integer,
  ../TColgp/TColgp_HArray1OfPnt2d, ../Standard/Standard_Boolean,
  GeomFill_LocationLaw, ../TColgp/TColgp_Array1OfPnt2d,
  ../TColgp/TColgp_Array1OfVec2d, ../GeomAbs/GeomAbs_Shape,
  ../TColStd/TColStd_Array1OfReal

discard "forward decl of GeomFill_DraftTrihedron"
discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of Standard_NotImplemented"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_Dir"
discard "forward decl of gp_Mat"
discard "forward decl of GeomFill_LocationLaw"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Pnt"
discard "forward decl of GeomFill_LocationDraft"
discard "forward decl of GeomFill_LocationDraft"
type
  Handle_GeomFill_LocationDraft* = handle[GeomFill_LocationDraft]
  GeomFill_LocationDraft* {.importcpp: "GeomFill_LocationDraft",
                           header: "GeomFill_LocationDraft.hxx", bycopy.} = object of GeomFill_LocationLaw


proc constructGeomFill_LocationDraft*(Direction: gp_Dir; Angle: Standard_Real): GeomFill_LocationDraft {.
    constructor, importcpp: "GeomFill_LocationDraft(@)",
    header: "GeomFill_LocationDraft.hxx".}
proc SetStopSurf*(this: var GeomFill_LocationDraft; Surf: handle[Adaptor3d_HSurface]) {.
    importcpp: "SetStopSurf", header: "GeomFill_LocationDraft.hxx".}
proc SetAngle*(this: var GeomFill_LocationDraft; Angle: Standard_Real) {.
    importcpp: "SetAngle", header: "GeomFill_LocationDraft.hxx".}
proc SetCurve*(this: var GeomFill_LocationDraft; C: handle[Adaptor3d_HCurve]) {.
    importcpp: "SetCurve", header: "GeomFill_LocationDraft.hxx".}
proc GetCurve*(this: GeomFill_LocationDraft): handle[Adaptor3d_HCurve] {.
    noSideEffect, importcpp: "GetCurve", header: "GeomFill_LocationDraft.hxx".}
proc SetTrsf*(this: var GeomFill_LocationDraft; Transfo: gp_Mat) {.
    importcpp: "SetTrsf", header: "GeomFill_LocationDraft.hxx".}
proc Copy*(this: GeomFill_LocationDraft): handle[GeomFill_LocationLaw] {.
    noSideEffect, importcpp: "Copy", header: "GeomFill_LocationDraft.hxx".}
proc D0*(this: var GeomFill_LocationDraft; Param: Standard_Real; M: var gp_Mat;
        V: var gp_Vec): Standard_Boolean {.importcpp: "D0",
                                       header: "GeomFill_LocationDraft.hxx".}
proc D0*(this: var GeomFill_LocationDraft; Param: Standard_Real; M: var gp_Mat;
        V: var gp_Vec; Poles2d: var TColgp_Array1OfPnt2d): Standard_Boolean {.
    importcpp: "D0", header: "GeomFill_LocationDraft.hxx".}
proc D1*(this: var GeomFill_LocationDraft; Param: Standard_Real; M: var gp_Mat;
        V: var gp_Vec; DM: var gp_Mat; DV: var gp_Vec; Poles2d: var TColgp_Array1OfPnt2d;
        DPoles2d: var TColgp_Array1OfVec2d): Standard_Boolean {.importcpp: "D1",
    header: "GeomFill_LocationDraft.hxx".}
proc D2*(this: var GeomFill_LocationDraft; Param: Standard_Real; M: var gp_Mat;
        V: var gp_Vec; DM: var gp_Mat; DV: var gp_Vec; D2M: var gp_Mat; D2V: var gp_Vec;
        Poles2d: var TColgp_Array1OfPnt2d; DPoles2d: var TColgp_Array1OfVec2d;
        D2Poles2d: var TColgp_Array1OfVec2d): Standard_Boolean {.importcpp: "D2",
    header: "GeomFill_LocationDraft.hxx".}
proc HasFirstRestriction*(this: GeomFill_LocationDraft): Standard_Boolean {.
    noSideEffect, importcpp: "HasFirstRestriction",
    header: "GeomFill_LocationDraft.hxx".}
proc HasLastRestriction*(this: GeomFill_LocationDraft): Standard_Boolean {.
    noSideEffect, importcpp: "HasLastRestriction",
    header: "GeomFill_LocationDraft.hxx".}
proc TraceNumber*(this: GeomFill_LocationDraft): Standard_Integer {.noSideEffect,
    importcpp: "TraceNumber", header: "GeomFill_LocationDraft.hxx".}
proc NbIntervals*(this: GeomFill_LocationDraft; S: GeomAbs_Shape): Standard_Integer {.
    noSideEffect, importcpp: "NbIntervals", header: "GeomFill_LocationDraft.hxx".}
proc Intervals*(this: GeomFill_LocationDraft; T: var TColStd_Array1OfReal;
               S: GeomAbs_Shape) {.noSideEffect, importcpp: "Intervals",
                                 header: "GeomFill_LocationDraft.hxx".}
proc SetInterval*(this: var GeomFill_LocationDraft; First: Standard_Real;
                 Last: Standard_Real) {.importcpp: "SetInterval",
                                      header: "GeomFill_LocationDraft.hxx".}
proc GetInterval*(this: GeomFill_LocationDraft; First: var Standard_Real;
                 Last: var Standard_Real) {.noSideEffect, importcpp: "GetInterval",
    header: "GeomFill_LocationDraft.hxx".}
proc GetDomain*(this: GeomFill_LocationDraft; First: var Standard_Real;
               Last: var Standard_Real) {.noSideEffect, importcpp: "GetDomain",
                                       header: "GeomFill_LocationDraft.hxx".}
proc Resolution*(this: GeomFill_LocationDraft; Index: Standard_Integer;
                Tol: Standard_Real; TolU: var Standard_Real; TolV: var Standard_Real) {.
    noSideEffect, importcpp: "Resolution", header: "GeomFill_LocationDraft.hxx".}
proc GetMaximalNorm*(this: var GeomFill_LocationDraft): Standard_Real {.
    importcpp: "GetMaximalNorm", header: "GeomFill_LocationDraft.hxx".}
proc GetAverageLaw*(this: var GeomFill_LocationDraft; AM: var gp_Mat; AV: var gp_Vec) {.
    importcpp: "GetAverageLaw", header: "GeomFill_LocationDraft.hxx".}
proc IsTranslation*(this: GeomFill_LocationDraft; Error: var Standard_Real): Standard_Boolean {.
    noSideEffect, importcpp: "IsTranslation", header: "GeomFill_LocationDraft.hxx".}
proc IsRotation*(this: GeomFill_LocationDraft; Error: var Standard_Real): Standard_Boolean {.
    noSideEffect, importcpp: "IsRotation", header: "GeomFill_LocationDraft.hxx".}
proc Rotation*(this: GeomFill_LocationDraft; Center: var gp_Pnt) {.noSideEffect,
    importcpp: "Rotation", header: "GeomFill_LocationDraft.hxx".}
proc IsIntersec*(this: GeomFill_LocationDraft): Standard_Boolean {.noSideEffect,
    importcpp: "IsIntersec", header: "GeomFill_LocationDraft.hxx".}
proc Direction*(this: GeomFill_LocationDraft): gp_Dir {.noSideEffect,
    importcpp: "Direction", header: "GeomFill_LocationDraft.hxx".}
type
  GeomFill_LocationDraftbase_type* = GeomFill_LocationLaw

proc get_type_name*(): cstring {.importcpp: "GeomFill_LocationDraft::get_type_name(@)",
                              header: "GeomFill_LocationDraft.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "GeomFill_LocationDraft::get_type_descriptor(@)",
    header: "GeomFill_LocationDraft.hxx".}
proc DynamicType*(this: GeomFill_LocationDraft): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "GeomFill_LocationDraft.hxx".}