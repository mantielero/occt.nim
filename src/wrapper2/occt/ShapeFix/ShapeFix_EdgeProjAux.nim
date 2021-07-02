##  Created on: 1998-06-03
##  Created by: data exchange team
##  Copyright (c) 1998-1999 Matra Datavision
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

discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Edge"
discard "forward decl of Geom2d_Curve"
discard "forward decl of ShapeFix_EdgeProjAux"
discard "forward decl of ShapeFix_EdgeProjAux"
type
  HandleShapeFixEdgeProjAux* = Handle[ShapeFixEdgeProjAux]

## ! Project 3D point (vertex) on pcurves to find Vertex Parameter
## ! on parametric representation of an edge

type
  ShapeFixEdgeProjAux* {.importcpp: "ShapeFix_EdgeProjAux",
                        header: "ShapeFix_EdgeProjAux.hxx", bycopy.} = object of StandardTransient


proc constructShapeFixEdgeProjAux*(): ShapeFixEdgeProjAux {.constructor,
    importcpp: "ShapeFix_EdgeProjAux(@)", header: "ShapeFix_EdgeProjAux.hxx".}
proc constructShapeFixEdgeProjAux*(f: TopoDS_Face; e: TopoDS_Edge): ShapeFixEdgeProjAux {.
    constructor, importcpp: "ShapeFix_EdgeProjAux(@)",
    header: "ShapeFix_EdgeProjAux.hxx".}
proc init*(this: var ShapeFixEdgeProjAux; f: TopoDS_Face; e: TopoDS_Edge) {.
    importcpp: "Init", header: "ShapeFix_EdgeProjAux.hxx".}
proc compute*(this: var ShapeFixEdgeProjAux; preci: StandardReal) {.
    importcpp: "Compute", header: "ShapeFix_EdgeProjAux.hxx".}
proc isFirstDone*(this: ShapeFixEdgeProjAux): StandardBoolean {.noSideEffect,
    importcpp: "IsFirstDone", header: "ShapeFix_EdgeProjAux.hxx".}
proc isLastDone*(this: ShapeFixEdgeProjAux): StandardBoolean {.noSideEffect,
    importcpp: "IsLastDone", header: "ShapeFix_EdgeProjAux.hxx".}
proc firstParam*(this: ShapeFixEdgeProjAux): StandardReal {.noSideEffect,
    importcpp: "FirstParam", header: "ShapeFix_EdgeProjAux.hxx".}
proc lastParam*(this: ShapeFixEdgeProjAux): StandardReal {.noSideEffect,
    importcpp: "LastParam", header: "ShapeFix_EdgeProjAux.hxx".}
proc isIso*(this: var ShapeFixEdgeProjAux; c: Handle[Geom2dCurve]): StandardBoolean {.
    importcpp: "IsIso", header: "ShapeFix_EdgeProjAux.hxx".}
type
  ShapeFixEdgeProjAuxbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "ShapeFix_EdgeProjAux::get_type_name(@)",
                            header: "ShapeFix_EdgeProjAux.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "ShapeFix_EdgeProjAux::get_type_descriptor(@)",
    header: "ShapeFix_EdgeProjAux.hxx".}
proc dynamicType*(this: ShapeFixEdgeProjAux): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "ShapeFix_EdgeProjAux.hxx".}

