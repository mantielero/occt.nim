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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../TopLoc/TopLoc_Location,
  ../Standard/Standard_Real, ../Standard/Standard_Transient,
  ../Standard/Standard_Boolean

discard "forward decl of Standard_DomainError"
discard "forward decl of TopLoc_Location"
discard "forward decl of Geom_Curve"
discard "forward decl of Geom2d_Curve"
discard "forward decl of Geom_Surface"
discard "forward decl of BRep_PointRepresentation"
discard "forward decl of BRep_PointRepresentation"
type
  Handle_BRep_PointRepresentation* = handle[BRep_PointRepresentation]

## ! Root  class     for   the points  representations.
## ! Contains a location and a parameter.

type
  BRep_PointRepresentation* {.importcpp: "BRep_PointRepresentation",
                             header: "BRep_PointRepresentation.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                      ## !
                                                                                                      ## A
                                                                                                      ## point
                                                                                                      ## on
                                                                                                      ## a
                                                                                                      ## 3d
                                                                                                      ## curve.


proc IsPointOnCurve*(this: BRep_PointRepresentation): Standard_Boolean {.
    noSideEffect, importcpp: "IsPointOnCurve",
    header: "BRep_PointRepresentation.hxx".}
proc IsPointOnCurveOnSurface*(this: BRep_PointRepresentation): Standard_Boolean {.
    noSideEffect, importcpp: "IsPointOnCurveOnSurface",
    header: "BRep_PointRepresentation.hxx".}
proc IsPointOnSurface*(this: BRep_PointRepresentation): Standard_Boolean {.
    noSideEffect, importcpp: "IsPointOnSurface",
    header: "BRep_PointRepresentation.hxx".}
proc IsPointOnCurve*(this: BRep_PointRepresentation; C: handle[Geom_Curve];
                    L: TopLoc_Location): Standard_Boolean {.noSideEffect,
    importcpp: "IsPointOnCurve", header: "BRep_PointRepresentation.hxx".}
proc IsPointOnCurveOnSurface*(this: BRep_PointRepresentation;
                             PC: handle[Geom2d_Curve]; S: handle[Geom_Surface];
                             L: TopLoc_Location): Standard_Boolean {.noSideEffect,
    importcpp: "IsPointOnCurveOnSurface", header: "BRep_PointRepresentation.hxx".}
proc IsPointOnSurface*(this: BRep_PointRepresentation; S: handle[Geom_Surface];
                      L: TopLoc_Location): Standard_Boolean {.noSideEffect,
    importcpp: "IsPointOnSurface", header: "BRep_PointRepresentation.hxx".}
proc Location*(this: BRep_PointRepresentation): TopLoc_Location {.noSideEffect,
    importcpp: "Location", header: "BRep_PointRepresentation.hxx".}
proc Location*(this: var BRep_PointRepresentation; L: TopLoc_Location) {.
    importcpp: "Location", header: "BRep_PointRepresentation.hxx".}
proc Parameter*(this: BRep_PointRepresentation): Standard_Real {.noSideEffect,
    importcpp: "Parameter", header: "BRep_PointRepresentation.hxx".}
proc Parameter*(this: var BRep_PointRepresentation; P: Standard_Real) {.
    importcpp: "Parameter", header: "BRep_PointRepresentation.hxx".}
proc Parameter2*(this: BRep_PointRepresentation): Standard_Real {.noSideEffect,
    importcpp: "Parameter2", header: "BRep_PointRepresentation.hxx".}
proc Parameter2*(this: var BRep_PointRepresentation; P: Standard_Real) {.
    importcpp: "Parameter2", header: "BRep_PointRepresentation.hxx".}
proc Curve*(this: BRep_PointRepresentation): handle[Geom_Curve] {.noSideEffect,
    importcpp: "Curve", header: "BRep_PointRepresentation.hxx".}
proc Curve*(this: var BRep_PointRepresentation; C: handle[Geom_Curve]) {.
    importcpp: "Curve", header: "BRep_PointRepresentation.hxx".}
proc PCurve*(this: BRep_PointRepresentation): handle[Geom2d_Curve] {.noSideEffect,
    importcpp: "PCurve", header: "BRep_PointRepresentation.hxx".}
proc PCurve*(this: var BRep_PointRepresentation; C: handle[Geom2d_Curve]) {.
    importcpp: "PCurve", header: "BRep_PointRepresentation.hxx".}
proc Surface*(this: BRep_PointRepresentation): handle[Geom_Surface] {.noSideEffect,
    importcpp: "Surface", header: "BRep_PointRepresentation.hxx".}
proc Surface*(this: var BRep_PointRepresentation; S: handle[Geom_Surface]) {.
    importcpp: "Surface", header: "BRep_PointRepresentation.hxx".}
proc DumpJson*(this: BRep_PointRepresentation; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "BRep_PointRepresentation.hxx".}
type
  BRep_PointRepresentationbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "BRep_PointRepresentation::get_type_name(@)",
                              header: "BRep_PointRepresentation.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BRep_PointRepresentation::get_type_descriptor(@)",
    header: "BRep_PointRepresentation.hxx".}
proc DynamicType*(this: BRep_PointRepresentation): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "BRep_PointRepresentation.hxx".}