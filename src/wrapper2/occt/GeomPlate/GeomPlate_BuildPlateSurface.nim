##  Created on: 1996-04-03
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
  ../Standard/Standard_Handle, GeomPlate_HSequenceOfCurveConstraint,
  GeomPlate_HArray1OfSequenceOfReal, GeomPlate_HSequenceOfPointConstraint,
  ../Plate/Plate_Plate, ../Standard/Standard_Boolean,
  ../TColStd/TColStd_HArray1OfInteger, ../Standard/Standard_Integer,
  ../Standard/Standard_Real, ../Extrema/Extrema_ExtPS, GeomPlate_HArray1OfHCurve,
  ../TColgp/TColgp_SequenceOfXY, ../TColgp/TColgp_SequenceOfXYZ,
  ../TColGeom2d/TColGeom2d_HArray1OfCurve, ../TColStd/TColStd_HArray1OfReal

discard "forward decl of Geom_Surface"
discard "forward decl of GeomPlate_Surface"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_RangeError"
discard "forward decl of GeomPlate_CurveConstraint"
discard "forward decl of GeomPlate_PointConstraint"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Pnt"
discard "forward decl of Geom2d_Curve"
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of Adaptor2d_HCurve2d"
type
  GeomPlate_BuildPlateSurface* {.importcpp: "GeomPlate_BuildPlateSurface",
                                header: "GeomPlate_BuildPlateSurface.hxx", bycopy.} = object ##
                                                                                        ## !
                                                                                        ## Constructor
                                                                                        ## compatible
                                                                                        ## with
                                                                                        ## the
                                                                                        ## old
                                                                                        ## version
                                                                                        ##
                                                                                        ## !
                                                                                        ## with
                                                                                        ## this
                                                                                        ## constructor
                                                                                        ## the
                                                                                        ## constraint
                                                                                        ## are
                                                                                        ## given
                                                                                        ## in
                                                                                        ## a
                                                                                        ## Array
                                                                                        ## of
                                                                                        ## Curve
                                                                                        ## on
                                                                                        ## Surface
                                                                                        ##
                                                                                        ## !
                                                                                        ## The
                                                                                        ## array
                                                                                        ## NbPoints
                                                                                        ## contains
                                                                                        ## the
                                                                                        ## number
                                                                                        ## of
                                                                                        ## points
                                                                                        ## for
                                                                                        ## each
                                                                                        ## constraint.
                                                                                        ##
                                                                                        ## !
                                                                                        ## The
                                                                                        ## Array
                                                                                        ## Tang
                                                                                        ## contains
                                                                                        ## the
                                                                                        ## order
                                                                                        ## of
                                                                                        ## constraint
                                                                                        ## for
                                                                                        ## each
                                                                                        ## Constraint:
                                                                                        ## The
                                                                                        ## possible
                                                                                        ## values
                                                                                        ## for
                                                                                        ## this
                                                                                        ##
                                                                                        ## !
                                                                                        ## order
                                                                                        ## has
                                                                                        ## to
                                                                                        ## be
                                                                                        ## -1
                                                                                        ## ,
                                                                                        ## 0
                                                                                        ## ,
                                                                                        ## 1
                                                                                        ## ,
                                                                                        ## 2
                                                                                        ## .
                                                                                        ## Order
                                                                                        ## i
                                                                                        ## means
                                                                                        ## constraint
                                                                                        ## Gi.
                                                                                        ##
                                                                                        ## !
                                                                                        ## NbIter
                                                                                        ## is
                                                                                        ## the
                                                                                        ## maximum
                                                                                        ## number
                                                                                        ## of
                                                                                        ## iteration
                                                                                        ## to
                                                                                        ## optimise
                                                                                        ## the
                                                                                        ## number
                                                                                        ## of
                                                                                        ## points
                                                                                        ## for
                                                                                        ## resolution
                                                                                        ##
                                                                                        ## !
                                                                                        ## Degree
                                                                                        ## is
                                                                                        ## the
                                                                                        ## degree
                                                                                        ## of
                                                                                        ## resolution
                                                                                        ## for
                                                                                        ## Plate
                                                                                        ##
                                                                                        ## !
                                                                                        ## Tol2d
                                                                                        ## is
                                                                                        ## the
                                                                                        ## tolerance
                                                                                        ## used
                                                                                        ## to
                                                                                        ## test
                                                                                        ## if
                                                                                        ## two
                                                                                        ## points
                                                                                        ## of
                                                                                        ## different
                                                                                        ## constraint
                                                                                        ## are
                                                                                        ## identical
                                                                                        ## in
                                                                                        ## the
                                                                                        ##
                                                                                        ## !
                                                                                        ## parametric
                                                                                        ## space
                                                                                        ## of
                                                                                        ## the
                                                                                        ## initial
                                                                                        ## surface
                                                                                        ##
                                                                                        ## !
                                                                                        ## Tol3d
                                                                                        ## is
                                                                                        ## used
                                                                                        ## to
                                                                                        ## test
                                                                                        ## if
                                                                                        ## two
                                                                                        ## identical
                                                                                        ## points
                                                                                        ## in
                                                                                        ## the
                                                                                        ## 2d
                                                                                        ## space
                                                                                        ## are
                                                                                        ## identical
                                                                                        ## in
                                                                                        ## 3d
                                                                                        ## space
                                                                                        ##
                                                                                        ## !
                                                                                        ## TolAng
                                                                                        ## is
                                                                                        ## used
                                                                                        ## to
                                                                                        ## compare
                                                                                        ## the
                                                                                        ## angle
                                                                                        ## between
                                                                                        ## normal
                                                                                        ## of
                                                                                        ## two
                                                                                        ## identical
                                                                                        ## points
                                                                                        ## in
                                                                                        ## the
                                                                                        ## 2d
                                                                                        ## space
                                                                                        ##
                                                                                        ## !
                                                                                        ## Raises
                                                                                        ## ConstructionError;
                                                                                        ##
                                                                                        ## !
                                                                                        ## Evaluates
                                                                                        ## the
                                                                                        ## distance,
                                                                                        ## the
                                                                                        ## angle
                                                                                        ## between
                                                                                        ## normals,
                                                                                        ## and
                                                                                        ## the
                                                                                        ## "courbure"
                                                                                        ##
                                                                                        ## !
                                                                                        ## on
                                                                                        ## middle
                                                                                        ## points
                                                                                        ## of
                                                                                        ## contraints
                                                                                        ## an
                                                                                        ## corresponding
                                                                                        ## points
                                                                                        ## on
                                                                                        ## the
                                                                                        ## GeomPlate_Surface
                                                                                        ##
                                                                                        ## !
                                                                                        ## the
                                                                                        ## results
                                                                                        ## are
                                                                                        ## given
                                                                                        ## for
                                                                                        ## a
                                                                                        ## curve
                                                                                        ## c


