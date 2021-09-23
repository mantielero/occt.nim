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

import
  AIS_InteractiveObject, ../TCollection/TCollection_AsciiString

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

  AIS_PlaneTrihedronbase_type* = AIS_InteractiveObject

proc get_type_name*(): cstring {.importcpp: "AIS_PlaneTrihedron::get_type_name(@)",
                              header: "AIS_PlaneTrihedron.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "AIS_PlaneTrihedron::get_type_descriptor(@)",
    header: "AIS_PlaneTrihedron.hxx".}
proc DynamicType*(this: AIS_PlaneTrihedron): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "AIS_PlaneTrihedron.hxx".}
proc constructAIS_PlaneTrihedron*(aPlane: handle[Geom_Plane]): AIS_PlaneTrihedron {.
    constructor, importcpp: "AIS_PlaneTrihedron(@)",
    header: "AIS_PlaneTrihedron.hxx".}
proc Component*(this: var AIS_PlaneTrihedron): handle[Geom_Plane] {.
    importcpp: "Component", header: "AIS_PlaneTrihedron.hxx".}
proc SetComponent*(this: var AIS_PlaneTrihedron; aPlane: handle[Geom_Plane]) {.
    importcpp: "SetComponent", header: "AIS_PlaneTrihedron.hxx".}
proc XAxis*(this: AIS_PlaneTrihedron): handle[AIS_Line] {.noSideEffect,
    importcpp: "XAxis", header: "AIS_PlaneTrihedron.hxx".}
proc YAxis*(this: AIS_PlaneTrihedron): handle[AIS_Line] {.noSideEffect,
    importcpp: "YAxis", header: "AIS_PlaneTrihedron.hxx".}
proc Position*(this: AIS_PlaneTrihedron): handle[AIS_Point] {.noSideEffect,
    importcpp: "Position", header: "AIS_PlaneTrihedron.hxx".}
proc SetLength*(this: var AIS_PlaneTrihedron; theLength: Standard_Real) {.
    importcpp: "SetLength", header: "AIS_PlaneTrihedron.hxx".}
proc GetLength*(this: AIS_PlaneTrihedron): Standard_Real {.noSideEffect,
    importcpp: "GetLength", header: "AIS_PlaneTrihedron.hxx".}
proc AcceptDisplayMode*(this: AIS_PlaneTrihedron; aMode: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "AcceptDisplayMode", header: "AIS_PlaneTrihedron.hxx".}
proc Signature*(this: AIS_PlaneTrihedron): Standard_Integer {.noSideEffect,
    importcpp: "Signature", header: "AIS_PlaneTrihedron.hxx".}
proc Type*(this: AIS_PlaneTrihedron): AIS_KindOfInteractive {.noSideEffect,
    importcpp: "Type", header: "AIS_PlaneTrihedron.hxx".}
proc SetColor*(this: var AIS_PlaneTrihedron; theColor: Quantity_Color) {.
    importcpp: "SetColor", header: "AIS_PlaneTrihedron.hxx".}
proc SetXLabel*(this: var AIS_PlaneTrihedron; theLabel: TCollection_AsciiString) {.
    importcpp: "SetXLabel", header: "AIS_PlaneTrihedron.hxx".}
proc SetYLabel*(this: var AIS_PlaneTrihedron; theLabel: TCollection_AsciiString) {.
    importcpp: "SetYLabel", header: "AIS_PlaneTrihedron.hxx".}
discard "forward decl of AIS_PlaneTrihedron"
type
  Handle_AIS_PlaneTrihedron* = handle[AIS_PlaneTrihedron]
