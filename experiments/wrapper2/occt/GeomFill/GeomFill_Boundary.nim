##  Created on: 1995-10-17
##  Created by: Laurent BOURESCHE
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Real,
  ../Standard/Standard_Transient, ../Standard/Standard_Boolean

discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of GeomFill_Boundary"
discard "forward decl of GeomFill_Boundary"
type
  Handle_GeomFill_Boundary* = handle[GeomFill_Boundary]

## ! Root class to define a boundary  which will form part of a
## ! contour around a gap requiring filling.
## ! Any  new type  of  constrained boundary must inherit this class.
## ! The GeomFill package provides two classes to define constrained boundaries:
## ! -   GeomFill_SimpleBound to define an unattached boundary
## ! -   GeomFill_BoundWithSurf to define a boundary attached to a surface.
## ! These objects are used to define the boundaries for a
## ! GeomFill_ConstrainedFilling framework.

type
  GeomFill_Boundary* {.importcpp: "GeomFill_Boundary",
                      header: "GeomFill_Boundary.hxx", bycopy.} = object of Standard_Transient


proc Value*(this: GeomFill_Boundary; U: Standard_Real): gp_Pnt {.noSideEffect,
    importcpp: "Value", header: "GeomFill_Boundary.hxx".}
proc D1*(this: GeomFill_Boundary; U: Standard_Real; P: var gp_Pnt; V: var gp_Vec) {.
    noSideEffect, importcpp: "D1", header: "GeomFill_Boundary.hxx".}
proc HasNormals*(this: GeomFill_Boundary): Standard_Boolean {.noSideEffect,
    importcpp: "HasNormals", header: "GeomFill_Boundary.hxx".}
proc Norm*(this: GeomFill_Boundary; U: Standard_Real): gp_Vec {.noSideEffect,
    importcpp: "Norm", header: "GeomFill_Boundary.hxx".}
proc D1Norm*(this: GeomFill_Boundary; U: Standard_Real; N: var gp_Vec; DN: var gp_Vec) {.
    noSideEffect, importcpp: "D1Norm", header: "GeomFill_Boundary.hxx".}
proc Reparametrize*(this: var GeomFill_Boundary; First: Standard_Real;
                   Last: Standard_Real; HasDF: Standard_Boolean;
                   HasDL: Standard_Boolean; DF: Standard_Real; DL: Standard_Real;
                   Rev: Standard_Boolean) {.importcpp: "Reparametrize",
    header: "GeomFill_Boundary.hxx".}
proc Points*(this: GeomFill_Boundary; PFirst: var gp_Pnt; PLast: var gp_Pnt) {.
    noSideEffect, importcpp: "Points", header: "GeomFill_Boundary.hxx".}
proc Bounds*(this: GeomFill_Boundary; First: var Standard_Real;
            Last: var Standard_Real) {.noSideEffect, importcpp: "Bounds",
                                    header: "GeomFill_Boundary.hxx".}
proc IsDegenerated*(this: GeomFill_Boundary): Standard_Boolean {.noSideEffect,
    importcpp: "IsDegenerated", header: "GeomFill_Boundary.hxx".}
proc Tol3d*(this: GeomFill_Boundary): Standard_Real {.noSideEffect,
    importcpp: "Tol3d", header: "GeomFill_Boundary.hxx".}
proc Tol3d*(this: var GeomFill_Boundary; Tol: Standard_Real) {.importcpp: "Tol3d",
    header: "GeomFill_Boundary.hxx".}
proc Tolang*(this: GeomFill_Boundary): Standard_Real {.noSideEffect,
    importcpp: "Tolang", header: "GeomFill_Boundary.hxx".}
proc Tolang*(this: var GeomFill_Boundary; Tol: Standard_Real) {.importcpp: "Tolang",
    header: "GeomFill_Boundary.hxx".}
type
  GeomFill_Boundarybase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "GeomFill_Boundary::get_type_name(@)",
                              header: "GeomFill_Boundary.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "GeomFill_Boundary::get_type_descriptor(@)",
    header: "GeomFill_Boundary.hxx".}
proc DynamicType*(this: GeomFill_Boundary): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "GeomFill_Boundary.hxx".}