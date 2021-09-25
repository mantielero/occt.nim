##  Created on: 1993-08-10
##  Created by: Remi LEQUETTE
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

discard "forward decl of Standard_DomainError"
discard "forward decl of TopLoc_Location"
discard "forward decl of Geom_Curve"
discard "forward decl of Geom2d_Curve"
discard "forward decl of Geom_Surface"
discard "forward decl of BRep_PointRepresentation"
discard "forward decl of BRep_PointRepresentation"
type
  HandleBRepPointRepresentation* = Handle[BRepPointRepresentation]

## ! Root  class     for   the points  representations.
## ! Contains a location and a parameter.

type
  BRepPointRepresentation* {.importcpp: "BRep_PointRepresentation",
                            header: "BRep_PointRepresentation.hxx", bycopy.} = object of StandardTransient ##
                                                                                                    ## !
                                                                                                    ## A
                                                                                                    ## point
                                                                                                    ## on
                                                                                                    ## a
                                                                                                    ## 3d
                                                                                                    ## curve.


proc isPointOnCurve*(this: BRepPointRepresentation): bool {.noSideEffect,
    importcpp: "IsPointOnCurve", header: "BRep_PointRepresentation.hxx".}
proc isPointOnCurveOnSurface*(this: BRepPointRepresentation): bool {.noSideEffect,
    importcpp: "IsPointOnCurveOnSurface", header: "BRep_PointRepresentation.hxx".}
proc isPointOnSurface*(this: BRepPointRepresentation): bool {.noSideEffect,
    importcpp: "IsPointOnSurface", header: "BRep_PointRepresentation.hxx".}
proc isPointOnCurve*(this: BRepPointRepresentation; c: Handle[GeomCurve];
                    L: TopLocLocation): bool {.noSideEffect,
    importcpp: "IsPointOnCurve", header: "BRep_PointRepresentation.hxx".}
proc isPointOnCurveOnSurface*(this: BRepPointRepresentation;
                             pc: Handle[Geom2dCurve]; s: Handle[GeomSurface];
                             L: TopLocLocation): bool {.noSideEffect,
    importcpp: "IsPointOnCurveOnSurface", header: "BRep_PointRepresentation.hxx".}
proc isPointOnSurface*(this: BRepPointRepresentation; s: Handle[GeomSurface];
                      L: TopLocLocation): bool {.noSideEffect,
    importcpp: "IsPointOnSurface", header: "BRep_PointRepresentation.hxx".}
proc location*(this: BRepPointRepresentation): TopLocLocation {.noSideEffect,
    importcpp: "Location", header: "BRep_PointRepresentation.hxx".}
proc location*(this: var BRepPointRepresentation; L: TopLocLocation) {.
    importcpp: "Location", header: "BRep_PointRepresentation.hxx".}
proc parameter*(this: BRepPointRepresentation): float {.noSideEffect,
    importcpp: "Parameter", header: "BRep_PointRepresentation.hxx".}
proc parameter*(this: var BRepPointRepresentation; p: float) {.importcpp: "Parameter",
    header: "BRep_PointRepresentation.hxx".}
proc parameter2*(this: BRepPointRepresentation): float {.noSideEffect,
    importcpp: "Parameter2", header: "BRep_PointRepresentation.hxx".}
proc parameter2*(this: var BRepPointRepresentation; p: float) {.
    importcpp: "Parameter2", header: "BRep_PointRepresentation.hxx".}
proc curve*(this: BRepPointRepresentation): Handle[GeomCurve] {.noSideEffect,
    importcpp: "Curve", header: "BRep_PointRepresentation.hxx".}
proc curve*(this: var BRepPointRepresentation; c: Handle[GeomCurve]) {.
    importcpp: "Curve", header: "BRep_PointRepresentation.hxx".}
proc pCurve*(this: BRepPointRepresentation): Handle[Geom2dCurve] {.noSideEffect,
    importcpp: "PCurve", header: "BRep_PointRepresentation.hxx".}
proc pCurve*(this: var BRepPointRepresentation; c: Handle[Geom2dCurve]) {.
    importcpp: "PCurve", header: "BRep_PointRepresentation.hxx".}
proc surface*(this: BRepPointRepresentation): Handle[GeomSurface] {.noSideEffect,
    importcpp: "Surface", header: "BRep_PointRepresentation.hxx".}
proc surface*(this: var BRepPointRepresentation; s: Handle[GeomSurface]) {.
    importcpp: "Surface", header: "BRep_PointRepresentation.hxx".}
proc dumpJson*(this: BRepPointRepresentation; theOStream: var StandardOStream;
              theDepth: int = -1) {.noSideEffect, importcpp: "DumpJson",
                                header: "BRep_PointRepresentation.hxx".}
type
  BRepPointRepresentationbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "BRep_PointRepresentation::get_type_name(@)",
                            header: "BRep_PointRepresentation.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRep_PointRepresentation::get_type_descriptor(@)",
    header: "BRep_PointRepresentation.hxx".}
proc dynamicType*(this: BRepPointRepresentation): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "BRep_PointRepresentation.hxx".}
