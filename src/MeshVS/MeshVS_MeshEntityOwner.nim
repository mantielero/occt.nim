##  Created on: 2003-10-10
##  Created by: Alexander SOLOVYOV
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

discard "forward decl of PrsMgr_PresentationManager"
discard "forward decl of MeshVS_MeshEntityOwner"
discard "forward decl of MeshVS_MeshEntityOwner"
type
  HandleC1C1* = Handle[MeshVS_MeshEntityOwner]

## ! The custom owner. This class provides methods to store owner information:
## ! 1) An address of element or node data structure
## ! 2) Type of node or element owner assigned
## ! 3) ID of node or element owner assigned

type
  MeshVS_MeshEntityOwner* {.importcpp: "MeshVS_MeshEntityOwner",
                           header: "MeshVS_MeshEntityOwner.hxx", bycopy.} = object of SelectMgrEntityOwner


proc constructMeshVS_MeshEntityOwner*(selObj: ptr SelectMgrSelectableObject;
                                     id: cint; meshEntity: StandardAddress;
                                     `type`: MeshVS_EntityType;
                                     priority: cint = 0; isGroup: bool = false): MeshVS_MeshEntityOwner {.
    constructor, importcpp: "MeshVS_MeshEntityOwner(@)",
    header: "MeshVS_MeshEntityOwner.hxx".}
proc owner*(this: MeshVS_MeshEntityOwner): StandardAddress {.noSideEffect,
    importcpp: "Owner", header: "MeshVS_MeshEntityOwner.hxx".}
proc `type`*(this: MeshVS_MeshEntityOwner): MeshVS_EntityType {.noSideEffect,
    importcpp: "Type", header: "MeshVS_MeshEntityOwner.hxx".}
proc id*(this: MeshVS_MeshEntityOwner): cint {.noSideEffect, importcpp: "ID",
    header: "MeshVS_MeshEntityOwner.hxx".}
proc isGroup*(this: MeshVS_MeshEntityOwner): bool {.noSideEffect,
    importcpp: "IsGroup", header: "MeshVS_MeshEntityOwner.hxx".}
proc isHilighted*(this: MeshVS_MeshEntityOwner;
                 pm: Handle[PrsMgrPresentationManager]; mode: cint = 0): bool {.
    noSideEffect, importcpp: "IsHilighted", header: "MeshVS_MeshEntityOwner.hxx".}
proc hilightWithColor*(this: var MeshVS_MeshEntityOwner;
                      thePM: Handle[PrsMgrPresentationManager3d];
                      theStyle: Handle[Prs3dDrawer]; theMode: cint = 0) {.
    importcpp: "HilightWithColor", header: "MeshVS_MeshEntityOwner.hxx".}
proc unhilight*(this: var MeshVS_MeshEntityOwner;
               pm: Handle[PrsMgrPresentationManager]; mode: cint = 0) {.
    importcpp: "Unhilight", header: "MeshVS_MeshEntityOwner.hxx".}
proc clear*(this: var MeshVS_MeshEntityOwner; pm: Handle[PrsMgrPresentationManager];
           mode: cint = 0) {.importcpp: "Clear", header: "MeshVS_MeshEntityOwner.hxx".}
type
  MeshVS_MeshEntityOwnerbaseType* = SelectMgrEntityOwner

proc getTypeName*(): cstring {.importcpp: "MeshVS_MeshEntityOwner::get_type_name(@)",
                            header: "MeshVS_MeshEntityOwner.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "MeshVS_MeshEntityOwner::get_type_descriptor(@)",
    header: "MeshVS_MeshEntityOwner.hxx".}
proc dynamicType*(this: MeshVS_MeshEntityOwner): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "MeshVS_MeshEntityOwner.hxx".}

























