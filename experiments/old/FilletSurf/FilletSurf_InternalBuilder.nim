##  Created on: 1996-07-26
##  Created by: s:	Maria PUMBORIOS
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

discard "forward decl of TopoDS_Shape"
discard "forward decl of ChFiDS_HElSpine"
discard "forward decl of ChFiDS_Spine"
discard "forward decl of BRepAdaptor_HSurface"
discard "forward decl of Adaptor3d_TopolTool"
discard "forward decl of BRepAdaptor_HCurve2d"
discard "forward decl of Geom_Surface"
discard "forward decl of TopoDS_Face"
discard "forward decl of Geom_Curve"
discard "forward decl of Geom2d_Curve"
discard "forward decl of Geom_TrimmedCurve"
type
  FilletSurfInternalBuilder* {.importcpp: "FilletSurf_InternalBuilder",
                              header: "FilletSurf_InternalBuilder.hxx", bycopy.} = object of ChFi3dFilBuilder ##
                                                                                                       ## !
                                                                                                       ## This
                                                                                                       ## method
                                                                                                       ## calculates
                                                                                                       ## the
                                                                                                       ## elements
                                                                                                       ## of
                                                                                                       ## construction
                                                                                                       ## of
                                                                                                       ## the
                                                                                                       ##
                                                                                                       ## !
                                                                                                       ## fillet
                                                                                                       ## (constant
                                                                                                       ## or
                                                                                                       ## evolutive).


proc constructFilletSurfInternalBuilder*(s: TopoDS_Shape; fShape: ChFi3dFilletShape = chFi3dPolynomial;
                                        ta: cfloat = 1.0e-2;
                                        tapp3d: cfloat = 1.0e-4;
                                        tapp2d: cfloat = 1.0e-5): FilletSurfInternalBuilder {.
    constructor, importcpp: "FilletSurf_InternalBuilder(@)",
    header: "FilletSurf_InternalBuilder.hxx".}
proc add*(this: var FilletSurfInternalBuilder; e: TopToolsListOfShape; r: cfloat): cint {.
    importcpp: "Add", header: "FilletSurf_InternalBuilder.hxx".}
proc perform*(this: var FilletSurfInternalBuilder) {.importcpp: "Perform",
    header: "FilletSurf_InternalBuilder.hxx".}
proc done*(this: FilletSurfInternalBuilder): bool {.noSideEffect, importcpp: "Done",
    header: "FilletSurf_InternalBuilder.hxx".}
proc nbSurface*(this: FilletSurfInternalBuilder): cint {.noSideEffect,
    importcpp: "NbSurface", header: "FilletSurf_InternalBuilder.hxx".}
proc surfaceFillet*(this: FilletSurfInternalBuilder; index: cint): Handle[GeomSurface] {.
    noSideEffect, importcpp: "SurfaceFillet",
    header: "FilletSurf_InternalBuilder.hxx".}
proc tolApp3d*(this: FilletSurfInternalBuilder; index: cint): cfloat {.noSideEffect,
    importcpp: "TolApp3d", header: "FilletSurf_InternalBuilder.hxx".}
proc supportFace1*(this: FilletSurfInternalBuilder; index: cint): TopoDS_Face {.
    noSideEffect, importcpp: "SupportFace1",
    header: "FilletSurf_InternalBuilder.hxx".}
proc supportFace2*(this: FilletSurfInternalBuilder; index: cint): TopoDS_Face {.
    noSideEffect, importcpp: "SupportFace2",
    header: "FilletSurf_InternalBuilder.hxx".}
proc curveOnFace1*(this: FilletSurfInternalBuilder; index: cint): Handle[GeomCurve] {.
    noSideEffect, importcpp: "CurveOnFace1",
    header: "FilletSurf_InternalBuilder.hxx".}
proc curveOnFace2*(this: FilletSurfInternalBuilder; index: cint): Handle[GeomCurve] {.
    noSideEffect, importcpp: "CurveOnFace2",
    header: "FilletSurf_InternalBuilder.hxx".}
proc pCurveOnFace1*(this: FilletSurfInternalBuilder; index: cint): Handle[Geom2dCurve] {.
    noSideEffect, importcpp: "PCurveOnFace1",
    header: "FilletSurf_InternalBuilder.hxx".}
proc pCurve1OnFillet*(this: FilletSurfInternalBuilder; index: cint): Handle[
    Geom2dCurve] {.noSideEffect, importcpp: "PCurve1OnFillet",
                  header: "FilletSurf_InternalBuilder.hxx".}
proc pCurveOnFace2*(this: FilletSurfInternalBuilder; index: cint): Handle[Geom2dCurve] {.
    noSideEffect, importcpp: "PCurveOnFace2",
    header: "FilletSurf_InternalBuilder.hxx".}
proc pCurve2OnFillet*(this: FilletSurfInternalBuilder; index: cint): Handle[
    Geom2dCurve] {.noSideEffect, importcpp: "PCurve2OnFillet",
                  header: "FilletSurf_InternalBuilder.hxx".}
proc firstParameter*(this: FilletSurfInternalBuilder): cfloat {.noSideEffect,
    importcpp: "FirstParameter", header: "FilletSurf_InternalBuilder.hxx".}
proc lastParameter*(this: FilletSurfInternalBuilder): cfloat {.noSideEffect,
    importcpp: "LastParameter", header: "FilletSurf_InternalBuilder.hxx".}
proc startSectionStatus*(this: FilletSurfInternalBuilder): FilletSurfStatusType {.
    noSideEffect, importcpp: "StartSectionStatus",
    header: "FilletSurf_InternalBuilder.hxx".}
proc endSectionStatus*(this: FilletSurfInternalBuilder): FilletSurfStatusType {.
    noSideEffect, importcpp: "EndSectionStatus",
    header: "FilletSurf_InternalBuilder.hxx".}
proc simulate*(this: var FilletSurfInternalBuilder) {.importcpp: "Simulate",
    header: "FilletSurf_InternalBuilder.hxx".}
proc nbSection*(this: FilletSurfInternalBuilder; indexSurf: cint): cint {.
    noSideEffect, importcpp: "NbSection", header: "FilletSurf_InternalBuilder.hxx".}
proc section*(this: FilletSurfInternalBuilder; indexSurf: cint; indexSec: cint;
             circ: var Handle[GeomTrimmedCurve]) {.noSideEffect,
    importcpp: "Section", header: "FilletSurf_InternalBuilder.hxx".}

























