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

import
  ../Prs3d/Prs3d_Root, ../Prs3d/Prs3d_Drawer

discard "forward decl of Adaptor3d_Curve"
type
  StdPrs_PoleCurve* {.importcpp: "StdPrs_PoleCurve",
                     header: "StdPrs_PoleCurve.hxx", bycopy.} = object of Prs3d_Root ## !
                                                                              ## Defines
                                                                              ## display of
                                                                              ## BSpline
                                                                              ## and
                                                                              ## Bezier
                                                                              ## curves.
                                                                              ## !
                                                                              ## Adds
                                                                              ## the 3D
                                                                              ## curve
                                                                              ## aCurve to
                                                                              ## the
                                                                              ## !
                                                                              ## StdPrs_PoleCurve
                                                                              ## algorithm.
                                                                              ## This
                                                                              ## shape is
                                                                              ## found in
                                                                              ## !
                                                                              ## the
                                                                              ## presentation
                                                                              ## object
                                                                              ## aPresentation,
                                                                              ## and
                                                                              ## its
                                                                              ## display
                                                                              ## !
                                                                              ## attributes
                                                                              ## are
                                                                              ## set in
                                                                              ## the
                                                                              ## attribute
                                                                              ## manager
                                                                              ## aDrawer.
                                                                              ## !
                                                                              ## The
                                                                              ## curve
                                                                              ## object
                                                                              ## from
                                                                              ## Adaptor3d
                                                                              ## provides
                                                                              ## data
                                                                              ## from
                                                                              ## ! a
                                                                              ## Geom
                                                                              ## curve.
                                                                              ## This
                                                                              ## makes it
                                                                              ## possible to
                                                                              ## use
                                                                              ## the
                                                                              ## !
                                                                              ## surface in a
                                                                              ## geometric
                                                                              ## algorithm.


proc Add*(aPresentation: handle[Prs3d_Presentation]; aCurve: Adaptor3d_Curve;
         aDrawer: handle[Prs3d_Drawer]) {.importcpp: "StdPrs_PoleCurve::Add(@)",
                                        header: "StdPrs_PoleCurve.hxx".}
proc Match*(X: Standard_Real; Y: Standard_Real; Z: Standard_Real;
           aDistance: Standard_Real; aCurve: Adaptor3d_Curve;
           aDrawer: handle[Prs3d_Drawer]): Standard_Boolean {.
    importcpp: "StdPrs_PoleCurve::Match(@)", header: "StdPrs_PoleCurve.hxx".}
proc Pick*(X: Standard_Real; Y: Standard_Real; Z: Standard_Real;
          aDistance: Standard_Real; aCurve: Adaptor3d_Curve;
          aDrawer: handle[Prs3d_Drawer]): Standard_Integer {.
    importcpp: "StdPrs_PoleCurve::Pick(@)", header: "StdPrs_PoleCurve.hxx".}