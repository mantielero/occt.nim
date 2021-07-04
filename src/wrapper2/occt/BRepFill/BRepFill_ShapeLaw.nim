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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../TopoDS/TopoDS_Shape,
  ../TopTools/TopTools_HArray1OfShape, ../Standard/Standard_Boolean,
  BRepFill_SectionLaw, ../GeomAbs/GeomAbs_Shape, ../Standard/Standard_Integer,
  ../Standard/Standard_Real

discard "forward decl of Law_Function"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of TopoDS_Wire"
discard "forward decl of GeomFill_SectionLaw"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Edge"
discard "forward decl of BRepFill_ShapeLaw"
discard "forward decl of BRepFill_ShapeLaw"
type
  Handle_BRepFill_ShapeLaw* = handle[BRepFill_ShapeLaw]

## ! Build Section Law, with an Vertex, or an Wire

type
  BRepFill_ShapeLaw* {.importcpp: "BRepFill_ShapeLaw",
                      header: "BRepFill_ShapeLaw.hxx", bycopy.} = object of BRepFill_SectionLaw ##
                                                                                         ## !
                                                                                         ## Construct
                                                                                         ## an
                                                                                         ## constant
                                                                                         ## Law


proc constructBRepFill_ShapeLaw*(V: TopoDS_Vertex;
                                Build: Standard_Boolean = Standard_True): BRepFill_ShapeLaw {.
    constructor, importcpp: "BRepFill_ShapeLaw(@)", header: "BRepFill_ShapeLaw.hxx".}
proc constructBRepFill_ShapeLaw*(W: TopoDS_Wire;
                                Build: Standard_Boolean = Standard_True): BRepFill_ShapeLaw {.
    constructor, importcpp: "BRepFill_ShapeLaw(@)", header: "BRepFill_ShapeLaw.hxx".}
proc constructBRepFill_ShapeLaw*(W: TopoDS_Wire; L: handle[Law_Function];
                                Build: Standard_Boolean = Standard_True): BRepFill_ShapeLaw {.
    constructor, importcpp: "BRepFill_ShapeLaw(@)", header: "BRepFill_ShapeLaw.hxx".}
proc IsVertex*(this: BRepFill_ShapeLaw): Standard_Boolean {.noSideEffect,
    importcpp: "IsVertex", header: "BRepFill_ShapeLaw.hxx".}
proc IsConstant*(this: BRepFill_ShapeLaw): Standard_Boolean {.noSideEffect,
    importcpp: "IsConstant", header: "BRepFill_ShapeLaw.hxx".}
proc ConcatenedLaw*(this: BRepFill_ShapeLaw): handle[GeomFill_SectionLaw] {.
    noSideEffect, importcpp: "ConcatenedLaw", header: "BRepFill_ShapeLaw.hxx".}
proc Continuity*(this: BRepFill_ShapeLaw; Index: Standard_Integer;
                TolAngular: Standard_Real): GeomAbs_Shape {.noSideEffect,
    importcpp: "Continuity", header: "BRepFill_ShapeLaw.hxx".}
proc VertexTol*(this: BRepFill_ShapeLaw; Index: Standard_Integer;
               Param: Standard_Real): Standard_Real {.noSideEffect,
    importcpp: "VertexTol", header: "BRepFill_ShapeLaw.hxx".}
proc Vertex*(this: BRepFill_ShapeLaw; Index: Standard_Integer; Param: Standard_Real): TopoDS_Vertex {.
    noSideEffect, importcpp: "Vertex", header: "BRepFill_ShapeLaw.hxx".}
proc D0*(this: var BRepFill_ShapeLaw; Param: Standard_Real; S: var TopoDS_Shape) {.
    importcpp: "D0", header: "BRepFill_ShapeLaw.hxx".}
proc Edge*(this: BRepFill_ShapeLaw; Index: Standard_Integer): TopoDS_Edge {.
    noSideEffect, importcpp: "Edge", header: "BRepFill_ShapeLaw.hxx".}
type
  BRepFill_ShapeLawbase_type* = BRepFill_SectionLaw

proc get_type_name*(): cstring {.importcpp: "BRepFill_ShapeLaw::get_type_name(@)",
                              header: "BRepFill_ShapeLaw.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BRepFill_ShapeLaw::get_type_descriptor(@)",
    header: "BRepFill_ShapeLaw.hxx".}
proc DynamicType*(this: BRepFill_ShapeLaw): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "BRepFill_ShapeLaw.hxx".}