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

discard "forward decl of Bnd_Box"
discard "forward decl of MeshVS_Mesh"
discard "forward decl of TColStd_HPackedMapOfInteger"
discard "forward decl of Bnd_Box2d"
discard "forward decl of MeshVS_DataSource"
discard "forward decl of MeshVS_DataSource"
type
  HandleMeshVS_DataSource* = Handle[MeshVS_DataSource]

## ! The deferred class using for the following tasks:
## ! 1) Receiving geometry data about single element of node by its number;
## ! 2) Receiving type of element or node by its number;
## ! 3) Receiving topological information about links between element and nodes it consist of;
## ! 4) Receiving information about what element cover this node;
## ! 5) Receiving information about all nodes and elements the object consist of
## ! 6) Activation of advanced mesh selection. In the advanced mesh selection mode there is created:
## ! - one owner for the whole mesh and for all selection modes
## ! - one sensitive entity for the whole mesh and for each selection mode
## ! Receiving of IDs of detected entities (nodes and elements) in a viewer is achieved by
## ! implementation of a group of methods GetDetectedEntities.

type
  MeshVS_DataSource* {.importcpp: "MeshVS_DataSource",
                      header: "MeshVS_DataSource.hxx", bycopy.} = object of StandardTransient ##
                                                                                       ## !
                                                                                       ## Returns
                                                                                       ## geometry
                                                                                       ## information
                                                                                       ## about
                                                                                       ## node
                                                                                       ## or
                                                                                       ## element
                                                                                       ##
                                                                                       ## !
                                                                                       ## ID
                                                                                       ## is
                                                                                       ## the
                                                                                       ## numerical
                                                                                       ## identificator
                                                                                       ## of
                                                                                       ## node
                                                                                       ## or
                                                                                       ## element
                                                                                       ##
                                                                                       ## !
                                                                                       ## IsElement
                                                                                       ## indicates
                                                                                       ## this
                                                                                       ## ID
                                                                                       ## describe
                                                                                       ## node
                                                                                       ## (
                                                                                       ## if
                                                                                       ## Standard_False
                                                                                       ## )
                                                                                       ## or
                                                                                       ## element
                                                                                       ## (
                                                                                       ## if
                                                                                       ## Standard_True
                                                                                       ## )
                                                                                       ##
                                                                                       ## !
                                                                                       ## Coords
                                                                                       ## is
                                                                                       ## an
                                                                                       ## array
                                                                                       ## of
                                                                                       ## co-ordinates
                                                                                       ## of
                                                                                       ## node(s).
                                                                                       ##
                                                                                       ## !
                                                                                       ## For
                                                                                       ## node
                                                                                       ## it
                                                                                       ## is
                                                                                       ## only
                                                                                       ## 3
                                                                                       ## numbers:
                                                                                       ## X,
                                                                                       ## Y,
                                                                                       ## Z
                                                                                       ## in
                                                                                       ## the
                                                                                       ## strict
                                                                                       ## order
                                                                                       ##
                                                                                       ## !
                                                                                       ## For
                                                                                       ## element
                                                                                       ## it
                                                                                       ## is
                                                                                       ## 3*n
                                                                                       ## numbers,
                                                                                       ## where
                                                                                       ## n
                                                                                       ## is
                                                                                       ## number
                                                                                       ## of
                                                                                       ## this
                                                                                       ## element
                                                                                       ## vertices
                                                                                       ##
                                                                                       ## !
                                                                                       ## The
                                                                                       ## order
                                                                                       ## is
                                                                                       ## strict
                                                                                       ## also:
                                                                                       ## X1,
                                                                                       ## Y1,
                                                                                       ## Z1,
                                                                                       ## X2,....,
                                                                                       ## where
                                                                                       ## Xi,
                                                                                       ## Yi,
                                                                                       ## Zi
                                                                                       ## are
                                                                                       ## co-ordinates
                                                                                       ## of
                                                                                       ## vertices
                                                                                       ##
                                                                                       ## !
                                                                                       ## NbNodes
                                                                                       ## is
                                                                                       ## number
                                                                                       ## of
                                                                                       ## nodes.
                                                                                       ## It
                                                                                       ## is
                                                                                       ## recommended
                                                                                       ## this
                                                                                       ## parameter
                                                                                       ## to
                                                                                       ## be
                                                                                       ## set
                                                                                       ## to
                                                                                       ## 1
                                                                                       ## for
                                                                                       ## node.
                                                                                       ##
                                                                                       ## !
                                                                                       ## Type
                                                                                       ## is
                                                                                       ## type
                                                                                       ## of
                                                                                       ## node
                                                                                       ## or
                                                                                       ## element
                                                                                       ## (from
                                                                                       ## enumeration).
                                                                                       ## It
                                                                                       ## is
                                                                                       ## recommended
                                                                                       ## this
                                                                                       ## parameter
                                                                                       ## to
                                                                                       ## be
                                                                                       ## set
                                                                                       ## to
                                                                                       ##
                                                                                       ## !
                                                                                       ## MeshVS_ET_Node
                                                                                       ## for
                                                                                       ## node.


proc getGeom*(this: MeshVS_DataSource; id: StandardInteger;
             isElement: StandardBoolean; coords: var TColStdArray1OfReal;
             nbNodes: var StandardInteger; `type`: var MeshVS_EntityType): StandardBoolean {.
    noSideEffect, importcpp: "GetGeom", header: "MeshVS_DataSource.hxx".}
proc getGeomType*(this: MeshVS_DataSource; id: StandardInteger;
                 isElement: StandardBoolean; `type`: var MeshVS_EntityType): StandardBoolean {.
    noSideEffect, importcpp: "GetGeomType", header: "MeshVS_DataSource.hxx".}
