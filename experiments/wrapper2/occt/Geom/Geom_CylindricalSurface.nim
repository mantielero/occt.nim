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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Real,
  Geom_ElementarySurface, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer

discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_RangeError"
discard "forward decl of gp_Ax3"
discard "forward decl of gp_Cylinder"
discard "forward decl of gp_Trsf"
discard "forward decl of gp_GTrsf2d"
discard "forward decl of Geom_Curve"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of Geom_Geometry"
discard "forward decl of Geom_CylindricalSurface"
discard "forward decl of Geom_CylindricalSurface"
type
  Handle_Geom_CylindricalSurface* = handle[Geom_CylindricalSurface]

## ! This class defines the infinite cylindrical surface.
## !
## ! Every cylindrical surface is set by the following equation:
## ! S(U,V) = Location + R*cos(U)*XAxis + R*sin(U)*YAxis + V*ZAxis,
## ! where R is cylinder radius.
## !
## ! The local coordinate system of the CylindricalSurface is defined
## ! with an axis placement (see class ElementarySurface).
## !
## ! The "ZAxis" is the symmetry axis of the CylindricalSurface,
## ! it gives the direction of increasing parametric value V.
## !
## ! The parametrization range is :
## ! U [0, 2*PI],  V ]- infinite, + infinite[
## !
## ! The "XAxis" and the "YAxis" define the placement plane of the
## ! surface (Z = 0, and parametric value V = 0)  perpendicular to
## ! the symmetry axis. The "XAxis" defines the origin of the
## ! parameter U = 0.  The trigonometric sense gives the positive
## ! orientation for the parameter U.
## !
## ! When you create a CylindricalSurface the U and V directions of
## ! parametrization are such that at each point of the surface the
## ! normal is oriented towards the "outside region".
## !
## ! The methods UReverse VReverse change the orientation of the
## ! surface.

type
  Geom_CylindricalSurface* {.importcpp: "Geom_CylindricalSurface",
                            header: "Geom_CylindricalSurface.hxx", bycopy.} = object of Geom_ElementarySurface ##
                                                                                                        ## !
                                                                                                        ## A3
                                                                                                        ## defines
                                                                                                        ## the
                                                                                                        ## local
                                                                                                        ## coordinate
                                                                                                        ## system
                                                                                                        ## of
                                                                                                        ## the
                                                                                                        ## cylindrical
                                                                                                        ## surface.
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## The
                                                                                                        ## "ZDirection"
                                                                                                        ## of
                                                                                                        ## A3
                                                                                                        ## defines
                                                                                                        ## the
                                                                                                        ## direction
                                                                                                        ## of
                                                                                                        ## the
                                                                                                        ## surface's
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## axis
                                                                                                        ## of
                                                                                                        ## symmetry.
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## At
                                                                                                        ## the
                                                                                                        ## creation
                                                                                                        ## the
                                                                                                        ## parametrization
                                                                                                        ## of
                                                                                                        ## the
                                                                                                        ## surface
                                                                                                        ## is
                                                                                                        ## defined
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## such
                                                                                                        ## that
                                                                                                        ## the
                                                                                                        ## normal
                                                                                                        ## Vector
                                                                                                        ## (N
                                                                                                        ## =
                                                                                                        ## D1U
                                                                                                        ## ^
                                                                                                        ## D1V)
                                                                                                        ## is
                                                                                                        ## oriented
                                                                                                        ## towards
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## the
                                                                                                        ## "outside
                                                                                                        ## region"
                                                                                                        ## of
                                                                                                        ## the
                                                                                                        ## surface.
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## Warnings
                                                                                                        ## :
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## It
                                                                                                        ## is
                                                                                                        ## not
                                                                                                        ## forbidden
                                                                                                        ## to
                                                                                                        ## create
                                                                                                        ## a
                                                                                                        ## cylindrical
                                                                                                        ## surface
                                                                                                        ## with
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## Radius
                                                                                                        ## =
                                                                                                        ## 0.0
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## Raised
                                                                                                        ## if
                                                                                                        ## Radius
                                                                                                        ## <
                                                                                                        ## 0.0


proc constructGeom_CylindricalSurface*(A3: gp_Ax3; Radius: Standard_Real): Geom_CylindricalSurface {.
    constructor, importcpp: "Geom_CylindricalSurface(@)",
    header: "Geom_CylindricalSurface.hxx".}
proc constructGeom_CylindricalSurface*(C: gp_Cylinder): Geom_CylindricalSurface {.
    constructor, importcpp: "Geom_CylindricalSurface(@)",
    header: "Geom_CylindricalSurface.hxx".}
proc SetCylinder*(this: var Geom_CylindricalSurface; C: gp_Cylinder) {.
    importcpp: "SetCylinder", header: "Geom_CylindricalSurface.hxx".}
proc SetRadius*(this: var Geom_CylindricalSurface; R: Standard_Real) {.
    importcpp: "SetRadius", header: "Geom_CylindricalSurface.hxx".}
proc Cylinder*(this: Geom_CylindricalSurface): gp_Cylinder {.noSideEffect,
    importcpp: "Cylinder", header: "Geom_CylindricalSurface.hxx".}
proc UReversedParameter*(this: Geom_CylindricalSurface; U: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "UReversedParameter",
    header: "Geom_CylindricalSurface.hxx".}
proc VReversedParameter*(this: Geom_CylindricalSurface; V: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "VReversedParameter",
    header: "Geom_CylindricalSurface.hxx".}
