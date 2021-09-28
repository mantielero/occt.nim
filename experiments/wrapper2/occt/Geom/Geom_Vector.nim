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

discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_DomainError"
discard "forward decl of gp_VectorWithNullMagnitude"
discard "forward decl of gp_Vec"
discard "forward decl of Geom_Vector"
discard "forward decl of Geom_Vector"
type
  HandleC1C1* = Handle[GeomVector]

## ! The abstract class Vector describes the common
## ! behavior of vectors in 3D space.
## ! The Geom package provides two concrete classes of
## ! vectors: Geom_Direction (unit vector) and Geom_VectorWithMagnitude.

type
  GeomVector* {.importcpp: "Geom_Vector", header: "Geom_Vector.hxx", bycopy.} = object of GeomGeometry ##
                                                                                             ## !
                                                                                             ## Reverses
                                                                                             ## the
                                                                                             ## vector
                                                                                             ## <me>.


proc reverse*(this: var GeomVector) {.importcpp: "Reverse", header: "Geom_Vector.hxx".}
proc reversed*(this: GeomVector): Handle[GeomVector] {.noSideEffect,
    importcpp: "Reversed", header: "Geom_Vector.hxx".}
proc angle*(this: GeomVector; other: Handle[GeomVector]): StandardReal {.noSideEffect,
    importcpp: "Angle", header: "Geom_Vector.hxx".}
proc angleWithRef*(this: GeomVector; other: Handle[GeomVector];
                  vRef: Handle[GeomVector]): StandardReal {.noSideEffect,
    importcpp: "AngleWithRef", header: "Geom_Vector.hxx".}
proc coord*(this: GeomVector; x: var StandardReal; y: var StandardReal;
           z: var StandardReal) {.noSideEffect, importcpp: "Coord",
                               header: "Geom_Vector.hxx".}
proc magnitude*(this: GeomVector): StandardReal {.noSideEffect,
    importcpp: "Magnitude", header: "Geom_Vector.hxx".}
proc squareMagnitude*(this: GeomVector): StandardReal {.noSideEffect,
    importcpp: "SquareMagnitude", header: "Geom_Vector.hxx".}
proc x*(this: GeomVector): StandardReal {.noSideEffect, importcpp: "X",
                                      header: "Geom_Vector.hxx".}
proc y*(this: GeomVector): StandardReal {.noSideEffect, importcpp: "Y",
                                      header: "Geom_Vector.hxx".}
proc z*(this: GeomVector): StandardReal {.noSideEffect, importcpp: "Z",
                                      header: "Geom_Vector.hxx".}
proc cross*(this: var GeomVector; other: Handle[GeomVector]) {.importcpp: "Cross",
    header: "Geom_Vector.hxx".}
proc crossed*(this: GeomVector; other: Handle[GeomVector]): Handle[GeomVector] {.
    noSideEffect, importcpp: "Crossed", header: "Geom_Vector.hxx".}
proc crossCross*(this: var GeomVector; v1: Handle[GeomVector]; v2: Handle[GeomVector]) {.
    importcpp: "CrossCross", header: "Geom_Vector.hxx".}
proc crossCrossed*(this: GeomVector; v1: Handle[GeomVector]; v2: Handle[GeomVector]): Handle[
    GeomVector] {.noSideEffect, importcpp: "CrossCrossed", header: "Geom_Vector.hxx".}
proc dot*(this: GeomVector; other: Handle[GeomVector]): StandardReal {.noSideEffect,
    importcpp: "Dot", header: "Geom_Vector.hxx".}
proc dotCross*(this: GeomVector; v1: Handle[GeomVector]; v2: Handle[GeomVector]): StandardReal {.
    noSideEffect, importcpp: "DotCross", header: "Geom_Vector.hxx".}
proc vec*(this: GeomVector): Vec {.noSideEffect, importcpp: "Vec",
                               header: "Geom_Vector.hxx".}
type
  GeomVectorbaseType* = GeomGeometry

proc getTypeName*(): cstring {.importcpp: "Geom_Vector::get_type_name(@)",
                            header: "Geom_Vector.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Geom_Vector::get_type_descriptor(@)", header: "Geom_Vector.hxx".}
proc dynamicType*(this: GeomVector): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Geom_Vector.hxx".}