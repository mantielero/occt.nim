##  Created on: 1995-07-24
##  Created by: Modelistation
##  Copyright (c) 1995-1999 Matra Datavision
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

discard "forward decl of Adaptor3d_Curve"
type
  StdPrsPoleCurve* {.importcpp: "StdPrs_PoleCurve", header: "StdPrs_PoleCurve.hxx",
                    bycopy.} = object of Prs3dRoot ## ! Defines display of BSpline and Bezier curves.
                                              ## ! Adds the 3D curve aCurve to the
                                              ## ! StdPrs_PoleCurve algorithm. This shape is found in
                                              ## ! the presentation object aPresentation, and its display
                                              ## ! attributes are set in the attribute manager aDrawer.
                                              ## ! The curve object from Adaptor3d provides data from
                                              ## ! a Geom curve. This makes it possible to use the
                                              ## ! surface in a geometric algorithm.


proc add*(aPresentation: Handle[Prs3dPresentation]; aCurve: Adaptor3dCurve;
         aDrawer: Handle[Prs3dDrawer]) {.importcpp: "StdPrs_PoleCurve::Add(@)",
                                       header: "StdPrs_PoleCurve.hxx".}
proc match*(x: cfloat; y: cfloat; z: cfloat; aDistance: cfloat; aCurve: Adaptor3dCurve;
           aDrawer: Handle[Prs3dDrawer]): bool {.
    importcpp: "StdPrs_PoleCurve::Match(@)", header: "StdPrs_PoleCurve.hxx".}
proc pick*(x: cfloat; y: cfloat; z: cfloat; aDistance: cfloat; aCurve: Adaptor3dCurve;
          aDrawer: Handle[Prs3dDrawer]): cint {.
    importcpp: "StdPrs_PoleCurve::Pick(@)", header: "StdPrs_PoleCurve.hxx".}

























