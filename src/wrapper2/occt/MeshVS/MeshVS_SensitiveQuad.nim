##  Created on: 2016-03-02
##  Created by: Varvara POSKONINA
##  Copyright (c) 2016 OPEN CASCADE SAS
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
  ../Select3D/Select3D_SensitiveEntity, ../SelectMgr/SelectMgr_EntityOwner,
  ../TColgp/TColgp_Array1OfPnt

## ! This class contains description of planar quadrangle and defines methods
## ! for its detection by OCCT BVH selection mechanism

type
  MeshVS_SensitiveQuad* {.importcpp: "MeshVS_SensitiveQuad",
                         header: "MeshVS_SensitiveQuad.hxx", bycopy.} = object of Select3D_SensitiveEntity ##
                                                                                                    ## !
                                                                                                    ## Creates
                                                                                                    ## a
                                                                                                    ## new
                                                                                                    ## instance
                                                                                                    ## and
                                                                                                    ## initializes
                                                                                                    ## quadrangle
                                                                                                    ## vertices
                                                                                                    ## with
                                                                                                    ## the
                                                                                                    ## given
                                                                                                    ## points
    ## !< 3d coordinates of quad's corners


proc constructMeshVS_SensitiveQuad*(theOwner: handle[SelectMgr_EntityOwner];
                                   theQuadVerts: TColgp_Array1OfPnt): MeshVS_SensitiveQuad {.
    constructor, importcpp: "MeshVS_SensitiveQuad(@)",
    header: "MeshVS_SensitiveQuad.hxx".}
proc constructMeshVS_SensitiveQuad*(theOwner: handle[SelectMgr_EntityOwner];
                                   thePnt1: gp_Pnt; thePnt2: gp_Pnt;
                                   thePnt3: gp_Pnt; thePnt4: gp_Pnt): MeshVS_SensitiveQuad {.
    constructor, importcpp: "MeshVS_SensitiveQuad(@)",
    header: "MeshVS_SensitiveQuad.hxx".}
proc NbSubElements*(this: MeshVS_SensitiveQuad): Standard_Integer {.noSideEffect,
    importcpp: "NbSubElements", header: "MeshVS_SensitiveQuad.hxx".}
  ## ! Returns a copy of this sensitive quadrangle
proc GetConnected*(this: var MeshVS_SensitiveQuad): handle[Select3D_SensitiveEntity] {.
    importcpp: "GetConnected", header: "MeshVS_SensitiveQuad.hxx".}
proc Matches*(this: var MeshVS_SensitiveQuad;
             theMgr: var SelectBasics_SelectingVolumeManager;
             thePickResult: var SelectBasics_PickResult): Standard_Boolean {.
    importcpp: "Matches", header: "MeshVS_SensitiveQuad.hxx".}
proc CenterOfGeometry*(this: MeshVS_SensitiveQuad): gp_Pnt {.noSideEffect,
    importcpp: "CenterOfGeometry", header: "MeshVS_SensitiveQuad.hxx".}
proc BoundingBox*(this: var MeshVS_SensitiveQuad): Select3D_BndBox3d {.
    importcpp: "BoundingBox", header: "MeshVS_SensitiveQuad.hxx".}
type
  MeshVS_SensitiveQuadbase_type* = Select3D_SensitiveEntity

proc get_type_name*(): cstring {.importcpp: "MeshVS_SensitiveQuad::get_type_name(@)",
                              header: "MeshVS_SensitiveQuad.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "MeshVS_SensitiveQuad::get_type_descriptor(@)",
    header: "MeshVS_SensitiveQuad.hxx".}
proc DynamicType*(this: MeshVS_SensitiveQuad): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "MeshVS_SensitiveQuad.hxx".}
discard "forward decl of MeshVS_SensitiveQuad"
type
  Handle_MeshVS_SensitiveQuad* = handle[MeshVS_SensitiveQuad]
