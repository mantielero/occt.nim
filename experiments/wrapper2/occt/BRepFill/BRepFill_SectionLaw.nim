##  Created on: 1998-01-07
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

discard "forward decl of GeomFill_SectionLaw"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Wire"
discard "forward decl of TopoDS_Edge"
discard "forward decl of BRepFill_SectionLaw"
discard "forward decl of BRepFill_SectionLaw"
type
  HandleBRepFillSectionLaw* = Handle[BRepFillSectionLaw]

## ! Build Section Law, with an Vertex, or an Wire

type
  BRepFillSectionLaw* {.importcpp: "BRepFill_SectionLaw",
                       header: "BRepFill_SectionLaw.hxx", bycopy.} = object of StandardTransient


proc nbLaw*(this: BRepFillSectionLaw): int {.noSideEffect, importcpp: "NbLaw",
    header: "BRepFill_SectionLaw.hxx".}
proc law*(this: BRepFillSectionLaw; index: int): Handle[GeomFillSectionLaw] {.
    noSideEffect, importcpp: "Law", header: "BRepFill_SectionLaw.hxx".}
proc indexOfEdge*(this: BRepFillSectionLaw; anEdge: TopoDS_Shape): int {.noSideEffect,
    importcpp: "IndexOfEdge", header: "BRepFill_SectionLaw.hxx".}
proc isConstant*(this: BRepFillSectionLaw): bool {.noSideEffect,
    importcpp: "IsConstant", header: "BRepFill_SectionLaw.hxx".}
proc isUClosed*(this: BRepFillSectionLaw): bool {.noSideEffect,
    importcpp: "IsUClosed", header: "BRepFill_SectionLaw.hxx".}
proc isVClosed*(this: BRepFillSectionLaw): bool {.noSideEffect,
    importcpp: "IsVClosed", header: "BRepFill_SectionLaw.hxx".}
proc isDone*(this: BRepFillSectionLaw): bool {.noSideEffect, importcpp: "IsDone",
    header: "BRepFill_SectionLaw.hxx".}
proc isVertex*(this: BRepFillSectionLaw): bool {.noSideEffect, importcpp: "IsVertex",
    header: "BRepFill_SectionLaw.hxx".}
proc concatenedLaw*(this: BRepFillSectionLaw): Handle[GeomFillSectionLaw] {.
    noSideEffect, importcpp: "ConcatenedLaw", header: "BRepFill_SectionLaw.hxx".}
proc continuity*(this: BRepFillSectionLaw; index: int; tolAngular: float): GeomAbsShape {.
    noSideEffect, importcpp: "Continuity", header: "BRepFill_SectionLaw.hxx".}
proc vertexTol*(this: BRepFillSectionLaw; index: int; param: float): float {.
    noSideEffect, importcpp: "VertexTol", header: "BRepFill_SectionLaw.hxx".}
proc vertex*(this: BRepFillSectionLaw; index: int; param: float): TopoDS_Vertex {.
    noSideEffect, importcpp: "Vertex", header: "BRepFill_SectionLaw.hxx".}
proc d0*(this: var BRepFillSectionLaw; u: float; s: var TopoDS_Shape) {.importcpp: "D0",
    header: "BRepFill_SectionLaw.hxx".}
proc init*(this: var BRepFillSectionLaw; w: TopoDS_Wire) {.importcpp: "Init",
    header: "BRepFill_SectionLaw.hxx".}
proc currentEdge*(this: var BRepFillSectionLaw): TopoDS_Edge {.
    importcpp: "CurrentEdge", header: "BRepFill_SectionLaw.hxx".}
type
  BRepFillSectionLawbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "BRepFill_SectionLaw::get_type_name(@)",
                            header: "BRepFill_SectionLaw.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRepFill_SectionLaw::get_type_descriptor(@)",
    header: "BRepFill_SectionLaw.hxx".}
proc dynamicType*(this: BRepFillSectionLaw): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "BRepFill_SectionLaw.hxx".}
