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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TColgp/TColgp_HArray1OfPnt,
  ../Standard/Standard_Real, ../gp/gp_Vec, ../gp/gp_Pnt,
  ../Standard/Standard_Integer, ../TColgp/TColgp_SequenceOfVec,
  ../Standard/Standard_Boolean, GeomPlate_SequenceOfAij

discard "forward decl of Geom_Plane"
discard "forward decl of Geom_Line"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of gp_Vec"
type
  GeomPlate_BuildAveragePlane* {.importcpp: "GeomPlate_BuildAveragePlane",
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


proc constructGeomPlate_BuildAveragePlane*(Pts: handle[TColgp_HArray1OfPnt];
    NbBoundPoints: Standard_Integer; Tol: Standard_Real; POption: Standard_Integer;
    NOption: Standard_Integer): GeomPlate_BuildAveragePlane {.constructor,
    importcpp: "GeomPlate_BuildAveragePlane(@)",
    header: "GeomPlate_BuildAveragePlane.hxx".}
proc constructGeomPlate_BuildAveragePlane*(Normals: TColgp_SequenceOfVec;
    Pts: handle[TColgp_HArray1OfPnt]): GeomPlate_BuildAveragePlane {.constructor,
    importcpp: "GeomPlate_BuildAveragePlane(@)",
    header: "GeomPlate_BuildAveragePlane.hxx".}
proc Plane*(this: GeomPlate_BuildAveragePlane): handle[Geom_Plane] {.noSideEffect,
    importcpp: "Plane", header: "GeomPlate_BuildAveragePlane.hxx".}
proc Line*(this: GeomPlate_BuildAveragePlane): handle[Geom_Line] {.noSideEffect,
    importcpp: "Line", header: "GeomPlate_BuildAveragePlane.hxx".}
proc IsPlane*(this: GeomPlate_BuildAveragePlane): Standard_Boolean {.noSideEffect,
    importcpp: "IsPlane", header: "GeomPlate_BuildAveragePlane.hxx".}
proc IsLine*(this: GeomPlate_BuildAveragePlane): Standard_Boolean {.noSideEffect,
    importcpp: "IsLine", header: "GeomPlate_BuildAveragePlane.hxx".}
proc MinMaxBox*(this: GeomPlate_BuildAveragePlane; Umin: var Standard_Real;
               Umax: var Standard_Real; Vmin: var Standard_Real;
               Vmax: var Standard_Real) {.noSideEffect, importcpp: "MinMaxBox", header: "GeomPlate_BuildAveragePlane.hxx".}
proc HalfSpace*(NewNormals: TColgp_SequenceOfVec;
               Normals: var TColgp_SequenceOfVec;
               Bset: var GeomPlate_SequenceOfAij; LinTol: Standard_Real;
               AngTol: Standard_Real): Standard_Boolean {.
    importcpp: "GeomPlate_BuildAveragePlane::HalfSpace(@)",
    header: "GeomPlate_BuildAveragePlane.hxx".}