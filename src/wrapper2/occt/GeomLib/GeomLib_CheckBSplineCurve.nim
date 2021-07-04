##  Created on: 1997-05-28
##  Created by: Xavier BENVENISTE
##  Copyright (c) 1997-1999 Matra Datavision
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
  ../Standard/Standard_Real, ../gp/gp_Pnt

discard "forward decl of Geom_BSplineCurve"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_OutOfRange"
type
  GeomLib_CheckBSplineCurve* {.importcpp: "GeomLib_CheckBSplineCurve",
                              header: "GeomLib_CheckBSplineCurve.hxx", bycopy.} = object


proc constructGeomLib_CheckBSplineCurve*(Curve: handle[Geom_BSplineCurve];
                                        Tolerance: Standard_Real;
                                        AngularTolerance: Standard_Real): GeomLib_CheckBSplineCurve {.
    constructor, importcpp: "GeomLib_CheckBSplineCurve(@)",
    header: "GeomLib_CheckBSplineCurve.hxx".}
proc IsDone*(this: GeomLib_CheckBSplineCurve): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "GeomLib_CheckBSplineCurve.hxx".}
proc NeedTangentFix*(this: GeomLib_CheckBSplineCurve;
                    FirstFlag: var Standard_Boolean;
                    SecondFlag: var Standard_Boolean) {.noSideEffect,
    importcpp: "NeedTangentFix", header: "GeomLib_CheckBSplineCurve.hxx".}
proc FixTangent*(this: var GeomLib_CheckBSplineCurve; FirstFlag: Standard_Boolean;
                LastFlag: Standard_Boolean) {.importcpp: "FixTangent",
    header: "GeomLib_CheckBSplineCurve.hxx".}
proc FixedTangent*(this: var GeomLib_CheckBSplineCurve; FirstFlag: Standard_Boolean;
                  LastFlag: Standard_Boolean): handle[Geom_BSplineCurve] {.
    importcpp: "FixedTangent", header: "GeomLib_CheckBSplineCurve.hxx".}