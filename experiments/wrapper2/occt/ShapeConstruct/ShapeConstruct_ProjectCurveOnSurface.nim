##  Created on: 1998-07-14
##  Created by: data exchange team
##  Copyright (c) 1998-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Real,
  ../Standard/Standard_Boolean, ../Standard/Standard_Integer, ../gp/gp_Pnt,
  ../gp/gp_Pnt2d, ../Standard/Standard_Transient,
  ../ShapeExtend/ShapeExtend_Status, ../GeomAbs/GeomAbs_Shape,
  ../TColStd/TColStd_Array1OfReal, ../TColgp/TColgp_HArray1OfPnt2d,
  ../TColgp/TColgp_HArray1OfPnt, ../TColgp/TColgp_SequenceOfPnt,
  ../TColgp/TColgp_SequenceOfPnt2d, ../TColStd/TColStd_SequenceOfReal

discard "forward decl of ShapeAnalysis_Surface"
discard "forward decl of Geom_Surface"
discard "forward decl of Geom_Curve"
discard "forward decl of Geom2d_Curve"
when defined(Status):
  discard
discard "forward decl of ShapeConstruct_ProjectCurveOnSurface"
discard "forward decl of ShapeConstruct_ProjectCurveOnSurface"
type
  Handle_ShapeConstruct_ProjectCurveOnSurface* = handle[
      ShapeConstruct_ProjectCurveOnSurface]

## ! This tool provides a method for computing pcurve by projecting
## ! 3d curve onto a surface.
## ! Projection is done by 23 or more points (this number is changed
## ! for B-Splines according to the following rule:
## ! the total number of the points is not less than number of spans *
## ! (degree + 1);
## ! it is increased recursively starting with 23 and is added with 22
## ! until the condition is fulfilled).
## ! Isoparametric cases (if curve corresponds to U=const or V=const on
## ! the surface) are recognized with the given precision.

type
  ShapeConstruct_ProjectCurveOnSurface* {.
      importcpp: "ShapeConstruct_ProjectCurveOnSurface",
      header: "ShapeConstruct_ProjectCurveOnSurface.hxx", bycopy.} = object of Standard_Transient ##
                                                                                           ## !
                                                                                           ## Empty
                                                                                           ## constructor.
                                                                                           ##
                                                                                           ## !
                                                                                           ## Try
                                                                                           ## to
                                                                                           ## approximate
                                                                                           ## 3D
                                                                                           ## curve
                                                                                           ## by
                                                                                           ## Geom2d_Line
                                                                                           ##
                                                                                           ## !
                                                                                           ## or
                                                                                           ## Geom2d_BsplineCurve
                                                                                           ## with
                                                                                           ## degree
                                                                                           ## 1
                                                                                           ## with
                                                                                           ## specified
                                                                                           ## tolerance.
                                                                                           ##
                                                                                           ## !
                                                                                           ## points
                                                                                           ## -
                                                                                           ## points
                                                                                           ## obtained
                                                                                           ## from
                                                                                           ## 3d
                                                                                           ## curve.
                                                                                           ##
                                                                                           ## !
                                                                                           ## params
                                                                                           ## -
                                                                                           ## parameters
                                                                                           ## corresponding
                                                                                           ## points
                                                                                           ## on
                                                                                           ## 3d
                                                                                           ## curves
                                                                                           ##
                                                                                           ## !
                                                                                           ## points2d
                                                                                           ## -
                                                                                           ## 2d
                                                                                           ## points
                                                                                           ## lies
                                                                                           ## on
                                                                                           ## line
                                                                                           ## in
                                                                                           ## parametric
                                                                                           ## space
                                                                                           ##
                                                                                           ## !
                                                                                           ## theTol
                                                                                           ## -
                                                                                           ## tolerance
                                                                                           ## used
                                                                                           ## for
                                                                                           ## compare
                                                                                           ## initial
                                                                                           ## points
                                                                                           ## 3d
                                                                                           ## and
                                                                                           ##
                                                                                           ## !
                                                                                           ## 3d
                                                                                           ## points
                                                                                           ## obtained
                                                                                           ## from
                                                                                           ## line
                                                                                           ## lying
                                                                                           ## in
                                                                                           ## parameric
                                                                                           ## space
                                                                                           ## of
                                                                                           ## surface


