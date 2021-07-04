##  Created on: 1996-09-23
##  Created by: Philippe MANGIN
##  Copyright (c) 1996-1999 Matra Datavision
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
  ../Convert/Convert_ParameterisationType, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer

discard "forward decl of Geom_BSplineCurve"
discard "forward decl of Geom_BoundedCurve"
type
  GeomConvert_CompCurveToBSplineCurve* {.importcpp: "GeomConvert_CompCurveToBSplineCurve", header: "GeomConvert_CompCurveToBSplineCurve.hxx",
                                        bycopy.} = object ## ! Initialize the algorithme
                                                       ## ! - Parameterisation is used to convert
                                                       ## ! Concat two BSplineCurves.


proc constructGeomConvert_CompCurveToBSplineCurve*(
    Parameterisation: Convert_ParameterisationType = Convert_TgtThetaOver2): GeomConvert_CompCurveToBSplineCurve {.
    constructor, importcpp: "GeomConvert_CompCurveToBSplineCurve(@)",
    header: "GeomConvert_CompCurveToBSplineCurve.hxx".}
proc constructGeomConvert_CompCurveToBSplineCurve*(
    BasisCurve: handle[Geom_BoundedCurve];
    Parameterisation: Convert_ParameterisationType = Convert_TgtThetaOver2): GeomConvert_CompCurveToBSplineCurve {.
    constructor, importcpp: "GeomConvert_CompCurveToBSplineCurve(@)",
    header: "GeomConvert_CompCurveToBSplineCurve.hxx".}
proc Add*(this: var GeomConvert_CompCurveToBSplineCurve;
         NewCurve: handle[Geom_BoundedCurve]; Tolerance: Standard_Real;
         After: Standard_Boolean = Standard_False;
         WithRatio: Standard_Boolean = Standard_True; MinM: Standard_Integer = 0): Standard_Boolean {.
    importcpp: "Add", header: "GeomConvert_CompCurveToBSplineCurve.hxx".}
proc BSplineCurve*(this: GeomConvert_CompCurveToBSplineCurve): handle[
    Geom_BSplineCurve] {.noSideEffect, importcpp: "BSplineCurve",
                        header: "GeomConvert_CompCurveToBSplineCurve.hxx".}
proc Clear*(this: var GeomConvert_CompCurveToBSplineCurve) {.importcpp: "Clear",
    header: "GeomConvert_CompCurveToBSplineCurve.hxx".}