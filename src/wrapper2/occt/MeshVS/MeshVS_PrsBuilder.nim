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
  MeshVS_MeshPtr, ../PrsMgr/PrsMgr_PresentationManager3d,
  ../Prs3d/Prs3d_Presentation, MeshVS_DisplayModeFlags, MeshVS_BuilderPriority,
  ../TColStd/TColStd_PackedMapOfInteger

discard "forward decl of MeshVS_DataSource"
discard "forward decl of MeshVS_Drawer"
discard "forward decl of MeshVS_Mesh"
discard "forward decl of Select3D_SensitiveEntity"
discard "forward decl of SelectMgr_EntityOwner"
discard "forward decl of MeshVS_PrsBuilder"
type
  Handle_MeshVS_PrsBuilder* = handle[MeshVS_PrsBuilder]

## ! This class is parent for all builders using in MeshVS_Mesh.
## ! It provides base fields and methods all buildes need.

type
  MeshVS_PrsBuilder* {.importcpp: "MeshVS_PrsBuilder",
                      header: "MeshVS_PrsBuilder.hxx", bycopy.} = object of Standard_Transient ##
                                                                                        ## !
                                                                                        ## Builds
                                                                                        ## presentation
                                                                                        ## of
                                                                                        ## certain
                                                                                        ## type
                                                                                        ## of
                                                                                        ## data.
                                                                                        ##
                                                                                        ## !
                                                                                        ## Prs
                                                                                        ## is
                                                                                        ## presentation
                                                                                        ## object
                                                                                        ## which
                                                                                        ## this
                                                                                        ## method
                                                                                        ## constructs.
                                                                                        ##
                                                                                        ## !
                                                                                        ## IDs
                                                                                        ## is
                                                                                        ## set
                                                                                        ## of
                                                                                        ## numeric
                                                                                        ## identificators
                                                                                        ## forming
                                                                                        ## object
                                                                                        ## appearance.
                                                                                        ##
                                                                                        ## !
                                                                                        ## IDsToExclude
                                                                                        ## is
                                                                                        ## set
                                                                                        ## of
                                                                                        ## IDs
                                                                                        ## to
                                                                                        ## exclude
                                                                                        ## from
                                                                                        ## processing.
                                                                                        ## If
                                                                                        ## some
                                                                                        ## entity
                                                                                        ##
                                                                                        ## !
                                                                                        ## has
                                                                                        ## been
                                                                                        ## excluded,
                                                                                        ## it
                                                                                        ## is
                                                                                        ## not
                                                                                        ## processed
                                                                                        ## by
                                                                                        ## other
                                                                                        ## builders.
                                                                                        ##
                                                                                        ## !
                                                                                        ## IsElement
                                                                                        ## indicates,
                                                                                        ## IDs
                                                                                        ## is
                                                                                        ## identificators
                                                                                        ## of
                                                                                        ## nodes
                                                                                        ## or
                                                                                        ## elements.
                                                                                        ##
                                                                                        ## !
                                                                                        ## DisplayMode
                                                                                        ## is
                                                                                        ## numeric
                                                                                        ## constant
                                                                                        ## describing
                                                                                        ## display
                                                                                        ## mode
                                                                                        ## (see
                                                                                        ## MeshVS_DisplayModeFlags.hxx)
                                                                                        ##
                                                                                        ## !
                                                                                        ## Constructor
                                                                                        ##
                                                                                        ## !
                                                                                        ## Parent
                                                                                        ## is
                                                                                        ## pointer
                                                                                        ## to
                                                                                        ## MeshVS_Mesh
                                                                                        ## object
                                                                                        ##
                                                                                        ## !
                                                                                        ## Flags
                                                                                        ## is
                                                                                        ## set
                                                                                        ## of
                                                                                        ## display
                                                                                        ## modes
                                                                                        ## corresponding
                                                                                        ## to
                                                                                        ## this
                                                                                        ## builder
                                                                                        ##
                                                                                        ## !
                                                                                        ## DS
                                                                                        ## is
                                                                                        ## data
                                                                                        ## source
                                                                                        ## object,
                                                                                        ## from
                                                                                        ## which
                                                                                        ## builder
                                                                                        ## will
                                                                                        ## pick
                                                                                        ## geometry
                                                                                        ## and
                                                                                        ## topological
                                                                                        ## information
                                                                                        ##
                                                                                        ## !
                                                                                        ## Id
                                                                                        ## is
                                                                                        ## numeric
                                                                                        ## identificator
                                                                                        ## of
                                                                                        ## builder.
                                                                                        ## You
                                                                                        ## must
                                                                                        ## set
                                                                                        ## it
                                                                                        ## to
                                                                                        ## positive
                                                                                        ## integer,
                                                                                        ## but
                                                                                        ## if
                                                                                        ##
                                                                                        ## !
                                                                                        ## you
                                                                                        ## set
                                                                                        ## it
                                                                                        ## to
                                                                                        ## -1,
                                                                                        ## constructor
                                                                                        ## will
                                                                                        ## select
                                                                                        ## the
                                                                                        ## smallest
                                                                                        ## integer,
                                                                                        ## not
                                                                                        ## occupied
                                                                                        ## by
                                                                                        ## other
                                                                                        ## builders
                                                                                        ##
                                                                                        ## !
                                                                                        ## Priority
                                                                                        ## is
                                                                                        ## numerical
                                                                                        ## priority
                                                                                        ## constant.
                                                                                        ## As
                                                                                        ## priority
                                                                                        ## bigger,
                                                                                        ## as
                                                                                        ## sooner
                                                                                        ## builder
                                                                                        ## starts
                                                                                        ## during
                                                                                        ##
                                                                                        ## !
                                                                                        ## presentation
                                                                                        ## construction


