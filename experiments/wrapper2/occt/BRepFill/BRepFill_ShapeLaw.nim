##  Created on: 1998-08-17
##  Created by: Philippe MANGIN
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

discard "forward decl of Law_Function"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of TopoDS_Wire"
discard "forward decl of GeomFill_SectionLaw"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Edge"
discard "forward decl of BRepFill_ShapeLaw"
discard "forward decl of BRepFill_ShapeLaw"
type
  HandleC1C1* = Handle[BRepFillShapeLaw]

## ! Build Section Law, with an Vertex, or an Wire

type
  BRepFillShapeLaw* {.importcpp: "BRepFill_ShapeLaw",
                     header: "BRepFill_ShapeLaw.hxx", bycopy.} = object of BRepFillSectionLaw ##
                                                                                       ## !
                                                                                       ## Construct
                                                                                       ## an
                                                                                       ## constant
                                                                                       ## Law


proc constructBRepFillShapeLaw*(v: TopoDS_Vertex; build: bool = true): BRepFillShapeLaw {.
    constructor, importcpp: "BRepFill_ShapeLaw(@)", header: "BRepFill_ShapeLaw.hxx".}
proc constructBRepFillShapeLaw*(w: TopoDS_Wire; build: bool = true): BRepFillShapeLaw {.
    constructor, importcpp: "BRepFill_ShapeLaw(@)", header: "BRepFill_ShapeLaw.hxx".}
proc constructBRepFillShapeLaw*(w: TopoDS_Wire; L: Handle[LawFunction];
                               build: bool = true): BRepFillShapeLaw {.constructor,
    importcpp: "BRepFill_ShapeLaw(@)", header: "BRepFill_ShapeLaw.hxx".}
proc isVertex*(this: BRepFillShapeLaw): bool {.noSideEffect, importcpp: "IsVertex",
    header: "BRepFill_ShapeLaw.hxx".}
proc isConstant*(this: BRepFillShapeLaw): bool {.noSideEffect,
    importcpp: "IsConstant", header: "BRepFill_ShapeLaw.hxx".}
proc concatenedLaw*(this: BRepFillShapeLaw): Handle[GeomFillSectionLaw] {.
    noSideEffect, importcpp: "ConcatenedLaw", header: "BRepFill_ShapeLaw.hxx".}
proc continuity*(this: BRepFillShapeLaw; index: cint; tolAngular: cfloat): GeomAbsShape {.
    noSideEffect, importcpp: "Continuity", header: "BRepFill_ShapeLaw.hxx".}
proc vertexTol*(this: BRepFillShapeLaw; index: cint; param: cfloat): cfloat {.
    noSideEffect, importcpp: "VertexTol", header: "BRepFill_ShapeLaw.hxx".}
proc vertex*(this: BRepFillShapeLaw; index: cint; param: cfloat): TopoDS_Vertex {.
    noSideEffect, importcpp: "Vertex", header: "BRepFill_ShapeLaw.hxx".}
proc d0*(this: var BRepFillShapeLaw; param: cfloat; s: var TopoDS_Shape) {.
    importcpp: "D0", header: "BRepFill_ShapeLaw.hxx".}
proc edge*(this: BRepFillShapeLaw; index: cint): TopoDS_Edge {.noSideEffect,
    importcpp: "Edge", header: "BRepFill_ShapeLaw.hxx".}
type
  BRepFillShapeLawbaseType* = BRepFillSectionLaw

proc getTypeName*(): cstring {.importcpp: "BRepFill_ShapeLaw::get_type_name(@)",
                            header: "BRepFill_ShapeLaw.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRepFill_ShapeLaw::get_type_descriptor(@)",
    header: "BRepFill_ShapeLaw.hxx".}
proc dynamicType*(this: BRepFillShapeLaw): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "BRepFill_ShapeLaw.hxx".}

























