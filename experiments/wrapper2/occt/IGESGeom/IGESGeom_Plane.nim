##  Created on: 1993-01-09
##  Created by: CKY / Contract Toubro-Larsen ( Kiran )
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
  ../gp/gp_XYZ, ../IGESData/IGESData_IGESEntity, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean

discard "forward decl of IGESData_IGESEntity"
discard "forward decl of gp_XYZ"
discard "forward decl of gp_Pnt"
discard "forward decl of IGESGeom_Plane"
discard "forward decl of IGESGeom_Plane"
type
  Handle_IGESGeom_Plane* = handle[IGESGeom_Plane]

## ! defines IGESPlane, Type <108> Form <-1,0,1>
## ! in package IGESGeom
## ! A plane entity can be used to represent unbounded plane,
## ! as well as bounded portion of a plane. In either of the
## ! above cases the plane is defined within definition space
## ! by means of coefficients A, B, C, D where at least one of
## ! A, B, C is non-zero and  A * XT + B * YT + C * ZT = D

type
  IGESGeom_Plane* {.importcpp: "IGESGeom_Plane", header: "IGESGeom_Plane.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESGeom_Plane*(): IGESGeom_Plane {.constructor,
    importcpp: "IGESGeom_Plane(@)", header: "IGESGeom_Plane.hxx".}
proc Init*(this: var IGESGeom_Plane; A: Standard_Real; B: Standard_Real;
          C: Standard_Real; D: Standard_Real; aCurve: handle[IGESData_IGESEntity];
          attach: gp_XYZ; aSize: Standard_Real) {.importcpp: "Init",
    header: "IGESGeom_Plane.hxx".}
proc SetFormNumber*(this: var IGESGeom_Plane; form: Standard_Integer) {.
    importcpp: "SetFormNumber", header: "IGESGeom_Plane.hxx".}
proc Equation*(this: IGESGeom_Plane; A: var Standard_Real; B: var Standard_Real;
              C: var Standard_Real; D: var Standard_Real) {.noSideEffect,
    importcpp: "Equation", header: "IGESGeom_Plane.hxx".}
proc TransformedEquation*(this: IGESGeom_Plane; A: var Standard_Real;
                         B: var Standard_Real; C: var Standard_Real;
                         D: var Standard_Real) {.noSideEffect,
    importcpp: "TransformedEquation", header: "IGESGeom_Plane.hxx".}
proc HasBoundingCurve*(this: IGESGeom_Plane): Standard_Boolean {.noSideEffect,
    importcpp: "HasBoundingCurve", header: "IGESGeom_Plane.hxx".}
proc HasBoundingCurveHole*(this: IGESGeom_Plane): Standard_Boolean {.noSideEffect,
    importcpp: "HasBoundingCurveHole", header: "IGESGeom_Plane.hxx".}
proc BoundingCurve*(this: IGESGeom_Plane): handle[IGESData_IGESEntity] {.
    noSideEffect, importcpp: "BoundingCurve", header: "IGESGeom_Plane.hxx".}
proc HasSymbolAttach*(this: IGESGeom_Plane): Standard_Boolean {.noSideEffect,
    importcpp: "HasSymbolAttach", header: "IGESGeom_Plane.hxx".}
proc SymbolAttach*(this: IGESGeom_Plane): gp_Pnt {.noSideEffect,
    importcpp: "SymbolAttach", header: "IGESGeom_Plane.hxx".}
proc TransformedSymbolAttach*(this: IGESGeom_Plane): gp_Pnt {.noSideEffect,
    importcpp: "TransformedSymbolAttach", header: "IGESGeom_Plane.hxx".}
proc SymbolSize*(this: IGESGeom_Plane): Standard_Real {.noSideEffect,
    importcpp: "SymbolSize", header: "IGESGeom_Plane.hxx".}
type
  IGESGeom_Planebase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESGeom_Plane::get_type_name(@)",
                              header: "IGESGeom_Plane.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESGeom_Plane::get_type_descriptor(@)",
    header: "IGESGeom_Plane.hxx".}
proc DynamicType*(this: IGESGeom_Plane): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESGeom_Plane.hxx".}