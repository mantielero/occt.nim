##  Created on: 2015-12-23
##  Created by: Anastasia BORISOVA
##  Copyright (c) 2015 OPEN CASCADE SAS
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
  AIS_Manipulator, ../SelectMgr/SelectMgr_EntityOwner,
  ../SelectMgr/SelectMgr_SelectableObject

discard "forward decl of AIS_ManipulatorOwner"
type
  Handle_AIS_ManipulatorOwner* = handle[AIS_ManipulatorOwner]

## ! Entity owner for selection management of AIS_Manipulator object.

type
  AIS_ManipulatorOwner* {.importcpp: "AIS_ManipulatorOwner",
                         header: "AIS_ManipulatorOwner.hxx", bycopy.} = object of SelectMgr_EntityOwner
    ## !< index of manipulator axis.
    ## !< manipulation (highlight) mode.

  AIS_ManipulatorOwnerbase_type* = SelectMgr_EntityOwner

proc get_type_name*(): cstring {.importcpp: "AIS_ManipulatorOwner::get_type_name(@)",
                              header: "AIS_ManipulatorOwner.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "AIS_ManipulatorOwner::get_type_descriptor(@)",
    header: "AIS_ManipulatorOwner.hxx".}
proc DynamicType*(this: AIS_ManipulatorOwner): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "AIS_ManipulatorOwner.hxx".}
proc constructAIS_ManipulatorOwner*(theSelObject: handle[
    SelectMgr_SelectableObject]; theIndex: Standard_Integer;
                                   theMode: AIS_ManipulatorMode;
                                   thePriority: Standard_Integer = 0): AIS_ManipulatorOwner {.
    constructor, importcpp: "AIS_ManipulatorOwner(@)",
    header: "AIS_ManipulatorOwner.hxx".}
proc HilightWithColor*(this: var AIS_ManipulatorOwner;
                      thePM: handle[PrsMgr_PresentationManager3d];
                      theStyle: handle[Prs3d_Drawer]; theMode: Standard_Integer) {.
    importcpp: "HilightWithColor", header: "AIS_ManipulatorOwner.hxx".}
proc IsHilighted*(this: AIS_ManipulatorOwner;
                 thePM: handle[PrsMgr_PresentationManager];
                 theMode: Standard_Integer): Standard_Boolean {.noSideEffect,
    importcpp: "IsHilighted", header: "AIS_ManipulatorOwner.hxx".}
proc Unhilight*(this: var AIS_ManipulatorOwner;
               thePM: handle[PrsMgr_PresentationManager];
               theMode: Standard_Integer) {.importcpp: "Unhilight",
    header: "AIS_ManipulatorOwner.hxx".}
proc Mode*(this: AIS_ManipulatorOwner): AIS_ManipulatorMode {.noSideEffect,
    importcpp: "Mode", header: "AIS_ManipulatorOwner.hxx".}
proc Index*(this: AIS_ManipulatorOwner): Standard_Integer {.noSideEffect,
    importcpp: "Index", header: "AIS_ManipulatorOwner.hxx".}