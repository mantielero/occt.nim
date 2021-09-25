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

discard "forward decl of Geom2d_BSplineCurve"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_OutOfRange"
type
  GeomLibCheck2dBSplineCurve* {.importcpp: "GeomLib_Check2dBSplineCurve",
                               header: "GeomLib_Check2dBSplineCurve.hxx", bycopy.} = object


proc constructGeomLibCheck2dBSplineCurve*(curve: Handle[Geom2dBSplineCurve];
    tolerance: float; angularTolerance: float): GeomLibCheck2dBSplineCurve {.
    constructor, importcpp: "GeomLib_Check2dBSplineCurve(@)",
    header: "GeomLib_Check2dBSplineCurve.hxx".}
proc isDone*(this: GeomLibCheck2dBSplineCurve): bool {.noSideEffect,
    importcpp: "IsDone", header: "GeomLib_Check2dBSplineCurve.hxx".}
proc needTangentFix*(this: GeomLibCheck2dBSplineCurve; firstFlag: var bool;
                    secondFlag: var bool) {.noSideEffect,
    importcpp: "NeedTangentFix", header: "GeomLib_Check2dBSplineCurve.hxx".}
proc fixTangent*(this: var GeomLibCheck2dBSplineCurve; firstFlag: bool; lastFlag: bool) {.
    importcpp: "FixTangent", header: "GeomLib_Check2dBSplineCurve.hxx".}
proc fixedTangent*(this: var GeomLibCheck2dBSplineCurve; firstFlag: bool;
                  lastFlag: bool): Handle[Geom2dBSplineCurve] {.
    importcpp: "FixedTangent", header: "GeomLib_Check2dBSplineCurve.hxx".}
