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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  ../GeomFill/GeomFill_HArray1OfSectionLaw,
  ../TopTools/TopTools_DataMapOfShapeInteger, ../Standard/Standard_Boolean,
  ../BRepTools/BRepTools_WireExplorer, ../Standard/Standard_Transient,
  ../Standard/Standard_Integer, ../GeomAbs/GeomAbs_Shape,
  ../Standard/Standard_Real

discard "forward decl of GeomFill_SectionLaw"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Wire"
discard "forward decl of TopoDS_Edge"
discard "forward decl of BRepFill_SectionLaw"
discard "forward decl of BRepFill_SectionLaw"
type
  Handle_BRepFill_SectionLaw* = handle[BRepFill_SectionLaw]

## ! Build Section Law, with an Vertex, or an Wire

type
  BRepFill_SectionLaw* {.importcpp: "BRepFill_SectionLaw",
                        header: "BRepFill_SectionLaw.hxx", bycopy.} = object of Standard_Transient


proc NbLaw*(this: BRepFill_SectionLaw): Standard_Integer {.noSideEffect,
    importcpp: "NbLaw", header: "BRepFill_SectionLaw.hxx".}
proc Law*(this: BRepFill_SectionLaw; Index: Standard_Integer): handle[
    GeomFill_SectionLaw] {.noSideEffect, importcpp: "Law",
                          header: "BRepFill_SectionLaw.hxx".}
proc IndexOfEdge*(this: BRepFill_SectionLaw; anEdge: TopoDS_Shape): Standard_Integer {.
    noSideEffect, importcpp: "IndexOfEdge", header: "BRepFill_SectionLaw.hxx".}
proc IsConstant*(this: BRepFill_SectionLaw): Standard_Boolean {.noSideEffect,
    importcpp: "IsConstant", header: "BRepFill_SectionLaw.hxx".}
proc IsUClosed*(this: BRepFill_SectionLaw): Standard_Boolean {.noSideEffect,
    importcpp: "IsUClosed", header: "BRepFill_SectionLaw.hxx".}
proc IsVClosed*(this: BRepFill_SectionLaw): Standard_Boolean {.noSideEffect,
    importcpp: "IsVClosed", header: "BRepFill_SectionLaw.hxx".}
proc IsDone*(this: BRepFill_SectionLaw): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "BRepFill_SectionLaw.hxx".}
proc IsVertex*(this: BRepFill_SectionLaw): Standard_Boolean {.noSideEffect,
    importcpp: "IsVertex", header: "BRepFill_SectionLaw.hxx".}
proc ConcatenedLaw*(this: BRepFill_SectionLaw): handle[GeomFill_SectionLaw] {.
    noSideEffect, importcpp: "ConcatenedLaw", header: "BRepFill_SectionLaw.hxx".}
proc Continuity*(this: BRepFill_SectionLaw; Index: Standard_Integer;
                TolAngular: Standard_Real): GeomAbs_Shape {.noSideEffect,
    importcpp: "Continuity", header: "BRepFill_SectionLaw.hxx".}
proc VertexTol*(this: BRepFill_SectionLaw; Index: Standard_Integer;
               Param: Standard_Real): Standard_Real {.noSideEffect,
    importcpp: "VertexTol", header: "BRepFill_SectionLaw.hxx".}
proc Vertex*(this: BRepFill_SectionLaw; Index: Standard_Integer; Param: Standard_Real): TopoDS_Vertex {.
    noSideEffect, importcpp: "Vertex", header: "BRepFill_SectionLaw.hxx".}
proc D0*(this: var BRepFill_SectionLaw; U: Standard_Real; S: var TopoDS_Shape) {.
    importcpp: "D0", header: "BRepFill_SectionLaw.hxx".}
proc Init*(this: var BRepFill_SectionLaw; W: TopoDS_Wire) {.importcpp: "Init",
    header: "BRepFill_SectionLaw.hxx".}
proc CurrentEdge*(this: var BRepFill_SectionLaw): TopoDS_Edge {.
    importcpp: "CurrentEdge", header: "BRepFill_SectionLaw.hxx".}
type
  BRepFill_SectionLawbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "BRepFill_SectionLaw::get_type_name(@)",
                              header: "BRepFill_SectionLaw.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BRepFill_SectionLaw::get_type_descriptor(@)",
    header: "BRepFill_SectionLaw.hxx".}
proc DynamicType*(this: BRepFill_SectionLaw): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "BRepFill_SectionLaw.hxx".}