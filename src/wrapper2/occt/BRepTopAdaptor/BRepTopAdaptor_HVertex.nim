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

discard "forward decl of BRepAdaptor_HCurve2d"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of gp_Pnt2d"
discard "forward decl of Adaptor2d_HCurve2d"
discard "forward decl of Adaptor3d_HVertex"
discard "forward decl of BRepTopAdaptor_HVertex"
discard "forward decl of BRepTopAdaptor_HVertex"
type
  HandleBRepTopAdaptorHVertex* = Handle[BRepTopAdaptorHVertex]
  BRepTopAdaptorHVertex* {.importcpp: "BRepTopAdaptor_HVertex",
                          header: "BRepTopAdaptor_HVertex.hxx", bycopy.} = object of Adaptor3dHVertex


proc constructBRepTopAdaptorHVertex*(vtx: TopoDS_Vertex;
                                    curve: Handle[BRepAdaptorHCurve2d]): BRepTopAdaptorHVertex {.
    constructor, importcpp: "BRepTopAdaptor_HVertex(@)",
    header: "BRepTopAdaptor_HVertex.hxx".}
proc vertex*(this: BRepTopAdaptorHVertex): TopoDS_Vertex {.noSideEffect,
    importcpp: "Vertex", header: "BRepTopAdaptor_HVertex.hxx".}
proc changeVertex*(this: var BRepTopAdaptorHVertex): var TopoDS_Vertex {.
    importcpp: "ChangeVertex", header: "BRepTopAdaptor_HVertex.hxx".}
proc value*(this: var BRepTopAdaptorHVertex): GpPnt2d {.importcpp: "Value",
    header: "BRepTopAdaptor_HVertex.hxx".}
proc parameter*(this: var BRepTopAdaptorHVertex; c: Handle[Adaptor2dHCurve2d]): StandardReal {.
    importcpp: "Parameter", header: "BRepTopAdaptor_HVertex.hxx".}
proc resolution*(this: var BRepTopAdaptorHVertex; c: Handle[Adaptor2dHCurve2d]): StandardReal {.
    importcpp: "Resolution", header: "BRepTopAdaptor_HVertex.hxx".}
proc orientation*(this: var BRepTopAdaptorHVertex): TopAbsOrientation {.
    importcpp: "Orientation", header: "BRepTopAdaptor_HVertex.hxx".}
proc isSame*(this: var BRepTopAdaptorHVertex; other: Handle[Adaptor3dHVertex]): StandardBoolean {.
    importcpp: "IsSame", header: "BRepTopAdaptor_HVertex.hxx".}
type
  BRepTopAdaptorHVertexbaseType* = Adaptor3dHVertex

proc getTypeName*(): cstring {.importcpp: "BRepTopAdaptor_HVertex::get_type_name(@)",
                            header: "BRepTopAdaptor_HVertex.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRepTopAdaptor_HVertex::get_type_descriptor(@)",
    header: "BRepTopAdaptor_HVertex.hxx".}
proc dynamicType*(this: BRepTopAdaptorHVertex): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "BRepTopAdaptor_HVertex.hxx".}

