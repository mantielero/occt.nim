##  Copyright (c) 2020 OPEN CASCADE SAS
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

## ! Enumerates built-in meshing algorithms factories implementing IMeshTools_MeshAlgoFactory interface.

type
  IMeshTools_MeshAlgoType* {.size: sizeof(cint),
                            importcpp: "IMeshTools_MeshAlgoType",
                            header: "IMeshTools_MeshAlgoType.hxx".} = enum
    IMeshTools_MeshAlgoType_DEFAULT = -1, ## !< use global default (IMeshTools_MeshAlgoType_Watson or CSF_MeshAlgo)
    IMeshTools_MeshAlgoType_Watson = 0, ## !< generate 2D Delaunay triangulation based on Watson algorithm (BRepMesh_MeshAlgoFactory)
    IMeshTools_MeshAlgoType_Delabella ## !< generate 2D Delaunay triangulation based on Delabella algorithm (BRepMesh_DelabellaMeshAlgoFactory)
