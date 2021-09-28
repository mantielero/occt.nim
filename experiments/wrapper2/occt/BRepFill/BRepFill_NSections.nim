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

discard "forward decl of Geom_BSplineSurface"
discard "forward decl of GeomFill_SectionLaw"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of TopoDS_Shape"
discard "forward decl of BRepFill_NSections"
discard "forward decl of BRepFill_NSections"
type
  HandleC1C1* = Handle[BRepFillNSections]

## ! Build Section Law, with N Sections

type
  BRepFillNSections* {.importcpp: "BRepFill_NSections",
                      header: "BRepFill_NSections.hxx", bycopy.} = object of BRepFillSectionLaw ##
                                                                                         ## !
                                                                                         ## Construct


proc constructBRepFillNSections*(s: TopToolsSequenceOfShape; build: bool = true): BRepFillNSections {.
    constructor, importcpp: "BRepFill_NSections(@)",
    header: "BRepFill_NSections.hxx".}
proc constructBRepFillNSections*(s: TopToolsSequenceOfShape;
                                trsfs: GeomFillSequenceOfTrsf;
                                p: TColStdSequenceOfReal; vf: cfloat; vl: cfloat;
                                build: bool = true): BRepFillNSections {.constructor,
    importcpp: "BRepFill_NSections(@)", header: "BRepFill_NSections.hxx".}
proc isVertex*(this: BRepFillNSections): bool {.noSideEffect, importcpp: "IsVertex",
    header: "BRepFill_NSections.hxx".}
proc isConstant*(this: BRepFillNSections): bool {.noSideEffect,
    importcpp: "IsConstant", header: "BRepFill_NSections.hxx".}
proc concatenedLaw*(this: BRepFillNSections): Handle[GeomFillSectionLaw] {.
    noSideEffect, importcpp: "ConcatenedLaw", header: "BRepFill_NSections.hxx".}
proc continuity*(this: BRepFillNSections; index: cint; tolAngular: cfloat): GeomAbsShape {.
    noSideEffect, importcpp: "Continuity", header: "BRepFill_NSections.hxx".}
proc vertexTol*(this: BRepFillNSections; index: cint; param: cfloat): cfloat {.
    noSideEffect, importcpp: "VertexTol", header: "BRepFill_NSections.hxx".}
proc vertex*(this: BRepFillNSections; index: cint; param: cfloat): TopoDS_Vertex {.
    noSideEffect, importcpp: "Vertex", header: "BRepFill_NSections.hxx".}
proc d0*(this: var BRepFillNSections; param: cfloat; s: var TopoDS_Shape) {.
    importcpp: "D0", header: "BRepFill_NSections.hxx".}
type
  BRepFillNSectionsbaseType* = BRepFillSectionLaw

proc getTypeName*(): cstring {.importcpp: "BRepFill_NSections::get_type_name(@)",
                            header: "BRepFill_NSections.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRepFill_NSections::get_type_descriptor(@)",
    header: "BRepFill_NSections.hxx".}
proc dynamicType*(this: BRepFillNSections): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "BRepFill_NSections.hxx".}

























