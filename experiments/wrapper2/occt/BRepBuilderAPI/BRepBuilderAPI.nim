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
  ../Standard/Standard_Handle, ../Standard/Standard_Real

discard "forward decl of Geom_Plane"
discard "forward decl of BRepBuilderAPI_Command"
discard "forward decl of BRepBuilderAPI_MakeShape"
discard "forward decl of BRepBuilderAPI_MakeVertex"
discard "forward decl of BRepBuilderAPI_MakeEdge"
discard "forward decl of BRepBuilderAPI_MakeEdge2d"
discard "forward decl of BRepBuilderAPI_MakePolygon"
discard "forward decl of BRepBuilderAPI_MakeFace"
discard "forward decl of BRepBuilderAPI_FindPlane"
discard "forward decl of BRepBuilderAPI_Sewing"
discard "forward decl of BRepBuilderAPI_MakeWire"
discard "forward decl of BRepBuilderAPI_MakeShell"
discard "forward decl of BRepBuilderAPI_MakeSolid"
discard "forward decl of BRepBuilderAPI_ModifyShape"
discard "forward decl of BRepBuilderAPI_Transform"
discard "forward decl of BRepBuilderAPI_NurbsConvert"
discard "forward decl of BRepBuilderAPI_GTransform"
discard "forward decl of BRepBuilderAPI_Copy"
discard "forward decl of BRepBuilderAPI_Collect"
type
  BRepBuilderAPI* {.importcpp: "BRepBuilderAPI", header: "BRepBuilderAPI.hxx", bycopy.} = object ##
                                                                                         ## !
                                                                                         ## Sets
                                                                                         ## the
                                                                                         ## current
                                                                                         ## plane.


proc Plane*(P: handle[Geom_Plane]) {.importcpp: "BRepBuilderAPI::Plane(@)",
                                  header: "BRepBuilderAPI.hxx".}
proc Plane*(): handle[Geom_Plane] {.importcpp: "BRepBuilderAPI::Plane(@)",
                                 header: "BRepBuilderAPI.hxx".}
proc Precision*(P: Standard_Real) {.importcpp: "BRepBuilderAPI::Precision(@)",
                                 header: "BRepBuilderAPI.hxx".}
proc Precision*(): Standard_Real {.importcpp: "BRepBuilderAPI::Precision(@)",
                                header: "BRepBuilderAPI.hxx".}