##  Created on: 2003-12-11
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
discard "forward decl of gp_Vec"
discard "forward decl of MeshVS_DeformedDataSource"
discard "forward decl of MeshVS_DeformedDataSource"
type
  HandleMeshVS_DeformedDataSource* = Handle[MeshVS_DeformedDataSource]

## ! The class provides default class which helps to represent node displacements by deformed mesh
## ! This class has an internal handle to canonical non-deformed mesh data source and
## ! map of displacement vectors. The displacement can be magnified to useful size.
## ! All methods is implemented with calling the corresponding methods of non-deformed data source.

type
  MeshVS_DeformedDataSource* {.importcpp: "MeshVS_DeformedDataSource",
                              header: "MeshVS_DeformedDataSource.hxx", bycopy.} = object of MeshVS_DataSource ##
                                                                                                       ## !
                                                                                                       ## Constructor
                                                                                                       ##
                                                                                                       ## !
                                                                                                       ## theNonDeformDS
                                                                                                       ## is
                                                                                                       ## canonical
                                                                                                       ## non-deformed
                                                                                                       ## data
                                                                                                       ## source,
                                                                                                       ## by
                                                                                                       ## which
                                                                                                       ## we
                                                                                                       ## are
                                                                                                       ## able
                                                                                                       ## to
                                                                                                       ## calculate
                                                                                                       ##
                                                                                                       ## !
                                                                                                       ## deformed
                                                                                                       ## mesh
                                                                                                       ## geometry
                                                                                                       ##
                                                                                                       ## !
                                                                                                       ## theMagnify
                                                                                                       ## is
                                                                                                       ## coefficient
                                                                                                       ## of
                                                                                                       ## displacement
                                                                                                       ## magnify


proc constructMeshVS_DeformedDataSource*(theNonDeformDS: Handle[MeshVS_DataSource];
                                        theMagnify: float): MeshVS_DeformedDataSource {.
    constructor, importcpp: "MeshVS_DeformedDataSource(@)",
    header: "MeshVS_DeformedDataSource.hxx".}
proc getGeom*(this: MeshVS_DeformedDataSource; id: int; isElement: bool;
             coords: var TColStdArray1OfReal; nbNodes: var int;
             `type`: var MeshVS_EntityType): bool {.noSideEffect,
    importcpp: "GetGeom", header: "MeshVS_DeformedDataSource.hxx".}
proc getGeomType*(this: MeshVS_DeformedDataSource; id: int; isElement: bool;
                 `type`: var MeshVS_EntityType): bool {.noSideEffect,
    importcpp: "GetGeomType", header: "MeshVS_DeformedDataSource.hxx".}
proc get3DGeom*(this: MeshVS_DeformedDataSource; id: int; nbNodes: var int;
               data: var Handle[MeshVS_HArray1OfSequenceOfInteger]): bool {.
    noSideEffect, importcpp: "Get3DGeom", header: "MeshVS_DeformedDataSource.hxx".}
proc getAddr*(this: MeshVS_DeformedDataSource; id: int; isElement: bool): StandardAddress {.
    noSideEffect, importcpp: "GetAddr", header: "MeshVS_DeformedDataSource.hxx".}
proc getNodesByElement*(this: MeshVS_DeformedDataSource; id: int;
                       nodeIDs: var TColStdArray1OfInteger; nbNodes: var int): bool {.
    noSideEffect, importcpp: "GetNodesByElement",
    header: "MeshVS_DeformedDataSource.hxx".}
proc getAllNodes*(this: MeshVS_DeformedDataSource): TColStdPackedMapOfInteger {.
    noSideEffect, importcpp: "GetAllNodes", header: "MeshVS_DeformedDataSource.hxx".}
proc getAllElements*(this: MeshVS_DeformedDataSource): TColStdPackedMapOfInteger {.
    noSideEffect, importcpp: "GetAllElements",
    header: "MeshVS_DeformedDataSource.hxx".}
proc getVectors*(this: MeshVS_DeformedDataSource): MeshVS_DataMapOfIntegerVector {.
    noSideEffect, importcpp: "GetVectors", header: "MeshVS_DeformedDataSource.hxx".}
proc setVectors*(this: var MeshVS_DeformedDataSource;
                map: MeshVS_DataMapOfIntegerVector) {.importcpp: "SetVectors",
    header: "MeshVS_DeformedDataSource.hxx".}
proc getVector*(this: MeshVS_DeformedDataSource; id: int; vect: var Vec): bool {.
    noSideEffect, importcpp: "GetVector", header: "MeshVS_DeformedDataSource.hxx".}
proc setVector*(this: var MeshVS_DeformedDataSource; id: int; vect: Vec) {.
    importcpp: "SetVector", header: "MeshVS_DeformedDataSource.hxx".}
proc setNonDeformedDataSource*(this: var MeshVS_DeformedDataSource;
                              theDS: Handle[MeshVS_DataSource]) {.
    importcpp: "SetNonDeformedDataSource", header: "MeshVS_DeformedDataSource.hxx".}
proc getNonDeformedDataSource*(this: MeshVS_DeformedDataSource): Handle[
    MeshVS_DataSource] {.noSideEffect, importcpp: "GetNonDeformedDataSource",
                        header: "MeshVS_DeformedDataSource.hxx".}
proc setMagnify*(this: var MeshVS_DeformedDataSource; theMagnify: float) {.
    importcpp: "SetMagnify", header: "MeshVS_DeformedDataSource.hxx".}
proc getMagnify*(this: MeshVS_DeformedDataSource): float {.noSideEffect,
    importcpp: "GetMagnify", header: "MeshVS_DeformedDataSource.hxx".}
type
  MeshVS_DeformedDataSourcebaseType* = MeshVS_DataSource

proc getTypeName*(): cstring {.importcpp: "MeshVS_DeformedDataSource::get_type_name(@)",
                            header: "MeshVS_DeformedDataSource.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "MeshVS_DeformedDataSource::get_type_descriptor(@)",
    header: "MeshVS_DeformedDataSource.hxx".}
proc dynamicType*(this: MeshVS_DeformedDataSource): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "MeshVS_DeformedDataSource.hxx".}
