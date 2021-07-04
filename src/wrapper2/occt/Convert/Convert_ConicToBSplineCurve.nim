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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TColgp/TColgp_HArray1OfPnt2d,
  ../TColStd/TColStd_HArray1OfReal, ../TColStd/TColStd_HArray1OfInteger,
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean,
  ../Standard/Standard_Real, Convert_ParameterisationType

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of gp_Pnt2d"
type
  Convert_ConicToBSplineCurve* {.importcpp: "Convert_ConicToBSplineCurve",
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


proc Degree*(this: Convert_ConicToBSplineCurve): Standard_Integer {.noSideEffect,
    importcpp: "Degree", header: "Convert_ConicToBSplineCurve.hxx".}
proc NbPoles*(this: Convert_ConicToBSplineCurve): Standard_Integer {.noSideEffect,
    importcpp: "NbPoles", header: "Convert_ConicToBSplineCurve.hxx".}
proc NbKnots*(this: Convert_ConicToBSplineCurve): Standard_Integer {.noSideEffect,
    importcpp: "NbKnots", header: "Convert_ConicToBSplineCurve.hxx".}
proc IsPeriodic*(this: Convert_ConicToBSplineCurve): Standard_Boolean {.
    noSideEffect, importcpp: "IsPeriodic",
    header: "Convert_ConicToBSplineCurve.hxx".}
proc Pole*(this: Convert_ConicToBSplineCurve; Index: Standard_Integer): gp_Pnt2d {.
    noSideEffect, importcpp: "Pole", header: "Convert_ConicToBSplineCurve.hxx".}
proc Weight*(this: Convert_ConicToBSplineCurve; Index: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "Weight", header: "Convert_ConicToBSplineCurve.hxx".}
proc Knot*(this: Convert_ConicToBSplineCurve; Index: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "Knot", header: "Convert_ConicToBSplineCurve.hxx".}
proc Multiplicity*(this: Convert_ConicToBSplineCurve; Index: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "Multiplicity",
    header: "Convert_ConicToBSplineCurve.hxx".}
proc BuildCosAndSin*(this: Convert_ConicToBSplineCurve;
                    Parametrisation: Convert_ParameterisationType;
                    CosNumerator: var handle[TColStd_HArray1OfReal];
                    SinNumerator: var handle[TColStd_HArray1OfReal];
                    Denominator: var handle[TColStd_HArray1OfReal];
                    Degree: var Standard_Integer;
                    Knots: var handle[TColStd_HArray1OfReal];
                    Mults: var handle[TColStd_HArray1OfInteger]) {.noSideEffect,
    importcpp: "BuildCosAndSin", header: "Convert_ConicToBSplineCurve.hxx".}
proc BuildCosAndSin*(this: Convert_ConicToBSplineCurve;
                    Parametrisation: Convert_ParameterisationType;
                    UFirst: Standard_Real; ULast: Standard_Real;
                    CosNumerator: var handle[TColStd_HArray1OfReal];
                    SinNumerator: var handle[TColStd_HArray1OfReal];
                    Denominator: var handle[TColStd_HArray1OfReal];
                    Degree: var Standard_Integer;
                    Knots: var handle[TColStd_HArray1OfReal];
                    Mults: var handle[TColStd_HArray1OfInteger]) {.noSideEffect,
    importcpp: "BuildCosAndSin", header: "Convert_ConicToBSplineCurve.hxx".}