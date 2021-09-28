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

discard "forward decl of Geom2d_BSplineCurve"
discard "forward decl of Geom_BSplineCurve"
type
  Hermit* {.importcpp: "Hermit", header: "Hermit.hxx", bycopy.} = object ## ! returns the correct spline a(u) which will
                                                                 ## ! be multiplicated with BS later.


proc solution*(bs: Handle[GeomBSplineCurve]; tolPoles: cfloat = 0.000001;
              tolKnots: cfloat = 0.000001): Handle[Geom2dBSplineCurve] {.
    importcpp: "Hermit::Solution(@)", header: "Hermit.hxx".}
proc solution*(bs: Handle[Geom2dBSplineCurve]; tolPoles: cfloat = 0.000001;
              tolKnots: cfloat = 0.000001): Handle[Geom2dBSplineCurve] {.
    importcpp: "Hermit::Solution(@)", header: "Hermit.hxx".}
proc solutionbis*(bs: Handle[GeomBSplineCurve]; knotmin: var cfloat;
                 knotmax: var cfloat; tolPoles: cfloat = 0.000001;
                 tolKnots: cfloat = 0.000001) {.importcpp: "Hermit::Solutionbis(@)",
    header: "Hermit.hxx".}

























