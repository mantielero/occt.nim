##  Created on: 1991-10-10
##  Created by: Jean Claude VAUTHIER
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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of gp_Pnt2d"
type
  ConvertConicToBSplineCurve* {.importcpp: "Convert_ConicToBSplineCurve",
                               header: "Convert_ConicToBSplineCurve.hxx", bycopy.} = object ##
                                                                                       ## !
                                                                                       ## Returns
                                                                                       ## the
                                                                                       ## degree
                                                                                       ## of
                                                                                       ## the
                                                                                       ## BSpline
                                                                                       ## curve
                                                                                       ## whose
                                                                                       ## data
                                                                                       ## is
                                                                                       ##
                                                                                       ## !
                                                                                       ## computed
                                                                                       ## in
                                                                                       ## this
                                                                                       ## framework.


proc degree*(this: ConvertConicToBSplineCurve): cint {.noSideEffect,
    importcpp: "Degree", header: "Convert_ConicToBSplineCurve.hxx".}
proc nbPoles*(this: ConvertConicToBSplineCurve): cint {.noSideEffect,
    importcpp: "NbPoles", header: "Convert_ConicToBSplineCurve.hxx".}
proc nbKnots*(this: ConvertConicToBSplineCurve): cint {.noSideEffect,
    importcpp: "NbKnots", header: "Convert_ConicToBSplineCurve.hxx".}
proc isPeriodic*(this: ConvertConicToBSplineCurve): bool {.noSideEffect,
    importcpp: "IsPeriodic", header: "Convert_ConicToBSplineCurve.hxx".}
proc pole*(this: ConvertConicToBSplineCurve; index: cint): Pnt2d {.noSideEffect,
    importcpp: "Pole", header: "Convert_ConicToBSplineCurve.hxx".}
proc weight*(this: ConvertConicToBSplineCurve; index: cint): cfloat {.noSideEffect,
    importcpp: "Weight", header: "Convert_ConicToBSplineCurve.hxx".}
proc knot*(this: ConvertConicToBSplineCurve; index: cint): cfloat {.noSideEffect,
    importcpp: "Knot", header: "Convert_ConicToBSplineCurve.hxx".}
proc multiplicity*(this: ConvertConicToBSplineCurve; index: cint): cint {.
    noSideEffect, importcpp: "Multiplicity",
    header: "Convert_ConicToBSplineCurve.hxx".}
proc buildCosAndSin*(this: ConvertConicToBSplineCurve;
                    parametrisation: ConvertParameterisationType;
                    cosNumerator: var Handle[TColStdHArray1OfReal];
                    sinNumerator: var Handle[TColStdHArray1OfReal];
                    denominator: var Handle[TColStdHArray1OfReal];
                    degree: var cint; knots: var Handle[TColStdHArray1OfReal];
                    mults: var Handle[TColStdHArray1OfInteger]) {.noSideEffect,
    importcpp: "BuildCosAndSin", header: "Convert_ConicToBSplineCurve.hxx".}
proc buildCosAndSin*(this: ConvertConicToBSplineCurve;
                    parametrisation: ConvertParameterisationType; uFirst: cfloat;
                    uLast: cfloat; cosNumerator: var Handle[TColStdHArray1OfReal];
                    sinNumerator: var Handle[TColStdHArray1OfReal];
                    denominator: var Handle[TColStdHArray1OfReal];
                    degree: var cint; knots: var Handle[TColStdHArray1OfReal];
                    mults: var Handle[TColStdHArray1OfInteger]) {.noSideEffect,
    importcpp: "BuildCosAndSin", header: "Convert_ConicToBSplineCurve.hxx".}

























