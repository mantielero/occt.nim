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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Real,
  ../GeomAbs/GeomAbs_JoinType, ../Standard/Standard_Boolean

discard "forward decl of Geom2d_TrimmedCurve"
discard "forward decl of Geom2d_Curve"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
discard "forward decl of Geom2d_Point"
type
  Bisector_Bisec* {.importcpp: "Bisector_Bisec", header: "Bisector_Bisec.hxx", bycopy.} = object


proc constructBisector_Bisec*(): Bisector_Bisec {.constructor,
    importcpp: "Bisector_Bisec(@)", header: "Bisector_Bisec.hxx".}
proc Perform*(this: var Bisector_Bisec; Cu1: handle[Geom2d_Curve];
             Cu2: handle[Geom2d_Curve]; P: gp_Pnt2d; V1: gp_Vec2d; V2: gp_Vec2d;
             Sense: Standard_Real; ajointype: GeomAbs_JoinType;
             Tolerance: Standard_Real; oncurve: Standard_Boolean = Standard_True) {.
    importcpp: "Perform", header: "Bisector_Bisec.hxx".}
proc Perform*(this: var Bisector_Bisec; Cu: handle[Geom2d_Curve];
             Pnt: handle[Geom2d_Point]; P: gp_Pnt2d; V1: gp_Vec2d; V2: gp_Vec2d;
             Sense: Standard_Real; Tolerance: Standard_Real;
             oncurve: Standard_Boolean = Standard_True) {.importcpp: "Perform",
    header: "Bisector_Bisec.hxx".}
proc Perform*(this: var Bisector_Bisec; Pnt: handle[Geom2d_Point];
             Cu: handle[Geom2d_Curve]; P: gp_Pnt2d; V1: gp_Vec2d; V2: gp_Vec2d;
             Sense: Standard_Real; Tolerance: Standard_Real;
             oncurve: Standard_Boolean = Standard_True) {.importcpp: "Perform",
    header: "Bisector_Bisec.hxx".}
proc Perform*(this: var Bisector_Bisec; Pnt1: handle[Geom2d_Point];
             Pnt2: handle[Geom2d_Point]; P: gp_Pnt2d; V1: gp_Vec2d; V2: gp_Vec2d;
             Sense: Standard_Real; Tolerance: Standard_Real = 0.0;
             oncurve: Standard_Boolean = Standard_True) {.importcpp: "Perform",
    header: "Bisector_Bisec.hxx".}
proc Value*(this: Bisector_Bisec): handle[Geom2d_TrimmedCurve] {.noSideEffect,
    importcpp: "Value", header: "Bisector_Bisec.hxx".}
proc ChangeValue*(this: var Bisector_Bisec): handle[Geom2d_TrimmedCurve] {.
    importcpp: "ChangeValue", header: "Bisector_Bisec.hxx".}