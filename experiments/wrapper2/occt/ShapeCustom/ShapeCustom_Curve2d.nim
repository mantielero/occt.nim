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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../TColgp/TColgp_Array1OfPnt2d, ../Standard/Standard_Real

discard "forward decl of Geom2d_Line"
discard "forward decl of Geom2d_Curve"
discard "forward decl of Geom2d_BSplineCurve"
type
  ShapeCustom_Curve2d* {.importcpp: "ShapeCustom_Curve2d",
                        header: "ShapeCustom_Curve2d.hxx", bycopy.} = object ## ! Check if poleses is in the plane with given
                                                                        ## precision
                                                                        ## ! Returns false if no.


proc IsLinear*(thePoles: TColgp_Array1OfPnt2d; theTolerance: Standard_Real;
              theDeviation: var Standard_Real): Standard_Boolean {.
    importcpp: "ShapeCustom_Curve2d::IsLinear(@)",
    header: "ShapeCustom_Curve2d.hxx".}
proc ConvertToLine2d*(theCurve: handle[Geom2d_Curve]; theFirstIn: Standard_Real;
                     theLastIn: Standard_Real; theTolerance: Standard_Real;
                     theNewFirst: var Standard_Real; theNewLast: var Standard_Real;
                     theDeviation: var Standard_Real): handle[Geom2d_Line] {.
    importcpp: "ShapeCustom_Curve2d::ConvertToLine2d(@)",
    header: "ShapeCustom_Curve2d.hxx".}
proc SimplifyBSpline2d*(theBSpline2d: var handle[Geom2d_BSplineCurve];
                       theTolerance: Standard_Real): Standard_Boolean {.
    importcpp: "ShapeCustom_Curve2d::SimplifyBSpline2d(@)",
    header: "ShapeCustom_Curve2d.hxx".}