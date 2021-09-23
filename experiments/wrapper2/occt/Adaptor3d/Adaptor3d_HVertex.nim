##  Created on: 1994-03-25
##  Created by: model
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
  ../Standard/Standard, ../Standard/Standard_Type, ../gp/gp_Pnt2d,
  ../Standard/Standard_Real, ../TopAbs/TopAbs_Orientation,
  ../Standard/Standard_Transient, ../Standard/Standard_Boolean

discard "forward decl of gp_Pnt2d"
discard "forward decl of Adaptor2d_HCurve2d"
discard "forward decl of Adaptor3d_HVertex"
discard "forward decl of Adaptor3d_HVertex"
type
  Handle_Adaptor3d_HVertex* = handle[Adaptor3d_HVertex]
  Adaptor3d_HVertex* {.importcpp: "Adaptor3d_HVertex",
                      header: "Adaptor3d_HVertex.hxx", bycopy.} = object of Standard_Transient


proc constructAdaptor3d_HVertex*(): Adaptor3d_HVertex {.constructor,
    importcpp: "Adaptor3d_HVertex(@)", header: "Adaptor3d_HVertex.hxx".}
proc constructAdaptor3d_HVertex*(P: gp_Pnt2d; Ori: TopAbs_Orientation;
                                Resolution: Standard_Real): Adaptor3d_HVertex {.
    constructor, importcpp: "Adaptor3d_HVertex(@)", header: "Adaptor3d_HVertex.hxx".}
proc Value*(this: var Adaptor3d_HVertex): gp_Pnt2d {.importcpp: "Value",
    header: "Adaptor3d_HVertex.hxx".}
proc Parameter*(this: var Adaptor3d_HVertex; C: handle[Adaptor2d_HCurve2d]): Standard_Real {.
    importcpp: "Parameter", header: "Adaptor3d_HVertex.hxx".}
proc Resolution*(this: var Adaptor3d_HVertex; C: handle[Adaptor2d_HCurve2d]): Standard_Real {.
    importcpp: "Resolution", header: "Adaptor3d_HVertex.hxx".}
proc Orientation*(this: var Adaptor3d_HVertex): TopAbs_Orientation {.
    importcpp: "Orientation", header: "Adaptor3d_HVertex.hxx".}
proc IsSame*(this: var Adaptor3d_HVertex; Other: handle[Adaptor3d_HVertex]): Standard_Boolean {.
    importcpp: "IsSame", header: "Adaptor3d_HVertex.hxx".}
type
  Adaptor3d_HVertexbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Adaptor3d_HVertex::get_type_name(@)",
                              header: "Adaptor3d_HVertex.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Adaptor3d_HVertex::get_type_descriptor(@)",
    header: "Adaptor3d_HVertex.hxx".}
proc DynamicType*(this: Adaptor3d_HVertex): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Adaptor3d_HVertex.hxx".}