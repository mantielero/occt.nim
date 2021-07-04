##  Created on: 1992-10-20
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
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer, ../TColgp/TColgp_Array1OfCirc2d,
  ../GccEnt/GccEnt_Array1OfPosition, ../TColStd/TColStd_Array1OfInteger,
  ../TColgp/TColgp_Array1OfPnt2d, ../TColStd/TColStd_Array1OfReal,
  ../Standard/Standard_Real, ../GccEnt/GccEnt_Position

discard "forward decl of Standard_OutOfRange"
discard "forward decl of GccEnt_BadQualifier"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Geom2dGcc_QualifiedCurve"
discard "forward decl of Geom2d_Point"
discard "forward decl of gp_Circ2d"
discard "forward decl of gp_Pnt2d"
type
  Geom2dGcc_Circ2dTanCen* {.importcpp: "Geom2dGcc_Circ2dTanCen",
                           header: "Geom2dGcc_Circ2dTanCen.hxx", bycopy.} = object ## !
                                                                              ## Constructs
                                                                              ## one or
                                                                              ## more 2D
                                                                              ## circles
                                                                              ## tangential to
                                                                              ## the
                                                                              ## !
                                                                              ## curve
                                                                              ## Qualified1
                                                                              ## and
                                                                              ## centered on
                                                                              ## the
                                                                              ## point
                                                                              ## Pcenter.
                                                                              ## !
                                                                              ## Tolerance is a
                                                                              ## tolerance
                                                                              ## criterion
                                                                              ## used by
                                                                              ## the
                                                                              ## algorithm
                                                                              ## ! to
                                                                              ## find a
                                                                              ## solution
                                                                              ## when,
                                                                              ## mathematically,
                                                                              ## the
                                                                              ## problem
                                                                              ## !
                                                                              ## posed
                                                                              ## does
                                                                              ## not
                                                                              ## have a
                                                                              ## solution,
                                                                              ## but
                                                                              ## where
                                                                              ## there is
                                                                              ## !
                                                                              ## numeric
                                                                              ## uncertainty
                                                                              ## attached to
                                                                              ## the
                                                                              ## arguments.
                                                                              ## !
                                                                              ## Tolerance is
                                                                              ## only
                                                                              ## used in
                                                                              ## these
                                                                              ## algorithms in
                                                                              ## very
                                                                              ## !
                                                                              ## specific
                                                                              ## cases
                                                                              ## where
                                                                              ## the
                                                                              ## center of
                                                                              ## the
                                                                              ## solution is
                                                                              ## very
                                                                              ## !
                                                                              ## close to
                                                                              ## the
                                                                              ## circle to
                                                                              ## which it is
                                                                              ## tangential,
                                                                              ## and
                                                                              ## where
                                                                              ## the
                                                                              ## !
                                                                              ## solution is
                                                                              ## thus a
                                                                              ## very
                                                                              ## small
                                                                              ## circle.
                                                                              ## !
                                                                              ## Exceptions
                                                                              ## !
                                                                              ## GccEnt_BadQualifier if a
                                                                              ## qualifier is
                                                                              ## inconsistent
                                                                              ## with
                                                                              ## !
                                                                              ## the
                                                                              ## argument it
                                                                              ## qualifies
                                                                              ## (for
                                                                              ## example,
                                                                              ## enclosing
                                                                              ## for a
                                                                              ## line).


proc constructGeom2dGcc_Circ2dTanCen*(Qualified1: Geom2dGcc_QualifiedCurve;
                                     Pcenter: handle[Geom2d_Point];
                                     Tolerance: Standard_Real): Geom2dGcc_Circ2dTanCen {.
    constructor, importcpp: "Geom2dGcc_Circ2dTanCen(@)",
    header: "Geom2dGcc_Circ2dTanCen.hxx".}
proc IsDone*(this: Geom2dGcc_Circ2dTanCen): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "Geom2dGcc_Circ2dTanCen.hxx".}
proc NbSolutions*(this: Geom2dGcc_Circ2dTanCen): Standard_Integer {.noSideEffect,
    importcpp: "NbSolutions", header: "Geom2dGcc_Circ2dTanCen.hxx".}
proc ThisSolution*(this: Geom2dGcc_Circ2dTanCen; Index: Standard_Integer): gp_Circ2d {.
    noSideEffect, importcpp: "ThisSolution", header: "Geom2dGcc_Circ2dTanCen.hxx".}
proc WhichQualifier*(this: Geom2dGcc_Circ2dTanCen; Index: Standard_Integer;
                    Qualif1: var GccEnt_Position) {.noSideEffect,
    importcpp: "WhichQualifier", header: "Geom2dGcc_Circ2dTanCen.hxx".}
proc Tangency1*(this: Geom2dGcc_Circ2dTanCen; Index: Standard_Integer;
               ParSol: var Standard_Real; ParArg: var Standard_Real;
               PntSol: var gp_Pnt2d) {.noSideEffect, importcpp: "Tangency1",
                                    header: "Geom2dGcc_Circ2dTanCen.hxx".}
proc IsTheSame1*(this: Geom2dGcc_Circ2dTanCen; Index: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsTheSame1", header: "Geom2dGcc_Circ2dTanCen.hxx".}