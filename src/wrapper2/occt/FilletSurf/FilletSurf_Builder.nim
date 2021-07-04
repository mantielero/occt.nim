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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, FilletSurf_InternalBuilder, FilletSurf_StatusDone,
  FilletSurf_ErrorTypeStatus, ../TopTools/TopTools_ListOfShape,
  ../Standard/Standard_Real, ../Standard/Standard_Integer, FilletSurf_StatusType

discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of TopoDS_Shape"
discard "forward decl of Geom_Surface"
discard "forward decl of TopoDS_Face"
discard "forward decl of Geom_Curve"
discard "forward decl of Geom2d_Curve"
discard "forward decl of Geom_TrimmedCurve"
type
  FilletSurf_Builder* {.importcpp: "FilletSurf_Builder",
                       header: "FilletSurf_Builder.hxx", bycopy.} = object ## ! initialize  of the
                                                                      ## informations necessary for  the
                                                                      ## !
                                                                      ## computation of  the fillet on the
                                                                      ## ! Shape S from a list of edges E and a radius R.
                                                                      ## !
                                                                      ## ! Ta is the angular tolerance
                                                                      ## ! Tapp3d is the 3d
                                                                      ## approximation tolerance
                                                                      ## ! Tapp2d is the 2d
                                                                      ## approximation tolerance


proc constructFilletSurf_Builder*(S: TopoDS_Shape; E: TopTools_ListOfShape;
                                 R: Standard_Real; Ta: Standard_Real = 1.0e-2;
                                 Tapp3d: Standard_Real = 1.0e-4;
                                 Tapp2d: Standard_Real = 1.0e-5): FilletSurf_Builder {.
    constructor, importcpp: "FilletSurf_Builder(@)",
    header: "FilletSurf_Builder.hxx".}
proc Perform*(this: var FilletSurf_Builder) {.importcpp: "Perform",
    header: "FilletSurf_Builder.hxx".}
proc Simulate*(this: var FilletSurf_Builder) {.importcpp: "Simulate",
    header: "FilletSurf_Builder.hxx".}
proc IsDone*(this: FilletSurf_Builder): FilletSurf_StatusDone {.noSideEffect,
    importcpp: "IsDone", header: "FilletSurf_Builder.hxx".}
proc StatusError*(this: FilletSurf_Builder): FilletSurf_ErrorTypeStatus {.
    noSideEffect, importcpp: "StatusError", header: "FilletSurf_Builder.hxx".}
proc NbSurface*(this: FilletSurf_Builder): Standard_Integer {.noSideEffect,
    importcpp: "NbSurface", header: "FilletSurf_Builder.hxx".}
proc SurfaceFillet*(this: FilletSurf_Builder; Index: Standard_Integer): handle[
    Geom_Surface] {.noSideEffect, importcpp: "SurfaceFillet",
                   header: "FilletSurf_Builder.hxx".}
proc TolApp3d*(this: FilletSurf_Builder; Index: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "TolApp3d", header: "FilletSurf_Builder.hxx".}
proc SupportFace1*(this: FilletSurf_Builder; Index: Standard_Integer): TopoDS_Face {.
    noSideEffect, importcpp: "SupportFace1", header: "FilletSurf_Builder.hxx".}
proc SupportFace2*(this: FilletSurf_Builder; Index: Standard_Integer): TopoDS_Face {.
    noSideEffect, importcpp: "SupportFace2", header: "FilletSurf_Builder.hxx".}
proc CurveOnFace1*(this: FilletSurf_Builder; Index: Standard_Integer): handle[
    Geom_Curve] {.noSideEffect, importcpp: "CurveOnFace1",
                 header: "FilletSurf_Builder.hxx".}
proc CurveOnFace2*(this: FilletSurf_Builder; Index: Standard_Integer): handle[
    Geom_Curve] {.noSideEffect, importcpp: "CurveOnFace2",
                 header: "FilletSurf_Builder.hxx".}
proc PCurveOnFace1*(this: FilletSurf_Builder; Index: Standard_Integer): handle[
    Geom2d_Curve] {.noSideEffect, importcpp: "PCurveOnFace1",
                   header: "FilletSurf_Builder.hxx".}
proc PCurve1OnFillet*(this: FilletSurf_Builder; Index: Standard_Integer): handle[
    Geom2d_Curve] {.noSideEffect, importcpp: "PCurve1OnFillet",
                   header: "FilletSurf_Builder.hxx".}
proc PCurveOnFace2*(this: FilletSurf_Builder; Index: Standard_Integer): handle[
    Geom2d_Curve] {.noSideEffect, importcpp: "PCurveOnFace2",
                   header: "FilletSurf_Builder.hxx".}
proc PCurve2OnFillet*(this: FilletSurf_Builder; Index: Standard_Integer): handle[
    Geom2d_Curve] {.noSideEffect, importcpp: "PCurve2OnFillet",
                   header: "FilletSurf_Builder.hxx".}
proc FirstParameter*(this: FilletSurf_Builder): Standard_Real {.noSideEffect,
    importcpp: "FirstParameter", header: "FilletSurf_Builder.hxx".}
proc LastParameter*(this: FilletSurf_Builder): Standard_Real {.noSideEffect,
    importcpp: "LastParameter", header: "FilletSurf_Builder.hxx".}
proc StartSectionStatus*(this: FilletSurf_Builder): FilletSurf_StatusType {.
    noSideEffect, importcpp: "StartSectionStatus", header: "FilletSurf_Builder.hxx".}
proc EndSectionStatus*(this: FilletSurf_Builder): FilletSurf_StatusType {.
    noSideEffect, importcpp: "EndSectionStatus", header: "FilletSurf_Builder.hxx".}
proc NbSection*(this: FilletSurf_Builder; IndexSurf: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "NbSection", header: "FilletSurf_Builder.hxx".}
proc Section*(this: FilletSurf_Builder; IndexSurf: Standard_Integer;
             IndexSec: Standard_Integer; Circ: var handle[Geom_TrimmedCurve]) {.
    noSideEffect, importcpp: "Section", header: "FilletSurf_Builder.hxx".}