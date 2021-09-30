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

  Select3D_SensitiveBoxbaseType* = Select3D_SensitiveEntity

proc getTypeName*(): cstring {.importcpp: "Select3D_SensitiveBox::get_type_name(@)",
                            header: "Select3D_SensitiveBox.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Select3D_SensitiveBox::get_type_descriptor(@)",
    header: "Select3D_SensitiveBox.hxx".}
proc dynamicType*(this: Select3D_SensitiveBox): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Select3D_SensitiveBox.hxx".}
proc constructSelect3D_SensitiveBox*(theOwnerId: Handle[SelectMgrEntityOwner];
                                    theBox: BndBox): Select3D_SensitiveBox {.
    constructor, importcpp: "Select3D_SensitiveBox(@)",
    header: "Select3D_SensitiveBox.hxx".}
proc constructSelect3D_SensitiveBox*(theOwnerId: Handle[SelectMgrEntityOwner];
                                    theXMin: cfloat; theYMin: cfloat;
                                    theZMin: cfloat; theXMax: cfloat;
                                    theYMax: cfloat; theZMax: cfloat): Select3D_SensitiveBox {.
    constructor, importcpp: "Select3D_SensitiveBox(@)",
    header: "Select3D_SensitiveBox.hxx".}
proc nbSubElements*(this: Select3D_SensitiveBox): cint {.noSideEffect,
    importcpp: "NbSubElements", header: "Select3D_SensitiveBox.hxx".}
proc getConnected*(this: var Select3D_SensitiveBox): Handle[Select3D_SensitiveEntity] {.
    importcpp: "GetConnected", header: "Select3D_SensitiveBox.hxx".}
proc matches*(this: var Select3D_SensitiveBox;
             theMgr: var SelectBasicsSelectingVolumeManager;
             thePickResult: var SelectBasicsPickResult): bool {.
    importcpp: "Matches", header: "Select3D_SensitiveBox.hxx".}
proc box*(this: Select3D_SensitiveBox): BndBox {.noSideEffect, importcpp: "Box",
    header: "Select3D_SensitiveBox.hxx".}
proc centerOfGeometry*(this: Select3D_SensitiveBox): Pnt {.noSideEffect,
    importcpp: "CenterOfGeometry", header: "Select3D_SensitiveBox.hxx".}
proc boundingBox*(this: var Select3D_SensitiveBox): Select3D_BndBox3d {.
    importcpp: "BoundingBox", header: "Select3D_SensitiveBox.hxx".}
proc toBuildBVH*(this: Select3D_SensitiveBox): bool {.noSideEffect,
    importcpp: "ToBuildBVH", header: "Select3D_SensitiveBox.hxx".}
proc dumpJson*(this: Select3D_SensitiveBox; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, importcpp: "DumpJson",
                                 header: "Select3D_SensitiveBox.hxx".}
discard "forward decl of Select3D_SensitiveBox"
type
  HandleC1C1* = Handle[Select3D_SensitiveBox]


























