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
  GeomPlateBuildPlateSurface* {.importcpp: "GeomPlate_BuildPlateSurface",
                               header: "GeomPlate_BuildPlateSurface.hxx", bycopy.} = object ##
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


proc `new`*(this: var GeomPlateBuildPlateSurface; theSize: csize_t): pointer {.
    importcpp: "GeomPlate_BuildPlateSurface::operator new",
    header: "GeomPlate_BuildPlateSurface.hxx".}
proc `delete`*(this: var GeomPlateBuildPlateSurface; theAddress: pointer) {.
    importcpp: "GeomPlate_BuildPlateSurface::operator delete",
    header: "GeomPlate_BuildPlateSurface.hxx".}
proc `new[]`*(this: var GeomPlateBuildPlateSurface; theSize: csize_t): pointer {.
    importcpp: "GeomPlate_BuildPlateSurface::operator new[]",
    header: "GeomPlate_BuildPlateSurface.hxx".}
proc `delete[]`*(this: var GeomPlateBuildPlateSurface; theAddress: pointer) {.
    importcpp: "GeomPlate_BuildPlateSurface::operator delete[]",
    header: "GeomPlate_BuildPlateSurface.hxx".}
proc `new`*(this: var GeomPlateBuildPlateSurface; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "GeomPlate_BuildPlateSurface::operator new",
    header: "GeomPlate_BuildPlateSurface.hxx".}
proc `delete`*(this: var GeomPlateBuildPlateSurface; a2: pointer; a3: pointer) {.
    importcpp: "GeomPlate_BuildPlateSurface::operator delete",
    header: "GeomPlate_BuildPlateSurface.hxx".}
proc constructGeomPlateBuildPlateSurface*(
    nPoints: Handle[TColStdHArray1OfInteger];
    tabCurve: Handle[GeomPlateHArray1OfHCurve];
    tang: Handle[TColStdHArray1OfInteger]; degree: int; nbIter: int = 3;
    tol2d: StandardReal = 0.00001; tol3d: StandardReal = 0.0001;
    tolAng: StandardReal = 0.01; tolCurv: StandardReal = 0.1;
    anisotropie: StandardBoolean = false): GeomPlateBuildPlateSurface {.constructor,
    importcpp: "GeomPlate_BuildPlateSurface(@)",
    header: "GeomPlate_BuildPlateSurface.hxx".}
proc constructGeomPlateBuildPlateSurface*(surf: Handle[GeomSurface];
    degree: int = 3; nbPtsOnCur: int = 10; nbIter: int = 3; tol2d: StandardReal = 0.00001;
    tol3d: StandardReal = 0.0001; tolAng: StandardReal = 0.01;
    tolCurv: StandardReal = 0.1; anisotropie: StandardBoolean = false): GeomPlateBuildPlateSurface {.
    constructor, importcpp: "GeomPlate_BuildPlateSurface(@)",
    header: "GeomPlate_BuildPlateSurface.hxx".}
proc constructGeomPlateBuildPlateSurface*(degree: int = 3; nbPtsOnCur: int = 10;
    nbIter: int = 3; tol2d: StandardReal = 0.00001; tol3d: StandardReal = 0.0001;
    tolAng: StandardReal = 0.01; tolCurv: StandardReal = 0.1;
    anisotropie: StandardBoolean = false): GeomPlateBuildPlateSurface {.constructor,
    importcpp: "GeomPlate_BuildPlateSurface(@)",
    header: "GeomPlate_BuildPlateSurface.hxx".}
proc init*(this: var GeomPlateBuildPlateSurface) {.importcpp: "Init",
    header: "GeomPlate_BuildPlateSurface.hxx".}
proc loadInitSurface*(this: var GeomPlateBuildPlateSurface;
                     surf: Handle[GeomSurface]) {.importcpp: "LoadInitSurface",
    header: "GeomPlate_BuildPlateSurface.hxx".}
proc add*(this: var GeomPlateBuildPlateSurface;
         cont: Handle[GeomPlateCurveConstraint]) {.importcpp: "Add",
    header: "GeomPlate_BuildPlateSurface.hxx".}
