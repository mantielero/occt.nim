##  Created on: 1996-12-13
##  Created by: Jean-Pierre COMBE/Odile Olivier
##  Copyright (c) 1996-1999 Matra Datavision
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

discard "forward decl of AIS_Line"
discard "forward decl of AIS_Point"
discard "forward decl of Geom_Plane"
type
  AIS_PlaneTrihedron* {.importcpp: "AIS_PlaneTrihedron",
                       header: "AIS_PlaneTrihedron.hxx", bycopy.} = object of AIS_InteractiveObject ##
                                                                                             ## !
                                                                                             ## Initializes
                                                                                             ## the
                                                                                             ## plane
                                                                                             ## aPlane.
                                                                                             ## The
                                                                                             ## plane
                                                                                             ## trihedron
                                                                                             ## is
                                                                                             ##
                                                                                             ## !
                                                                                             ## constructed
                                                                                             ## from
                                                                                             ## this
                                                                                             ## and
                                                                                             ## an
                                                                                             ## axis.

  AIS_PlaneTrihedronbaseType* = AIS_InteractiveObject

proc getTypeName*(): cstring {.importcpp: "AIS_PlaneTrihedron::get_type_name(@)",
                            header: "AIS_PlaneTrihedron.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "AIS_PlaneTrihedron::get_type_descriptor(@)",
    header: "AIS_PlaneTrihedron.hxx".}
proc dynamicType*(this: AIS_PlaneTrihedron): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "AIS_PlaneTrihedron.hxx".}
proc constructAIS_PlaneTrihedron*(aPlane: Handle[GeomPlane]): AIS_PlaneTrihedron {.
    constructor, importcpp: "AIS_PlaneTrihedron(@)",
    header: "AIS_PlaneTrihedron.hxx".}
proc component*(this: var AIS_PlaneTrihedron): Handle[GeomPlane] {.
    importcpp: "Component", header: "AIS_PlaneTrihedron.hxx".}
proc setComponent*(this: var AIS_PlaneTrihedron; aPlane: Handle[GeomPlane]) {.
    importcpp: "SetComponent", header: "AIS_PlaneTrihedron.hxx".}
proc xAxis*(this: AIS_PlaneTrihedron): Handle[AIS_Line] {.noSideEffect,
    importcpp: "XAxis", header: "AIS_PlaneTrihedron.hxx".}
proc yAxis*(this: AIS_PlaneTrihedron): Handle[AIS_Line] {.noSideEffect,
    importcpp: "YAxis", header: "AIS_PlaneTrihedron.hxx".}
proc position*(this: AIS_PlaneTrihedron): Handle[AIS_Point] {.noSideEffect,
    importcpp: "Position", header: "AIS_PlaneTrihedron.hxx".}
proc setLength*(this: var AIS_PlaneTrihedron; theLength: float) {.
    importcpp: "SetLength", header: "AIS_PlaneTrihedron.hxx".}
proc getLength*(this: AIS_PlaneTrihedron): float {.noSideEffect,
    importcpp: "GetLength", header: "AIS_PlaneTrihedron.hxx".}
proc acceptDisplayMode*(this: AIS_PlaneTrihedron; aMode: int): bool {.noSideEffect,
    importcpp: "AcceptDisplayMode", header: "AIS_PlaneTrihedron.hxx".}
proc signature*(this: AIS_PlaneTrihedron): int {.noSideEffect,
    importcpp: "Signature", header: "AIS_PlaneTrihedron.hxx".}
proc `type`*(this: AIS_PlaneTrihedron): AIS_KindOfInteractive {.noSideEffect,
    importcpp: "Type", header: "AIS_PlaneTrihedron.hxx".}
proc setColor*(this: var AIS_PlaneTrihedron; theColor: QuantityColor) {.
    importcpp: "SetColor", header: "AIS_PlaneTrihedron.hxx".}
proc setXLabel*(this: var AIS_PlaneTrihedron; theLabel: TCollectionAsciiString) {.
    importcpp: "SetXLabel", header: "AIS_PlaneTrihedron.hxx".}
proc setYLabel*(this: var AIS_PlaneTrihedron; theLabel: TCollectionAsciiString) {.
    importcpp: "SetYLabel", header: "AIS_PlaneTrihedron.hxx".}
discard "forward decl of AIS_PlaneTrihedron"
type
  HandleAIS_PlaneTrihedron* = Handle[AIS_PlaneTrihedron]

