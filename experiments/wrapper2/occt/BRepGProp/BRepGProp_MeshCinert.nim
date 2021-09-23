##  Copyright (c) 2018 OPEN CASCADE SAS
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
  ../Standard/Standard_Handle, ../TColgp/TColgp_Array1OfPnt,
  ../TColgp/TColgp_HArray1OfPnt, ../GProp/GProp_GProps

discard "forward decl of gp_Pnt"
discard "forward decl of TopoDS_Edge"
type
  BRepGProp_MeshCinert* {.importcpp: "BRepGProp_MeshCinert",
                         header: "BRepGProp_MeshCinert.hxx", bycopy.} = object of GProp_GProps


proc constructBRepGProp_MeshCinert*(): BRepGProp_MeshCinert {.constructor,
    importcpp: "BRepGProp_MeshCinert(@)", header: "BRepGProp_MeshCinert.hxx".}
proc SetLocation*(this: var BRepGProp_MeshCinert; CLocation: gp_Pnt) {.
    importcpp: "SetLocation", header: "BRepGProp_MeshCinert.hxx".}
proc Perform*(this: var BRepGProp_MeshCinert; theNodes: TColgp_Array1OfPnt) {.
    importcpp: "Perform", header: "BRepGProp_MeshCinert.hxx".}
proc PreparePolygon*(theE: TopoDS_Edge; thePolyg: var handle[TColgp_HArray1OfPnt]) {.
    importcpp: "BRepGProp_MeshCinert::PreparePolygon(@)",
    header: "BRepGProp_MeshCinert.hxx".}