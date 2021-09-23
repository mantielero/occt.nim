##  Created on: 1991-04-03
##  Created by: Remi GILET
##  Copyright (c) 1991-1999 Matra Datavision
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
discard "forward decl of Geom2dGcc_QCurve"
discard "forward decl of gp_Lin2d"
discard "forward decl of gp_Circ2d"
discard "forward decl of GccEnt_QualifiedCirc"
discard "forward decl of Geom2dAdaptor_Curve"
discard "forward decl of GccEnt_QualifiedLin"
discard "forward decl of gp_Pnt2d"
type
  Geom2dGcc_Circ2dTanOnRadGeo* {.importcpp: "Geom2dGcc_Circ2dTanOnRadGeo",
                                header: "Geom2dGcc_Circ2dTanOnRadGeo.hxx", bycopy.} = object ##
                                                                                        ## !
                                                                                        ## This
                                                                                        ## methods
                                                                                        ## implements
                                                                                        ## the
                                                                                        ## algorithms
                                                                                        ## used
                                                                                        ## to
                                                                                        ## create
                                                                                        ##
                                                                                        ## !
                                                                                        ## 2d
                                                                                        ## Circles
                                                                                        ## tangent
                                                                                        ## to
                                                                                        ## a
                                                                                        ## curve
                                                                                        ## and
                                                                                        ## centered
                                                                                        ## on
                                                                                        ## a
                                                                                        ## 2d
                                                                                        ## Line
                                                                                        ##
                                                                                        ## !
                                                                                        ## with
                                                                                        ## a
                                                                                        ## given
                                                                                        ## radius.
                                                                                        ##
                                                                                        ## !
                                                                                        ## Tolerance
                                                                                        ## is
                                                                                        ## used
                                                                                        ## to
                                                                                        ## find
                                                                                        ## solution
                                                                                        ## in
                                                                                        ## every
                                                                                        ## limit
                                                                                        ## cases.
                                                                                        ##
                                                                                        ## !
                                                                                        ## raises
                                                                                        ## NegativeValue
                                                                                        ## in
                                                                                        ## case
                                                                                        ## of
                                                                                        ## NegativeRadius.


proc constructGeom2dGcc_Circ2dTanOnRadGeo*(Qualified1: Geom2dGcc_QCurve;
    OnLine: gp_Lin2d; Radius: Standard_Real; Tolerance: Standard_Real): Geom2dGcc_Circ2dTanOnRadGeo {.
    constructor, importcpp: "Geom2dGcc_Circ2dTanOnRadGeo(@)",
    header: "Geom2dGcc_Circ2dTanOnRadGeo.hxx".}
proc constructGeom2dGcc_Circ2dTanOnRadGeo*(Qualified1: Geom2dGcc_QCurve;
    OnCirc: gp_Circ2d; Radius: Standard_Real; Tolerance: Standard_Real): Geom2dGcc_Circ2dTanOnRadGeo {.
    constructor, importcpp: "Geom2dGcc_Circ2dTanOnRadGeo(@)",
    header: "Geom2dGcc_Circ2dTanOnRadGeo.hxx".}
proc constructGeom2dGcc_Circ2dTanOnRadGeo*(Qualified1: GccEnt_QualifiedCirc;
    OnCurv: Geom2dAdaptor_Curve; Radius: Standard_Real; Tolerance: Standard_Real): Geom2dGcc_Circ2dTanOnRadGeo {.
    constructor, importcpp: "Geom2dGcc_Circ2dTanOnRadGeo(@)",
    header: "Geom2dGcc_Circ2dTanOnRadGeo.hxx".}
proc constructGeom2dGcc_Circ2dTanOnRadGeo*(Qualified1: GccEnt_QualifiedLin;
    OnCurv: Geom2dAdaptor_Curve; Radius: Standard_Real; Tolerance: Standard_Real): Geom2dGcc_Circ2dTanOnRadGeo {.
    constructor, importcpp: "Geom2dGcc_Circ2dTanOnRadGeo(@)",
    header: "Geom2dGcc_Circ2dTanOnRadGeo.hxx".}
proc constructGeom2dGcc_Circ2dTanOnRadGeo*(Qualified1: Geom2dGcc_QCurve;
    OnCurv: Geom2dAdaptor_Curve; Radius: Standard_Real; Tolerance: Standard_Real): Geom2dGcc_Circ2dTanOnRadGeo {.
    constructor, importcpp: "Geom2dGcc_Circ2dTanOnRadGeo(@)",
    header: "Geom2dGcc_Circ2dTanOnRadGeo.hxx".}
proc constructGeom2dGcc_Circ2dTanOnRadGeo*(Point1: gp_Pnt2d;
    OnCurv: Geom2dAdaptor_Curve; Radius: Standard_Real; Tolerance: Standard_Real): Geom2dGcc_Circ2dTanOnRadGeo {.
    constructor, importcpp: "Geom2dGcc_Circ2dTanOnRadGeo(@)",
    header: "Geom2dGcc_Circ2dTanOnRadGeo.hxx".}
proc IsDone*(this: Geom2dGcc_Circ2dTanOnRadGeo): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "Geom2dGcc_Circ2dTanOnRadGeo.hxx".}
proc NbSolutions*(this: Geom2dGcc_Circ2dTanOnRadGeo): Standard_Integer {.
    noSideEffect, importcpp: "NbSolutions",
    header: "Geom2dGcc_Circ2dTanOnRadGeo.hxx".}
proc ThisSolution*(this: Geom2dGcc_Circ2dTanOnRadGeo; Index: Standard_Integer): gp_Circ2d {.
    noSideEffect, importcpp: "ThisSolution",
    header: "Geom2dGcc_Circ2dTanOnRadGeo.hxx".}
proc WhichQualifier*(this: Geom2dGcc_Circ2dTanOnRadGeo; Index: Standard_Integer;
                    Qualif1: var GccEnt_Position) {.noSideEffect,
    importcpp: "WhichQualifier", header: "Geom2dGcc_Circ2dTanOnRadGeo.hxx".}
proc Tangency1*(this: Geom2dGcc_Circ2dTanOnRadGeo; Index: Standard_Integer;
               ParSol: var Standard_Real; ParArg: var Standard_Real;
               PntSol: var gp_Pnt2d) {.noSideEffect, importcpp: "Tangency1",
                                    header: "Geom2dGcc_Circ2dTanOnRadGeo.hxx".}
proc CenterOn3*(this: Geom2dGcc_Circ2dTanOnRadGeo; Index: Standard_Integer;
               ParArg: var Standard_Real; PntSol: var gp_Pnt2d) {.noSideEffect,
    importcpp: "CenterOn3", header: "Geom2dGcc_Circ2dTanOnRadGeo.hxx".}
proc IsTheSame1*(this: Geom2dGcc_Circ2dTanOnRadGeo; Index: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsTheSame1",
    header: "Geom2dGcc_Circ2dTanOnRadGeo.hxx".}