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

discard "forward decl of Standard_NegativeValue"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of GccEnt_BadQualifier"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Geom2dGcc_QualifiedCurve"
discard "forward decl of Geom2dAdaptor_Curve"
discard "forward decl of Geom2d_Point"
discard "forward decl of GccAna_Circ2dTanOnRad"
discard "forward decl of Geom2dGcc_Circ2dTanOnRadGeo"
discard "forward decl of gp_Circ2d"
discard "forward decl of gp_Pnt2d"
type
  Geom2dGcc_Circ2dTanOnRad* {.importcpp: "Geom2dGcc_Circ2dTanOnRad",
                             header: "Geom2dGcc_Circ2dTanOnRad.hxx", bycopy.} = object ##
                                                                                  ## !
                                                                                  ## Constructs
                                                                                  ## one
                                                                                  ## or
                                                                                  ## more
                                                                                  ## 2D
                                                                                  ## circles
                                                                                  ## of
                                                                                  ## radius
                                                                                  ## Radius,
                                                                                  ##
                                                                                  ## !
                                                                                  ## centered
                                                                                  ## on
                                                                                  ## the
                                                                                  ## 2D
                                                                                  ## curve
                                                                                  ## OnCurv
                                                                                  ## and:
                                                                                  ##
                                                                                  ## !
                                                                                  ## -
                                                                                  ## tangential
                                                                                  ## to
                                                                                  ## the
                                                                                  ## curve
                                                                                  ## Qualified1


proc constructGeom2dGcc_Circ2dTanOnRad*(Qualified1: Geom2dGcc_QualifiedCurve;
                                       OnCurv: Geom2dAdaptor_Curve;
                                       Radius: Standard_Real;
                                       Tolerance: Standard_Real): Geom2dGcc_Circ2dTanOnRad {.
    constructor, importcpp: "Geom2dGcc_Circ2dTanOnRad(@)",
    header: "Geom2dGcc_Circ2dTanOnRad.hxx".}
proc constructGeom2dGcc_Circ2dTanOnRad*(Point1: handle[Geom2d_Point];
                                       OnCurv: Geom2dAdaptor_Curve;
                                       Radius: Standard_Real;
                                       Tolerance: Standard_Real): Geom2dGcc_Circ2dTanOnRad {.
    constructor, importcpp: "Geom2dGcc_Circ2dTanOnRad(@)",
    header: "Geom2dGcc_Circ2dTanOnRad.hxx".}
proc Results*(this: var Geom2dGcc_Circ2dTanOnRad; Circ: GccAna_Circ2dTanOnRad) {.
    importcpp: "Results", header: "Geom2dGcc_Circ2dTanOnRad.hxx".}
proc Results*(this: var Geom2dGcc_Circ2dTanOnRad; Circ: Geom2dGcc_Circ2dTanOnRadGeo) {.
    importcpp: "Results", header: "Geom2dGcc_Circ2dTanOnRad.hxx".}
proc IsDone*(this: Geom2dGcc_Circ2dTanOnRad): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "Geom2dGcc_Circ2dTanOnRad.hxx".}
proc NbSolutions*(this: Geom2dGcc_Circ2dTanOnRad): Standard_Integer {.noSideEffect,
    importcpp: "NbSolutions", header: "Geom2dGcc_Circ2dTanOnRad.hxx".}
proc ThisSolution*(this: Geom2dGcc_Circ2dTanOnRad; Index: Standard_Integer): gp_Circ2d {.
    noSideEffect, importcpp: "ThisSolution", header: "Geom2dGcc_Circ2dTanOnRad.hxx".}
proc WhichQualifier*(this: Geom2dGcc_Circ2dTanOnRad; Index: Standard_Integer;
                    Qualif1: var GccEnt_Position) {.noSideEffect,
    importcpp: "WhichQualifier", header: "Geom2dGcc_Circ2dTanOnRad.hxx".}
proc Tangency1*(this: Geom2dGcc_Circ2dTanOnRad; Index: Standard_Integer;
               ParSol: var Standard_Real; ParArg: var Standard_Real;
               PntSol: var gp_Pnt2d) {.noSideEffect, importcpp: "Tangency1",
                                    header: "Geom2dGcc_Circ2dTanOnRad.hxx".}
proc CenterOn3*(this: Geom2dGcc_Circ2dTanOnRad; Index: Standard_Integer;
               ParArg: var Standard_Real; PntSol: var gp_Pnt2d) {.noSideEffect,
    importcpp: "CenterOn3", header: "Geom2dGcc_Circ2dTanOnRad.hxx".}
proc IsTheSame1*(this: Geom2dGcc_Circ2dTanOnRad; Index: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsTheSame1", header: "Geom2dGcc_Circ2dTanOnRad.hxx".}