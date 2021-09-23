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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Transient,
  ../Standard/Standard_Boolean, ../Standard/Standard_Integer,
  ../TColStd/TColStd_Array1OfReal, MeshVS_EntityType,
  MeshVS_HArray1OfSequenceOfInteger, ../Standard/Standard_Address,
  ../TColStd/TColStd_Array1OfInteger, ../TColStd/TColStd_PackedMapOfInteger,
  ../Standard/Standard_Real, ../TColStd/TColStd_HArray1OfReal,
  ../TColgp/TColgp_Array1OfPnt2d

discard "forward decl of Bnd_Box"
discard "forward decl of MeshVS_Mesh"
discard "forward decl of TColStd_HPackedMapOfInteger"
discard "forward decl of Bnd_Box2d"
discard "forward decl of MeshVS_DataSource"
discard "forward decl of MeshVS_DataSource"
type
  Handle_MeshVS_DataSource* = handle[MeshVS_DataSource]

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
                      header: "MeshVS_DataSource.hxx", bycopy.} = object of Standard_Transient ##
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


proc GetGeom*(this: MeshVS_DataSource; ID: Standard_Integer;
             IsElement: Standard_Boolean; Coords: var TColStd_Array1OfReal;
             NbNodes: var Standard_Integer; Type: var MeshVS_EntityType): Standard_Boolean {.
    noSideEffect, importcpp: "GetGeom", header: "MeshVS_DataSource.hxx".}
proc GetGeomType*(this: MeshVS_DataSource; ID: Standard_Integer;
                 IsElement: Standard_Boolean; Type: var MeshVS_EntityType): Standard_Boolean {.
    noSideEffect, importcpp: "GetGeomType", header: "MeshVS_DataSource.hxx".}
proc Get3DGeom*(this: MeshVS_DataSource; ID: Standard_Integer;
               NbNodes: var Standard_Integer;
               Data: var handle[MeshVS_HArray1OfSequenceOfInteger]): Standard_Boolean {.
    noSideEffect, importcpp: "Get3DGeom", header: "MeshVS_DataSource.hxx".}
proc GetAddr*(this: MeshVS_DataSource; ID: Standard_Integer;
             IsElement: Standard_Boolean): Standard_Address {.noSideEffect,
    importcpp: "GetAddr", header: "MeshVS_DataSource.hxx".}
proc GetNodesByElement*(this: MeshVS_DataSource; ID: Standard_Integer;
                       NodeIDs: var TColStd_Array1OfInteger;
                       NbNodes: var Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "GetNodesByElement", header: "MeshVS_DataSource.hxx".}
proc GetAllNodes*(this: MeshVS_DataSource): TColStd_PackedMapOfInteger {.
    noSideEffect, importcpp: "GetAllNodes", header: "MeshVS_DataSource.hxx".}
proc GetAllElements*(this: MeshVS_DataSource): TColStd_PackedMapOfInteger {.
    noSideEffect, importcpp: "GetAllElements", header: "MeshVS_DataSource.hxx".}
proc GetNormal*(this: MeshVS_DataSource; Id: Standard_Integer; Max: Standard_Integer;
               nx: var Standard_Real; ny: var Standard_Real; nz: var Standard_Real): Standard_Boolean {.
    noSideEffect, importcpp: "GetNormal", header: "MeshVS_DataSource.hxx".}
proc GetNodeNormal*(this: MeshVS_DataSource; ranknode: Standard_Integer;
                   ElementId: Standard_Integer; nx: var Standard_Real;
                   ny: var Standard_Real; nz: var Standard_Real): Standard_Boolean {.
    noSideEffect, importcpp: "GetNodeNormal", header: "MeshVS_DataSource.hxx".}
proc GetNormalsByElement*(this: MeshVS_DataSource; Id: Standard_Integer;
                         IsNodal: Standard_Boolean; MaxNodes: Standard_Integer;
                         Normals: var handle[TColStd_HArray1OfReal]): Standard_Boolean {.
    noSideEffect, importcpp: "GetNormalsByElement", header: "MeshVS_DataSource.hxx".}
proc GetAllGroups*(this: MeshVS_DataSource; Ids: var TColStd_PackedMapOfInteger) {.
    noSideEffect, importcpp: "GetAllGroups", header: "MeshVS_DataSource.hxx".}
proc GetGroup*(this: MeshVS_DataSource; Id: Standard_Integer;
              Type: var MeshVS_EntityType; Ids: var TColStd_PackedMapOfInteger): Standard_Boolean {.
    noSideEffect, importcpp: "GetGroup", header: "MeshVS_DataSource.hxx".}
proc GetGroupAddr*(this: MeshVS_DataSource; ID: Standard_Integer): Standard_Address {.
    noSideEffect, importcpp: "GetGroupAddr", header: "MeshVS_DataSource.hxx".}
proc IsAdvancedSelectionEnabled*(this: MeshVS_DataSource): Standard_Boolean {.
    noSideEffect, importcpp: "IsAdvancedSelectionEnabled",
    header: "MeshVS_DataSource.hxx".}
proc GetBoundingBox*(this: MeshVS_DataSource): Bnd_Box {.noSideEffect,
    importcpp: "GetBoundingBox", header: "MeshVS_DataSource.hxx".}
proc GetDetectedEntities*(this: var MeshVS_DataSource; Prs: handle[MeshVS_Mesh];
                         X: Standard_Real; Y: Standard_Real; aTol: Standard_Real;
                         Nodes: var handle[TColStd_HPackedMapOfInteger];
                         Elements: var handle[TColStd_HPackedMapOfInteger];
                         DMin: var Standard_Real): Standard_Boolean {.
    importcpp: "GetDetectedEntities", header: "MeshVS_DataSource.hxx".}
proc GetDetectedEntities*(this: var MeshVS_DataSource; Prs: handle[MeshVS_Mesh];
                         XMin: Standard_Real; YMin: Standard_Real;
                         XMax: Standard_Real; YMax: Standard_Real;
                         aTol: Standard_Real;
                         Nodes: var handle[TColStd_HPackedMapOfInteger];
                         Elements: var handle[TColStd_HPackedMapOfInteger]): Standard_Boolean {.
    importcpp: "GetDetectedEntities", header: "MeshVS_DataSource.hxx".}
proc GetDetectedEntities*(this: var MeshVS_DataSource; Prs: handle[MeshVS_Mesh];
                         Polyline: TColgp_Array1OfPnt2d; aBox: Bnd_Box2d;
                         aTol: Standard_Real;
                         Nodes: var handle[TColStd_HPackedMapOfInteger];
                         Elements: var handle[TColStd_HPackedMapOfInteger]): Standard_Boolean {.
    importcpp: "GetDetectedEntities", header: "MeshVS_DataSource.hxx".}
proc GetDetectedEntities*(this: var MeshVS_DataSource; Prs: handle[MeshVS_Mesh];
                         Nodes: var handle[TColStd_HPackedMapOfInteger];
                         Elements: var handle[TColStd_HPackedMapOfInteger]): Standard_Boolean {.
    importcpp: "GetDetectedEntities", header: "MeshVS_DataSource.hxx".}
type
  MeshVS_DataSourcebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "MeshVS_DataSource::get_type_name(@)",
                              header: "MeshVS_DataSource.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "MeshVS_DataSource::get_type_descriptor(@)",
    header: "MeshVS_DataSource.hxx".}
proc DynamicType*(this: MeshVS_DataSource): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "MeshVS_DataSource.hxx".}