##  Created on: 2003-09-29
##  Created by: Alexander SOLOVYOV and Sergey LITONIN
##  Copyright (c) 2003-2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_Type, ../gp/gp_Pnt,
  ../Select3D/Select3D_SensitiveFace, ../Select3D/Select3D_TypeOfSensitivity

## ! This class provides custom sensitive face, which will be selected if it center is in rectangle.

type
  MeshVS_SensitiveFace* {.importcpp: "MeshVS_SensitiveFace",
                         header: "MeshVS_SensitiveFace.hxx", bycopy.} = object of Select3D_SensitiveFace


proc constructMeshVS_SensitiveFace*(theOwner: handle[SelectMgr_EntityOwner];
                                   thePoints: TColgp_Array1OfPnt; theSensType: Select3D_TypeOfSensitivity = Select3D_TOS_INTERIOR): MeshVS_SensitiveFace {.
    constructor, importcpp: "MeshVS_SensitiveFace(@)",
    header: "MeshVS_SensitiveFace.hxx".}
type
  MeshVS_SensitiveFacebase_type* = Select3D_SensitiveFace

proc get_type_name*(): cstring {.importcpp: "MeshVS_SensitiveFace::get_type_name(@)",
                              header: "MeshVS_SensitiveFace.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "MeshVS_SensitiveFace::get_type_descriptor(@)",
    header: "MeshVS_SensitiveFace.hxx".}
proc DynamicType*(this: MeshVS_SensitiveFace): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "MeshVS_SensitiveFace.hxx".}
discard "forward decl of MeshVS_SensitiveFace"
type
  Handle_MeshVS_SensitiveFace* = handle[MeshVS_SensitiveFace]
