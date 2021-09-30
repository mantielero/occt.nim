##  Created on: 1993-08-25
##  Created by: Bruno DUMORTIER
##  Copyright (c) 1993-1999 Matra Datavision
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

discard "forward decl of Geom2d_Curve"
discard "forward decl of Geom_Curve"
discard "forward decl of Geom_Surface"
discard "forward decl of Geom_Plane"
discard "forward decl of gp_Dir"
type
  GeomProjLib* {.importcpp: "GeomProjLib", header: "GeomProjLib.hxx", bycopy.} = object ##
                                                                                ## !
                                                                                ## gives
                                                                                ## the
                                                                                ## 2d-curve
                                                                                ## of
                                                                                ## a
                                                                                ## 3d-curve
                                                                                ## lying
                                                                                ## on
                                                                                ## a
                                                                                ##
                                                                                ## !
                                                                                ## surface
                                                                                ## (
                                                                                ## uses
                                                                                ## GeomProjLib_ProjectedCurve
                                                                                ## )
                                                                                ##
                                                                                ## !
                                                                                ## The
                                                                                ## 3dCurve
                                                                                ## is
                                                                                ## taken
                                                                                ## between
                                                                                ## the
                                                                                ## parametrization
                                                                                ##
                                                                                ## !
                                                                                ## range
                                                                                ## [First,
                                                                                ## Last]
                                                                                ##
                                                                                ## !
                                                                                ## <Tolerance>
                                                                                ## is
                                                                                ## used
                                                                                ## as
                                                                                ## input
                                                                                ## if
                                                                                ## the
                                                                                ## projection
                                                                                ## needs
                                                                                ##
                                                                                ## !
                                                                                ## an
                                                                                ## approximation.
                                                                                ## In
                                                                                ## this
                                                                                ## case,
                                                                                ## the
                                                                                ## reached
                                                                                ##
                                                                                ## !
                                                                                ## tolerance
                                                                                ## is
                                                                                ## set
                                                                                ## in
                                                                                ## <Tolerance>
                                                                                ## as
                                                                                ## output.
                                                                                ##
                                                                                ## !
                                                                                ## WARNING
                                                                                ## :
                                                                                ## if
                                                                                ## the
                                                                                ## projection
                                                                                ## has
                                                                                ## failed,
                                                                                ## this
                                                                                ##
                                                                                ## !
                                                                                ## method
                                                                                ## returns
                                                                                ## a
                                                                                ## null
                                                                                ## Handle.


proc curve2d*(c: Handle[GeomCurve]; first: cfloat; last: cfloat;
             s: Handle[GeomSurface]; uFirst: cfloat; uLast: cfloat; vFirst: cfloat;
             vLast: cfloat; tolerance: var cfloat): Handle[Geom2dCurve] {.
    importcpp: "GeomProjLib::Curve2d(@)", header: "GeomProjLib.hxx".}
proc curve2d*(c: Handle[GeomCurve]; first: cfloat; last: cfloat;
             s: Handle[GeomSurface]; tolerance: var cfloat): Handle[Geom2dCurve] {.
    importcpp: "GeomProjLib::Curve2d(@)", header: "GeomProjLib.hxx".}
proc curve2d*(c: Handle[GeomCurve]; first: cfloat; last: cfloat; s: Handle[GeomSurface]): Handle[
    Geom2dCurve] {.importcpp: "GeomProjLib::Curve2d(@)", header: "GeomProjLib.hxx".}
proc curve2d*(c: Handle[GeomCurve]; s: Handle[GeomSurface]): Handle[Geom2dCurve] {.
    importcpp: "GeomProjLib::Curve2d(@)", header: "GeomProjLib.hxx".}
proc curve2d*(c: Handle[GeomCurve]; s: Handle[GeomSurface]; uDeb: cfloat; uFin: cfloat;
             vDeb: cfloat; vFin: cfloat): Handle[Geom2dCurve] {.
    importcpp: "GeomProjLib::Curve2d(@)", header: "GeomProjLib.hxx".}
proc curve2d*(c: Handle[GeomCurve]; s: Handle[GeomSurface]; uDeb: cfloat; uFin: cfloat;
             vDeb: cfloat; vFin: cfloat; tolerance: var cfloat): Handle[Geom2dCurve] {.
    importcpp: "GeomProjLib::Curve2d(@)", header: "GeomProjLib.hxx".}
proc project*(c: Handle[GeomCurve]; s: Handle[GeomSurface]): Handle[GeomCurve] {.
    importcpp: "GeomProjLib::Project(@)", header: "GeomProjLib.hxx".}
proc projectOnPlane*(curve: Handle[GeomCurve]; plane: Handle[GeomPlane]; dir: Dir;
                    keepParametrization: bool): Handle[GeomCurve] {.
    importcpp: "GeomProjLib::ProjectOnPlane(@)", header: "GeomProjLib.hxx".}

























