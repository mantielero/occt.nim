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
  ProjLibProjector* {.importcpp: "ProjLib_Projector",
                     header: "ProjLib_Projector.hxx", bycopy.} = object ## ! Sets the type to OtherCurve


proc constructProjLibProjector*(): ProjLibProjector {.constructor,
    importcpp: "ProjLib_Projector(@)", header: "ProjLib_Projector.hxx".}
proc destroyProjLibProjector*(this: var ProjLibProjector) {.
    importcpp: "#.~ProjLib_Projector()", header: "ProjLib_Projector.hxx".}
proc isDone*(this: ProjLibProjector): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "ProjLib_Projector.hxx".}
proc done*(this: var ProjLibProjector) {.importcpp: "Done",
                                     header: "ProjLib_Projector.hxx".}
proc getType*(this: ProjLibProjector): GeomAbsCurveType {.noSideEffect,
    importcpp: "GetType", header: "ProjLib_Projector.hxx".}
proc setBSpline*(this: var ProjLibProjector; c: Handle[Geom2dBSplineCurve]) {.
    importcpp: "SetBSpline", header: "ProjLib_Projector.hxx".}
proc setBezier*(this: var ProjLibProjector; c: Handle[Geom2dBezierCurve]) {.
    importcpp: "SetBezier", header: "ProjLib_Projector.hxx".}
proc setType*(this: var ProjLibProjector; `type`: GeomAbsCurveType) {.
    importcpp: "SetType", header: "ProjLib_Projector.hxx".}
proc isPeriodic*(this: ProjLibProjector): StandardBoolean {.noSideEffect,
    importcpp: "IsPeriodic", header: "ProjLib_Projector.hxx".}
proc setPeriodic*(this: var ProjLibProjector) {.importcpp: "SetPeriodic",
    header: "ProjLib_Projector.hxx".}
proc line*(this: ProjLibProjector): GpLin2d {.noSideEffect, importcpp: "Line",
    header: "ProjLib_Projector.hxx".}
proc circle*(this: ProjLibProjector): GpCirc2d {.noSideEffect, importcpp: "Circle",
    header: "ProjLib_Projector.hxx".}
proc ellipse*(this: ProjLibProjector): GpElips2d {.noSideEffect,
    importcpp: "Ellipse", header: "ProjLib_Projector.hxx".}
proc hyperbola*(this: ProjLibProjector): GpHypr2d {.noSideEffect,
    importcpp: "Hyperbola", header: "ProjLib_Projector.hxx".}
proc parabola*(this: ProjLibProjector): GpParab2d {.noSideEffect,
    importcpp: "Parabola", header: "ProjLib_Projector.hxx".}
proc bezier*(this: ProjLibProjector): Handle[Geom2dBezierCurve] {.noSideEffect,
    importcpp: "Bezier", header: "ProjLib_Projector.hxx".}
proc bSpline*(this: ProjLibProjector): Handle[Geom2dBSplineCurve] {.noSideEffect,
    importcpp: "BSpline", header: "ProjLib_Projector.hxx".}
proc project*(this: var ProjLibProjector; L: GpLin) {.importcpp: "Project",
    header: "ProjLib_Projector.hxx".}
proc project*(this: var ProjLibProjector; c: GpCirc) {.importcpp: "Project",
    header: "ProjLib_Projector.hxx".}
proc project*(this: var ProjLibProjector; e: GpElips) {.importcpp: "Project",
    header: "ProjLib_Projector.hxx".}
proc project*(this: var ProjLibProjector; p: GpParab) {.importcpp: "Project",
    header: "ProjLib_Projector.hxx".}
proc project*(this: var ProjLibProjector; h: GpHypr) {.importcpp: "Project",
    header: "ProjLib_Projector.hxx".}
proc uFrame*(this: var ProjLibProjector; cFirst: StandardReal; cLast: StandardReal;
            uFirst: StandardReal; period: StandardReal) {.importcpp: "UFrame",
    header: "ProjLib_Projector.hxx".}
proc vFrame*(this: var ProjLibProjector; cFirst: StandardReal; cLast: StandardReal;
            vFirst: StandardReal; period: StandardReal) {.importcpp: "VFrame",
    header: "ProjLib_Projector.hxx".}

