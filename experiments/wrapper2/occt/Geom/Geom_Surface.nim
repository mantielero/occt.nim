##  Created on: 1993-03-10
##  Created by: JCV
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
  Geom_Curve

discard "forward decl of gp_Trsf"
discard "forward decl of gp_GTrsf2d"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of Geom_Surface"
discard "forward decl of Geom_Surface"
type
  Handle_Geom_Surface* = handle[Geom_Surface]

## ! Describes the common behavior of surfaces in 3D
## ! space. The Geom package provides many
## ! implementations of concrete derived surfaces, such as
## ! planes, cylinders, cones, spheres and tori, surfaces of
## ! linear extrusion, surfaces of revolution, Bezier and
## ! BSpline surfaces, and so on.
## ! The key characteristic of these surfaces is that they
## ! are parameterized. Geom_Surface demonstrates:
## ! - how to work with the parametric equation of a
## ! surface to compute the point of parameters (u,
## ! v), and, at this point, the 1st, 2nd ... Nth derivative,
## ! - how to find global information about a surface in
## ! each parametric direction (for example, level of
## ! continuity, whether the surface is closed, its
## ! periodicity, the bounds of the parameters and so on), and
## ! - how the parameters change when geometric
## ! transformations are applied to the surface, or the
## ! orientation is modified.
## ! Note that all surfaces must have a geometric
## ! continuity, and any surface is at least "C0". Generally,
## ! continuity is checked at construction time or when the
## ! curve is edited. Where this is not the case, the
## ! documentation makes this explicit.
## ! Warning
## ! The Geom package does not prevent the construction of
## ! surfaces with null areas, or surfaces which self-intersect.

type
  Geom_Surface* {.importcpp: "Geom_Surface", header: "Geom_Surface.hxx", bycopy.} = object of Geom_Geometry ##
                                                                                                  ## !
                                                                                                  ## Reverses
                                                                                                  ## the
                                                                                                  ## U
                                                                                                  ## direction
                                                                                                  ## of
                                                                                                  ## parametrization
                                                                                                  ## of
                                                                                                  ## <me>.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## The
                                                                                                  ## bounds
                                                                                                  ## of
                                                                                                  ## the
                                                                                                  ## surface
                                                                                                  ## are
                                                                                                  ## not
                                                                                                  ## modified.
    opencascade* {.importc: "opencascade".}: Standard_NODISCARD
    opencascade* {.importc: "opencascade".}: Standard_NODISCARD


proc UReverse*(this: var Geom_Surface) {.importcpp: "UReverse",
                                     header: "Geom_Surface.hxx".}
## !!!Ignored construct:  :: handle < Geom_Surface > [end of template] UReversed ( ) const ;
## Error: identifier expected, but got: ::!!!

proc UReversedParameter*(this: Geom_Surface; U: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "UReversedParameter", header: "Geom_Surface.hxx".}
proc VReverse*(this: var Geom_Surface) {.importcpp: "VReverse",
                                     header: "Geom_Surface.hxx".}
## !!!Ignored construct:  :: handle < Geom_Surface > [end of template] VReversed ( ) const ;
## Error: identifier expected, but got: ::!!!

proc VReversedParameter*(this: Geom_Surface; V: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "VReversedParameter", header: "Geom_Surface.hxx".}
proc TransformParameters*(this: Geom_Surface; U: var Standard_Real;
                         V: var Standard_Real; T: gp_Trsf) {.noSideEffect,
    importcpp: "TransformParameters", header: "Geom_Surface.hxx".}
proc ParametricTransformation*(this: Geom_Surface; T: gp_Trsf): gp_GTrsf2d {.
    noSideEffect, importcpp: "ParametricTransformation", header: "Geom_Surface.hxx".}
proc Bounds*(this: Geom_Surface; U1: var Standard_Real; U2: var Standard_Real;
            V1: var Standard_Real; V2: var Standard_Real) {.noSideEffect,
    importcpp: "Bounds", header: "Geom_Surface.hxx".}
proc IsUClosed*(this: Geom_Surface): Standard_Boolean {.noSideEffect,
    importcpp: "IsUClosed", header: "Geom_Surface.hxx".}
