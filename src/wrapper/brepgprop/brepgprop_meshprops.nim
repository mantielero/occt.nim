import brepgprop_types
import ../gp/gp_types
import ../standard/standard_types
import ../poly/poly_types
import ../toploc/toploc_types
import ../topabs/topabs_types
##  Copyright (c) 2018 OPEN CASCADE SAS
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

discard "forward decl of Poly_Triangulation"
discard "forward decl of TopLoc_Location"


proc newBRepGProp_MeshProps*(theType: BRepGProp_MeshPropsBRepGProp_MeshObjType): BRepGProp_MeshProps {.
    cdecl, constructor, importcpp: "BRepGProp_MeshProps(@)".}
proc SetLocation*(this: var BRepGProp_MeshProps; theLocation: gp_Pnt) {.cdecl,
    importcpp: "SetLocation".}
proc Perform*(this: var BRepGProp_MeshProps; theMesh: Handle[Poly_Triangulation];
             theLoc: TopLoc_Location; theOri: TopAbs_Orientation) {.cdecl,
    importcpp: "Perform".}
proc Perform*(this: var BRepGProp_MeshProps; theMesh: Handle[Poly_Triangulation];
             theOri: TopAbs_Orientation) {.cdecl, importcpp: "Perform",
    .}
proc CalculateProps*(p1: gp_Pnt; p2: gp_Pnt; p3: gp_Pnt; Apex: gp_Pnt; isVolume: bool;
                    GProps: array[10, cfloat]; NbGaussPoints: cint;
                    GaussPnts: ptr cfloat) {.cdecl,
    importcpp: "BRepGProp_MeshProps::CalculateProps(@)".}
proc GetMeshObjType*(this: BRepGProp_MeshProps): BRepGProp_MeshPropsBRepGProp_MeshObjType {.
    noSideEffect, cdecl, importcpp: "GetMeshObjType".}