import ../../tkernel/tcollection/tcollection_types
import ../../tkernel/standard/standard_types
import ais_types
import ../../tkernel/quantity/quantity_types
import ../../tkg3d/geom/geom_types



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



proc newAIS_PlaneTrihedron*(aPlane: Handle[GeomPlane]): AIS_PlaneTrihedron {.cdecl,
    constructor, importcpp: "AIS_PlaneTrihedron(@)", header: "AIS_PlaneTrihedron.hxx".}
proc component*(this: var AIS_PlaneTrihedron): Handle[GeomPlane] {.cdecl,
    importcpp: "Component", header: "AIS_PlaneTrihedron.hxx".}
proc setComponent*(this: var AIS_PlaneTrihedron; aPlane: Handle[GeomPlane]) {.cdecl,
    importcpp: "SetComponent", header: "AIS_PlaneTrihedron.hxx".}
proc xAxis*(this: AIS_PlaneTrihedron): Handle[AIS_Line] {.noSideEffect, cdecl,
    importcpp: "XAxis", header: "AIS_PlaneTrihedron.hxx".}
proc yAxis*(this: AIS_PlaneTrihedron): Handle[AIS_Line] {.noSideEffect, cdecl,
    importcpp: "YAxis", header: "AIS_PlaneTrihedron.hxx".}
proc position*(this: AIS_PlaneTrihedron): Handle[AIS_Point] {.noSideEffect, cdecl,
    importcpp: "Position", header: "AIS_PlaneTrihedron.hxx".}
proc setLength*(this: var AIS_PlaneTrihedron; theLength: cfloat) {.cdecl,
    importcpp: "SetLength", header: "AIS_PlaneTrihedron.hxx".}
proc getLength*(this: AIS_PlaneTrihedron): cfloat {.noSideEffect, cdecl,
    importcpp: "GetLength", header: "AIS_PlaneTrihedron.hxx".}
proc acceptDisplayMode*(this: AIS_PlaneTrihedron; aMode: cint): bool {.noSideEffect,
    cdecl, importcpp: "AcceptDisplayMode", header: "AIS_PlaneTrihedron.hxx".}
proc signature*(this: AIS_PlaneTrihedron): cint {.noSideEffect, cdecl,
    importcpp: "Signature", header: "AIS_PlaneTrihedron.hxx".}
proc `type`*(this: AIS_PlaneTrihedron): AIS_KindOfInteractive {.noSideEffect, cdecl,
    importcpp: "Type", header: "AIS_PlaneTrihedron.hxx".}
proc setColor*(this: var AIS_PlaneTrihedron; theColor: QuantityColor) {.cdecl,
    importcpp: "SetColor", header: "AIS_PlaneTrihedron.hxx".}
proc setXLabel*(this: var AIS_PlaneTrihedron; theLabel: TCollectionAsciiString) {.
    cdecl, importcpp: "SetXLabel", header: "AIS_PlaneTrihedron.hxx".}
proc setYLabel*(this: var AIS_PlaneTrihedron; theLabel: TCollectionAsciiString) {.
    cdecl, importcpp: "SetYLabel", header: "AIS_PlaneTrihedron.hxx".}


