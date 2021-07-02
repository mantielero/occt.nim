##  Created on: 1996-03-18
##  Created by: Stagiaire Frederic CALOONE
##  Copyright (c) 1996-1999 Matra Datavision
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

discard "forward decl of Geom_Plane"
discard "forward decl of Geom_Line"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of gp_Vec"
type
  GeomPlateBuildAveragePlane* {.importcpp: "GeomPlate_BuildAveragePlane",
                               header: "GeomPlate_BuildAveragePlane.hxx", bycopy.} = object ##
                                                                                       ## !
                                                                                       ## Tol
                                                                                       ## is
                                                                                       ## a
                                                                                       ## Tolerance
                                                                                       ## to
                                                                                       ## make
                                                                                       ## the
                                                                                       ## difference
                                                                                       ## between
                                                                                       ##
                                                                                       ## !
                                                                                       ## the
                                                                                       ## result
                                                                                       ## plane
                                                                                       ## and
                                                                                       ## the
                                                                                       ## result
                                                                                       ## line.
                                                                                       ##
                                                                                       ## !
                                                                                       ## if
                                                                                       ## POption
                                                                                       ## =
                                                                                       ## 1
                                                                                       ## :
                                                                                       ## automatical
                                                                                       ## parametrisation
                                                                                       ##
                                                                                       ## !
                                                                                       ## if
                                                                                       ## POption
                                                                                       ## =
                                                                                       ## 2
                                                                                       ## :
                                                                                       ## parametrisation
                                                                                       ## by
                                                                                       ## eigen
                                                                                       ## vectors
                                                                                       ##
                                                                                       ## !
                                                                                       ## if
                                                                                       ## NOption
                                                                                       ## =
                                                                                       ## 1
                                                                                       ## :
                                                                                       ## the
                                                                                       ## average
                                                                                       ## plane
                                                                                       ## is
                                                                                       ## the
                                                                                       ## inertial
                                                                                       ## plane.
                                                                                       ##
                                                                                       ## !
                                                                                       ## if
                                                                                       ## NOption
                                                                                       ## =
                                                                                       ## 2
                                                                                       ## :
                                                                                       ## the
                                                                                       ## average
                                                                                       ## plane
                                                                                       ## is
                                                                                       ## the
                                                                                       ## plane
                                                                                       ## of
                                                                                       ## max.
                                                                                       ## flux.
                                                                                       ##
                                                                                       ## !
                                                                                       ## Computes
                                                                                       ## a
                                                                                       ## base
                                                                                       ## of
                                                                                       ## the
                                                                                       ## average
                                                                                       ## plane
                                                                                       ## defined
                                                                                       ## by
                                                                                       ## (myG,N)
                                                                                       ##
                                                                                       ## !
                                                                                       ## using
                                                                                       ## eigen
                                                                                       ## vectors


proc constructGeomPlateBuildAveragePlane*(pts: Handle[TColgpHArray1OfPnt];
    nbBoundPoints: StandardInteger; tol: StandardReal; pOption: StandardInteger;
    nOption: StandardInteger): GeomPlateBuildAveragePlane {.constructor,
    importcpp: "GeomPlate_BuildAveragePlane(@)",
    header: "GeomPlate_BuildAveragePlane.hxx".}
proc constructGeomPlateBuildAveragePlane*(normals: TColgpSequenceOfVec;
    pts: Handle[TColgpHArray1OfPnt]): GeomPlateBuildAveragePlane {.constructor,
    importcpp: "GeomPlate_BuildAveragePlane(@)",
    header: "GeomPlate_BuildAveragePlane.hxx".}
proc plane*(this: GeomPlateBuildAveragePlane): Handle[GeomPlane] {.noSideEffect,
    importcpp: "Plane", header: "GeomPlate_BuildAveragePlane.hxx".}
proc line*(this: GeomPlateBuildAveragePlane): Handle[GeomLine] {.noSideEffect,
    importcpp: "Line", header: "GeomPlate_BuildAveragePlane.hxx".}
proc isPlane*(this: GeomPlateBuildAveragePlane): StandardBoolean {.noSideEffect,
    importcpp: "IsPlane", header: "GeomPlate_BuildAveragePlane.hxx".}
proc isLine*(this: GeomPlateBuildAveragePlane): StandardBoolean {.noSideEffect,
    importcpp: "IsLine", header: "GeomPlate_BuildAveragePlane.hxx".}
proc minMaxBox*(this: GeomPlateBuildAveragePlane; umin: var StandardReal;
               umax: var StandardReal; vmin: var StandardReal; vmax: var StandardReal) {.
    noSideEffect, importcpp: "MinMaxBox", header: "GeomPlate_BuildAveragePlane.hxx".}
proc halfSpace*(newNormals: TColgpSequenceOfVec; normals: var TColgpSequenceOfVec;
               bset: var GeomPlateSequenceOfAij; linTol: StandardReal;
               angTol: StandardReal): StandardBoolean {.
    importcpp: "GeomPlate_BuildAveragePlane::HalfSpace(@)",
    header: "GeomPlate_BuildAveragePlane.hxx".}

