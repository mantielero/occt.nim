##  Created on: 1998-10-29
##  Created by: Jean Yves LEBEY
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

discard "forward decl of TopoDS_Edge"
discard "forward decl of BRepAdaptor_Surface"
discard "forward decl of TopoDS_Shape"
discard "forward decl of Geom2dAdaptor_Curve"
discard "forward decl of IntRes2d_Domain"
discard "forward decl of TopOpeBRep_Hctxee2d"
discard "forward decl of TopOpeBRep_Hctxee2d"
type
  HandleTopOpeBRepHctxee2d* = Handle[TopOpeBRepHctxee2d]
  TopOpeBRepHctxee2d* {.importcpp: "TopOpeBRep_Hctxee2d",
                       header: "TopOpeBRep_Hctxee2d.hxx", bycopy.} = object of StandardTransient


proc constructTopOpeBRepHctxee2d*(): TopOpeBRepHctxee2d {.constructor,
    importcpp: "TopOpeBRep_Hctxee2d(@)", header: "TopOpeBRep_Hctxee2d.hxx".}
proc setEdges*(this: var TopOpeBRepHctxee2d; e1: TopoDS_Edge; e2: TopoDS_Edge;
              bas1: BRepAdaptorSurface; bas2: BRepAdaptorSurface) {.
    importcpp: "SetEdges", header: "TopOpeBRep_Hctxee2d.hxx".}
proc edge*(this: TopOpeBRepHctxee2d; i: int): TopoDS_Shape {.noSideEffect,
    importcpp: "Edge", header: "TopOpeBRep_Hctxee2d.hxx".}
proc curve*(this: TopOpeBRepHctxee2d; i: int): Geom2dAdaptorCurve {.noSideEffect,
    importcpp: "Curve", header: "TopOpeBRep_Hctxee2d.hxx".}
proc domain*(this: TopOpeBRepHctxee2d; i: int): IntRes2dDomain {.noSideEffect,
    importcpp: "Domain", header: "TopOpeBRep_Hctxee2d.hxx".}
type
  TopOpeBRepHctxee2dbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "TopOpeBRep_Hctxee2d::get_type_name(@)",
                            header: "TopOpeBRep_Hctxee2d.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TopOpeBRep_Hctxee2d::get_type_descriptor(@)",
    header: "TopOpeBRep_Hctxee2d.hxx".}
proc dynamicType*(this: TopOpeBRepHctxee2d): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "TopOpeBRep_Hctxee2d.hxx".}