proc constructGeomPlate_BuildPlateSurface*(
    NPoints: handle[TColStd_HArray1OfInteger];
    TabCurve: handle[GeomPlate_HArray1OfHCurve];
    Tang: handle[TColStd_HArray1OfInteger]; Degree: Standard_Integer;
    NbIter: Standard_Integer = 3; Tol2d: Standard_Real = 0.00001;
    Tol3d: Standard_Real = 0.0001; TolAng: Standard_Real = 0.01;
    TolCurv: Standard_Real = 0.1; Anisotropie: Standard_Boolean = Standard_False): GeomPlate_BuildPlateSurface {.
    constructor, importcpp: "GeomPlate_BuildPlateSurface(@)",
    header: "GeomPlate_BuildPlateSurface.hxx".}
proc constructGeomPlate_BuildPlateSurface*(Surf: handle[Geom_Surface];
    Degree: Standard_Integer = 3; NbPtsOnCur: Standard_Integer = 10;
    NbIter: Standard_Integer = 3; Tol2d: Standard_Real = 0.00001;
    Tol3d: Standard_Real = 0.0001; TolAng: Standard_Real = 0.01;
    TolCurv: Standard_Real = 0.1; Anisotropie: Standard_Boolean = Standard_False): GeomPlate_BuildPlateSurface {.
    constructor, importcpp: "GeomPlate_BuildPlateSurface(@)",
    header: "GeomPlate_BuildPlateSurface.hxx".}
proc constructGeomPlate_BuildPlateSurface*(Degree: Standard_Integer = 3;
    NbPtsOnCur: Standard_Integer = 10; NbIter: Standard_Integer = 3;
    Tol2d: Standard_Real = 0.00001; Tol3d: Standard_Real = 0.0001;
    TolAng: Standard_Real = 0.01; TolCurv: Standard_Real = 0.1;
    Anisotropie: Standard_Boolean = Standard_False): GeomPlate_BuildPlateSurface {.
    constructor, importcpp: "GeomPlate_BuildPlateSurface(@)",
    header: "GeomPlate_BuildPlateSurface.hxx".}
proc Init*(this: var GeomPlate_BuildPlateSurface) {.importcpp: "Init",
    header: "GeomPlate_BuildPlateSurface.hxx".}
proc LoadInitSurface*(this: var GeomPlate_BuildPlateSurface;
                     Surf: handle[Geom_Surface]) {.importcpp: "LoadInitSurface",
    header: "GeomPlate_BuildPlateSurface.hxx".}
