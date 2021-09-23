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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../TopoDS/TopoDS_Edge,
  ../Geom2dAdaptor/Geom2dAdaptor_Curve, ../IntRes2d/IntRes2d_Domain,
  ../Standard/Standard_Transient, ../Standard/Standard_Integer

discard "forward decl of TopoDS_Edge"
discard "forward decl of BRepAdaptor_Surface"
discard "forward decl of TopoDS_Shape"
discard "forward decl of Geom2dAdaptor_Curve"
discard "forward decl of IntRes2d_Domain"
discard "forward decl of TopOpeBRep_Hctxee2d"
discard "forward decl of TopOpeBRep_Hctxee2d"
type
  Handle_TopOpeBRep_Hctxee2d* = handle[TopOpeBRep_Hctxee2d]
  TopOpeBRep_Hctxee2d* {.importcpp: "TopOpeBRep_Hctxee2d",
                        header: "TopOpeBRep_Hctxee2d.hxx", bycopy.} = object of Standard_Transient


proc constructTopOpeBRep_Hctxee2d*(): TopOpeBRep_Hctxee2d {.constructor,
    importcpp: "TopOpeBRep_Hctxee2d(@)", header: "TopOpeBRep_Hctxee2d.hxx".}
proc SetEdges*(this: var TopOpeBRep_Hctxee2d; E1: TopoDS_Edge; E2: TopoDS_Edge;
              BAS1: BRepAdaptor_Surface; BAS2: BRepAdaptor_Surface) {.
    importcpp: "SetEdges", header: "TopOpeBRep_Hctxee2d.hxx".}
proc Edge*(this: TopOpeBRep_Hctxee2d; I: Standard_Integer): TopoDS_Shape {.
    noSideEffect, importcpp: "Edge", header: "TopOpeBRep_Hctxee2d.hxx".}
proc Curve*(this: TopOpeBRep_Hctxee2d; I: Standard_Integer): Geom2dAdaptor_Curve {.
    noSideEffect, importcpp: "Curve", header: "TopOpeBRep_Hctxee2d.hxx".}
proc Domain*(this: TopOpeBRep_Hctxee2d; I: Standard_Integer): IntRes2d_Domain {.
    noSideEffect, importcpp: "Domain", header: "TopOpeBRep_Hctxee2d.hxx".}
type
  TopOpeBRep_Hctxee2dbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "TopOpeBRep_Hctxee2d::get_type_name(@)",
                              header: "TopOpeBRep_Hctxee2d.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TopOpeBRep_Hctxee2d::get_type_descriptor(@)",
    header: "TopOpeBRep_Hctxee2d.hxx".}
proc DynamicType*(this: TopOpeBRep_Hctxee2d): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "TopOpeBRep_Hctxee2d.hxx".}