proc setNbBounds*(this: var GeomPlateBuildPlateSurface; nbBounds: int) {.
    importcpp: "SetNbBounds", header: "GeomPlate_BuildPlateSurface.hxx".}
proc add*(this: var GeomPlateBuildPlateSurface;
         cont: Handle[GeomPlatePointConstraint]) {.importcpp: "Add",
    header: "GeomPlate_BuildPlateSurface.hxx".}
proc perform*(this: var GeomPlateBuildPlateSurface;
             theProgress: MessageProgressRange = messageProgressRange()) {.
    importcpp: "Perform", header: "GeomPlate_BuildPlateSurface.hxx".}
proc curveConstraint*(this: GeomPlateBuildPlateSurface; order: int): Handle[
    GeomPlateCurveConstraint] {.noSideEffect, importcpp: "CurveConstraint",
                               header: "GeomPlate_BuildPlateSurface.hxx".}
proc pointConstraint*(this: GeomPlateBuildPlateSurface; order: int): Handle[
    GeomPlatePointConstraint] {.noSideEffect, importcpp: "PointConstraint",
                               header: "GeomPlate_BuildPlateSurface.hxx".}
proc disc2dContour*(this: var GeomPlateBuildPlateSurface; nbp: int;
                   seq2d: var TColgpSequenceOfXY) {.importcpp: "Disc2dContour",
    header: "GeomPlate_BuildPlateSurface.hxx".}
proc disc3dContour*(this: var GeomPlateBuildPlateSurface; nbp: int; iordre: int;
                   seq3d: var TColgpSequenceOfXYZ) {.importcpp: "Disc3dContour",
    header: "GeomPlate_BuildPlateSurface.hxx".}
proc isDone*(this: GeomPlateBuildPlateSurface): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "GeomPlate_BuildPlateSurface.hxx".}
proc surface*(this: GeomPlateBuildPlateSurface): Handle[GeomPlateSurface] {.
    noSideEffect, importcpp: "Surface", header: "GeomPlate_BuildPlateSurface.hxx".}
proc surfInit*(this: GeomPlateBuildPlateSurface): Handle[GeomSurface] {.
    noSideEffect, importcpp: "SurfInit", header: "GeomPlate_BuildPlateSurface.hxx".}
proc sense*(this: GeomPlateBuildPlateSurface): Handle[TColStdHArray1OfInteger] {.
    noSideEffect, importcpp: "Sense", header: "GeomPlate_BuildPlateSurface.hxx".}
proc curves2d*(this: GeomPlateBuildPlateSurface): Handle[TColGeom2dHArray1OfCurve] {.
    noSideEffect, importcpp: "Curves2d", header: "GeomPlate_BuildPlateSurface.hxx".}
proc order*(this: GeomPlateBuildPlateSurface): Handle[TColStdHArray1OfInteger] {.
    noSideEffect, importcpp: "Order", header: "GeomPlate_BuildPlateSurface.hxx".}
proc g0Error*(this: GeomPlateBuildPlateSurface): StandardReal {.noSideEffect,
    importcpp: "G0Error", header: "GeomPlate_BuildPlateSurface.hxx".}
proc g1Error*(this: GeomPlateBuildPlateSurface): StandardReal {.noSideEffect,
    importcpp: "G1Error", header: "GeomPlate_BuildPlateSurface.hxx".}
proc g2Error*(this: GeomPlateBuildPlateSurface): StandardReal {.noSideEffect,
    importcpp: "G2Error", header: "GeomPlate_BuildPlateSurface.hxx".}
proc g0Error*(this: var GeomPlateBuildPlateSurface; index: int): StandardReal {.
    importcpp: "G0Error", header: "GeomPlate_BuildPlateSurface.hxx".}
proc g1Error*(this: var GeomPlateBuildPlateSurface; index: int): StandardReal {.
    importcpp: "G1Error", header: "GeomPlate_BuildPlateSurface.hxx".}
proc g2Error*(this: var GeomPlateBuildPlateSurface; index: int): StandardReal {.
    importcpp: "G2Error", header: "GeomPlate_BuildPlateSurface.hxx".}