proc IsVClosed*(this: Geom_Surface): Standard_Boolean {.noSideEffect,
    importcpp: "IsVClosed", header: "Geom_Surface.hxx".}
proc IsUPeriodic*(this: Geom_Surface): Standard_Boolean {.noSideEffect,
    importcpp: "IsUPeriodic", header: "Geom_Surface.hxx".}
proc UPeriod*(this: Geom_Surface): Standard_Real {.noSideEffect,
    importcpp: "UPeriod", header: "Geom_Surface.hxx".}
proc IsVPeriodic*(this: Geom_Surface): Standard_Boolean {.noSideEffect,
    importcpp: "IsVPeriodic", header: "Geom_Surface.hxx".}
proc VPeriod*(this: Geom_Surface): Standard_Real {.noSideEffect,
    importcpp: "VPeriod", header: "Geom_Surface.hxx".}
proc UIso*(this: Geom_Surface; U: Standard_Real): handle[Geom_Curve] {.noSideEffect,
    importcpp: "UIso", header: "Geom_Surface.hxx".}
proc VIso*(this: Geom_Surface; V: Standard_Real): handle[Geom_Curve] {.noSideEffect,
    importcpp: "VIso", header: "Geom_Surface.hxx".}
proc Continuity*(this: Geom_Surface): GeomAbs_Shape {.noSideEffect,
    importcpp: "Continuity", header: "Geom_Surface.hxx".}
proc IsCNu*(this: Geom_Surface; N: Standard_Integer): Standard_Boolean {.noSideEffect,
    importcpp: "IsCNu", header: "Geom_Surface.hxx".}
proc IsCNv*(this: Geom_Surface; N: Standard_Integer): Standard_Boolean {.noSideEffect,
    importcpp: "IsCNv", header: "Geom_Surface.hxx".}
proc D0*(this: Geom_Surface; U: Standard_Real; V: Standard_Real; P: var gp_Pnt) {.
    noSideEffect, importcpp: "D0", header: "Geom_Surface.hxx".}
proc D1*(this: Geom_Surface; U: Standard_Real; V: Standard_Real; P: var gp_Pnt;
        D1U: var gp_Vec; D1V: var gp_Vec) {.noSideEffect, importcpp: "D1",
                                      header: "Geom_Surface.hxx".}
proc D2*(this: Geom_Surface; U: Standard_Real; V: Standard_Real; P: var gp_Pnt;
        D1U: var gp_Vec; D1V: var gp_Vec; D2U: var gp_Vec; D2V: var gp_Vec; D2UV: var gp_Vec) {.
    noSideEffect, importcpp: "D2", header: "Geom_Surface.hxx".}
proc D3*(this: Geom_Surface; U: Standard_Real; V: Standard_Real; P: var gp_Pnt;
        D1U: var gp_Vec; D1V: var gp_Vec; D2U: var gp_Vec; D2V: var gp_Vec;
        D2UV: var gp_Vec; D3U: var gp_Vec; D3V: var gp_Vec; D3UUV: var gp_Vec;
        D3UVV: var gp_Vec) {.noSideEffect, importcpp: "D3", header: "Geom_Surface.hxx".}
proc DN*(this: Geom_Surface; U: Standard_Real; V: Standard_Real; Nu: Standard_Integer;
        Nv: Standard_Integer): gp_Vec {.noSideEffect, importcpp: "DN",
                                     header: "Geom_Surface.hxx".}
proc Value*(this: Geom_Surface; U: Standard_Real; V: Standard_Real): gp_Pnt {.
    noSideEffect, importcpp: "Value", header: "Geom_Surface.hxx".}
proc DumpJson*(this: Geom_Surface; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Geom_Surface.hxx".}
type
  Geom_Surfacebase_type* = Geom_Geometry

proc get_type_name*(): cstring {.importcpp: "Geom_Surface::get_type_name(@)",
                              header: "Geom_Surface.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Geom_Surface::get_type_descriptor(@)", header: "Geom_Surface.hxx".}
proc DynamicType*(this: Geom_Surface): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Geom_Surface.hxx".}