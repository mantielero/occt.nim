##  Created on: 1994-02-28
##  Created by: Bruno DUMORTIER
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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../gp/gp_Ax1, ../Standard/Standard_Real,
  ../Standard/Standard_Boolean, ../Standard/Standard_Integer,
  GeomFill_SequenceOfTrsf, ../TColStd/TColStd_Array1OfReal,
  ../TColStd/TColStd_Array1OfInteger, ../TColgp/TColgp_Array1OfPnt,
  ../TColgp/TColgp_Array1OfVec, ../TColgp/TColgp_Array1OfPnt2d,
  ../TColgp/TColgp_Array1OfVec2d

discard "forward decl of Geom_BSplineCurve"
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of Standard_RangeError"
discard "forward decl of Geom_Curve"
discard "forward decl of gp_Trsf"
type
  GeomFill_SweepSectionGenerator* {.importcpp: "GeomFill_SweepSectionGenerator", header: "GeomFill_SweepSectionGenerator.hxx",
                                   bycopy.} = object


proc constructGeomFill_SweepSectionGenerator*(): GeomFill_SweepSectionGenerator {.
    constructor, importcpp: "GeomFill_SweepSectionGenerator(@)",
    header: "GeomFill_SweepSectionGenerator.hxx".}
proc constructGeomFill_SweepSectionGenerator*(Path: handle[Geom_Curve];
    Radius: Standard_Real): GeomFill_SweepSectionGenerator {.constructor,
    importcpp: "GeomFill_SweepSectionGenerator(@)",
    header: "GeomFill_SweepSectionGenerator.hxx".}
proc constructGeomFill_SweepSectionGenerator*(Path: handle[Geom_Curve];
    FirstSect: handle[Geom_Curve]): GeomFill_SweepSectionGenerator {.constructor,
    importcpp: "GeomFill_SweepSectionGenerator(@)",
    header: "GeomFill_SweepSectionGenerator.hxx".}
proc constructGeomFill_SweepSectionGenerator*(Path: handle[Geom_Curve];
    FirstSect: handle[Geom_Curve]; LastSect: handle[Geom_Curve]): GeomFill_SweepSectionGenerator {.
    constructor, importcpp: "GeomFill_SweepSectionGenerator(@)",
    header: "GeomFill_SweepSectionGenerator.hxx".}
proc constructGeomFill_SweepSectionGenerator*(Path: handle[Geom_Curve];
    Curve1: handle[Geom_Curve]; Curve2: handle[Geom_Curve]; Radius: Standard_Real): GeomFill_SweepSectionGenerator {.
    constructor, importcpp: "GeomFill_SweepSectionGenerator(@)",
    header: "GeomFill_SweepSectionGenerator.hxx".}
proc constructGeomFill_SweepSectionGenerator*(Path: handle[Adaptor3d_HCurve];
    Curve1: handle[Adaptor3d_HCurve]; Curve2: handle[Adaptor3d_HCurve];
    Radius: Standard_Real): GeomFill_SweepSectionGenerator {.constructor,
    importcpp: "GeomFill_SweepSectionGenerator(@)",
    header: "GeomFill_SweepSectionGenerator.hxx".}
proc Init*(this: var GeomFill_SweepSectionGenerator; Path: handle[Geom_Curve];
          Radius: Standard_Real) {.importcpp: "Init",
                                 header: "GeomFill_SweepSectionGenerator.hxx".}
proc Init*(this: var GeomFill_SweepSectionGenerator; Path: handle[Geom_Curve];
          FirstSect: handle[Geom_Curve]) {.importcpp: "Init",
    header: "GeomFill_SweepSectionGenerator.hxx".}
proc Init*(this: var GeomFill_SweepSectionGenerator; Path: handle[Geom_Curve];
          FirstSect: handle[Geom_Curve]; LastSect: handle[Geom_Curve]) {.
    importcpp: "Init", header: "GeomFill_SweepSectionGenerator.hxx".}
proc Init*(this: var GeomFill_SweepSectionGenerator; Path: handle[Geom_Curve];
          Curve1: handle[Geom_Curve]; Curve2: handle[Geom_Curve];
          Radius: Standard_Real) {.importcpp: "Init",
                                 header: "GeomFill_SweepSectionGenerator.hxx".}
proc Init*(this: var GeomFill_SweepSectionGenerator; Path: handle[Adaptor3d_HCurve];
          Curve1: handle[Adaptor3d_HCurve]; Curve2: handle[Adaptor3d_HCurve];
          Radius: Standard_Real) {.importcpp: "Init",
                                 header: "GeomFill_SweepSectionGenerator.hxx".}
proc Perform*(this: var GeomFill_SweepSectionGenerator;
             Polynomial: Standard_Boolean = Standard_False) {.importcpp: "Perform",
    header: "GeomFill_SweepSectionGenerator.hxx".}
proc GetShape*(this: GeomFill_SweepSectionGenerator; NbPoles: var Standard_Integer;
              NbKnots: var Standard_Integer; Degree: var Standard_Integer;
              NbPoles2d: var Standard_Integer) {.noSideEffect,
    importcpp: "GetShape", header: "GeomFill_SweepSectionGenerator.hxx".}
proc Knots*(this: GeomFill_SweepSectionGenerator; TKnots: var TColStd_Array1OfReal) {.
    noSideEffect, importcpp: "Knots", header: "GeomFill_SweepSectionGenerator.hxx".}
proc Mults*(this: GeomFill_SweepSectionGenerator;
           TMults: var TColStd_Array1OfInteger) {.noSideEffect, importcpp: "Mults",
    header: "GeomFill_SweepSectionGenerator.hxx".}
proc NbSections*(this: GeomFill_SweepSectionGenerator): Standard_Integer {.
    noSideEffect, importcpp: "NbSections",
    header: "GeomFill_SweepSectionGenerator.hxx".}
proc Section*(this: GeomFill_SweepSectionGenerator; P: Standard_Integer;
             Poles: var TColgp_Array1OfPnt; DPoles: var TColgp_Array1OfVec;
             Poles2d: var TColgp_Array1OfPnt2d; DPoles2d: var TColgp_Array1OfVec2d;
             Weigths: var TColStd_Array1OfReal; DWeigths: var TColStd_Array1OfReal): Standard_Boolean {.
    noSideEffect, importcpp: "Section",
    header: "GeomFill_SweepSectionGenerator.hxx".}
proc Section*(this: GeomFill_SweepSectionGenerator; P: Standard_Integer;
             Poles: var TColgp_Array1OfPnt; Poles2d: var TColgp_Array1OfPnt2d;
             Weigths: var TColStd_Array1OfReal) {.noSideEffect,
    importcpp: "Section", header: "GeomFill_SweepSectionGenerator.hxx".}
proc Transformation*(this: GeomFill_SweepSectionGenerator; Index: Standard_Integer): gp_Trsf {.
    noSideEffect, importcpp: "Transformation",
    header: "GeomFill_SweepSectionGenerator.hxx".}
proc Parameter*(this: GeomFill_SweepSectionGenerator; P: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "Parameter",
    header: "GeomFill_SweepSectionGenerator.hxx".}