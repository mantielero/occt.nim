##  Created on: 1995-06-22
##  Created by: Flore Lantheaume
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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../ChFi3d/ChFi3d_ChBuilder,
  ../TopTools/TopTools_MapOfShape, BRepFilletAPI_LocalOperation,
  ../Standard/Standard_Real, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean, ../TopTools/TopTools_ListOfShape,
  ../ChFiDS/ChFiDS_SecHArray1

discard "forward decl of StdFail_NotDone"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of TopOpeBRepBuild_HBuilder"
type
  BRepFilletAPI_MakeChamfer* {.importcpp: "BRepFilletAPI_MakeChamfer",
                              header: "BRepFilletAPI_MakeChamfer.hxx", bycopy.} = object of BRepFilletAPI_LocalOperation ##
                                                                                                                  ## !
                                                                                                                  ## Initializes
                                                                                                                  ## an
                                                                                                                  ## algorithm
                                                                                                                  ## for
                                                                                                                  ## computing
                                                                                                                  ## chamfers
                                                                                                                  ## on
                                                                                                                  ## the
                                                                                                                  ## shape
                                                                                                                  ## S.
                                                                                                                  ##
                                                                                                                  ## !
                                                                                                                  ## The
                                                                                                                  ## edges
                                                                                                                  ## on
                                                                                                                  ## which
                                                                                                                  ## chamfers
                                                                                                                  ## are
                                                                                                                  ## built
                                                                                                                  ## are
                                                                                                                  ## defined
                                                                                                                  ## using
                                                                                                                  ## the
                                                                                                                  ## Add
                                                                                                                  ## function.


proc constructBRepFilletAPI_MakeChamfer*(S: TopoDS_Shape): BRepFilletAPI_MakeChamfer {.
    constructor, importcpp: "BRepFilletAPI_MakeChamfer(@)",
    header: "BRepFilletAPI_MakeChamfer.hxx".}
proc Add*(this: var BRepFilletAPI_MakeChamfer; E: TopoDS_Edge) {.importcpp: "Add",
    header: "BRepFilletAPI_MakeChamfer.hxx".}
proc Add*(this: var BRepFilletAPI_MakeChamfer; Dis: Standard_Real; E: TopoDS_Edge) {.
    importcpp: "Add", header: "BRepFilletAPI_MakeChamfer.hxx".}
proc SetDist*(this: var BRepFilletAPI_MakeChamfer; Dis: Standard_Real;
             IC: Standard_Integer; F: TopoDS_Face) {.importcpp: "SetDist",
    header: "BRepFilletAPI_MakeChamfer.hxx".}
proc GetDist*(this: BRepFilletAPI_MakeChamfer; IC: Standard_Integer;
             Dis: var Standard_Real) {.noSideEffect, importcpp: "GetDist",
                                    header: "BRepFilletAPI_MakeChamfer.hxx".}
proc Add*(this: var BRepFilletAPI_MakeChamfer; Dis1: Standard_Real;
         Dis2: Standard_Real; E: TopoDS_Edge; F: TopoDS_Face) {.importcpp: "Add",
    header: "BRepFilletAPI_MakeChamfer.hxx".}
proc SetDists*(this: var BRepFilletAPI_MakeChamfer; Dis1: Standard_Real;
              Dis2: Standard_Real; IC: Standard_Integer; F: TopoDS_Face) {.
    importcpp: "SetDists", header: "BRepFilletAPI_MakeChamfer.hxx".}
proc Dists*(this: BRepFilletAPI_MakeChamfer; IC: Standard_Integer;
           Dis1: var Standard_Real; Dis2: var Standard_Real) {.noSideEffect,
    importcpp: "Dists", header: "BRepFilletAPI_MakeChamfer.hxx".}
proc AddDA*(this: var BRepFilletAPI_MakeChamfer; Dis: Standard_Real;
           Angle: Standard_Real; E: TopoDS_Edge; F: TopoDS_Face) {.importcpp: "AddDA",
    header: "BRepFilletAPI_MakeChamfer.hxx".}
proc SetDistAngle*(this: var BRepFilletAPI_MakeChamfer; Dis: Standard_Real;
                  Angle: Standard_Real; IC: Standard_Integer; F: TopoDS_Face) {.
    importcpp: "SetDistAngle", header: "BRepFilletAPI_MakeChamfer.hxx".}
proc GetDistAngle*(this: BRepFilletAPI_MakeChamfer; IC: Standard_Integer;
                  Dis: var Standard_Real; Angle: var Standard_Real) {.noSideEffect,
    importcpp: "GetDistAngle", header: "BRepFilletAPI_MakeChamfer.hxx".}
proc SetMode*(this: var BRepFilletAPI_MakeChamfer; theMode: ChFiDS_ChamfMode) {.
    importcpp: "SetMode", header: "BRepFilletAPI_MakeChamfer.hxx".}
