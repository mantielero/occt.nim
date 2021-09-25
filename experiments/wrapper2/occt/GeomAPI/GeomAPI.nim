##  Created on: 1994-03-17
##  Created by: Bruno DUMORTIER
##  Copyright (c) 1994-1999 Matra Datavision
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

discard "forward decl of gp_Pln"
discard "forward decl of GeomAPI_ProjectPointOnCurve"
discard "forward decl of GeomAPI_ProjectPointOnSurf"
discard "forward decl of GeomAPI_ExtremaCurveCurve"
discard "forward decl of GeomAPI_ExtremaCurveSurface"
discard "forward decl of GeomAPI_ExtremaSurfaceSurface"
discard "forward decl of GeomAPI_PointsToBSpline"
discard "forward decl of GeomAPI_PointsToBSplineSurface"
discard "forward decl of GeomAPI_Interpolate"
discard "forward decl of GeomAPI_IntSS"
discard "forward decl of GeomAPI_IntCS"
type
  GeomAPI* {.importcpp: "GeomAPI", header: "GeomAPI.hxx", bycopy.} = object ## ! This function builds (in the
                                                                    ## ! parametric space of the plane P) a 2D curve equivalent to the 3D curve
                                                                    ## ! C. The 3D curve C is considered to be located in the plane P.
                                                                    ## ! Warning
                                                                    ## ! The 3D curve C must be of one of the following types:
                                                                    ## ! -      a line
                                                                    ## ! -      a circle
                                                                    ## ! -      an ellipse
                                                                    ## ! -      a hyperbola
                                                                    ## ! -      a parabola
                                                                    ## ! -      a Bezier curve
                                                                    ## ! -      a BSpline curve
                                                                    ## ! Exceptions
                                                                    ## Standard_NoSuchObject if C is not a defined type curve.


proc to2d*(c: Handle[GeomCurve]; p: Pln): Handle[Geom2dCurve] {.
    importcpp: "GeomAPI::To2d(@)", header: "GeomAPI.hxx".}
proc to3d*(c: Handle[Geom2dCurve]; p: Pln): Handle[GeomCurve] {.
    importcpp: "GeomAPI::To3d(@)", header: "GeomAPI.hxx".}
