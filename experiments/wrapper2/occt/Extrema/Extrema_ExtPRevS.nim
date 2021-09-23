##  Created on: 1999-09-21
##  Created by: Edward AGAPOV
##  Copyright (c) 1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Real,
  ../gp/gp_Ax2, Extrema_GenExtPS, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer, Extrema_POnSurf, ../Standard/Standard_Transient

discard "forward decl of GeomAdaptor_HSurfaceOfRevolution"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_Pnt"
discard "forward decl of Extrema_POnSurf"
discard "forward decl of Extrema_ExtPRevS"
discard "forward decl of Extrema_ExtPRevS"
type
  Handle_Extrema_ExtPRevS* = handle[Extrema_ExtPRevS]

## ! It calculates all the extremum (minimum and
## ! maximum) distances between a point and a surface
## ! of revolution.

type
  Extrema_ExtPRevS* {.importcpp: "Extrema_ExtPRevS",
                     header: "Extrema_ExtPRevS.hxx", bycopy.} = object of Standard_Transient


proc constructExtrema_ExtPRevS*(): Extrema_ExtPRevS {.constructor,
    importcpp: "Extrema_ExtPRevS(@)", header: "Extrema_ExtPRevS.hxx".}
proc constructExtrema_ExtPRevS*(P: gp_Pnt;
                               S: handle[GeomAdaptor_HSurfaceOfRevolution];
                               Umin: Standard_Real; Usup: Standard_Real;
                               Vmin: Standard_Real; Vsup: Standard_Real;
                               TolU: Standard_Real; TolV: Standard_Real): Extrema_ExtPRevS {.
    constructor, importcpp: "Extrema_ExtPRevS(@)", header: "Extrema_ExtPRevS.hxx".}
proc constructExtrema_ExtPRevS*(P: gp_Pnt;
                               S: handle[GeomAdaptor_HSurfaceOfRevolution];
                               TolU: Standard_Real; TolV: Standard_Real): Extrema_ExtPRevS {.
    constructor, importcpp: "Extrema_ExtPRevS(@)", header: "Extrema_ExtPRevS.hxx".}
proc Initialize*(this: var Extrema_ExtPRevS;
                S: handle[GeomAdaptor_HSurfaceOfRevolution]; Umin: Standard_Real;
                Usup: Standard_Real; Vmin: Standard_Real; Vsup: Standard_Real;
                TolU: Standard_Real; TolV: Standard_Real) {.importcpp: "Initialize",
    header: "Extrema_ExtPRevS.hxx".}
proc Perform*(this: var Extrema_ExtPRevS; P: gp_Pnt) {.importcpp: "Perform",
    header: "Extrema_ExtPRevS.hxx".}
proc IsDone*(this: Extrema_ExtPRevS): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "Extrema_ExtPRevS.hxx".}
proc NbExt*(this: Extrema_ExtPRevS): Standard_Integer {.noSideEffect,
    importcpp: "NbExt", header: "Extrema_ExtPRevS.hxx".}
proc SquareDistance*(this: Extrema_ExtPRevS; N: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "SquareDistance", header: "Extrema_ExtPRevS.hxx".}
proc Point*(this: Extrema_ExtPRevS; N: Standard_Integer): Extrema_POnSurf {.
    noSideEffect, importcpp: "Point", header: "Extrema_ExtPRevS.hxx".}
type
  Extrema_ExtPRevSbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Extrema_ExtPRevS::get_type_name(@)",
                              header: "Extrema_ExtPRevS.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Extrema_ExtPRevS::get_type_descriptor(@)",
    header: "Extrema_ExtPRevS.hxx".}
proc DynamicType*(this: Extrema_ExtPRevS): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Extrema_ExtPRevS.hxx".}