proc IsSymetric*(this: BRepFilletAPI_MakeChamfer; IC: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsSymetric", header: "BRepFilletAPI_MakeChamfer.hxx".}
proc IsTwoDistances*(this: BRepFilletAPI_MakeChamfer; IC: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsTwoDistances",
    header: "BRepFilletAPI_MakeChamfer.hxx".}
proc IsDistanceAngle*(this: BRepFilletAPI_MakeChamfer; IC: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsDistanceAngle",
    header: "BRepFilletAPI_MakeChamfer.hxx".}
proc ResetContour*(this: var BRepFilletAPI_MakeChamfer; IC: Standard_Integer) {.
    importcpp: "ResetContour", header: "BRepFilletAPI_MakeChamfer.hxx".}
proc NbContours*(this: BRepFilletAPI_MakeChamfer): Standard_Integer {.noSideEffect,
    importcpp: "NbContours", header: "BRepFilletAPI_MakeChamfer.hxx".}
proc Contour*(this: BRepFilletAPI_MakeChamfer; E: TopoDS_Edge): Standard_Integer {.
    noSideEffect, importcpp: "Contour", header: "BRepFilletAPI_MakeChamfer.hxx".}
proc NbEdges*(this: BRepFilletAPI_MakeChamfer; I: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "NbEdges", header: "BRepFilletAPI_MakeChamfer.hxx".}
proc Edge*(this: BRepFilletAPI_MakeChamfer; I: Standard_Integer; J: Standard_Integer): TopoDS_Edge {.
    noSideEffect, importcpp: "Edge", header: "BRepFilletAPI_MakeChamfer.hxx".}
proc Remove*(this: var BRepFilletAPI_MakeChamfer; E: TopoDS_Edge) {.
    importcpp: "Remove", header: "BRepFilletAPI_MakeChamfer.hxx".}
proc Length*(this: BRepFilletAPI_MakeChamfer; IC: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "Length", header: "BRepFilletAPI_MakeChamfer.hxx".}
proc FirstVertex*(this: BRepFilletAPI_MakeChamfer; IC: Standard_Integer): TopoDS_Vertex {.
    noSideEffect, importcpp: "FirstVertex", header: "BRepFilletAPI_MakeChamfer.hxx".}
proc LastVertex*(this: BRepFilletAPI_MakeChamfer; IC: Standard_Integer): TopoDS_Vertex {.
    noSideEffect, importcpp: "LastVertex", header: "BRepFilletAPI_MakeChamfer.hxx".}
proc Abscissa*(this: BRepFilletAPI_MakeChamfer; IC: Standard_Integer;
              V: TopoDS_Vertex): Standard_Real {.noSideEffect,
    importcpp: "Abscissa", header: "BRepFilletAPI_MakeChamfer.hxx".}
proc RelativeAbscissa*(this: BRepFilletAPI_MakeChamfer; IC: Standard_Integer;
                      V: TopoDS_Vertex): Standard_Real {.noSideEffect,
    importcpp: "RelativeAbscissa", header: "BRepFilletAPI_MakeChamfer.hxx".}
proc ClosedAndTangent*(this: BRepFilletAPI_MakeChamfer; IC: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "ClosedAndTangent",
    header: "BRepFilletAPI_MakeChamfer.hxx".}
proc Closed*(this: BRepFilletAPI_MakeChamfer; IC: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "Closed", header: "BRepFilletAPI_MakeChamfer.hxx".}
proc Build*(this: var BRepFilletAPI_MakeChamfer) {.importcpp: "Build",
    header: "BRepFilletAPI_MakeChamfer.hxx".}
proc Reset*(this: var BRepFilletAPI_MakeChamfer) {.importcpp: "Reset",
    header: "BRepFilletAPI_MakeChamfer.hxx".}
proc Builder*(this: BRepFilletAPI_MakeChamfer): handle[TopOpeBRepBuild_HBuilder] {.
    noSideEffect, importcpp: "Builder", header: "BRepFilletAPI_MakeChamfer.hxx".}
proc Generated*(this: var BRepFilletAPI_MakeChamfer; EorV: TopoDS_Shape): TopTools_ListOfShape {.
    importcpp: "Generated", header: "BRepFilletAPI_MakeChamfer.hxx".}
proc Modified*(this: var BRepFilletAPI_MakeChamfer; F: TopoDS_Shape): TopTools_ListOfShape {.
    importcpp: "Modified", header: "BRepFilletAPI_MakeChamfer.hxx".}
proc IsDeleted*(this: var BRepFilletAPI_MakeChamfer; F: TopoDS_Shape): Standard_Boolean {.
    importcpp: "IsDeleted", header: "BRepFilletAPI_MakeChamfer.hxx".}
proc Simulate*(this: var BRepFilletAPI_MakeChamfer; IC: Standard_Integer) {.
    importcpp: "Simulate", header: "BRepFilletAPI_MakeChamfer.hxx".}
proc NbSurf*(this: BRepFilletAPI_MakeChamfer; IC: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "NbSurf", header: "BRepFilletAPI_MakeChamfer.hxx".}
proc Sect*(this: BRepFilletAPI_MakeChamfer; IC: Standard_Integer;
          IS: Standard_Integer): handle[ChFiDS_SecHArray1] {.noSideEffect,
    importcpp: "Sect", header: "BRepFilletAPI_MakeChamfer.hxx".}