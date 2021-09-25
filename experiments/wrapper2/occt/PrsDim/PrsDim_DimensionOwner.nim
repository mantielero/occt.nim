##  Created on: 1996-12-05
##  Created by: Odile Olivier
##  Copyright (c) 1996-1999 Matra Datavision
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

discard "forward decl of SelectMgr_SelectableObject"
discard "forward decl of PrsMgr_PresentationManager"
discard "forward decl of PrsDim_DimensionOwner"
type
  HandlePrsDimDimensionOwner* = Handle[PrsDimDimensionOwner]

## ! The owner is the entity which makes it possible to link
## ! the sensitive primitives and the reference shapes that
## ! you want to detect. It stocks the various pieces of
## ! information which make it possible to find objects. An
## ! owner has a priority which you can modulate, so as to
## ! make one entity more selectable than another. You
## ! might want to make edges more selectable than
## ! faces, for example. In that case, you could attribute sa
## ! higher priority to the one compared to the other. An
## ! edge, could have priority 5, for example, and a face,
## ! priority 4. The default priority is 5.

type
  PrsDimDimensionOwner* {.importcpp: "PrsDim_DimensionOwner",
                         header: "PrsDim_DimensionOwner.hxx", bycopy.} = object of SelectMgrEntityOwner ##
                                                                                                 ## !
                                                                                                 ## Initializes
                                                                                                 ## the
                                                                                                 ## dimension
                                                                                                 ## owner,
                                                                                                 ## theSO,
                                                                                                 ## and
                                                                                                 ## attributes
                                                                                                 ## it
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## the
                                                                                                 ## priority,
                                                                                                 ## thePriority.

  PrsDimDimensionOwnerbaseType* = SelectMgrEntityOwner

proc getTypeName*(): cstring {.importcpp: "PrsDim_DimensionOwner::get_type_name(@)",
                            header: "PrsDim_DimensionOwner.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "PrsDim_DimensionOwner::get_type_descriptor(@)",
    header: "PrsDim_DimensionOwner.hxx".}
proc dynamicType*(this: PrsDimDimensionOwner): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "PrsDim_DimensionOwner.hxx".}
proc constructPrsDimDimensionOwner*(theSelObject: Handle[SelectMgrSelectableObject];
                                   theSelMode: PrsDimDimensionSelectionMode;
                                   thePriority: int = 0): PrsDimDimensionOwner {.
    constructor, importcpp: "PrsDim_DimensionOwner(@)",
    header: "PrsDim_DimensionOwner.hxx".}
proc selectionMode*(this: PrsDimDimensionOwner): PrsDimDimensionSelectionMode {.
    noSideEffect, importcpp: "SelectionMode", header: "PrsDim_DimensionOwner.hxx".}
proc hilightWithColor*(this: var PrsDimDimensionOwner;
                      thePM: Handle[PrsMgrPresentationManager3d];
                      theStyle: Handle[Prs3dDrawer]; theMode: int = 0) {.
    importcpp: "HilightWithColor", header: "PrsDim_DimensionOwner.hxx".}
proc isHilighted*(this: PrsDimDimensionOwner;
                 thePM: Handle[PrsMgrPresentationManager]; theMode: int = 0): bool {.
    noSideEffect, importcpp: "IsHilighted", header: "PrsDim_DimensionOwner.hxx".}
proc unhilight*(this: var PrsDimDimensionOwner;
               thePM: Handle[PrsMgrPresentationManager]; theMode: int = 0) {.
    importcpp: "Unhilight", header: "PrsDim_DimensionOwner.hxx".}
