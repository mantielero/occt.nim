##  Created on: 1993-08-11
##  Created by: Remi LEQUETTE
##  Copyright (c) 1993-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../GeomAbs/GeomAbs_CurveType, ../gp/gp_Lin2d,
  ../gp/gp_Circ2d, ../gp/gp_Elips2d, ../gp/gp_Hypr2d, ../gp/gp_Parab2d,
  ../Standard/Standard_Boolean, ../Standard/Standard_Real

discard "forward decl of Geom2d_BSplineCurve"
discard "forward decl of Geom2d_BezierCurve"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_NotImplemented"
discard "forward decl of gp_Lin2d"
discard "forward decl of gp_Circ2d"
discard "forward decl of gp_Elips2d"
discard "forward decl of gp_Hypr2d"
discard "forward decl of gp_Parab2d"
discard "forward decl of gp_Lin"
discard "forward decl of gp_Circ"
discard "forward decl of gp_Elips"
discard "forward decl of gp_Parab"
discard "forward decl of gp_Hypr"
type
  ProjLib_Projector* {.importcpp: "ProjLib_Projector",
                      header: "ProjLib_Projector.hxx", bycopy.} = object ## ! Sets the type to OtherCurve


proc constructProjLib_Projector*(): ProjLib_Projector {.constructor,
    importcpp: "ProjLib_Projector(@)", header: "ProjLib_Projector.hxx".}
proc destroyProjLib_Projector*(this: var ProjLib_Projector) {.
    importcpp: "#.~ProjLib_Projector()", header: "ProjLib_Projector.hxx".}
proc IsDone*(this: ProjLib_Projector): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "ProjLib_Projector.hxx".}
proc Done*(this: var ProjLib_Projector) {.importcpp: "Done",
                                      header: "ProjLib_Projector.hxx".}
proc GetType*(this: ProjLib_Projector): GeomAbs_CurveType {.noSideEffect,
    importcpp: "GetType", header: "ProjLib_Projector.hxx".}
proc SetBSpline*(this: var ProjLib_Projector; C: handle[Geom2d_BSplineCurve]) {.
    importcpp: "SetBSpline", header: "ProjLib_Projector.hxx".}
proc SetBezier*(this: var ProjLib_Projector; C: handle[Geom2d_BezierCurve]) {.
    importcpp: "SetBezier", header: "ProjLib_Projector.hxx".}
proc SetType*(this: var ProjLib_Projector; Type: GeomAbs_CurveType) {.
    importcpp: "SetType", header: "ProjLib_Projector.hxx".}
proc IsPeriodic*(this: ProjLib_Projector): Standard_Boolean {.noSideEffect,
    importcpp: "IsPeriodic", header: "ProjLib_Projector.hxx".}
proc SetPeriodic*(this: var ProjLib_Projector) {.importcpp: "SetPeriodic",
    header: "ProjLib_Projector.hxx".}
proc Line*(this: ProjLib_Projector): gp_Lin2d {.noSideEffect, importcpp: "Line",
    header: "ProjLib_Projector.hxx".}
proc Circle*(this: ProjLib_Projector): gp_Circ2d {.noSideEffect, importcpp: "Circle",
    header: "ProjLib_Projector.hxx".}
proc Ellipse*(this: ProjLib_Projector): gp_Elips2d {.noSideEffect,
    importcpp: "Ellipse", header: "ProjLib_Projector.hxx".}
proc Hyperbola*(this: ProjLib_Projector): gp_Hypr2d {.noSideEffect,
    importcpp: "Hyperbola", header: "ProjLib_Projector.hxx".}
proc Parabola*(this: ProjLib_Projector): gp_Parab2d {.noSideEffect,
    importcpp: "Parabola", header: "ProjLib_Projector.hxx".}
proc Bezier*(this: ProjLib_Projector): handle[Geom2d_BezierCurve] {.noSideEffect,
    importcpp: "Bezier", header: "ProjLib_Projector.hxx".}
proc BSpline*(this: ProjLib_Projector): handle[Geom2d_BSplineCurve] {.noSideEffect,
    importcpp: "BSpline", header: "ProjLib_Projector.hxx".}
proc Project*(this: var ProjLib_Projector; L: gp_Lin) {.importcpp: "Project",
    header: "ProjLib_Projector.hxx".}
proc Project*(this: var ProjLib_Projector; C: gp_Circ) {.importcpp: "Project",
    header: "ProjLib_Projector.hxx".}
proc Project*(this: var ProjLib_Projector; E: gp_Elips) {.importcpp: "Project",
    header: "ProjLib_Projector.hxx".}
proc Project*(this: var ProjLib_Projector; P: gp_Parab) {.importcpp: "Project",
    header: "ProjLib_Projector.hxx".}
proc Project*(this: var ProjLib_Projector; H: gp_Hypr) {.importcpp: "Project",
    header: "ProjLib_Projector.hxx".}
proc UFrame*(this: var ProjLib_Projector; CFirst: Standard_Real; CLast: Standard_Real;
            UFirst: Standard_Real; Period: Standard_Real) {.importcpp: "UFrame",
    header: "ProjLib_Projector.hxx".}
proc VFrame*(this: var ProjLib_Projector; CFirst: Standard_Real; CLast: Standard_Real;
            VFirst: Standard_Real; Period: Standard_Real) {.importcpp: "VFrame",
    header: "ProjLib_Projector.hxx".}