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

discard "forward decl of ShapeAnalysis_Surface"
discard "forward decl of Geom_Surface"
discard "forward decl of Geom_Curve"
discard "forward decl of Geom2d_Curve"
# when defined(Status):
#   discard
discard "forward decl of ShapeConstruct_ProjectCurveOnSurface"
discard "forward decl of ShapeConstruct_ProjectCurveOnSurface"
type
  HandleShapeConstructProjectCurveOnSurface* = Handle[
      ShapeConstructProjectCurveOnSurface]

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
  ShapeConstructProjectCurveOnSurface* {.importcpp: "ShapeConstruct_ProjectCurveOnSurface", header: "ShapeConstruct_ProjectCurveOnSurface.hxx",
                                        bycopy.} = object of StandardTransient ## ! Empty
                                                                          ## constructor.
                                                                          ## ! Try to
                                                                          ## approximate 3D curve by
                                                                          ## Geom2d_Line
                                                                          ## ! or
                                                                          ## Geom2d_BsplineCurve with degree 1 with
                                                                          ## specified
                                                                          ## tolerance.
                                                                          ## ! points - points
                                                                          ## obtained from 3d curve.
                                                                          ## ! params -
                                                                          ## parameters
                                                                          ## corresponding points on 3d curves
                                                                          ## !
                                                                          ## points2d - 2d points lies on line in
                                                                          ## parametric space
                                                                          ## ! theTol -
                                                                          ## tolerance used for
                                                                          ## compare
                                                                          ## initial points 3d and
                                                                          ## ! 3d points
                                                                          ## obtained from line lying in
                                                                          ## parameric space of
                                                                          ## surface


proc constructShapeConstructProjectCurveOnSurface*(): ShapeConstructProjectCurveOnSurface {.
    constructor, importcpp: "ShapeConstruct_ProjectCurveOnSurface(@)",
    header: "ShapeConstruct_ProjectCurveOnSurface.hxx".}
proc init*(this: var ShapeConstructProjectCurveOnSurface; surf: Handle[GeomSurface];
          preci: StandardReal) {.importcpp: "Init", header: "ShapeConstruct_ProjectCurveOnSurface.hxx".}
proc init*(this: var ShapeConstructProjectCurveOnSurface;
          surf: Handle[ShapeAnalysisSurface]; preci: StandardReal) {.
    importcpp: "Init", header: "ShapeConstruct_ProjectCurveOnSurface.hxx".}
proc setSurface*(this: var ShapeConstructProjectCurveOnSurface;
                surf: Handle[GeomSurface]) {.importcpp: "SetSurface",
    header: "ShapeConstruct_ProjectCurveOnSurface.hxx".}
proc setSurface*(this: var ShapeConstructProjectCurveOnSurface;
                surf: Handle[ShapeAnalysisSurface]) {.importcpp: "SetSurface",
    header: "ShapeConstruct_ProjectCurveOnSurface.hxx".}
proc setPrecision*(this: var ShapeConstructProjectCurveOnSurface;
                  preci: StandardReal) {.importcpp: "SetPrecision", header: "ShapeConstruct_ProjectCurveOnSurface.hxx".}
proc buildCurveMode*(this: var ShapeConstructProjectCurveOnSurface): var StandardBoolean {.
    importcpp: "BuildCurveMode",
    header: "ShapeConstruct_ProjectCurveOnSurface.hxx".}
proc adjustOverDegenMode*(this: var ShapeConstructProjectCurveOnSurface): var StandardInteger {.
    importcpp: "AdjustOverDegenMode",
    header: "ShapeConstruct_ProjectCurveOnSurface.hxx".}
proc status*(this: ShapeConstructProjectCurveOnSurface;
            theStatus: ShapeExtendStatus): StandardBoolean {.noSideEffect,
    importcpp: "Status", header: "ShapeConstruct_ProjectCurveOnSurface.hxx".}
proc perform*(this: var ShapeConstructProjectCurveOnSurface;
             c3d: var Handle[GeomCurve]; first: StandardReal; last: StandardReal;
             c2d: var Handle[Geom2dCurve]; tolFirst: StandardReal = -1;
             tolLast: StandardReal = -1): StandardBoolean {.importcpp: "Perform",
    header: "ShapeConstruct_ProjectCurveOnSurface.hxx".}
proc performByProjLib*(this: var ShapeConstructProjectCurveOnSurface;
                      c3d: var Handle[GeomCurve]; first: StandardReal;
                      last: StandardReal; c2d: var Handle[Geom2dCurve];
                      continuity: GeomAbsShape = geomAbsC1;
                      maxdeg: StandardInteger = 12;
                      nbinterval: StandardInteger = -1): StandardBoolean {.
    importcpp: "PerformByProjLib",
    header: "ShapeConstruct_ProjectCurveOnSurface.hxx".}
type
  ShapeConstructProjectCurveOnSurfacebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "ShapeConstruct_ProjectCurveOnSurface::get_type_name(@)",
                            header: "ShapeConstruct_ProjectCurveOnSurface.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "ShapeConstruct_ProjectCurveOnSurface::get_type_descriptor(@)",
    header: "ShapeConstruct_ProjectCurveOnSurface.hxx".}
proc dynamicType*(this: ShapeConstructProjectCurveOnSurface): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "ShapeConstruct_ProjectCurveOnSurface.hxx".}

