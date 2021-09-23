##  Created on: 1995-07-17
##  Created by: Jing-Cheng MEI
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
  ../Standard/Standard_Handle, ../TopTools/TopTools_SequenceOfShape,
  ../Standard/Standard_Boolean, ../Standard/Standard_Real, ../TopoDS/TopoDS_Face,
  ../TopTools/TopTools_DataMapOfShapeShape,
  ../TopTools/TopTools_DataMapOfShapeListOfInteger,
  ../TopTools/TopTools_DataMapOfShapeInteger, ../GeomAbs/GeomAbs_Shape,
  ../Approx/Approx_ParametrizationType, ../Standard/Standard_Integer,
  ../BRepBuilderAPI/BRepBuilderAPI_MakeShape, ../TopTools/TopTools_Array1OfShape

discard "forward decl of Standard_DomainError"
discard "forward decl of TopoDS_Wire"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of TopoDS_Shape"
discard "forward decl of Geom_BSplineSurface"
type
  BRepOffsetAPI_ThruSections* {.importcpp: "BRepOffsetAPI_ThruSections",
                               header: "BRepOffsetAPI_ThruSections.hxx", bycopy.} = object of BRepBuilderAPI_MakeShape ##
                                                                                                                ## !
                                                                                                                ## Initializes
                                                                                                                ## an
                                                                                                                ## algorithm
                                                                                                                ## for
                                                                                                                ## building
                                                                                                                ## a
                                                                                                                ## shell
                                                                                                                ## or
                                                                                                                ## a
                                                                                                                ## solid
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## passing
                                                                                                                ## through
                                                                                                                ## a
                                                                                                                ## set
                                                                                                                ## of
                                                                                                                ## sections,
                                                                                                                ## where:
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## -
                                                                                                                ## isSolid
                                                                                                                ## is
                                                                                                                ## set
                                                                                                                ## to
                                                                                                                ## true
                                                                                                                ## if
                                                                                                                ## the
                                                                                                                ## construction
                                                                                                                ## algorithm
                                                                                                                ## is
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## required
                                                                                                                ## to
                                                                                                                ## build
                                                                                                                ## a
                                                                                                                ## solid
                                                                                                                ## or
                                                                                                                ## to
                                                                                                                ## false
                                                                                                                ## if
                                                                                                                ## it
                                                                                                                ## is
                                                                                                                ## required
                                                                                                                ## to
                                                                                                                ## build
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## a
                                                                                                                ## shell
                                                                                                                ## (the
                                                                                                                ## default
                                                                                                                ## value),
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## -
                                                                                                                ## ruled
                                                                                                                ## is
                                                                                                                ## set
                                                                                                                ## to
                                                                                                                ## true
                                                                                                                ## if
                                                                                                                ## the
                                                                                                                ## faces
                                                                                                                ## generated
                                                                                                                ## between
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## the
                                                                                                                ## edges
                                                                                                                ## of
                                                                                                                ## two
                                                                                                                ## consecutive
                                                                                                                ## wires
                                                                                                                ## are
                                                                                                                ## ruled
                                                                                                                ## surfaces
                                                                                                                ## or
                                                                                                                ## to
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## false
                                                                                                                ## (the
                                                                                                                ## default
                                                                                                                ## value)
                                                                                                                ## if
                                                                                                                ## they
                                                                                                                ## are
                                                                                                                ## smoothed
                                                                                                                ## out
                                                                                                                ## by
                                                                                                                ## approximation,
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## -
                                                                                                                ## pres3d
                                                                                                                ## defines
                                                                                                                ## the
                                                                                                                ## precision
                                                                                                                ## criterion
                                                                                                                ## used
                                                                                                                ## by
                                                                                                                ## the
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## approximation
                                                                                                                ## algorithm;
                                                                                                                ## the
                                                                                                                ## default
                                                                                                                ## value
                                                                                                                ## is
                                                                                                                ## 1.0e-6.
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## Use
                                                                                                                ## AddWire
                                                                                                                ## and
                                                                                                                ## AddVertex
                                                                                                                ## to
                                                                                                                ## define
                                                                                                                ## the
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## successive
                                                                                                                ## sections
                                                                                                                ## of
                                                                                                                ## the
                                                                                                                ## shell
                                                                                                                ## or
                                                                                                                ## solid
                                                                                                                ## to
                                                                                                                ## be
                                                                                                                ## built.
    ## !< List of input wires
    ## !< Working wires


proc constructBRepOffsetAPI_ThruSections*(
    isSolid: Standard_Boolean = Standard_False;
    ruled: Standard_Boolean = Standard_False; pres3d: Standard_Real = 1.0e-06): BRepOffsetAPI_ThruSections {.
    constructor, importcpp: "BRepOffsetAPI_ThruSections(@)",
    header: "BRepOffsetAPI_ThruSections.hxx".}
