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

discard "forward decl of Adaptor3d_Surface"
discard "forward decl of Bnd_Box"
discard "forward decl of gp_Cylinder"
discard "forward decl of gp_Cone"
discard "forward decl of gp_Sphere"
type
  BndLibAddSurface* {.importcpp: "BndLib_AddSurface",
                     header: "BndLib_AddSurface.hxx", bycopy.} = object ## ! Adds to the bounding box B the surface S
                                                                   ## ! B is then enlarged by the tolerance value Tol.
                                                                   ## ! Note: depending on the type of curve, one of the following
                                                                   ## !
                                                                   ## representations of the surface S is used to include it in the bounding box B:
                                                                   ## ! -   an exact
                                                                   ## representation if S is built from a plane, a
                                                                   ## ! cylinder, a cone, a sphere or a torus,
                                                                   ## ! -   the poles of the surface if S is built from a Bezier
                                                                   ## ! surface or a BSpline surface,
                                                                   ## ! -   the points of an approximation of the surface S in
                                                                   ## ! cases other than offset surfaces;
                                                                   ## ! -   in the case of an offset surface, the basis surface is first
                                                                   ## ! included according to the previous rules; then the
                                                                   ## ! bounding box is enlarged by the offset value.
                                                                   ## ! Warning
                                                                   ## ! Do not use these functions to add a non-finite surface to
                                                                   ## ! the bounding box B.
                                                                   ## ! If UMin, UMax, VMin or VMax is an infinite value B will become WholeSpace.
                                                                   ## ! S is an adapted surface, that is, an object which is an interface between:
                                                                   ## ! -   the services provided by a surface from the package Geom
                                                                   ## ! -   and those required of the surface by the computation algorithm.
                                                                   ## ! The adapted surface is created in the following way:
                                                                   ## !
                                                                   ## Handle(Geom_Surface) mysurface = ... ;
                                                                   ## !
                                                                   ## GeomAdaptor_Surface S(mysurface);
                                                                   ## ! The bounding box B is then enlarged by adding this surface:
                                                                   ## ! Bnd_Box B;
                                                                   ## ! // ...
                                                                   ## ! Standard_Real Tol = ... ;
                                                                   ## !
                                                                   ## AddSurface::Add ( S, Tol, B );


proc add*(s: Adaptor3dSurface; tol: StandardReal; b: var BndBox) {.
    importcpp: "BndLib_AddSurface::Add(@)", header: "BndLib_AddSurface.hxx".}
proc add*(s: Adaptor3dSurface; uMin: StandardReal; uMax: StandardReal;
         vMin: StandardReal; vMax: StandardReal; tol: StandardReal; b: var BndBox) {.
    importcpp: "BndLib_AddSurface::Add(@)", header: "BndLib_AddSurface.hxx".}
proc addOptimal*(s: Adaptor3dSurface; tol: StandardReal; b: var BndBox) {.
    importcpp: "BndLib_AddSurface::AddOptimal(@)", header: "BndLib_AddSurface.hxx".}
proc addOptimal*(s: Adaptor3dSurface; uMin: StandardReal; uMax: StandardReal;
                vMin: StandardReal; vMax: StandardReal; tol: StandardReal;
                b: var BndBox) {.importcpp: "BndLib_AddSurface::AddOptimal(@)",
                              header: "BndLib_AddSurface.hxx".}
proc addGenSurf*(s: Adaptor3dSurface; uMin: StandardReal; uMax: StandardReal;
                vMin: StandardReal; vMax: StandardReal; tol: StandardReal;
                b: var BndBox) {.importcpp: "BndLib_AddSurface::AddGenSurf(@)",
                              header: "BndLib_AddSurface.hxx".}

