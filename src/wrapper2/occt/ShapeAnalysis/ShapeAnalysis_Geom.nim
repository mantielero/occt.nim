##  Created on: 1998-06-03
##  Created by: data exchange team
##  Copyright (c) 1998-1999 Matra Datavision
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
discard "forward decl of gp_Pln"
discard "forward decl of gp_Trsf"
type
  ShapeAnalysisGeom* {.importcpp: "ShapeAnalysis_Geom",
                      header: "ShapeAnalysis_Geom.hxx", bycopy.} = object ## ! Builds a plane out of a set of points in array
                                                                     ## ! Returns in <dmax> the maximal distance between the produced
                                                                     ## ! plane and given points


proc nearestPlane*(pnts: TColgpArray1OfPnt; aPln: var GpPln; dmax: var StandardReal): StandardBoolean {.
    importcpp: "ShapeAnalysis_Geom::NearestPlane(@)",
    header: "ShapeAnalysis_Geom.hxx".}
proc positionTrsf*(coefs: Handle[TColStdHArray2OfReal]; trsf: var GpTrsf;
                  unit: StandardReal; prec: StandardReal): StandardBoolean {.
    importcpp: "ShapeAnalysis_Geom::PositionTrsf(@)",
    header: "ShapeAnalysis_Geom.hxx".}

