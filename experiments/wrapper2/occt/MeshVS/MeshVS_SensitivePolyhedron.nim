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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../TColgp/TColgp_HArray1OfPnt,
  ../TColgp/TColgp_HArray1OfPnt2d, MeshVS_HArray1OfSequenceOfInteger, ../gp/gp_XY,
  ../NCollection/NCollection_List, ../Select3D/Select3D_SensitiveEntity,
  ../Select3D/Select3D_SensitiveEntity, ../Select3D/Select3D_BndBox3d

discard "forward decl of Select3D_SensitiveEntity"
discard "forward decl of TopLoc_Location"
discard "forward decl of Bnd_Box2d"
discard "forward decl of gp_Lin"
discard "forward decl of SelectBasics_ListOfBox2d"
type
  MeshVS_PolyhedronVerts* = NCollection_List[handle[TColgp_HArray1OfPnt]]
  MeshVS_PolyhedronVertsIter* = Iterator[handle[TColgp_HArray1OfPnt]]

## ! This class is used to detect selection of a polyhedron. The main
## ! principle of detection algorithm is to search for overlap with
## ! each polyhedron's face separately, treating them as planar convex
## ! polygons.

type
  MeshVS_SensitivePolyhedron* {.importcpp: "MeshVS_SensitivePolyhedron",
                               header: "MeshVS_SensitivePolyhedron.hxx", bycopy.} = object of Select3D_SensitiveEntity


proc constructMeshVS_SensitivePolyhedron*(
    theOwner: handle[SelectMgr_EntityOwner]; theNodes: TColgp_Array1OfPnt;
    theTopo: handle[MeshVS_HArray1OfSequenceOfInteger]): MeshVS_SensitivePolyhedron {.
    constructor, importcpp: "MeshVS_SensitivePolyhedron(@)",
    header: "MeshVS_SensitivePolyhedron.hxx".}
proc GetConnected*(this: var MeshVS_SensitivePolyhedron): handle[
    Select3D_SensitiveEntity] {.importcpp: "GetConnected",
                               header: "MeshVS_SensitivePolyhedron.hxx".}
proc Matches*(this: var MeshVS_SensitivePolyhedron;
             theMgr: var SelectBasics_SelectingVolumeManager;
             thePickResult: var SelectBasics_PickResult): Standard_Boolean {.
    importcpp: "Matches", header: "MeshVS_SensitivePolyhedron.hxx".}
proc NbSubElements*(this: MeshVS_SensitivePolyhedron): Standard_Integer {.
    noSideEffect, importcpp: "NbSubElements",
    header: "MeshVS_SensitivePolyhedron.hxx".}
proc BoundingBox*(this: var MeshVS_SensitivePolyhedron): Select3D_BndBox3d {.
    importcpp: "BoundingBox", header: "MeshVS_SensitivePolyhedron.hxx".}
proc CenterOfGeometry*(this: MeshVS_SensitivePolyhedron): gp_Pnt {.noSideEffect,
    importcpp: "CenterOfGeometry", header: "MeshVS_SensitivePolyhedron.hxx".}
type
  MeshVS_SensitivePolyhedronbase_type* = Select3D_SensitiveEntity

proc get_type_name*(): cstring {.importcpp: "MeshVS_SensitivePolyhedron::get_type_name(@)",
                              header: "MeshVS_SensitivePolyhedron.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "MeshVS_SensitivePolyhedron::get_type_descriptor(@)",
    header: "MeshVS_SensitivePolyhedron.hxx".}
proc DynamicType*(this: MeshVS_SensitivePolyhedron): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "MeshVS_SensitivePolyhedron.hxx".}
discard "forward decl of MeshVS_SensitivePolyhedron"
type
  Handle_MeshVS_SensitivePolyhedron* = handle[MeshVS_SensitivePolyhedron]
