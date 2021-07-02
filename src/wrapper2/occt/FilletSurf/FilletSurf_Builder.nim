##  Created on: 1996-07-26
##  Created by: Maria PUMBORIOS
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

discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of TopoDS_Shape"
discard "forward decl of Geom_Surface"
discard "forward decl of TopoDS_Face"
discard "forward decl of Geom_Curve"
discard "forward decl of Geom2d_Curve"
discard "forward decl of Geom_TrimmedCurve"
type
  FilletSurfBuilder* {.importcpp: "FilletSurf_Builder",
                      header: "FilletSurf_Builder.hxx", bycopy.} = object ## ! initialize  of the
                                                                     ## informations necessary for  the
                                                                     ## ! computation of  the fillet on the
                                                                     ## ! Shape S from a list of edges E and a radius R.
                                                                     ## !
                                                                     ## ! Ta is the angular tolerance
                                                                     ## ! Tapp3d is the 3d
                                                                     ## approximation tolerance
                                                                     ## ! Tapp2d is the 2d
                                                                     ## approximation tolerance


proc constructFilletSurfBuilder*(s: TopoDS_Shape; e: TopToolsListOfShape;
                                r: StandardReal; ta: StandardReal = 1.0e-2;
                                tapp3d: StandardReal = 1.0e-4;
                                tapp2d: StandardReal = 1.0e-5): FilletSurfBuilder {.
    constructor, importcpp: "FilletSurf_Builder(@)",
    header: "FilletSurf_Builder.hxx".}
proc perform*(this: var FilletSurfBuilder) {.importcpp: "Perform",
    header: "FilletSurf_Builder.hxx".}
proc simulate*(this: var FilletSurfBuilder) {.importcpp: "Simulate",
    header: "FilletSurf_Builder.hxx".}
proc isDone*(this: FilletSurfBuilder): FilletSurfStatusDone {.noSideEffect,
    importcpp: "IsDone", header: "FilletSurf_Builder.hxx".}
proc statusError*(this: FilletSurfBuilder): FilletSurfErrorTypeStatus {.
    noSideEffect, importcpp: "StatusError", header: "FilletSurf_Builder.hxx".}
proc nbSurface*(this: FilletSurfBuilder): StandardInteger {.noSideEffect,
    importcpp: "NbSurface", header: "FilletSurf_Builder.hxx".}
proc surfaceFillet*(this: FilletSurfBuilder; index: StandardInteger): Handle[
    GeomSurface] {.noSideEffect, importcpp: "SurfaceFillet",
                  header: "FilletSurf_Builder.hxx".}
proc tolApp3d*(this: FilletSurfBuilder; index: StandardInteger): StandardReal {.
    noSideEffect, importcpp: "TolApp3d", header: "FilletSurf_Builder.hxx".}
proc supportFace1*(this: FilletSurfBuilder; index: StandardInteger): TopoDS_Face {.
    noSideEffect, importcpp: "SupportFace1", header: "FilletSurf_Builder.hxx".}
proc supportFace2*(this: FilletSurfBuilder; index: StandardInteger): TopoDS_Face {.
    noSideEffect, importcpp: "SupportFace2", header: "FilletSurf_Builder.hxx".}
proc curveOnFace1*(this: FilletSurfBuilder; index: StandardInteger): Handle[GeomCurve] {.
    noSideEffect, importcpp: "CurveOnFace1", header: "FilletSurf_Builder.hxx".}
proc curveOnFace2*(this: FilletSurfBuilder; index: StandardInteger): Handle[GeomCurve] {.
    noSideEffect, importcpp: "CurveOnFace2", header: "FilletSurf_Builder.hxx".}
proc pCurveOnFace1*(this: FilletSurfBuilder; index: StandardInteger): Handle[
    Geom2dCurve] {.noSideEffect, importcpp: "PCurveOnFace1",
                  header: "FilletSurf_Builder.hxx".}
proc pCurve1OnFillet*(this: FilletSurfBuilder; index: StandardInteger): Handle[
    Geom2dCurve] {.noSideEffect, importcpp: "PCurve1OnFillet",
                  header: "FilletSurf_Builder.hxx".}
proc pCurveOnFace2*(this: FilletSurfBuilder; index: StandardInteger): Handle[
    Geom2dCurve] {.noSideEffect, importcpp: "PCurveOnFace2",
                  header: "FilletSurf_Builder.hxx".}
proc pCurve2OnFillet*(this: FilletSurfBuilder; index: StandardInteger): Handle[
    Geom2dCurve] {.noSideEffect, importcpp: "PCurve2OnFillet",
                  header: "FilletSurf_Builder.hxx".}
proc firstParameter*(this: FilletSurfBuilder): StandardReal {.noSideEffect,
    importcpp: "FirstParameter", header: "FilletSurf_Builder.hxx".}
proc lastParameter*(this: FilletSurfBuilder): StandardReal {.noSideEffect,
    importcpp: "LastParameter", header: "FilletSurf_Builder.hxx".}
proc startSectionStatus*(this: FilletSurfBuilder): FilletSurfStatusType {.
    noSideEffect, importcpp: "StartSectionStatus", header: "FilletSurf_Builder.hxx".}
proc endSectionStatus*(this: FilletSurfBuilder): FilletSurfStatusType {.
    noSideEffect, importcpp: "EndSectionStatus", header: "FilletSurf_Builder.hxx".}
proc nbSection*(this: FilletSurfBuilder; indexSurf: StandardInteger): StandardInteger {.
    noSideEffect, importcpp: "NbSection", header: "FilletSurf_Builder.hxx".}
proc section*(this: FilletSurfBuilder; indexSurf: StandardInteger;
             indexSec: StandardInteger; circ: var Handle[GeomTrimmedCurve]) {.
    noSideEffect, importcpp: "Section", header: "FilletSurf_Builder.hxx".}

