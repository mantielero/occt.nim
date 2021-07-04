##  Created on: 1997-02-18
##  Created by: Stagiaire Francois DUMONT
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
  ../Standard/Standard_Handle, ../Standard/Standard_Real

discard "forward decl of Geom2d_BSplineCurve"
discard "forward decl of Geom_BSplineCurve"
type
  Hermit* {.importcpp: "Hermit", header: "Hermit.hxx", bycopy.} = object ## ! returns the correct spline a(u) which will
                                                                 ## ! be multiplicated with BS later.


proc Solution*(BS: handle[Geom_BSplineCurve]; TolPoles: Standard_Real = 0.000001;
              TolKnots: Standard_Real = 0.000001): handle[Geom2d_BSplineCurve] {.
    importcpp: "Hermit::Solution(@)", header: "Hermit.hxx".}
proc Solution*(BS: handle[Geom2d_BSplineCurve]; TolPoles: Standard_Real = 0.000001;
              TolKnots: Standard_Real = 0.000001): handle[Geom2d_BSplineCurve] {.
    importcpp: "Hermit::Solution(@)", header: "Hermit.hxx".}
proc Solutionbis*(BS: handle[Geom_BSplineCurve]; Knotmin: var Standard_Real;
                 Knotmax: var Standard_Real; TolPoles: Standard_Real = 0.000001;
                 TolKnots: Standard_Real = 0.000001) {.
    importcpp: "Hermit::Solutionbis(@)", header: "Hermit.hxx".}