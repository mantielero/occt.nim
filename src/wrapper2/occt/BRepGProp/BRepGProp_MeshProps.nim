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
discard "forward decl of gp_Pnt"
type
  BRepGPropMeshProps* {.importcpp: "BRepGProp_MeshProps",
                       header: "BRepGProp_MeshProps.hxx", bycopy.} = object of GPropGProps ##
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

  BRepGPropMeshPropsBRepGPropMeshObjType* {.size: sizeof(cint),
      importcpp: "BRepGProp_MeshProps::BRepGProp_MeshObjType",
      header: "BRepGProp_MeshProps.hxx".} = enum
    Vinert = 0, Sinert


proc constructBRepGPropMeshProps*(theType: BRepGPropMeshPropsBRepGPropMeshObjType): BRepGPropMeshProps {.
    constructor, importcpp: "BRepGProp_MeshProps(@)",
    header: "BRepGProp_MeshProps.hxx".}
proc setLocation*(this: var BRepGPropMeshProps; theLocation: GpPnt) {.
    importcpp: "SetLocation", header: "BRepGProp_MeshProps.hxx".}
proc perform*(this: var BRepGPropMeshProps; theMesh: Handle[PolyTriangulation];
             theLoc: TopLocLocation; theOri: TopAbsOrientation) {.
    importcpp: "Perform", header: "BRepGProp_MeshProps.hxx".}
proc perform*(this: var BRepGPropMeshProps; theNodes: TColgpArray1OfPnt;
             theTriangles: PolyArray1OfTriangle; theOri: TopAbsOrientation) {.
    importcpp: "Perform", header: "BRepGProp_MeshProps.hxx".}
proc calculateProps*(p1: GpPnt; p2: GpPnt; p3: GpPnt; apex: GpPnt;
                    isVolume: StandardBoolean; gProps: array[10, StandardReal];
                    nbGaussPoints: StandardInteger; gaussPnts: ptr StandardReal) {.
    importcpp: "BRepGProp_MeshProps::CalculateProps(@)",
    header: "BRepGProp_MeshProps.hxx".}
proc getMeshObjType*(this: BRepGPropMeshProps): BRepGPropMeshPropsBRepGPropMeshObjType {.
    noSideEffect, importcpp: "GetMeshObjType", header: "BRepGProp_MeshProps.hxx".}

