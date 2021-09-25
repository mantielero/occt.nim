##  Created on: 2001-12-20
##  Created by: Pavel TELKOV
##  Copyright (c) 2001-2014 OPEN CASCADE SAS
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

discard "forward decl of Geom2d_Line"
discard "forward decl of Geom2d_Curve"
discard "forward decl of Geom2d_BSplineCurve"
type
  ShapeCustomCurve2d* {.importcpp: "ShapeCustom_Curve2d",
                       header: "ShapeCustom_Curve2d.hxx", bycopy.} = object ## ! Check if poleses is in the plane with given precision
                                                                       ## ! Returns false if no.


proc isLinear*(thePoles: TColgpArray1OfPnt2d; theTolerance: float;
              theDeviation: var float): bool {.
    importcpp: "ShapeCustom_Curve2d::IsLinear(@)",
    header: "ShapeCustom_Curve2d.hxx".}
proc convertToLine2d*(theCurve: Handle[Geom2dCurve]; theFirstIn: float;
                     theLastIn: float; theTolerance: float; theNewFirst: var float;
                     theNewLast: var float; theDeviation: var float): Handle[
    Geom2dLine] {.importcpp: "ShapeCustom_Curve2d::ConvertToLine2d(@)",
                 header: "ShapeCustom_Curve2d.hxx".}
proc simplifyBSpline2d*(theBSpline2d: var Handle[Geom2dBSplineCurve];
                       theTolerance: float): bool {.
    importcpp: "ShapeCustom_Curve2d::SimplifyBSpline2d(@)",
    header: "ShapeCustom_Curve2d.hxx".}