proc Build*(this: MeshVS_PrsBuilder; Prs: handle[Prs3d_Presentation];
           IDs: TColStd_PackedMapOfInteger;
           IDsToExclude: var TColStd_PackedMapOfInteger;
           IsElement: Standard_Boolean; DisplayMode: Standard_Integer) {.
    noSideEffect, importcpp: "Build", header: "MeshVS_PrsBuilder.hxx".}
proc CustomBuild*(this: MeshVS_PrsBuilder; Prs: handle[Prs3d_Presentation];
                 IDs: TColStd_PackedMapOfInteger;
                 IDsToExclude: var TColStd_PackedMapOfInteger;
                 DisplayMode: Standard_Integer) {.noSideEffect,
    importcpp: "CustomBuild", header: "MeshVS_PrsBuilder.hxx".}
proc CustomSensitiveEntity*(this: MeshVS_PrsBuilder;
                           Owner: handle[SelectMgr_EntityOwner];
                           SelectMode: Standard_Integer): handle[
    Select3D_SensitiveEntity] {.noSideEffect, importcpp: "CustomSensitiveEntity",
                               header: "MeshVS_PrsBuilder.hxx".}
proc GetFlags*(this: MeshVS_PrsBuilder): Standard_Integer {.noSideEffect,
    importcpp: "GetFlags", header: "MeshVS_PrsBuilder.hxx".}
proc TestFlags*(this: MeshVS_PrsBuilder; DisplayMode: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "TestFlags", header: "MeshVS_PrsBuilder.hxx".}
proc GetId*(this: MeshVS_PrsBuilder): Standard_Integer {.noSideEffect,
    importcpp: "GetId", header: "MeshVS_PrsBuilder.hxx".}
proc GetPriority*(this: MeshVS_PrsBuilder): Standard_Integer {.noSideEffect,
    importcpp: "GetPriority", header: "MeshVS_PrsBuilder.hxx".}
proc GetDataSource*(this: MeshVS_PrsBuilder): handle[MeshVS_DataSource] {.
    noSideEffect, importcpp: "GetDataSource", header: "MeshVS_PrsBuilder.hxx".}
proc SetDataSource*(this: var MeshVS_PrsBuilder; newDS: handle[MeshVS_DataSource]) {.
    importcpp: "SetDataSource", header: "MeshVS_PrsBuilder.hxx".}
proc GetDrawer*(this: MeshVS_PrsBuilder): handle[MeshVS_Drawer] {.noSideEffect,
    importcpp: "GetDrawer", header: "MeshVS_PrsBuilder.hxx".}
proc SetDrawer*(this: var MeshVS_PrsBuilder; newDr: handle[MeshVS_Drawer]) {.
    importcpp: "SetDrawer", header: "MeshVS_PrsBuilder.hxx".}
proc SetExcluding*(this: var MeshVS_PrsBuilder; state: Standard_Boolean) {.
    importcpp: "SetExcluding", header: "MeshVS_PrsBuilder.hxx".}
proc IsExcludingOn*(this: MeshVS_PrsBuilder): Standard_Boolean {.noSideEffect,
    importcpp: "IsExcludingOn", header: "MeshVS_PrsBuilder.hxx".}
proc SetPresentationManager*(this: var MeshVS_PrsBuilder;
                            thePrsMgr: handle[PrsMgr_PresentationManager3d]) {.
    importcpp: "SetPresentationManager", header: "MeshVS_PrsBuilder.hxx".}
proc GetPresentationManager*(this: MeshVS_PrsBuilder): handle[
    PrsMgr_PresentationManager3d] {.noSideEffect,
                                   importcpp: "GetPresentationManager",
                                   header: "MeshVS_PrsBuilder.hxx".}
type
  MeshVS_PrsBuilderbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "MeshVS_PrsBuilder::get_type_name(@)",
                              header: "MeshVS_PrsBuilder.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "MeshVS_PrsBuilder::get_type_descriptor(@)",
    header: "MeshVS_PrsBuilder.hxx".}
proc DynamicType*(this: MeshVS_PrsBuilder): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "MeshVS_PrsBuilder.hxx".}