proc Init*(this: var BRepOffsetAPI_ThruSections;
          isSolid: Standard_Boolean = Standard_False;
          ruled: Standard_Boolean = Standard_False; pres3d: Standard_Real = 1.0e-06) {.
    importcpp: "Init", header: "BRepOffsetAPI_ThruSections.hxx".}
proc AddWire*(this: var BRepOffsetAPI_ThruSections; wire: TopoDS_Wire) {.
    importcpp: "AddWire", header: "BRepOffsetAPI_ThruSections.hxx".}
proc AddVertex*(this: var BRepOffsetAPI_ThruSections; aVertex: TopoDS_Vertex) {.
    importcpp: "AddVertex", header: "BRepOffsetAPI_ThruSections.hxx".}
proc CheckCompatibility*(this: var BRepOffsetAPI_ThruSections;
                        check: Standard_Boolean = Standard_True) {.
    importcpp: "CheckCompatibility", header: "BRepOffsetAPI_ThruSections.hxx".}
proc SetSmoothing*(this: var BRepOffsetAPI_ThruSections;
                  UseSmoothing: Standard_Boolean) {.importcpp: "SetSmoothing",
    header: "BRepOffsetAPI_ThruSections.hxx".}
proc SetParType*(this: var BRepOffsetAPI_ThruSections;
                ParType: Approx_ParametrizationType) {.importcpp: "SetParType",
    header: "BRepOffsetAPI_ThruSections.hxx".}
proc SetContinuity*(this: var BRepOffsetAPI_ThruSections; C: GeomAbs_Shape) {.
    importcpp: "SetContinuity", header: "BRepOffsetAPI_ThruSections.hxx".}
proc SetCriteriumWeight*(this: var BRepOffsetAPI_ThruSections; W1: Standard_Real;
                        W2: Standard_Real; W3: Standard_Real) {.
    importcpp: "SetCriteriumWeight", header: "BRepOffsetAPI_ThruSections.hxx".}
proc SetMaxDegree*(this: var BRepOffsetAPI_ThruSections; MaxDeg: Standard_Integer) {.
    importcpp: "SetMaxDegree", header: "BRepOffsetAPI_ThruSections.hxx".}
proc ParType*(this: BRepOffsetAPI_ThruSections): Approx_ParametrizationType {.
    noSideEffect, importcpp: "ParType", header: "BRepOffsetAPI_ThruSections.hxx".}
proc Continuity*(this: BRepOffsetAPI_ThruSections): GeomAbs_Shape {.noSideEffect,
    importcpp: "Continuity", header: "BRepOffsetAPI_ThruSections.hxx".}
proc MaxDegree*(this: BRepOffsetAPI_ThruSections): Standard_Integer {.noSideEffect,
    importcpp: "MaxDegree", header: "BRepOffsetAPI_ThruSections.hxx".}
proc UseSmoothing*(this: BRepOffsetAPI_ThruSections): Standard_Boolean {.
    noSideEffect, importcpp: "UseSmoothing",
    header: "BRepOffsetAPI_ThruSections.hxx".}
proc CriteriumWeight*(this: BRepOffsetAPI_ThruSections; W1: var Standard_Real;
                     W2: var Standard_Real; W3: var Standard_Real) {.noSideEffect,
    importcpp: "CriteriumWeight", header: "BRepOffsetAPI_ThruSections.hxx".}
proc Build*(this: var BRepOffsetAPI_ThruSections) {.importcpp: "Build",
    header: "BRepOffsetAPI_ThruSections.hxx".}
proc FirstShape*(this: BRepOffsetAPI_ThruSections): TopoDS_Shape {.noSideEffect,
    importcpp: "FirstShape", header: "BRepOffsetAPI_ThruSections.hxx".}
proc LastShape*(this: BRepOffsetAPI_ThruSections): TopoDS_Shape {.noSideEffect,
    importcpp: "LastShape", header: "BRepOffsetAPI_ThruSections.hxx".}
proc GeneratedFace*(this: BRepOffsetAPI_ThruSections; Edge: TopoDS_Shape): TopoDS_Shape {.
    noSideEffect, importcpp: "GeneratedFace",
    header: "BRepOffsetAPI_ThruSections.hxx".}
proc Generated*(this: var BRepOffsetAPI_ThruSections; S: TopoDS_Shape): TopTools_ListOfShape {.
    importcpp: "Generated", header: "BRepOffsetAPI_ThruSections.hxx".}
proc Wires*(this: BRepOffsetAPI_ThruSections): TopTools_ListOfShape {.noSideEffect,
    importcpp: "Wires", header: "BRepOffsetAPI_ThruSections.hxx".}