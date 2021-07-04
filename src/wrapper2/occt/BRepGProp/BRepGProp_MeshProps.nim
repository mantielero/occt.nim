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

import
  ../GProp/GProp_GProps, ../TopAbs/TopAbs_Orientation,
  ../Poly/Poly_Array1OfTriangle, ../TColgp/TColgp_Array1OfPnt

discard "forward decl of Poly_Triangulation"
discard "forward decl of TopLoc_Location"
discard "forward decl of gp_Pnt"
type
  BRepGProp_MeshProps* {.importcpp: "BRepGProp_MeshProps",
                        header: "BRepGProp_MeshProps.hxx", bycopy.} = object of GProp_GProps ##
                                                                                      ## !
                                                                                      ## Describes
                                                                                      ## types
                                                                                      ## of
                                                                                      ## geometric
                                                                                      ## objects.
                                                                                      ##
                                                                                      ## !
                                                                                      ## -
                                                                                      ## Vinert
                                                                                      ## is
                                                                                      ## 3D
                                                                                      ## closed
                                                                                      ## region
                                                                                      ## of
                                                                                      ## space
                                                                                      ## delimited
                                                                                      ## with
                                                                                      ##
                                                                                      ## !
                                                                                      ## Point
                                                                                      ## and
                                                                                      ## surface
                                                                                      ## mesh;
                                                                                      ##
                                                                                      ## !
                                                                                      ## -
                                                                                      ## Sinert
                                                                                      ## is
                                                                                      ## surface
                                                                                      ## mesh
                                                                                      ## in
                                                                                      ## 3D
                                                                                      ## space.
                                                                                      ##
                                                                                      ## !
                                                                                      ## @name
                                                                                      ## private
                                                                                      ## fields
    ## !< Type of geometric object

  BRepGProp_MeshPropsBRepGProp_MeshObjType* {.size: sizeof(cint),
      importcpp: "BRepGProp_MeshProps::BRepGProp_MeshObjType",
      header: "BRepGProp_MeshProps.hxx".} = enum
    Vinert = 0, Sinert


proc constructBRepGProp_MeshProps*(theType: BRepGProp_MeshPropsBRepGProp_MeshObjType): BRepGProp_MeshProps {.
    constructor, importcpp: "BRepGProp_MeshProps(@)",
    header: "BRepGProp_MeshProps.hxx".}
proc SetLocation*(this: var BRepGProp_MeshProps; theLocation: gp_Pnt) {.
    importcpp: "SetLocation", header: "BRepGProp_MeshProps.hxx".}
proc Perform*(this: var BRepGProp_MeshProps; theMesh: handle[Poly_Triangulation];
             theLoc: TopLoc_Location; theOri: TopAbs_Orientation) {.
    importcpp: "Perform", header: "BRepGProp_MeshProps.hxx".}
proc Perform*(this: var BRepGProp_MeshProps; theNodes: TColgp_Array1OfPnt;
             theTriangles: Poly_Array1OfTriangle; theOri: TopAbs_Orientation) {.
    importcpp: "Perform", header: "BRepGProp_MeshProps.hxx".}
proc CalculateProps*(p1: gp_Pnt; p2: gp_Pnt; p3: gp_Pnt; Apex: gp_Pnt;
                    isVolume: Standard_Boolean; GProps: array[10, Standard_Real];
                    NbGaussPoints: Standard_Integer; GaussPnts: ptr Standard_Real) {.
    importcpp: "BRepGProp_MeshProps::CalculateProps(@)",
    header: "BRepGProp_MeshProps.hxx".}
proc GetMeshObjType*(this: BRepGProp_MeshProps): BRepGProp_MeshPropsBRepGProp_MeshObjType {.
    noSideEffect, importcpp: "GetMeshObjType", header: "BRepGProp_MeshProps.hxx".}