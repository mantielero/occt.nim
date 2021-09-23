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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../ChFi3d/ChFi3d_FilBuilder,
  ../ChFi3d/ChFi3d_FilletShape, ../Standard/Standard_Real,
  ../Standard/Standard_Integer, ../TopTools/TopTools_ListOfShape,
  ../Standard/Standard_Boolean, ../ChFiDS/ChFiDS_SequenceOfSurfData,
  ../math/math_Vector, ../TopAbs/TopAbs_Orientation, FilletSurf_StatusType

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
  FilletSurf_InternalBuilder* {.importcpp: "FilletSurf_InternalBuilder",
                               header: "FilletSurf_InternalBuilder.hxx", bycopy.} = object of ChFi3d_FilBuilder ##
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


proc constructFilletSurf_InternalBuilder*(S: TopoDS_Shape;
    FShape: ChFi3d_FilletShape = ChFi3d_Polynomial; Ta: Standard_Real = 1.0e-2;
    Tapp3d: Standard_Real = 1.0e-4; Tapp2d: Standard_Real = 1.0e-5): FilletSurf_InternalBuilder {.
    constructor, importcpp: "FilletSurf_InternalBuilder(@)",
    header: "FilletSurf_InternalBuilder.hxx".}
proc Add*(this: var FilletSurf_InternalBuilder; E: TopTools_ListOfShape;
         R: Standard_Real): Standard_Integer {.importcpp: "Add",
    header: "FilletSurf_InternalBuilder.hxx".}
proc Perform*(this: var FilletSurf_InternalBuilder) {.importcpp: "Perform",
    header: "FilletSurf_InternalBuilder.hxx".}
proc Done*(this: FilletSurf_InternalBuilder): Standard_Boolean {.noSideEffect,
    importcpp: "Done", header: "FilletSurf_InternalBuilder.hxx".}
proc NbSurface*(this: FilletSurf_InternalBuilder): Standard_Integer {.noSideEffect,
    importcpp: "NbSurface", header: "FilletSurf_InternalBuilder.hxx".}
proc SurfaceFillet*(this: FilletSurf_InternalBuilder; Index: Standard_Integer): handle[
    Geom_Surface] {.noSideEffect, importcpp: "SurfaceFillet",
                   header: "FilletSurf_InternalBuilder.hxx".}
proc TolApp3d*(this: FilletSurf_InternalBuilder; Index: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "TolApp3d", header: "FilletSurf_InternalBuilder.hxx".}
proc SupportFace1*(this: FilletSurf_InternalBuilder; Index: Standard_Integer): TopoDS_Face {.
    noSideEffect, importcpp: "SupportFace1",
    header: "FilletSurf_InternalBuilder.hxx".}
proc SupportFace2*(this: FilletSurf_InternalBuilder; Index: Standard_Integer): TopoDS_Face {.
    noSideEffect, importcpp: "SupportFace2",
    header: "FilletSurf_InternalBuilder.hxx".}
proc CurveOnFace1*(this: FilletSurf_InternalBuilder; Index: Standard_Integer): handle[
    Geom_Curve] {.noSideEffect, importcpp: "CurveOnFace1",
                 header: "FilletSurf_InternalBuilder.hxx".}
proc CurveOnFace2*(this: FilletSurf_InternalBuilder; Index: Standard_Integer): handle[
    Geom_Curve] {.noSideEffect, importcpp: "CurveOnFace2",
                 header: "FilletSurf_InternalBuilder.hxx".}
proc PCurveOnFace1*(this: FilletSurf_InternalBuilder; Index: Standard_Integer): handle[
    Geom2d_Curve] {.noSideEffect, importcpp: "PCurveOnFace1",
                   header: "FilletSurf_InternalBuilder.hxx".}
proc PCurve1OnFillet*(this: FilletSurf_InternalBuilder; Index: Standard_Integer): handle[
    Geom2d_Curve] {.noSideEffect, importcpp: "PCurve1OnFillet",
                   header: "FilletSurf_InternalBuilder.hxx".}
proc PCurveOnFace2*(this: FilletSurf_InternalBuilder; Index: Standard_Integer): handle[
    Geom2d_Curve] {.noSideEffect, importcpp: "PCurveOnFace2",
                   header: "FilletSurf_InternalBuilder.hxx".}
proc PCurve2OnFillet*(this: FilletSurf_InternalBuilder; Index: Standard_Integer): handle[
    Geom2d_Curve] {.noSideEffect, importcpp: "PCurve2OnFillet",
                   header: "FilletSurf_InternalBuilder.hxx".}
proc FirstParameter*(this: FilletSurf_InternalBuilder): Standard_Real {.
    noSideEffect, importcpp: "FirstParameter",
    header: "FilletSurf_InternalBuilder.hxx".}
proc LastParameter*(this: FilletSurf_InternalBuilder): Standard_Real {.noSideEffect,
    importcpp: "LastParameter", header: "FilletSurf_InternalBuilder.hxx".}
proc StartSectionStatus*(this: FilletSurf_InternalBuilder): FilletSurf_StatusType {.
    noSideEffect, importcpp: "StartSectionStatus",
    header: "FilletSurf_InternalBuilder.hxx".}
proc EndSectionStatus*(this: FilletSurf_InternalBuilder): FilletSurf_StatusType {.
    noSideEffect, importcpp: "EndSectionStatus",
    header: "FilletSurf_InternalBuilder.hxx".}
proc Simulate*(this: var FilletSurf_InternalBuilder) {.importcpp: "Simulate",
    header: "FilletSurf_InternalBuilder.hxx".}
proc NbSection*(this: FilletSurf_InternalBuilder; IndexSurf: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "NbSection", header: "FilletSurf_InternalBuilder.hxx".}
proc Section*(this: FilletSurf_InternalBuilder; IndexSurf: Standard_Integer;
             IndexSec: Standard_Integer; Circ: var handle[Geom_TrimmedCurve]) {.
    noSideEffect, importcpp: "Section", header: "FilletSurf_InternalBuilder.hxx".}