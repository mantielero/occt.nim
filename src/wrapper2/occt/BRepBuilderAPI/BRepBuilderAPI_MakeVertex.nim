##  Created on: 1993-07-06
##  Created by: Remi LEQUETTE
##  Copyright (c) 1993-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../BRepLib/BRepLib_MakeVertex,
  BRepBuilderAPI_MakeShape

discard "forward decl of gp_Pnt"
discard "forward decl of TopoDS_Vertex"
type
  BRepBuilderAPI_MakeVertex* {.importcpp: "BRepBuilderAPI_MakeVertex",
                              header: "BRepBuilderAPI_MakeVertex.hxx", bycopy.} = object of BRepBuilderAPI_MakeShape ##
                                                                                                              ## !
                                                                                                              ## Constructs
                                                                                                              ## a
                                                                                                              ## vertex
                                                                                                              ## from
                                                                                                              ## point
                                                                                                              ## P.
                                                                                                              ##
                                                                                                              ## !
                                                                                                              ## Example
                                                                                                              ## create
                                                                                                              ## a
                                                                                                              ## vertex
                                                                                                              ## from
                                                                                                              ## a
                                                                                                              ## 3D
                                                                                                              ## point.
                                                                                                              ##
                                                                                                              ## !
                                                                                                              ## gp_Pnt
                                                                                                              ## P(0,0,10);
                                                                                                              ##
                                                                                                              ## !
                                                                                                              ## TopoDS_Vertex
                                                                                                              ## V
                                                                                                              ## =
                                                                                                              ## BRepBuilderAPI_MakeVertex(P);


proc constructBRepBuilderAPI_MakeVertex*(P: gp_Pnt): BRepBuilderAPI_MakeVertex {.
    constructor, importcpp: "BRepBuilderAPI_MakeVertex(@)",
    header: "BRepBuilderAPI_MakeVertex.hxx".}
proc Vertex*(this: var BRepBuilderAPI_MakeVertex): TopoDS_Vertex {.
    importcpp: "Vertex", header: "BRepBuilderAPI_MakeVertex.hxx".}
converter `TopoDS_Vertex`*(this: var BRepBuilderAPI_MakeVertex): TopoDS_Vertex {.
    importcpp: "BRepBuilderAPI_MakeVertex::operator TopoDS_Vertex",
    header: "BRepBuilderAPI_MakeVertex.hxx".}