proc get3DGeom*(this: MeshVS_DataSource; id: StandardInteger;
               nbNodes: var StandardInteger;
               data: var Handle[MeshVS_HArray1OfSequenceOfInteger]): StandardBoolean {.
    noSideEffect, importcpp: "Get3DGeom", header: "MeshVS_DataSource.hxx".}
proc getAddr*(this: MeshVS_DataSource; id: StandardInteger;
             isElement: StandardBoolean): StandardAddress {.noSideEffect,
    importcpp: "GetAddr", header: "MeshVS_DataSource.hxx".}
proc getNodesByElement*(this: MeshVS_DataSource; id: StandardInteger;
                       nodeIDs: var TColStdArray1OfInteger;
                       nbNodes: var StandardInteger): StandardBoolean {.
    noSideEffect, importcpp: "GetNodesByElement", header: "MeshVS_DataSource.hxx".}
proc getAllNodes*(this: MeshVS_DataSource): TColStdPackedMapOfInteger {.
    noSideEffect, importcpp: "GetAllNodes", header: "MeshVS_DataSource.hxx".}
proc getAllElements*(this: MeshVS_DataSource): TColStdPackedMapOfInteger {.
    noSideEffect, importcpp: "GetAllElements", header: "MeshVS_DataSource.hxx".}
proc getNormal*(this: MeshVS_DataSource; id: StandardInteger; max: StandardInteger;
               nx: var StandardReal; ny: var StandardReal; nz: var StandardReal): StandardBoolean {.
    noSideEffect, importcpp: "GetNormal", header: "MeshVS_DataSource.hxx".}
proc getNodeNormal*(this: MeshVS_DataSource; ranknode: StandardInteger;
                   elementId: StandardInteger; nx: var StandardReal;
                   ny: var StandardReal; nz: var StandardReal): StandardBoolean {.
    noSideEffect, importcpp: "GetNodeNormal", header: "MeshVS_DataSource.hxx".}
proc getNormalsByElement*(this: MeshVS_DataSource; id: StandardInteger;
                         isNodal: StandardBoolean; maxNodes: StandardInteger;
                         normals: var Handle[TColStdHArray1OfReal]): StandardBoolean {.
    noSideEffect, importcpp: "GetNormalsByElement", header: "MeshVS_DataSource.hxx".}
proc getAllGroups*(this: MeshVS_DataSource; ids: var TColStdPackedMapOfInteger) {.
    noSideEffect, importcpp: "GetAllGroups", header: "MeshVS_DataSource.hxx".}
proc getGroup*(this: MeshVS_DataSource; id: StandardInteger;
              `type`: var MeshVS_EntityType; ids: var TColStdPackedMapOfInteger): StandardBoolean {.
    noSideEffect, importcpp: "GetGroup", header: "MeshVS_DataSource.hxx".}
proc getGroupAddr*(this: MeshVS_DataSource; id: StandardInteger): StandardAddress {.
    noSideEffect, importcpp: "GetGroupAddr", header: "MeshVS_DataSource.hxx".}
proc isAdvancedSelectionEnabled*(this: MeshVS_DataSource): StandardBoolean {.
    noSideEffect, importcpp: "IsAdvancedSelectionEnabled",
    header: "MeshVS_DataSource.hxx".}
proc getBoundingBox*(this: MeshVS_DataSource): BndBox {.noSideEffect,
    importcpp: "GetBoundingBox", header: "MeshVS_DataSource.hxx".}
proc getDetectedEntities*(this: var MeshVS_DataSource; prs: Handle[MeshVS_Mesh];
                         x: StandardReal; y: StandardReal; aTol: StandardReal;
                         nodes: var Handle[TColStdHPackedMapOfInteger];
                         elements: var Handle[TColStdHPackedMapOfInteger];
                         dMin: var StandardReal): StandardBoolean {.
    importcpp: "GetDetectedEntities", header: "MeshVS_DataSource.hxx".}
proc getDetectedEntities*(this: var MeshVS_DataSource; prs: Handle[MeshVS_Mesh];
                         xMin: StandardReal; yMin: StandardReal; xMax: StandardReal;
                         yMax: StandardReal; aTol: StandardReal;
                         nodes: var Handle[TColStdHPackedMapOfInteger];
                         elements: var Handle[TColStdHPackedMapOfInteger]): StandardBoolean {.
    importcpp: "GetDetectedEntities", header: "MeshVS_DataSource.hxx".}
proc getDetectedEntities*(this: var MeshVS_DataSource; prs: Handle[MeshVS_Mesh];
                         polyline: TColgpArray1OfPnt2d; aBox: BndBox2d;
                         aTol: StandardReal;
                         nodes: var Handle[TColStdHPackedMapOfInteger];
                         elements: var Handle[TColStdHPackedMapOfInteger]): StandardBoolean {.
    importcpp: "GetDetectedEntities", header: "MeshVS_DataSource.hxx".}
proc getDetectedEntities*(this: var MeshVS_DataSource; prs: Handle[MeshVS_Mesh];
                         nodes: var Handle[TColStdHPackedMapOfInteger];
                         elements: var Handle[TColStdHPackedMapOfInteger]): StandardBoolean {.
    importcpp: "GetDetectedEntities", header: "MeshVS_DataSource.hxx".}
type
  MeshVS_DataSourcebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "MeshVS_DataSource::get_type_name(@)",
                            header: "MeshVS_DataSource.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "MeshVS_DataSource::get_type_descriptor(@)",
    header: "MeshVS_DataSource.hxx".}
proc dynamicType*(this: MeshVS_DataSource): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "MeshVS_DataSource.hxx".}

