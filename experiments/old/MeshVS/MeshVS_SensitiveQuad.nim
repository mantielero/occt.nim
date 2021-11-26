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


proc constructMeshVS_SensitiveQuad*(theOwner: Handle[SelectMgrEntityOwner];
                                   theQuadVerts: TColgpArray1OfPnt): MeshVS_SensitiveQuad {.
    constructor, importcpp: "MeshVS_SensitiveQuad(@)",
    header: "MeshVS_SensitiveQuad.hxx".}
proc constructMeshVS_SensitiveQuad*(theOwner: Handle[SelectMgrEntityOwner];
                                   thePnt1: Pnt; thePnt2: Pnt; thePnt3: Pnt;
                                   thePnt4: Pnt): MeshVS_SensitiveQuad {.
    constructor, importcpp: "MeshVS_SensitiveQuad(@)",
    header: "MeshVS_SensitiveQuad.hxx".}
proc nbSubElements*(this: MeshVS_SensitiveQuad): cint {.noSideEffect,
    importcpp: "NbSubElements", header: "MeshVS_SensitiveQuad.hxx".}
  ## ! Returns a copy of this sensitive quadrangle
proc getConnected*(this: var MeshVS_SensitiveQuad): Handle[Select3D_SensitiveEntity] {.
    importcpp: "GetConnected", header: "MeshVS_SensitiveQuad.hxx".}
proc matches*(this: var MeshVS_SensitiveQuad;
             theMgr: var SelectBasicsSelectingVolumeManager;
             thePickResult: var SelectBasicsPickResult): bool {.
    importcpp: "Matches", header: "MeshVS_SensitiveQuad.hxx".}
proc centerOfGeometry*(this: MeshVS_SensitiveQuad): Pnt {.noSideEffect,
    importcpp: "CenterOfGeometry", header: "MeshVS_SensitiveQuad.hxx".}
proc boundingBox*(this: var MeshVS_SensitiveQuad): Select3D_BndBox3d {.
    importcpp: "BoundingBox", header: "MeshVS_SensitiveQuad.hxx".}
type
  MeshVS_SensitiveQuadbaseType* = Select3D_SensitiveEntity

proc getTypeName*(): cstring {.importcpp: "MeshVS_SensitiveQuad::get_type_name(@)",
                            header: "MeshVS_SensitiveQuad.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "MeshVS_SensitiveQuad::get_type_descriptor(@)",
    header: "MeshVS_SensitiveQuad.hxx".}
proc dynamicType*(this: MeshVS_SensitiveQuad): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "MeshVS_SensitiveQuad.hxx".}
discard "forward decl of MeshVS_SensitiveQuad"
type
  HandleC1C1* = Handle[MeshVS_SensitiveQuad]


