proc TransformParameters*(this: Geom_CylindricalSurface; U: var Standard_Real;
                         V: var Standard_Real; T: gp_Trsf) {.noSideEffect,
    importcpp: "TransformParameters", header: "Geom_CylindricalSurface.hxx".}
proc ParametricTransformation*(this: Geom_CylindricalSurface; T: gp_Trsf): gp_GTrsf2d {.
    noSideEffect, importcpp: "ParametricTransformation",
    header: "Geom_CylindricalSurface.hxx".}
proc Bounds*(this: Geom_CylindricalSurface; U1: var Standard_Real;
            U2: var Standard_Real; V1: var Standard_Real; V2: var Standard_Real) {.
    noSideEffect, importcpp: "Bounds", header: "Geom_CylindricalSurface.hxx".}
proc Coefficients*(this: Geom_CylindricalSurface; A1: var Standard_Real;
                  A2: var Standard_Real; A3: var Standard_Real; B1: var Standard_Real;
                  B2: var Standard_Real; B3: var Standard_Real; C1: var Standard_Real;
                  C2: var Standard_Real; C3: var Standard_Real; D: var Standard_Real) {.
    noSideEffect, importcpp: "Coefficients", header: "Geom_CylindricalSurface.hxx".}
proc Radius*(this: Geom_CylindricalSurface): Standard_Real {.noSideEffect,
    importcpp: "Radius", header: "Geom_CylindricalSurface.hxx".}
proc IsUClosed*(this: Geom_CylindricalSurface): Standard_Boolean {.noSideEffect,
    importcpp: "IsUClosed", header: "Geom_CylindricalSurface.hxx".}
proc IsVClosed*(this: Geom_CylindricalSurface): Standard_Boolean {.noSideEffect,
    importcpp: "IsVClosed", header: "Geom_CylindricalSurface.hxx".}
proc IsUPeriodic*(this: Geom_CylindricalSurface): Standard_Boolean {.noSideEffect,
    importcpp: "IsUPeriodic", header: "Geom_CylindricalSurface.hxx".}
proc IsVPeriodic*(this: Geom_CylindricalSurface): Standard_Boolean {.noSideEffect,
    importcpp: "IsVPeriodic", header: "Geom_CylindricalSurface.hxx".}
proc UIso*(this: Geom_CylindricalSurface; U: Standard_Real): handle[Geom_Curve] {.
    noSideEffect, importcpp: "UIso", header: "Geom_CylindricalSurface.hxx".}
proc VIso*(this: Geom_CylindricalSurface; V: Standard_Real): handle[Geom_Curve] {.
    noSideEffect, importcpp: "VIso", header: "Geom_CylindricalSurface.hxx".}
proc D0*(this: Geom_CylindricalSurface; U: Standard_Real; V: Standard_Real;
        P: var gp_Pnt) {.noSideEffect, importcpp: "D0",
                      header: "Geom_CylindricalSurface.hxx".}
proc D1*(this: Geom_CylindricalSurface; U: Standard_Real; V: Standard_Real;
        P: var gp_Pnt; D1U: var gp_Vec; D1V: var gp_Vec) {.noSideEffect, importcpp: "D1",
    header: "Geom_CylindricalSurface.hxx".}
proc D2*(this: Geom_CylindricalSurface; U: Standard_Real; V: Standard_Real;
        P: var gp_Pnt; D1U: var gp_Vec; D1V: var gp_Vec; D2U: var gp_Vec; D2V: var gp_Vec;
        D2UV: var gp_Vec) {.noSideEffect, importcpp: "D2",
                         header: "Geom_CylindricalSurface.hxx".}
proc D3*(this: Geom_CylindricalSurface; U: Standard_Real; V: Standard_Real;
        P: var gp_Pnt; D1U: var gp_Vec; D1V: var gp_Vec; D2U: var gp_Vec; D2V: var gp_Vec;
        D2UV: var gp_Vec; D3U: var gp_Vec; D3V: var gp_Vec; D3UUV: var gp_Vec;
        D3UVV: var gp_Vec) {.noSideEffect, importcpp: "D3",
                          header: "Geom_CylindricalSurface.hxx".}
proc DN*(this: Geom_CylindricalSurface; U: Standard_Real; V: Standard_Real;
        Nu: Standard_Integer; Nv: Standard_Integer): gp_Vec {.noSideEffect,
    importcpp: "DN", header: "Geom_CylindricalSurface.hxx".}
proc Transform*(this: var Geom_CylindricalSurface; T: gp_Trsf) {.
    importcpp: "Transform", header: "Geom_CylindricalSurface.hxx".}
proc Copy*(this: Geom_CylindricalSurface): handle[Geom_Geometry] {.noSideEffect,
    importcpp: "Copy", header: "Geom_CylindricalSurface.hxx".}
proc DumpJson*(this: Geom_CylindricalSurface; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Geom_CylindricalSurface.hxx".}
type
  Geom_CylindricalSurfacebase_type* = Geom_ElementarySurface

proc get_type_name*(): cstring {.importcpp: "Geom_CylindricalSurface::get_type_name(@)",
                              header: "Geom_CylindricalSurface.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Geom_CylindricalSurface::get_type_descriptor(@)",
    header: "Geom_CylindricalSurface.hxx".}
proc DynamicType*(this: Geom_CylindricalSurface): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "Geom_CylindricalSurface.hxx".}