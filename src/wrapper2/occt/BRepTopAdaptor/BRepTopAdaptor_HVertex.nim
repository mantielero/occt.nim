##  Created on: 1994-04-01
##  Created by: Modelistation
##  Copyright (c) 1994-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, ../TopoDS/TopoDS_Vertex,
  ../Adaptor3d/Adaptor3d_HVertex, ../Standard/Standard_Real,
  ../TopAbs/TopAbs_Orientation, ../Standard/Standard_Boolean

discard "forward decl of BRepAdaptor_HCurve2d"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of gp_Pnt2d"
discard "forward decl of Adaptor2d_HCurve2d"
discard "forward decl of Adaptor3d_HVertex"
discard "forward decl of BRepTopAdaptor_HVertex"
discard "forward decl of BRepTopAdaptor_HVertex"
type
  Handle_BRepTopAdaptor_HVertex* = handle[BRepTopAdaptor_HVertex]
  BRepTopAdaptor_HVertex* {.importcpp: "BRepTopAdaptor_HVertex",
                           header: "BRepTopAdaptor_HVertex.hxx", bycopy.} = object of Adaptor3d_HVertex


proc constructBRepTopAdaptor_HVertex*(Vtx: TopoDS_Vertex;
                                     Curve: handle[BRepAdaptor_HCurve2d]): BRepTopAdaptor_HVertex {.
    constructor, importcpp: "BRepTopAdaptor_HVertex(@)",
    header: "BRepTopAdaptor_HVertex.hxx".}
proc Vertex*(this: BRepTopAdaptor_HVertex): TopoDS_Vertex {.noSideEffect,
    importcpp: "Vertex", header: "BRepTopAdaptor_HVertex.hxx".}
proc ChangeVertex*(this: var BRepTopAdaptor_HVertex): var TopoDS_Vertex {.
    importcpp: "ChangeVertex", header: "BRepTopAdaptor_HVertex.hxx".}
proc Value*(this: var BRepTopAdaptor_HVertex): gp_Pnt2d {.importcpp: "Value",
    header: "BRepTopAdaptor_HVertex.hxx".}
proc Parameter*(this: var BRepTopAdaptor_HVertex; C: handle[Adaptor2d_HCurve2d]): Standard_Real {.
    importcpp: "Parameter", header: "BRepTopAdaptor_HVertex.hxx".}
proc Resolution*(this: var BRepTopAdaptor_HVertex; C: handle[Adaptor2d_HCurve2d]): Standard_Real {.
    importcpp: "Resolution", header: "BRepTopAdaptor_HVertex.hxx".}
proc Orientation*(this: var BRepTopAdaptor_HVertex): TopAbs_Orientation {.
    importcpp: "Orientation", header: "BRepTopAdaptor_HVertex.hxx".}
proc IsSame*(this: var BRepTopAdaptor_HVertex; Other: handle[Adaptor3d_HVertex]): Standard_Boolean {.
    importcpp: "IsSame", header: "BRepTopAdaptor_HVertex.hxx".}
type
  BRepTopAdaptor_HVertexbase_type* = Adaptor3d_HVertex

proc get_type_name*(): cstring {.importcpp: "BRepTopAdaptor_HVertex::get_type_name(@)",
                              header: "BRepTopAdaptor_HVertex.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BRepTopAdaptor_HVertex::get_type_descriptor(@)",
    header: "BRepTopAdaptor_HVertex.hxx".}
proc DynamicType*(this: BRepTopAdaptor_HVertex): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "BRepTopAdaptor_HVertex.hxx".}