##  Created on: 1992-10-19
##  Created by: Remi GILET
##  Copyright (c) 1992-1999 Matra Datavision
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

discard "forward decl of Geom2d_TrimmedCurve"
discard "forward decl of Geom2d_Curve"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
discard "forward decl of Geom2d_Point"
type
  BisectorBisec* {.importcpp: "Bisector_Bisec", header: "Bisector_Bisec.hxx", bycopy.} = object


proc constructBisectorBisec*(): BisectorBisec {.constructor,
    importcpp: "Bisector_Bisec(@)", header: "Bisector_Bisec.hxx".}
proc perform*(this: var BisectorBisec; cu1: Handle[Geom2dCurve];
             cu2: Handle[Geom2dCurve]; p: Pnt2d; v1: Vec2d; v2: Vec2d; sense: cfloat;
             ajointype: GeomAbsJoinType; tolerance: cfloat; oncurve: bool = true) {.
    importcpp: "Perform", header: "Bisector_Bisec.hxx".}
proc perform*(this: var BisectorBisec; cu: Handle[Geom2dCurve];
             pnt: Handle[Geom2dPoint]; p: Pnt2d; v1: Vec2d; v2: Vec2d; sense: cfloat;
             tolerance: cfloat; oncurve: bool = true) {.importcpp: "Perform",
    header: "Bisector_Bisec.hxx".}
proc perform*(this: var BisectorBisec; pnt: Handle[Geom2dPoint];
             cu: Handle[Geom2dCurve]; p: Pnt2d; v1: Vec2d; v2: Vec2d; sense: cfloat;
             tolerance: cfloat; oncurve: bool = true) {.importcpp: "Perform",
    header: "Bisector_Bisec.hxx".}
proc perform*(this: var BisectorBisec; pnt1: Handle[Geom2dPoint];
             pnt2: Handle[Geom2dPoint]; p: Pnt2d; v1: Vec2d; v2: Vec2d; sense: cfloat;
             tolerance: cfloat = 0.0; oncurve: bool = true) {.importcpp: "Perform",
    header: "Bisector_Bisec.hxx".}
proc value*(this: BisectorBisec): Handle[Geom2dTrimmedCurve] {.noSideEffect,
    importcpp: "Value", header: "Bisector_Bisec.hxx".}
proc changeValue*(this: var BisectorBisec): Handle[Geom2dTrimmedCurve] {.
    importcpp: "ChangeValue", header: "Bisector_Bisec.hxx".}

























