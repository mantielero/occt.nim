##  Created on: 1998-12-29
##  Created by: Joelle CHAUVET
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Real,
  ../TopTools/TopTools_SequenceOfShape, ../GeomFill/GeomFill_SequenceOfTrsf,
  ../TColStd/TColStd_SequenceOfReal, ../TopTools/TopTools_HArray2OfShape,
  BRepFill_SectionLaw, ../Standard/Standard_Boolean, ../GeomAbs/GeomAbs_Shape,
  ../Standard/Standard_Integer

discard "forward decl of Geom_BSplineSurface"
discard "forward decl of GeomFill_SectionLaw"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of TopoDS_Shape"
discard "forward decl of BRepFill_NSections"
discard "forward decl of BRepFill_NSections"
type
  Handle_BRepFill_NSections* = handle[BRepFill_NSections]

## ! Build Section Law, with N Sections

type
  BRepFill_NSections* {.importcpp: "BRepFill_NSections",
                       header: "BRepFill_NSections.hxx", bycopy.} = object of BRepFill_SectionLaw ##
                                                                                           ## !
                                                                                           ## Construct


proc constructBRepFill_NSections*(S: TopTools_SequenceOfShape;
                                 Build: Standard_Boolean = Standard_True): BRepFill_NSections {.
    constructor, importcpp: "BRepFill_NSections(@)",
    header: "BRepFill_NSections.hxx".}
proc constructBRepFill_NSections*(S: TopTools_SequenceOfShape;
                                 Trsfs: GeomFill_SequenceOfTrsf;
                                 P: TColStd_SequenceOfReal; VF: Standard_Real;
                                 VL: Standard_Real;
                                 Build: Standard_Boolean = Standard_True): BRepFill_NSections {.
    constructor, importcpp: "BRepFill_NSections(@)",
    header: "BRepFill_NSections.hxx".}
proc IsVertex*(this: BRepFill_NSections): Standard_Boolean {.noSideEffect,
    importcpp: "IsVertex", header: "BRepFill_NSections.hxx".}
proc IsConstant*(this: BRepFill_NSections): Standard_Boolean {.noSideEffect,
    importcpp: "IsConstant", header: "BRepFill_NSections.hxx".}
proc ConcatenedLaw*(this: BRepFill_NSections): handle[GeomFill_SectionLaw] {.
    noSideEffect, importcpp: "ConcatenedLaw", header: "BRepFill_NSections.hxx".}
proc Continuity*(this: BRepFill_NSections; Index: Standard_Integer;
                TolAngular: Standard_Real): GeomAbs_Shape {.noSideEffect,
    importcpp: "Continuity", header: "BRepFill_NSections.hxx".}
proc VertexTol*(this: BRepFill_NSections; Index: Standard_Integer;
               Param: Standard_Real): Standard_Real {.noSideEffect,
    importcpp: "VertexTol", header: "BRepFill_NSections.hxx".}
proc Vertex*(this: BRepFill_NSections; Index: Standard_Integer; Param: Standard_Real): TopoDS_Vertex {.
    noSideEffect, importcpp: "Vertex", header: "BRepFill_NSections.hxx".}
proc D0*(this: var BRepFill_NSections; Param: Standard_Real; S: var TopoDS_Shape) {.
    importcpp: "D0", header: "BRepFill_NSections.hxx".}
type
  BRepFill_NSectionsbase_type* = BRepFill_SectionLaw

proc get_type_name*(): cstring {.importcpp: "BRepFill_NSections::get_type_name(@)",
                              header: "BRepFill_NSections.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BRepFill_NSections::get_type_descriptor(@)",
    header: "BRepFill_NSections.hxx".}
proc DynamicType*(this: BRepFill_NSections): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "BRepFill_NSections.hxx".}