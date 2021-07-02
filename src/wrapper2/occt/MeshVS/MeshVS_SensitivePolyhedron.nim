##  Created on: 2005-01-21
##  Created by: Alexander SOLOVYOV
##  Copyright (c) 2005-2014 OPEN CASCADE SAS
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

discard "forward decl of Select3D_SensitiveEntity"
discard "forward decl of TopLoc_Location"
discard "forward decl of Bnd_Box2d"
discard "forward decl of gp_Lin"
discard "forward decl of SelectBasics_ListOfBox2d"
type
  MeshVS_PolyhedronVerts* = NCollectionList[Handle[TColgpHArray1OfPnt]]
  MeshVS_PolyhedronVertsIter* = Iterator[Handle[TColgpHArray1OfPnt]]

## ! This class is used to detect selection of a polyhedron. The main
## ! principle of detection algorithm is to search for overlap with
## ! each polyhedron's face separately, treating them as planar convex
## ! polygons.

type
  MeshVS_SensitivePolyhedron* {.importcpp: "MeshVS_SensitivePolyhedron",
                               header: "MeshVS_SensitivePolyhedron.hxx", bycopy.} = object of Select3D_SensitiveEntity


proc constructMeshVS_SensitivePolyhedron*(theOwner: Handle[SelectMgrEntityOwner];
    theNodes: TColgpArray1OfPnt;
    theTopo: Handle[MeshVS_HArray1OfSequenceOfInteger]): MeshVS_SensitivePolyhedron {.
    constructor, importcpp: "MeshVS_SensitivePolyhedron(@)",
    header: "MeshVS_SensitivePolyhedron.hxx".}
proc getConnected*(this: var MeshVS_SensitivePolyhedron): Handle[
    Select3D_SensitiveEntity] {.importcpp: "GetConnected",
                               header: "MeshVS_SensitivePolyhedron.hxx".}
proc matches*(this: var MeshVS_SensitivePolyhedron;
             theMgr: var SelectBasicsSelectingVolumeManager;
             thePickResult: var SelectBasicsPickResult): StandardBoolean {.
    importcpp: "Matches", header: "MeshVS_SensitivePolyhedron.hxx".}
proc nbSubElements*(this: MeshVS_SensitivePolyhedron): StandardInteger {.
    noSideEffect, importcpp: "NbSubElements",
    header: "MeshVS_SensitivePolyhedron.hxx".}
proc boundingBox*(this: var MeshVS_SensitivePolyhedron): Select3D_BndBox3d {.
    importcpp: "BoundingBox", header: "MeshVS_SensitivePolyhedron.hxx".}
proc centerOfGeometry*(this: MeshVS_SensitivePolyhedron): GpPnt {.noSideEffect,
    importcpp: "CenterOfGeometry", header: "MeshVS_SensitivePolyhedron.hxx".}
type
  MeshVS_SensitivePolyhedronbaseType* = Select3D_SensitiveEntity

proc getTypeName*(): cstring {.importcpp: "MeshVS_SensitivePolyhedron::get_type_name(@)",
                            header: "MeshVS_SensitivePolyhedron.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "MeshVS_SensitivePolyhedron::get_type_descriptor(@)",
    header: "MeshVS_SensitivePolyhedron.hxx".}
proc dynamicType*(this: MeshVS_SensitivePolyhedron): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "MeshVS_SensitivePolyhedron.hxx".}
discard "forward decl of MeshVS_SensitivePolyhedron"
type
  HandleMeshVS_SensitivePolyhedron* = Handle[MeshVS_SensitivePolyhedron]


