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

discard "forward decl of AIS_ManipulatorOwner"
type
  HandleAIS_ManipulatorOwner* = Handle[AIS_ManipulatorOwner]

## ! Entity owner for selection management of AIS_Manipulator object.

type
  AIS_ManipulatorOwner* {.importcpp: "AIS_ManipulatorOwner",
                         header: "AIS_ManipulatorOwner.hxx", bycopy.} = object of SelectMgrEntityOwner
    ## !< index of manipulator axis.
    ## !< manipulation (highlight) mode.

  AIS_ManipulatorOwnerbaseType* = SelectMgrEntityOwner

proc getTypeName*(): cstring {.importcpp: "AIS_ManipulatorOwner::get_type_name(@)",
                            header: "AIS_ManipulatorOwner.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "AIS_ManipulatorOwner::get_type_descriptor(@)",
    header: "AIS_ManipulatorOwner.hxx".}
proc dynamicType*(this: AIS_ManipulatorOwner): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "AIS_ManipulatorOwner.hxx".}
proc constructAIS_ManipulatorOwner*(theSelObject: Handle[SelectMgrSelectableObject];
                                   theIndex: StandardInteger;
                                   theMode: AIS_ManipulatorMode;
                                   thePriority: StandardInteger = 0): AIS_ManipulatorOwner {.
    constructor, importcpp: "AIS_ManipulatorOwner(@)",
    header: "AIS_ManipulatorOwner.hxx".}
proc hilightWithColor*(this: var AIS_ManipulatorOwner;
                      thePM: Handle[PrsMgrPresentationManager3d];
                      theStyle: Handle[Prs3dDrawer]; theMode: StandardInteger) {.
    importcpp: "HilightWithColor", header: "AIS_ManipulatorOwner.hxx".}
proc isHilighted*(this: AIS_ManipulatorOwner;
                 thePM: Handle[PrsMgrPresentationManager];
                 theMode: StandardInteger): StandardBoolean {.noSideEffect,
    importcpp: "IsHilighted", header: "AIS_ManipulatorOwner.hxx".}
proc unhilight*(this: var AIS_ManipulatorOwner;
               thePM: Handle[PrsMgrPresentationManager]; theMode: StandardInteger) {.
    importcpp: "Unhilight", header: "AIS_ManipulatorOwner.hxx".}
proc mode*(this: AIS_ManipulatorOwner): AIS_ManipulatorMode {.noSideEffect,
    importcpp: "Mode", header: "AIS_ManipulatorOwner.hxx".}
proc index*(this: AIS_ManipulatorOwner): StandardInteger {.noSideEffect,
    importcpp: "Index", header: "AIS_ManipulatorOwner.hxx".}

