##  Created on: 1995-12-12
##  Created by: Jacques GOUSSARD
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

discard "forward decl of TopoDS_Wire"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Edge"
discard "forward decl of BRepCheck_Wire"
discard "forward decl of BRepCheck_Wire"
type
  HandleC1C1* = Handle[BRepCheckWire]
  BRepCheckWire* {.importcpp: "BRepCheck_Wire", header: "BRepCheck_Wire.hxx", bycopy.} = object of BRepCheckResult


proc constructBRepCheckWire*(w: TopoDS_Wire): BRepCheckWire {.constructor,
    importcpp: "BRepCheck_Wire(@)", header: "BRepCheck_Wire.hxx".}
proc inContext*(this: var BRepCheckWire; contextShape: TopoDS_Shape) {.
    importcpp: "InContext", header: "BRepCheck_Wire.hxx".}
proc minimum*(this: var BRepCheckWire) {.importcpp: "Minimum",
                                     header: "BRepCheck_Wire.hxx".}
proc blind*(this: var BRepCheckWire) {.importcpp: "Blind",
                                   header: "BRepCheck_Wire.hxx".}
proc closed*(this: var BRepCheckWire; update: StandardBoolean = false): BRepCheckStatus {.
    importcpp: "Closed", header: "BRepCheck_Wire.hxx".}
proc closed2d*(this: var BRepCheckWire; f: TopoDS_Face;
              update: StandardBoolean = false): BRepCheckStatus {.
    importcpp: "Closed2d", header: "BRepCheck_Wire.hxx".}
proc orientation*(this: var BRepCheckWire; f: TopoDS_Face;
                 update: StandardBoolean = false): BRepCheckStatus {.
    importcpp: "Orientation", header: "BRepCheck_Wire.hxx".}
proc selfIntersect*(this: var BRepCheckWire; f: TopoDS_Face; e1: var TopoDS_Edge;
                   e2: var TopoDS_Edge; update: StandardBoolean = false): BRepCheckStatus {.
    importcpp: "SelfIntersect", header: "BRepCheck_Wire.hxx".}
proc geometricControls*(this: BRepCheckWire): StandardBoolean {.noSideEffect,
    importcpp: "GeometricControls", header: "BRepCheck_Wire.hxx".}
proc geometricControls*(this: var BRepCheckWire; b: StandardBoolean) {.
    importcpp: "GeometricControls", header: "BRepCheck_Wire.hxx".}
proc setStatus*(this: var BRepCheckWire; theStatus: BRepCheckStatus) {.
    importcpp: "SetStatus", header: "BRepCheck_Wire.hxx".}
type
  BRepCheckWirebaseType* = BRepCheckResult

proc getTypeName*(): cstring {.importcpp: "BRepCheck_Wire::get_type_name(@)",
                            header: "BRepCheck_Wire.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRepCheck_Wire::get_type_descriptor(@)",
    header: "BRepCheck_Wire.hxx".}
proc dynamicType*(this: BRepCheckWire): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "BRepCheck_Wire.hxx".}