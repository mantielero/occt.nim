##  Created on: 1995-04-13
##  Created by: Robert COUBLANC
##  Copyright (c) 1995-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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
  ../Bnd/Bnd_Box, Select3D_SensitiveEntity

## ! A framework to define selection by a sensitive box.

type
  Select3D_SensitiveBox* {.importcpp: "Select3D_SensitiveBox",
                          header: "Select3D_SensitiveBox.hxx", bycopy.} = object of Select3D_SensitiveEntity ##
                                                                                                      ## !
                                                                                                      ## Constructs
                                                                                                      ## a
                                                                                                      ## sensitive
                                                                                                      ## box
                                                                                                      ## object
                                                                                                      ## defined
                                                                                                      ## by
                                                                                                      ## the
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## owner
                                                                                                      ## theOwnerId,
                                                                                                      ## and
                                                                                                      ## the
                                                                                                      ## box
                                                                                                      ## theBox.
    ## !< 3d coordinates of box corners
    ## !< 3d coordinate of box's center

  Select3D_SensitiveBoxbase_type* = Select3D_SensitiveEntity

proc get_type_name*(): cstring {.importcpp: "Select3D_SensitiveBox::get_type_name(@)",
                              header: "Select3D_SensitiveBox.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Select3D_SensitiveBox::get_type_descriptor(@)",
    header: "Select3D_SensitiveBox.hxx".}
proc DynamicType*(this: Select3D_SensitiveBox): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "Select3D_SensitiveBox.hxx".}
proc constructSelect3D_SensitiveBox*(theOwnerId: handle[SelectMgr_EntityOwner];
                                    theBox: Bnd_Box): Select3D_SensitiveBox {.
    constructor, importcpp: "Select3D_SensitiveBox(@)",
    header: "Select3D_SensitiveBox.hxx".}
proc constructSelect3D_SensitiveBox*(theOwnerId: handle[SelectMgr_EntityOwner];
                                    theXMin: Standard_Real;
                                    theYMin: Standard_Real;
                                    theZMin: Standard_Real;
                                    theXMax: Standard_Real;
                                    theYMax: Standard_Real; theZMax: Standard_Real): Select3D_SensitiveBox {.
    constructor, importcpp: "Select3D_SensitiveBox(@)",
    header: "Select3D_SensitiveBox.hxx".}
proc NbSubElements*(this: Select3D_SensitiveBox): Standard_Integer {.noSideEffect,
    importcpp: "NbSubElements", header: "Select3D_SensitiveBox.hxx".}
proc GetConnected*(this: var Select3D_SensitiveBox): handle[Select3D_SensitiveEntity] {.
    importcpp: "GetConnected", header: "Select3D_SensitiveBox.hxx".}
proc Matches*(this: var Select3D_SensitiveBox;
             theMgr: var SelectBasics_SelectingVolumeManager;
             thePickResult: var SelectBasics_PickResult): Standard_Boolean {.
    importcpp: "Matches", header: "Select3D_SensitiveBox.hxx".}
proc Box*(this: Select3D_SensitiveBox): Bnd_Box {.noSideEffect, importcpp: "Box",
    header: "Select3D_SensitiveBox.hxx".}
proc CenterOfGeometry*(this: Select3D_SensitiveBox): gp_Pnt {.noSideEffect,
    importcpp: "CenterOfGeometry", header: "Select3D_SensitiveBox.hxx".}
proc BoundingBox*(this: var Select3D_SensitiveBox): Select3D_BndBox3d {.
    importcpp: "BoundingBox", header: "Select3D_SensitiveBox.hxx".}
proc ToBuildBVH*(this: Select3D_SensitiveBox): Standard_Boolean {.noSideEffect,
    importcpp: "ToBuildBVH", header: "Select3D_SensitiveBox.hxx".}
proc DumpJson*(this: Select3D_SensitiveBox; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Select3D_SensitiveBox.hxx".}
discard "forward decl of Select3D_SensitiveBox"
type
  Handle_Select3D_SensitiveBox* = handle[Select3D_SensitiveBox]
