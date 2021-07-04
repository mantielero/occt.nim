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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../TopoDS/TopoDS_Face,
  ../TopoDS/TopoDS_Edge, ../Standard/Standard_Real, ../Standard/Standard_Boolean,
  ../Standard/Standard_Transient

discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Edge"
discard "forward decl of Geom2d_Curve"
discard "forward decl of ShapeFix_EdgeProjAux"
discard "forward decl of ShapeFix_EdgeProjAux"
type
  Handle_ShapeFix_EdgeProjAux* = handle[ShapeFix_EdgeProjAux]

## ! Project 3D point (vertex) on pcurves to find Vertex Parameter
## ! on parametric representation of an edge

type
  ShapeFix_EdgeProjAux* {.importcpp: "ShapeFix_EdgeProjAux",
                         header: "ShapeFix_EdgeProjAux.hxx", bycopy.} = object of Standard_Transient


proc constructShapeFix_EdgeProjAux*(): ShapeFix_EdgeProjAux {.constructor,
    importcpp: "ShapeFix_EdgeProjAux(@)", header: "ShapeFix_EdgeProjAux.hxx".}
proc constructShapeFix_EdgeProjAux*(F: TopoDS_Face; E: TopoDS_Edge): ShapeFix_EdgeProjAux {.
    constructor, importcpp: "ShapeFix_EdgeProjAux(@)",
    header: "ShapeFix_EdgeProjAux.hxx".}
proc Init*(this: var ShapeFix_EdgeProjAux; F: TopoDS_Face; E: TopoDS_Edge) {.
    importcpp: "Init", header: "ShapeFix_EdgeProjAux.hxx".}
proc Compute*(this: var ShapeFix_EdgeProjAux; preci: Standard_Real) {.
    importcpp: "Compute", header: "ShapeFix_EdgeProjAux.hxx".}
proc IsFirstDone*(this: ShapeFix_EdgeProjAux): Standard_Boolean {.noSideEffect,
    importcpp: "IsFirstDone", header: "ShapeFix_EdgeProjAux.hxx".}
proc IsLastDone*(this: ShapeFix_EdgeProjAux): Standard_Boolean {.noSideEffect,
    importcpp: "IsLastDone", header: "ShapeFix_EdgeProjAux.hxx".}
proc FirstParam*(this: ShapeFix_EdgeProjAux): Standard_Real {.noSideEffect,
    importcpp: "FirstParam", header: "ShapeFix_EdgeProjAux.hxx".}
proc LastParam*(this: ShapeFix_EdgeProjAux): Standard_Real {.noSideEffect,
    importcpp: "LastParam", header: "ShapeFix_EdgeProjAux.hxx".}
proc IsIso*(this: var ShapeFix_EdgeProjAux; C: handle[Geom2d_Curve]): Standard_Boolean {.
    importcpp: "IsIso", header: "ShapeFix_EdgeProjAux.hxx".}
type
  ShapeFix_EdgeProjAuxbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "ShapeFix_EdgeProjAux::get_type_name(@)",
                              header: "ShapeFix_EdgeProjAux.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "ShapeFix_EdgeProjAux::get_type_descriptor(@)",
    header: "ShapeFix_EdgeProjAux.hxx".}
proc DynamicType*(this: ShapeFix_EdgeProjAux): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "ShapeFix_EdgeProjAux.hxx".}