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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  ../TColStd/TColStd_PackedMapOfInteger, MeshVS_DataMapOfIntegerVector,
  ../Standard/Standard_Real, MeshVS_DataSource, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer, ../TColStd/TColStd_Array1OfReal,
  MeshVS_EntityType, MeshVS_HArray1OfSequenceOfInteger,
  ../Standard/Standard_Address, ../TColStd/TColStd_Array1OfInteger

discard "forward decl of MeshVS_DataSource"
discard "forward decl of gp_Vec"
discard "forward decl of MeshVS_DeformedDataSource"
discard "forward decl of MeshVS_DeformedDataSource"
type
  Handle_MeshVS_DeformedDataSource* = handle[MeshVS_DeformedDataSource]

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


proc constructMeshVS_DeformedDataSource*(theNonDeformDS: handle[MeshVS_DataSource];
                                        theMagnify: Standard_Real): MeshVS_DeformedDataSource {.
    constructor, importcpp: "MeshVS_DeformedDataSource(@)",
    header: "MeshVS_DeformedDataSource.hxx".}
proc GetGeom*(this: MeshVS_DeformedDataSource; ID: Standard_Integer;
             IsElement: Standard_Boolean; Coords: var TColStd_Array1OfReal;
             NbNodes: var Standard_Integer; Type: var MeshVS_EntityType): Standard_Boolean {.
    noSideEffect, importcpp: "GetGeom", header: "MeshVS_DeformedDataSource.hxx".}
proc GetGeomType*(this: MeshVS_DeformedDataSource; ID: Standard_Integer;
                 IsElement: Standard_Boolean; Type: var MeshVS_EntityType): Standard_Boolean {.
    noSideEffect, importcpp: "GetGeomType", header: "MeshVS_DeformedDataSource.hxx".}
proc Get3DGeom*(this: MeshVS_DeformedDataSource; ID: Standard_Integer;
               NbNodes: var Standard_Integer;
               Data: var handle[MeshVS_HArray1OfSequenceOfInteger]): Standard_Boolean {.
    noSideEffect, importcpp: "Get3DGeom", header: "MeshVS_DeformedDataSource.hxx".}
proc GetAddr*(this: MeshVS_DeformedDataSource; ID: Standard_Integer;
             IsElement: Standard_Boolean): Standard_Address {.noSideEffect,
    importcpp: "GetAddr", header: "MeshVS_DeformedDataSource.hxx".}
proc GetNodesByElement*(this: MeshVS_DeformedDataSource; ID: Standard_Integer;
                       NodeIDs: var TColStd_Array1OfInteger;
                       NbNodes: var Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "GetNodesByElement",
    header: "MeshVS_DeformedDataSource.hxx".}
proc GetAllNodes*(this: MeshVS_DeformedDataSource): TColStd_PackedMapOfInteger {.
    noSideEffect, importcpp: "GetAllNodes", header: "MeshVS_DeformedDataSource.hxx".}
proc GetAllElements*(this: MeshVS_DeformedDataSource): TColStd_PackedMapOfInteger {.
    noSideEffect, importcpp: "GetAllElements",
    header: "MeshVS_DeformedDataSource.hxx".}
proc GetVectors*(this: MeshVS_DeformedDataSource): MeshVS_DataMapOfIntegerVector {.
    noSideEffect, importcpp: "GetVectors", header: "MeshVS_DeformedDataSource.hxx".}
proc SetVectors*(this: var MeshVS_DeformedDataSource;
                Map: MeshVS_DataMapOfIntegerVector) {.importcpp: "SetVectors",
    header: "MeshVS_DeformedDataSource.hxx".}
proc GetVector*(this: MeshVS_DeformedDataSource; ID: Standard_Integer;
               Vect: var gp_Vec): Standard_Boolean {.noSideEffect,
    importcpp: "GetVector", header: "MeshVS_DeformedDataSource.hxx".}
proc SetVector*(this: var MeshVS_DeformedDataSource; ID: Standard_Integer;
               Vect: gp_Vec) {.importcpp: "SetVector",
                             header: "MeshVS_DeformedDataSource.hxx".}
proc SetNonDeformedDataSource*(this: var MeshVS_DeformedDataSource;
                              theDS: handle[MeshVS_DataSource]) {.
    importcpp: "SetNonDeformedDataSource", header: "MeshVS_DeformedDataSource.hxx".}
proc GetNonDeformedDataSource*(this: MeshVS_DeformedDataSource): handle[
    MeshVS_DataSource] {.noSideEffect, importcpp: "GetNonDeformedDataSource",
                        header: "MeshVS_DeformedDataSource.hxx".}
proc SetMagnify*(this: var MeshVS_DeformedDataSource; theMagnify: Standard_Real) {.
    importcpp: "SetMagnify", header: "MeshVS_DeformedDataSource.hxx".}
proc GetMagnify*(this: MeshVS_DeformedDataSource): Standard_Real {.noSideEffect,
    importcpp: "GetMagnify", header: "MeshVS_DeformedDataSource.hxx".}
type
  MeshVS_DeformedDataSourcebase_type* = MeshVS_DataSource

proc get_type_name*(): cstring {.importcpp: "MeshVS_DeformedDataSource::get_type_name(@)",
                              header: "MeshVS_DeformedDataSource.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "MeshVS_DeformedDataSource::get_type_descriptor(@)",
    header: "MeshVS_DeformedDataSource.hxx".}
proc DynamicType*(this: MeshVS_DeformedDataSource): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "MeshVS_DeformedDataSource.hxx".}