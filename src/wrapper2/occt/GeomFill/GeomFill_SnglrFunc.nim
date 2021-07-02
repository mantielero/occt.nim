##  Created on: 1998-02-26
##  Created by: Roman BORISOV
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

discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_DomainError"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
type
  GeomFillSnglrFunc* {.importcpp: "GeomFill_SnglrFunc",
                      header: "GeomFill_SnglrFunc.hxx", bycopy.} = object of Adaptor3dCurve


proc constructGeomFillSnglrFunc*(hc: Handle[Adaptor3dHCurve]): GeomFillSnglrFunc {.
    constructor, importcpp: "GeomFill_SnglrFunc(@)",
    header: "GeomFill_SnglrFunc.hxx".}
proc setRatio*(this: var GeomFillSnglrFunc; ratio: StandardReal) {.
    importcpp: "SetRatio", header: "GeomFill_SnglrFunc.hxx".}
proc firstParameter*(this: GeomFillSnglrFunc): StandardReal {.noSideEffect,
    importcpp: "FirstParameter", header: "GeomFill_SnglrFunc.hxx".}
proc lastParameter*(this: GeomFillSnglrFunc): StandardReal {.noSideEffect,
    importcpp: "LastParameter", header: "GeomFill_SnglrFunc.hxx".}
proc nbIntervals*(this: GeomFillSnglrFunc; s: GeomAbsShape): StandardInteger {.
    noSideEffect, importcpp: "NbIntervals", header: "GeomFill_SnglrFunc.hxx".}
proc intervals*(this: GeomFillSnglrFunc; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, importcpp: "Intervals", header: "GeomFill_SnglrFunc.hxx".}
proc value*(this: GeomFillSnglrFunc; u: StandardReal): GpPnt {.noSideEffect,
    importcpp: "Value", header: "GeomFill_SnglrFunc.hxx".}
proc isPeriodic*(this: GeomFillSnglrFunc): StandardBoolean {.noSideEffect,
    importcpp: "IsPeriodic", header: "GeomFill_SnglrFunc.hxx".}
proc period*(this: GeomFillSnglrFunc): StandardReal {.noSideEffect,
    importcpp: "Period", header: "GeomFill_SnglrFunc.hxx".}
proc d0*(this: GeomFillSnglrFunc; u: StandardReal; p: var GpPnt) {.noSideEffect,
    importcpp: "D0", header: "GeomFill_SnglrFunc.hxx".}
proc d1*(this: GeomFillSnglrFunc; u: StandardReal; p: var GpPnt; v: var GpVec) {.
    noSideEffect, importcpp: "D1", header: "GeomFill_SnglrFunc.hxx".}
proc d2*(this: GeomFillSnglrFunc; u: StandardReal; p: var GpPnt; v1: var GpVec;
        v2: var GpVec) {.noSideEffect, importcpp: "D2",
                      header: "GeomFill_SnglrFunc.hxx".}
proc d3*(this: GeomFillSnglrFunc; u: StandardReal; p: var GpPnt; v1: var GpVec;
        v2: var GpVec; v3: var GpVec) {.noSideEffect, importcpp: "D3",
                                  header: "GeomFill_SnglrFunc.hxx".}
proc dn*(this: GeomFillSnglrFunc; u: StandardReal; n: StandardInteger): GpVec {.
    noSideEffect, importcpp: "DN", header: "GeomFill_SnglrFunc.hxx".}
proc resolution*(this: GeomFillSnglrFunc; r3d: StandardReal): StandardReal {.
    noSideEffect, importcpp: "Resolution", header: "GeomFill_SnglrFunc.hxx".}
proc getType*(this: GeomFillSnglrFunc): GeomAbsCurveType {.noSideEffect,
    importcpp: "GetType", header: "GeomFill_SnglrFunc.hxx".}