proc Add*(this: var GeomPlate_BuildPlateSurface;
         Cont: handle[GeomPlate_CurveConstraint]) {.importcpp: "Add",
    header: "GeomPlate_BuildPlateSurface.hxx".}
proc SetNbBounds*(this: var GeomPlate_BuildPlateSurface; NbBounds: Standard_Integer) {.
    importcpp: "SetNbBounds", header: "GeomPlate_BuildPlateSurface.hxx".}
proc Add*(this: var GeomPlate_BuildPlateSurface;
         Cont: handle[GeomPlate_PointConstraint]) {.importcpp: "Add",
    header: "GeomPlate_BuildPlateSurface.hxx".}
proc Perform*(this: var GeomPlate_BuildPlateSurface;
             theProgress: Message_ProgressRange = Message_ProgressRange()) {.
    importcpp: "Perform", header: "GeomPlate_BuildPlateSurface.hxx".}
proc CurveConstraint*(this: GeomPlate_BuildPlateSurface; order: Standard_Integer): handle[
    GeomPlate_CurveConstraint] {.noSideEffect, importcpp: "CurveConstraint",
                                header: "GeomPlate_BuildPlateSurface.hxx".}
proc PointConstraint*(this: GeomPlate_BuildPlateSurface; order: Standard_Integer): handle[
    GeomPlate_PointConstraint] {.noSideEffect, importcpp: "PointConstraint",
                                header: "GeomPlate_BuildPlateSurface.hxx".}
proc Disc2dContour*(this: var GeomPlate_BuildPlateSurface; nbp: Standard_Integer;
                   Seq2d: var TColgp_SequenceOfXY) {.importcpp: "Disc2dContour",
    header: "GeomPlate_BuildPlateSurface.hxx".}
proc Disc3dContour*(this: var GeomPlate_BuildPlateSurface; nbp: Standard_Integer;
                   iordre: Standard_Integer; Seq3d: var TColgp_SequenceOfXYZ) {.
    importcpp: "Disc3dContour", header: "GeomPlate_BuildPlateSurface.hxx".}
proc IsDone*(this: GeomPlate_BuildPlateSurface): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "GeomPlate_BuildPlateSurface.hxx".}
proc Surface*(this: GeomPlate_BuildPlateSurface): handle[GeomPlate_Surface] {.
    noSideEffect, importcpp: "Surface", header: "GeomPlate_BuildPlateSurface.hxx".}
proc SurfInit*(this: GeomPlate_BuildPlateSurface): handle[Geom_Surface] {.
    noSideEffect, importcpp: "SurfInit", header: "GeomPlate_BuildPlateSurface.hxx".}
proc Sense*(this: GeomPlate_BuildPlateSurface): handle[TColStd_HArray1OfInteger] {.
    noSideEffect, importcpp: "Sense", header: "GeomPlate_BuildPlateSurface.hxx".}
proc Curves2d*(this: GeomPlate_BuildPlateSurface): handle[TColGeom2d_HArray1OfCurve] {.
    noSideEffect, importcpp: "Curves2d", header: "GeomPlate_BuildPlateSurface.hxx".}
proc Order*(this: GeomPlate_BuildPlateSurface): handle[TColStd_HArray1OfInteger] {.
    noSideEffect, importcpp: "Order", header: "GeomPlate_BuildPlateSurface.hxx".}
proc G0Error*(this: GeomPlate_BuildPlateSurface): Standard_Real {.noSideEffect,
    importcpp: "G0Error", header: "GeomPlate_BuildPlateSurface.hxx".}
proc G1Error*(this: GeomPlate_BuildPlateSurface): Standard_Real {.noSideEffect,
    importcpp: "G1Error", header: "GeomPlate_BuildPlateSurface.hxx".}
proc G2Error*(this: GeomPlate_BuildPlateSurface): Standard_Real {.noSideEffect,
    importcpp: "G2Error", header: "GeomPlate_BuildPlateSurface.hxx".}
proc G0Error*(this: var GeomPlate_BuildPlateSurface; Index: Standard_Integer): Standard_Real {.
    importcpp: "G0Error", header: "GeomPlate_BuildPlateSurface.hxx".}
proc G1Error*(this: var GeomPlate_BuildPlateSurface; Index: Standard_Integer): Standard_Real {.
    importcpp: "G1Error", header: "GeomPlate_BuildPlateSurface.hxx".}
proc G2Error*(this: var GeomPlate_BuildPlateSurface; Index: Standard_Integer): Standard_Real {.
    importcpp: "G2Error", header: "GeomPlate_BuildPlateSurface.hxx".}