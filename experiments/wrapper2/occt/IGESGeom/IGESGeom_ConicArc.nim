##  Created on: 1993-01-09
##  Created by: CKY / Contract Toubro-Larsen (Kiran)
##  Copyright (c) 1993-1999 Matra Datavision
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

discard "forward decl of gp_XY"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Dir"
discard "forward decl of IGESGeom_ConicArc"
discard "forward decl of IGESGeom_ConicArc"
type
  HandleC1C1* = Handle[IGESGeomConicArc]

## ! defines IGESConicArc, Type <104> Form <0-3>  in package IGESGeom
## ! A conic arc is a bounded connected portion of a parent
## ! conic curve which consists of more than one point. The
## ! parent conic curve is either an ellipse, a parabola, or
## ! a hyperbola. The definition space coordinate system is
## ! always chosen so that the conic arc lies in a plane either
## ! coincident with or parallel to XT, YT plane. Within such
## ! a plane a conic is defined by the six coefficients in the
## ! following equation.
## ! A*XT^2 + B*XT*YT + C*YT^2 + D*XT + E*YT + F = 0

type
  IGESGeomConicArc* {.importcpp: "IGESGeom_ConicArc",
                     header: "IGESGeom_ConicArc.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESGeomConicArc*(): IGESGeomConicArc {.constructor,
    importcpp: "IGESGeom_ConicArc(@)", header: "IGESGeom_ConicArc.hxx".}
proc init*(this: var IGESGeomConicArc; a: cfloat; b: cfloat; c: cfloat; d: cfloat;
          e: cfloat; f: cfloat; zt: cfloat; aStart: Xy; anEnd: Xy) {.importcpp: "Init",
    header: "IGESGeom_ConicArc.hxx".}
proc ownCorrect*(this: var IGESGeomConicArc): bool {.importcpp: "OwnCorrect",
    header: "IGESGeom_ConicArc.hxx".}
proc computedFormNumber*(this: IGESGeomConicArc): cint {.noSideEffect,
    importcpp: "ComputedFormNumber", header: "IGESGeom_ConicArc.hxx".}
proc equation*(this: IGESGeomConicArc; a: var cfloat; b: var cfloat; c: var cfloat;
              d: var cfloat; e: var cfloat; f: var cfloat) {.noSideEffect,
    importcpp: "Equation", header: "IGESGeom_ConicArc.hxx".}
proc zPlane*(this: IGESGeomConicArc): cfloat {.noSideEffect, importcpp: "ZPlane",
    header: "IGESGeom_ConicArc.hxx".}
proc startPoint*(this: IGESGeomConicArc): Pnt2d {.noSideEffect,
    importcpp: "StartPoint", header: "IGESGeom_ConicArc.hxx".}
proc transformedStartPoint*(this: IGESGeomConicArc): Pnt {.noSideEffect,
    importcpp: "TransformedStartPoint", header: "IGESGeom_ConicArc.hxx".}
proc endPoint*(this: IGESGeomConicArc): Pnt2d {.noSideEffect, importcpp: "EndPoint",
    header: "IGESGeom_ConicArc.hxx".}
proc transformedEndPoint*(this: IGESGeomConicArc): Pnt {.noSideEffect,
    importcpp: "TransformedEndPoint", header: "IGESGeom_ConicArc.hxx".}
proc isFromEllipse*(this: IGESGeomConicArc): bool {.noSideEffect,
    importcpp: "IsFromEllipse", header: "IGESGeom_ConicArc.hxx".}
proc isFromParabola*(this: IGESGeomConicArc): bool {.noSideEffect,
    importcpp: "IsFromParabola", header: "IGESGeom_ConicArc.hxx".}
proc isFromHyperbola*(this: IGESGeomConicArc): bool {.noSideEffect,
    importcpp: "IsFromHyperbola", header: "IGESGeom_ConicArc.hxx".}
proc isClosed*(this: IGESGeomConicArc): bool {.noSideEffect, importcpp: "IsClosed",
    header: "IGESGeom_ConicArc.hxx".}
proc axis*(this: IGESGeomConicArc): Dir {.noSideEffect, importcpp: "Axis",
                                      header: "IGESGeom_ConicArc.hxx".}
proc transformedAxis*(this: IGESGeomConicArc): Dir {.noSideEffect,
    importcpp: "TransformedAxis", header: "IGESGeom_ConicArc.hxx".}
proc definition*(this: IGESGeomConicArc; center: var Pnt; mainAxis: var Dir;
                rmin: var cfloat; rmax: var cfloat) {.noSideEffect,
    importcpp: "Definition", header: "IGESGeom_ConicArc.hxx".}
proc transformedDefinition*(this: IGESGeomConicArc; center: var Pnt;
                           mainAxis: var Dir; rmin: var cfloat; rmax: var cfloat) {.
    noSideEffect, importcpp: "TransformedDefinition",
    header: "IGESGeom_ConicArc.hxx".}
proc computedDefinition*(this: IGESGeomConicArc; xcen: var cfloat; ycen: var cfloat;
                        xax: var cfloat; yax: var cfloat; rmin: var cfloat;
                        rmax: var cfloat) {.noSideEffect,
    importcpp: "ComputedDefinition", header: "IGESGeom_ConicArc.hxx".}
type
  IGESGeomConicArcbaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESGeom_ConicArc::get_type_name(@)",
                            header: "IGESGeom_ConicArc.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESGeom_ConicArc::get_type_descriptor(@)",
    header: "IGESGeom_ConicArc.hxx".}
proc dynamicType*(this: IGESGeomConicArc): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESGeom_ConicArc.hxx".}

