proc constructShapeConstruct_ProjectCurveOnSurface*(): ShapeConstruct_ProjectCurveOnSurface {.
    constructor, importcpp: "ShapeConstruct_ProjectCurveOnSurface(@)",
    header: "ShapeConstruct_ProjectCurveOnSurface.hxx".}
proc Init*(this: var ShapeConstruct_ProjectCurveOnSurface;
          surf: handle[Geom_Surface]; preci: Standard_Real) {.importcpp: "Init",
    header: "ShapeConstruct_ProjectCurveOnSurface.hxx".}
proc Init*(this: var ShapeConstruct_ProjectCurveOnSurface;
          surf: handle[ShapeAnalysis_Surface]; preci: Standard_Real) {.
    importcpp: "Init", header: "ShapeConstruct_ProjectCurveOnSurface.hxx".}
proc SetSurface*(this: var ShapeConstruct_ProjectCurveOnSurface;
                surf: handle[Geom_Surface]) {.importcpp: "SetSurface",
    header: "ShapeConstruct_ProjectCurveOnSurface.hxx".}
proc SetSurface*(this: var ShapeConstruct_ProjectCurveOnSurface;
                surf: handle[ShapeAnalysis_Surface]) {.importcpp: "SetSurface",
    header: "ShapeConstruct_ProjectCurveOnSurface.hxx".}
proc SetPrecision*(this: var ShapeConstruct_ProjectCurveOnSurface;
                  preci: Standard_Real) {.importcpp: "SetPrecision", header: "ShapeConstruct_ProjectCurveOnSurface.hxx".}
proc BuildCurveMode*(this: var ShapeConstruct_ProjectCurveOnSurface): var Standard_Boolean {.
    importcpp: "BuildCurveMode",
    header: "ShapeConstruct_ProjectCurveOnSurface.hxx".}
proc AdjustOverDegenMode*(this: var ShapeConstruct_ProjectCurveOnSurface): var Standard_Integer {.
    importcpp: "AdjustOverDegenMode",
    header: "ShapeConstruct_ProjectCurveOnSurface.hxx".}
proc Status*(this: ShapeConstruct_ProjectCurveOnSurface;
            theStatus: ShapeExtend_Status): Standard_Boolean {.noSideEffect,
    importcpp: "Status", header: "ShapeConstruct_ProjectCurveOnSurface.hxx".}
proc Perform*(this: var ShapeConstruct_ProjectCurveOnSurface;
             c3d: var handle[Geom_Curve]; First: Standard_Real; Last: Standard_Real;
             c2d: var handle[Geom2d_Curve]; TolFirst: Standard_Real = -1;
             TolLast: Standard_Real = -1): Standard_Boolean {.importcpp: "Perform",
    header: "ShapeConstruct_ProjectCurveOnSurface.hxx".}
proc PerformByProjLib*(this: var ShapeConstruct_ProjectCurveOnSurface;
                      c3d: var handle[Geom_Curve]; First: Standard_Real;
                      Last: Standard_Real; c2d: var handle[Geom2d_Curve];
                      continuity: GeomAbs_Shape = GeomAbs_C1;
                      maxdeg: Standard_Integer = 12;
                      nbinterval: Standard_Integer = -1): Standard_Boolean {.
    importcpp: "PerformByProjLib",
    header: "ShapeConstruct_ProjectCurveOnSurface.hxx".}
type
  ShapeConstruct_ProjectCurveOnSurfacebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "ShapeConstruct_ProjectCurveOnSurface::get_type_name(@)", header: "ShapeConstruct_ProjectCurveOnSurface.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "ShapeConstruct_ProjectCurveOnSurface::get_type_descriptor(@)",
    header: "ShapeConstruct_ProjectCurveOnSurface.hxx".}
proc DynamicType*(this: ShapeConstruct_ProjectCurveOnSurface): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "ShapeConstruct_ProjectCurveOnSurface.hxx".}