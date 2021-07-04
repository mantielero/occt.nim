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

import
  MeshVS_EntityType, ../SelectMgr/SelectMgr_EntityOwner,
  ../PrsMgr/PrsMgr_PresentationManager3d, ../Quantity/Quantity_NameOfColor

discard "forward decl of PrsMgr_PresentationManager"
discard "forward decl of MeshVS_MeshEntityOwner"
discard "forward decl of MeshVS_MeshEntityOwner"
type
  Handle_MeshVS_MeshEntityOwner* = handle[MeshVS_MeshEntityOwner]

## ! The custom owner. This class provides methods to store owner information:
## ! 1) An address of element or node data structure
## ! 2) Type of node or element owner assigned
## ! 3) ID of node or element owner assigned

type
  MeshVS_MeshEntityOwner* {.importcpp: "MeshVS_MeshEntityOwner",
                           header: "MeshVS_MeshEntityOwner.hxx", bycopy.} = object of SelectMgr_EntityOwner


proc constructMeshVS_MeshEntityOwner*(SelObj: ptr SelectMgr_SelectableObject;
                                     ID: Standard_Integer;
                                     MeshEntity: Standard_Address;
                                     Type: MeshVS_EntityType;
                                     Priority: Standard_Integer = 0;
                                     IsGroup: Standard_Boolean = Standard_False): MeshVS_MeshEntityOwner {.
    constructor, importcpp: "MeshVS_MeshEntityOwner(@)",
    header: "MeshVS_MeshEntityOwner.hxx".}
proc Owner*(this: MeshVS_MeshEntityOwner): Standard_Address {.noSideEffect,
    importcpp: "Owner", header: "MeshVS_MeshEntityOwner.hxx".}
proc Type*(this: MeshVS_MeshEntityOwner): MeshVS_EntityType {.noSideEffect,
    importcpp: "Type", header: "MeshVS_MeshEntityOwner.hxx".}
proc ID*(this: MeshVS_MeshEntityOwner): Standard_Integer {.noSideEffect,
    importcpp: "ID", header: "MeshVS_MeshEntityOwner.hxx".}
proc IsGroup*(this: MeshVS_MeshEntityOwner): Standard_Boolean {.noSideEffect,
    importcpp: "IsGroup", header: "MeshVS_MeshEntityOwner.hxx".}
proc IsHilighted*(this: MeshVS_MeshEntityOwner;
                 PM: handle[PrsMgr_PresentationManager];
                 Mode: Standard_Integer = 0): Standard_Boolean {.noSideEffect,
    importcpp: "IsHilighted", header: "MeshVS_MeshEntityOwner.hxx".}
proc HilightWithColor*(this: var MeshVS_MeshEntityOwner;
                      thePM: handle[PrsMgr_PresentationManager3d];
                      theStyle: handle[Prs3d_Drawer];
                      theMode: Standard_Integer = 0) {.
    importcpp: "HilightWithColor", header: "MeshVS_MeshEntityOwner.hxx".}
proc Unhilight*(this: var MeshVS_MeshEntityOwner;
               PM: handle[PrsMgr_PresentationManager]; Mode: Standard_Integer = 0) {.
    importcpp: "Unhilight", header: "MeshVS_MeshEntityOwner.hxx".}
proc Clear*(this: var MeshVS_MeshEntityOwner;
           PM: handle[PrsMgr_PresentationManager]; Mode: Standard_Integer = 0) {.
    importcpp: "Clear", header: "MeshVS_MeshEntityOwner.hxx".}
type
  MeshVS_MeshEntityOwnerbase_type* = SelectMgr_EntityOwner

proc get_type_name*(): cstring {.importcpp: "MeshVS_MeshEntityOwner::get_type_name(@)",
                              header: "MeshVS_MeshEntityOwner.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "MeshVS_MeshEntityOwner::get_type_descriptor(@)",
    header: "MeshVS_MeshEntityOwner.hxx".}
proc DynamicType*(this: MeshVS_MeshEntityOwner): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "MeshVS_MeshEntityOwner.hxx".}