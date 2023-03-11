import brepgprop_types
import ../gp/gp_types
import ../tcolgp/tcolgp_types
import ../topods/topods_types
import ../standard/standard_types
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

discard "forward decl of gp_Pnt"
discard "forward decl of TopoDS_Edge"

proc newBRepGProp_MeshCinert*(): BRepGProp_MeshCinert {.cdecl, constructor,
    importcpp: "BRepGProp_MeshCinert(@)".}
proc SetLocation*(this: var BRepGProp_MeshCinert; CLocation: gp_Pnt) {.cdecl,
    importcpp: "SetLocation".}
proc Perform*(this: var BRepGProp_MeshCinert; theNodes: TColgp_Array1OfPnt) {.cdecl,
    importcpp: "Perform".}
proc PreparePolygon*(theE: TopoDS_Edge; thePolyg: var Handle[TColgp_HArray1OfPnt]) {.
    cdecl, importcpp: "BRepGProp_MeshCinert::PreparePolygon(@)".}