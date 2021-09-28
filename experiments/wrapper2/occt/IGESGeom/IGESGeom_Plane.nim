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

discard "forward decl of IGESData_IGESEntity"
discard "forward decl of gp_XYZ"
discard "forward decl of gp_Pnt"
discard "forward decl of IGESGeom_Plane"
discard "forward decl of IGESGeom_Plane"
type
  HandleC1C1* = Handle[IGESGeomPlane]

## ! defines IGESPlane, Type <108> Form <-1,0,1>
## ! in package IGESGeom
## ! A plane entity can be used to represent unbounded plane,
## ! as well as bounded portion of a plane. In either of the
## ! above cases the plane is defined within definition space
## ! by means of coefficients A, B, C, D where at least one of
## ! A, B, C is non-zero and  A * XT + B * YT + C * ZT = D

type
  IGESGeomPlane* {.importcpp: "IGESGeom_Plane", header: "IGESGeom_Plane.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESGeomPlane*(): IGESGeomPlane {.constructor,
    importcpp: "IGESGeom_Plane(@)", header: "IGESGeom_Plane.hxx".}
proc init*(this: var IGESGeomPlane; a: cfloat; b: cfloat; c: cfloat; d: cfloat;
          aCurve: Handle[IGESDataIGESEntity]; attach: Xyz; aSize: cfloat) {.
    importcpp: "Init", header: "IGESGeom_Plane.hxx".}
proc setFormNumber*(this: var IGESGeomPlane; form: cint) {.importcpp: "SetFormNumber",
    header: "IGESGeom_Plane.hxx".}
proc equation*(this: IGESGeomPlane; a: var cfloat; b: var cfloat; c: var cfloat;
              d: var cfloat) {.noSideEffect, importcpp: "Equation",
                            header: "IGESGeom_Plane.hxx".}
proc transformedEquation*(this: IGESGeomPlane; a: var cfloat; b: var cfloat;
                         c: var cfloat; d: var cfloat) {.noSideEffect,
    importcpp: "TransformedEquation", header: "IGESGeom_Plane.hxx".}
proc hasBoundingCurve*(this: IGESGeomPlane): bool {.noSideEffect,
    importcpp: "HasBoundingCurve", header: "IGESGeom_Plane.hxx".}
proc hasBoundingCurveHole*(this: IGESGeomPlane): bool {.noSideEffect,
    importcpp: "HasBoundingCurveHole", header: "IGESGeom_Plane.hxx".}
proc boundingCurve*(this: IGESGeomPlane): Handle[IGESDataIGESEntity] {.noSideEffect,
    importcpp: "BoundingCurve", header: "IGESGeom_Plane.hxx".}
proc hasSymbolAttach*(this: IGESGeomPlane): bool {.noSideEffect,
    importcpp: "HasSymbolAttach", header: "IGESGeom_Plane.hxx".}
proc symbolAttach*(this: IGESGeomPlane): Pnt {.noSideEffect,
    importcpp: "SymbolAttach", header: "IGESGeom_Plane.hxx".}
proc transformedSymbolAttach*(this: IGESGeomPlane): Pnt {.noSideEffect,
    importcpp: "TransformedSymbolAttach", header: "IGESGeom_Plane.hxx".}
proc symbolSize*(this: IGESGeomPlane): cfloat {.noSideEffect,
    importcpp: "SymbolSize", header: "IGESGeom_Plane.hxx".}
type
  IGESGeomPlanebaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESGeom_Plane::get_type_name(@)",
                            header: "IGESGeom_Plane.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESGeom_Plane::get_type_descriptor(@)",
    header: "IGESGeom_Plane.hxx".}
proc dynamicType*(this: IGESGeomPlane): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESGeom_Plane.hxx".}

























