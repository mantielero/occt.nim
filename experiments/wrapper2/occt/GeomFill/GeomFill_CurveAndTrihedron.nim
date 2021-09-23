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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Boolean,
  ../gp/gp_Pnt, ../gp/gp_Vec, ../gp/gp_Mat, GeomFill_LocationLaw,
  ../Standard/Standard_Real, ../TColgp/TColgp_Array1OfPnt2d,
  ../TColgp/TColgp_Array1OfVec2d, ../Standard/Standard_Integer,
  ../GeomAbs/GeomAbs_Shape, ../TColStd/TColStd_Array1OfReal

discard "forward decl of GeomFill_TrihedronLaw"
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_Mat"
discard "forward decl of GeomFill_LocationLaw"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Pnt"
discard "forward decl of GeomFill_CurveAndTrihedron"
discard "forward decl of GeomFill_CurveAndTrihedron"
type
  Handle_GeomFill_CurveAndTrihedron* = handle[GeomFill_CurveAndTrihedron]

## ! Define location law with an TrihedronLaw and an
## ! curve
## ! Definition Location is :
## ! transformed  section   coordinates  in  (Curve(v)),
## ! (Normal(v),   BiNormal(v), Tangente(v))) systeme are
## ! the  same like section  shape coordinates in
## ! (O,(OX, OY, OZ)) systeme.

type
  GeomFill_CurveAndTrihedron* {.importcpp: "GeomFill_CurveAndTrihedron",
                               header: "GeomFill_CurveAndTrihedron.hxx", bycopy.} = object of GeomFill_LocationLaw


proc constructGeomFill_CurveAndTrihedron*(
    Trihedron: handle[GeomFill_TrihedronLaw]): GeomFill_CurveAndTrihedron {.
    constructor, importcpp: "GeomFill_CurveAndTrihedron(@)",
    header: "GeomFill_CurveAndTrihedron.hxx".}
proc SetCurve*(this: var GeomFill_CurveAndTrihedron; C: handle[Adaptor3d_HCurve]) {.
    importcpp: "SetCurve", header: "GeomFill_CurveAndTrihedron.hxx".}
proc GetCurve*(this: GeomFill_CurveAndTrihedron): handle[Adaptor3d_HCurve] {.
    noSideEffect, importcpp: "GetCurve", header: "GeomFill_CurveAndTrihedron.hxx".}
proc SetTrsf*(this: var GeomFill_CurveAndTrihedron; Transfo: gp_Mat) {.
    importcpp: "SetTrsf", header: "GeomFill_CurveAndTrihedron.hxx".}
proc Copy*(this: GeomFill_CurveAndTrihedron): handle[GeomFill_LocationLaw] {.
    noSideEffect, importcpp: "Copy", header: "GeomFill_CurveAndTrihedron.hxx".}
proc D0*(this: var GeomFill_CurveAndTrihedron; Param: Standard_Real; M: var gp_Mat;
        V: var gp_Vec): Standard_Boolean {.importcpp: "D0",
                                       header: "GeomFill_CurveAndTrihedron.hxx".}
proc D0*(this: var GeomFill_CurveAndTrihedron; Param: Standard_Real; M: var gp_Mat;
        V: var gp_Vec; Poles2d: var TColgp_Array1OfPnt2d): Standard_Boolean {.
    importcpp: "D0", header: "GeomFill_CurveAndTrihedron.hxx".}
proc D1*(this: var GeomFill_CurveAndTrihedron; Param: Standard_Real; M: var gp_Mat;
        V: var gp_Vec; DM: var gp_Mat; DV: var gp_Vec; Poles2d: var TColgp_Array1OfPnt2d;
        DPoles2d: var TColgp_Array1OfVec2d): Standard_Boolean {.importcpp: "D1",
    header: "GeomFill_CurveAndTrihedron.hxx".}
proc D2*(this: var GeomFill_CurveAndTrihedron; Param: Standard_Real; M: var gp_Mat;
        V: var gp_Vec; DM: var gp_Mat; DV: var gp_Vec; D2M: var gp_Mat; D2V: var gp_Vec;
        Poles2d: var TColgp_Array1OfPnt2d; DPoles2d: var TColgp_Array1OfVec2d;
        D2Poles2d: var TColgp_Array1OfVec2d): Standard_Boolean {.importcpp: "D2",
    header: "GeomFill_CurveAndTrihedron.hxx".}
proc NbIntervals*(this: GeomFill_CurveAndTrihedron; S: GeomAbs_Shape): Standard_Integer {.
    noSideEffect, importcpp: "NbIntervals",
    header: "GeomFill_CurveAndTrihedron.hxx".}
proc Intervals*(this: GeomFill_CurveAndTrihedron; T: var TColStd_Array1OfReal;
               S: GeomAbs_Shape) {.noSideEffect, importcpp: "Intervals",
                                 header: "GeomFill_CurveAndTrihedron.hxx".}
proc SetInterval*(this: var GeomFill_CurveAndTrihedron; First: Standard_Real;
                 Last: Standard_Real) {.importcpp: "SetInterval",
                                      header: "GeomFill_CurveAndTrihedron.hxx".}
proc GetInterval*(this: GeomFill_CurveAndTrihedron; First: var Standard_Real;
                 Last: var Standard_Real) {.noSideEffect, importcpp: "GetInterval",
    header: "GeomFill_CurveAndTrihedron.hxx".}
proc GetDomain*(this: GeomFill_CurveAndTrihedron; First: var Standard_Real;
               Last: var Standard_Real) {.noSideEffect, importcpp: "GetDomain",
                                       header: "GeomFill_CurveAndTrihedron.hxx".}
proc GetMaximalNorm*(this: var GeomFill_CurveAndTrihedron): Standard_Real {.
    importcpp: "GetMaximalNorm", header: "GeomFill_CurveAndTrihedron.hxx".}
proc GetAverageLaw*(this: var GeomFill_CurveAndTrihedron; AM: var gp_Mat;
                   AV: var gp_Vec) {.importcpp: "GetAverageLaw",
                                  header: "GeomFill_CurveAndTrihedron.hxx".}
proc IsTranslation*(this: GeomFill_CurveAndTrihedron; Error: var Standard_Real): Standard_Boolean {.
    noSideEffect, importcpp: "IsTranslation",
    header: "GeomFill_CurveAndTrihedron.hxx".}
proc IsRotation*(this: GeomFill_CurveAndTrihedron; Error: var Standard_Real): Standard_Boolean {.
    noSideEffect, importcpp: "IsRotation", header: "GeomFill_CurveAndTrihedron.hxx".}
proc Rotation*(this: GeomFill_CurveAndTrihedron; Center: var gp_Pnt) {.noSideEffect,
    importcpp: "Rotation", header: "GeomFill_CurveAndTrihedron.hxx".}
type
  GeomFill_CurveAndTrihedronbase_type* = GeomFill_LocationLaw

proc get_type_name*(): cstring {.importcpp: "GeomFill_CurveAndTrihedron::get_type_name(@)",
                              header: "GeomFill_CurveAndTrihedron.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "GeomFill_CurveAndTrihedron::get_type_descriptor(@)",
    header: "GeomFill_CurveAndTrihedron.hxx".}
proc DynamicType*(this: GeomFill_CurveAndTrihedron): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "GeomFill_CurveAndTrihedron.hxx".}