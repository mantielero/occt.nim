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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Real,
  ../gp/gp_XY, ../IGESData/IGESData_IGESEntity, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer

discard "forward decl of gp_XY"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Dir"
discard "forward decl of IGESGeom_ConicArc"
discard "forward decl of IGESGeom_ConicArc"
type
  Handle_IGESGeom_ConicArc* = handle[IGESGeom_ConicArc]

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
  IGESGeom_ConicArc* {.importcpp: "IGESGeom_ConicArc",
                      header: "IGESGeom_ConicArc.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESGeom_ConicArc*(): IGESGeom_ConicArc {.constructor,
    importcpp: "IGESGeom_ConicArc(@)", header: "IGESGeom_ConicArc.hxx".}
proc Init*(this: var IGESGeom_ConicArc; A: Standard_Real; B: Standard_Real;
          C: Standard_Real; D: Standard_Real; E: Standard_Real; F: Standard_Real;
          ZT: Standard_Real; aStart: gp_XY; anEnd: gp_XY) {.importcpp: "Init",
    header: "IGESGeom_ConicArc.hxx".}
proc OwnCorrect*(this: var IGESGeom_ConicArc): Standard_Boolean {.
    importcpp: "OwnCorrect", header: "IGESGeom_ConicArc.hxx".}
proc ComputedFormNumber*(this: IGESGeom_ConicArc): Standard_Integer {.noSideEffect,
    importcpp: "ComputedFormNumber", header: "IGESGeom_ConicArc.hxx".}
proc Equation*(this: IGESGeom_ConicArc; A: var Standard_Real; B: var Standard_Real;
              C: var Standard_Real; D: var Standard_Real; E: var Standard_Real;
              F: var Standard_Real) {.noSideEffect, importcpp: "Equation",
                                   header: "IGESGeom_ConicArc.hxx".}
proc ZPlane*(this: IGESGeom_ConicArc): Standard_Real {.noSideEffect,
    importcpp: "ZPlane", header: "IGESGeom_ConicArc.hxx".}
proc StartPoint*(this: IGESGeom_ConicArc): gp_Pnt2d {.noSideEffect,
    importcpp: "StartPoint", header: "IGESGeom_ConicArc.hxx".}
proc TransformedStartPoint*(this: IGESGeom_ConicArc): gp_Pnt {.noSideEffect,
    importcpp: "TransformedStartPoint", header: "IGESGeom_ConicArc.hxx".}
proc EndPoint*(this: IGESGeom_ConicArc): gp_Pnt2d {.noSideEffect,
    importcpp: "EndPoint", header: "IGESGeom_ConicArc.hxx".}
proc TransformedEndPoint*(this: IGESGeom_ConicArc): gp_Pnt {.noSideEffect,
    importcpp: "TransformedEndPoint", header: "IGESGeom_ConicArc.hxx".}
proc IsFromEllipse*(this: IGESGeom_ConicArc): Standard_Boolean {.noSideEffect,
    importcpp: "IsFromEllipse", header: "IGESGeom_ConicArc.hxx".}
proc IsFromParabola*(this: IGESGeom_ConicArc): Standard_Boolean {.noSideEffect,
    importcpp: "IsFromParabola", header: "IGESGeom_ConicArc.hxx".}
proc IsFromHyperbola*(this: IGESGeom_ConicArc): Standard_Boolean {.noSideEffect,
    importcpp: "IsFromHyperbola", header: "IGESGeom_ConicArc.hxx".}
proc IsClosed*(this: IGESGeom_ConicArc): Standard_Boolean {.noSideEffect,
    importcpp: "IsClosed", header: "IGESGeom_ConicArc.hxx".}
proc Axis*(this: IGESGeom_ConicArc): gp_Dir {.noSideEffect, importcpp: "Axis",
    header: "IGESGeom_ConicArc.hxx".}
proc TransformedAxis*(this: IGESGeom_ConicArc): gp_Dir {.noSideEffect,
    importcpp: "TransformedAxis", header: "IGESGeom_ConicArc.hxx".}
proc Definition*(this: IGESGeom_ConicArc; Center: var gp_Pnt; MainAxis: var gp_Dir;
                rmin: var Standard_Real; rmax: var Standard_Real) {.noSideEffect,
    importcpp: "Definition", header: "IGESGeom_ConicArc.hxx".}
proc TransformedDefinition*(this: IGESGeom_ConicArc; Center: var gp_Pnt;
                           MainAxis: var gp_Dir; rmin: var Standard_Real;
                           rmax: var Standard_Real) {.noSideEffect,
    importcpp: "TransformedDefinition", header: "IGESGeom_ConicArc.hxx".}
proc ComputedDefinition*(this: IGESGeom_ConicArc; Xcen: var Standard_Real;
                        Ycen: var Standard_Real; Xax: var Standard_Real;
                        Yax: var Standard_Real; Rmin: var Standard_Real;
                        Rmax: var Standard_Real) {.noSideEffect,
    importcpp: "ComputedDefinition", header: "IGESGeom_ConicArc.hxx".}
type
  IGESGeom_ConicArcbase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESGeom_ConicArc::get_type_name(@)",
                              header: "IGESGeom_ConicArc.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESGeom_ConicArc::get_type_descriptor(@)",
    header: "IGESGeom_ConicArc.hxx".}
proc DynamicType*(this: IGESGeom_ConicArc): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESGeom_ConicArc.hxx".}