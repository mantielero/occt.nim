##  Created on: 1999-09-16
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
  Extrema_FuncPSNorm, ../gp/gp_Vec, ../gp/gp_Ax2, Extrema_GenExtPS,
  ../Standard/Standard_Boolean, ../Standard/Standard_Integer, Extrema_POnSurf,
  ../Standard/Standard_Transient

discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of GeomAdaptor_HSurfaceOfLinearExtrusion"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_Pnt"
discard "forward decl of Extrema_POnSurf"
discard "forward decl of gp_Ax2"
discard "forward decl of Extrema_ExtPExtS"
discard "forward decl of Extrema_ExtPExtS"
type
  Handle_Extrema_ExtPExtS* = handle[Extrema_ExtPExtS]

## ! It calculates all the extremum (minimum and
## ! maximum) distances between a point and a linear
## ! extrusion surface.

type
  Extrema_ExtPExtS* {.importcpp: "Extrema_ExtPExtS",
                     header: "Extrema_ExtPExtS.hxx", bycopy.} = object of Standard_Transient


proc constructExtrema_ExtPExtS*(): Extrema_ExtPExtS {.constructor,
    importcpp: "Extrema_ExtPExtS(@)", header: "Extrema_ExtPExtS.hxx".}
proc constructExtrema_ExtPExtS*(P: gp_Pnt; S: handle[
    GeomAdaptor_HSurfaceOfLinearExtrusion]; Umin: Standard_Real;
                               Usup: Standard_Real; Vmin: Standard_Real;
                               Vsup: Standard_Real; TolU: Standard_Real;
                               TolV: Standard_Real): Extrema_ExtPExtS {.
    constructor, importcpp: "Extrema_ExtPExtS(@)", header: "Extrema_ExtPExtS.hxx".}
proc constructExtrema_ExtPExtS*(P: gp_Pnt; S: handle[
    GeomAdaptor_HSurfaceOfLinearExtrusion]; TolU: Standard_Real;
                               TolV: Standard_Real): Extrema_ExtPExtS {.
    constructor, importcpp: "Extrema_ExtPExtS(@)", header: "Extrema_ExtPExtS.hxx".}
proc Initialize*(this: var Extrema_ExtPExtS;
                S: handle[GeomAdaptor_HSurfaceOfLinearExtrusion];
                Uinf: Standard_Real; Usup: Standard_Real; Vinf: Standard_Real;
                Vsup: Standard_Real; TolU: Standard_Real; TolV: Standard_Real) {.
    importcpp: "Initialize", header: "Extrema_ExtPExtS.hxx".}
proc Perform*(this: var Extrema_ExtPExtS; P: gp_Pnt) {.importcpp: "Perform",
    header: "Extrema_ExtPExtS.hxx".}
proc IsDone*(this: Extrema_ExtPExtS): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "Extrema_ExtPExtS.hxx".}
proc NbExt*(this: Extrema_ExtPExtS): Standard_Integer {.noSideEffect,
    importcpp: "NbExt", header: "Extrema_ExtPExtS.hxx".}
proc SquareDistance*(this: Extrema_ExtPExtS; N: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "SquareDistance", header: "Extrema_ExtPExtS.hxx".}
proc Point*(this: Extrema_ExtPExtS; N: Standard_Integer): Extrema_POnSurf {.
    noSideEffect, importcpp: "Point", header: "Extrema_ExtPExtS.hxx".}
type
  Extrema_ExtPExtSbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Extrema_ExtPExtS::get_type_name(@)",
                              header: "Extrema_ExtPExtS.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Extrema_ExtPExtS::get_type_descriptor(@)",
    header: "Extrema_ExtPExtS.hxx".}
proc DynamicType*(this: Extrema_ExtPExtS): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Extrema_ExtPExtS.hxx".}