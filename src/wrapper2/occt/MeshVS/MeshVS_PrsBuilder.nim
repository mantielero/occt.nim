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

discard "forward decl of MeshVS_DataSource"
discard "forward decl of MeshVS_Drawer"
discard "forward decl of MeshVS_Mesh"
discard "forward decl of Select3D_SensitiveEntity"
discard "forward decl of SelectMgr_EntityOwner"
discard "forward decl of MeshVS_PrsBuilder"
type
  HandleMeshVS_PrsBuilder* = Handle[MeshVS_PrsBuilder]

## ! This class is parent for all builders using in MeshVS_Mesh.
## ! It provides base fields and methods all buildes need.

type
  MeshVS_PrsBuilder* {.importcpp: "MeshVS_PrsBuilder",
                      header: "MeshVS_PrsBuilder.hxx", bycopy.} = object of StandardTransient ##
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


proc build*(this: MeshVS_PrsBuilder; prs: Handle[Prs3dPresentation];
           iDs: TColStdPackedMapOfInteger;
           iDsToExclude: var TColStdPackedMapOfInteger; isElement: StandardBoolean;
           displayMode: StandardInteger) {.noSideEffect, importcpp: "Build",
    header: "MeshVS_PrsBuilder.hxx".}
proc customBuild*(this: MeshVS_PrsBuilder; prs: Handle[Prs3dPresentation];
                 iDs: TColStdPackedMapOfInteger;
                 iDsToExclude: var TColStdPackedMapOfInteger;
                 displayMode: StandardInteger) {.noSideEffect,
    importcpp: "CustomBuild", header: "MeshVS_PrsBuilder.hxx".}
proc customSensitiveEntity*(this: MeshVS_PrsBuilder;
                           owner: Handle[SelectMgrEntityOwner];
                           selectMode: StandardInteger): Handle[
    Select3D_SensitiveEntity] {.noSideEffect, importcpp: "CustomSensitiveEntity",
                               header: "MeshVS_PrsBuilder.hxx".}
proc getFlags*(this: MeshVS_PrsBuilder): StandardInteger {.noSideEffect,
    importcpp: "GetFlags", header: "MeshVS_PrsBuilder.hxx".}
proc testFlags*(this: MeshVS_PrsBuilder; displayMode: StandardInteger): StandardBoolean {.
    noSideEffect, importcpp: "TestFlags", header: "MeshVS_PrsBuilder.hxx".}
proc getId*(this: MeshVS_PrsBuilder): StandardInteger {.noSideEffect,
    importcpp: "GetId", header: "MeshVS_PrsBuilder.hxx".}
proc getPriority*(this: MeshVS_PrsBuilder): StandardInteger {.noSideEffect,
    importcpp: "GetPriority", header: "MeshVS_PrsBuilder.hxx".}
proc getDataSource*(this: MeshVS_PrsBuilder): Handle[MeshVS_DataSource] {.
    noSideEffect, importcpp: "GetDataSource", header: "MeshVS_PrsBuilder.hxx".}
proc setDataSource*(this: var MeshVS_PrsBuilder; newDS: Handle[MeshVS_DataSource]) {.
    importcpp: "SetDataSource", header: "MeshVS_PrsBuilder.hxx".}
proc getDrawer*(this: MeshVS_PrsBuilder): Handle[MeshVS_Drawer] {.noSideEffect,
    importcpp: "GetDrawer", header: "MeshVS_PrsBuilder.hxx".}
proc setDrawer*(this: var MeshVS_PrsBuilder; newDr: Handle[MeshVS_Drawer]) {.
    importcpp: "SetDrawer", header: "MeshVS_PrsBuilder.hxx".}
proc setExcluding*(this: var MeshVS_PrsBuilder; state: StandardBoolean) {.
    importcpp: "SetExcluding", header: "MeshVS_PrsBuilder.hxx".}
proc isExcludingOn*(this: MeshVS_PrsBuilder): StandardBoolean {.noSideEffect,
    importcpp: "IsExcludingOn", header: "MeshVS_PrsBuilder.hxx".}
proc setPresentationManager*(this: var MeshVS_PrsBuilder;
                            thePrsMgr: Handle[PrsMgrPresentationManager3d]) {.
    importcpp: "SetPresentationManager", header: "MeshVS_PrsBuilder.hxx".}
proc getPresentationManager*(this: MeshVS_PrsBuilder): Handle[
    PrsMgrPresentationManager3d] {.noSideEffect,
                                  importcpp: "GetPresentationManager",
                                  header: "MeshVS_PrsBuilder.hxx".}
type
  MeshVS_PrsBuilderbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "MeshVS_PrsBuilder::get_type_name(@)",
                            header: "MeshVS_PrsBuilder.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "MeshVS_PrsBuilder::get_type_descriptor(@)",
    header: "MeshVS_PrsBuilder.hxx".}
proc dynamicType*(this: MeshVS_PrsBuilder): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "MeshVS_PrsBuilder.hxx".}

