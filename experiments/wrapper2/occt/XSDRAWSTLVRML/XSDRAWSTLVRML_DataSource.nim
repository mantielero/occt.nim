##  Created on: 2004-06-10
##  Created by: Alexander SOLOVYOV
##  Copyright (c) 2004-2014 OPEN CASCADE SAS
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
  ../TColStd/TColStd_PackedMapOfInteger, ../TColStd/TColStd_HArray2OfInteger,
  ../TColStd/TColStd_HArray2OfReal, ../MeshVS/MeshVS_DataSource,
  ../Standard/Standard_Boolean, ../Standard/Standard_Integer,
  ../TColStd/TColStd_Array1OfReal, ../MeshVS/MeshVS_EntityType,
  ../Standard/Standard_Address, ../TColStd/TColStd_Array1OfInteger,
  ../Standard/Standard_Real, ../Poly/Poly_Triangulation

discard "forward decl of XSDRAWSTLVRML_DataSource"
discard "forward decl of XSDRAWSTLVRML_DataSource"
type
  Handle_XSDRAWSTLVRML_DataSource* = handle[XSDRAWSTLVRML_DataSource]

## ! The sample DataSource for working with STLMesh_Mesh

type
  XSDRAWSTLVRML_DataSource* {.importcpp: "XSDRAWSTLVRML_DataSource",
                             header: "XSDRAWSTLVRML_DataSource.hxx", bycopy.} = object of MeshVS_DataSource ##
                                                                                                     ## !
                                                                                                     ## Constructor


proc constructXSDRAWSTLVRML_DataSource*(aMesh: handle[Poly_Triangulation]): XSDRAWSTLVRML_DataSource {.
    constructor, importcpp: "XSDRAWSTLVRML_DataSource(@)",
    header: "XSDRAWSTLVRML_DataSource.hxx".}
proc GetGeom*(this: XSDRAWSTLVRML_DataSource; ID: Standard_Integer;
             IsElement: Standard_Boolean; Coords: var TColStd_Array1OfReal;
             NbNodes: var Standard_Integer; Type: var MeshVS_EntityType): Standard_Boolean {.
    noSideEffect, importcpp: "GetGeom", header: "XSDRAWSTLVRML_DataSource.hxx".}
proc GetGeomType*(this: XSDRAWSTLVRML_DataSource; ID: Standard_Integer;
                 IsElement: Standard_Boolean; Type: var MeshVS_EntityType): Standard_Boolean {.
    noSideEffect, importcpp: "GetGeomType", header: "XSDRAWSTLVRML_DataSource.hxx".}
proc GetAddr*(this: XSDRAWSTLVRML_DataSource; ID: Standard_Integer;
             IsElement: Standard_Boolean): Standard_Address {.noSideEffect,
    importcpp: "GetAddr", header: "XSDRAWSTLVRML_DataSource.hxx".}
proc GetNodesByElement*(this: XSDRAWSTLVRML_DataSource; ID: Standard_Integer;
                       NodeIDs: var TColStd_Array1OfInteger;
                       NbNodes: var Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "GetNodesByElement",
    header: "XSDRAWSTLVRML_DataSource.hxx".}
proc GetAllNodes*(this: XSDRAWSTLVRML_DataSource): TColStd_PackedMapOfInteger {.
    noSideEffect, importcpp: "GetAllNodes", header: "XSDRAWSTLVRML_DataSource.hxx".}
proc GetAllElements*(this: XSDRAWSTLVRML_DataSource): TColStd_PackedMapOfInteger {.
    noSideEffect, importcpp: "GetAllElements",
    header: "XSDRAWSTLVRML_DataSource.hxx".}
proc GetNormal*(this: XSDRAWSTLVRML_DataSource; Id: Standard_Integer;
               Max: Standard_Integer; nx: var Standard_Real; ny: var Standard_Real;
               nz: var Standard_Real): Standard_Boolean {.noSideEffect,
    importcpp: "GetNormal", header: "XSDRAWSTLVRML_DataSource.hxx".}
type
  XSDRAWSTLVRML_DataSourcebase_type* = MeshVS_DataSource

proc get_type_name*(): cstring {.importcpp: "XSDRAWSTLVRML_DataSource::get_type_name(@)",
                              header: "XSDRAWSTLVRML_DataSource.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "XSDRAWSTLVRML_DataSource::get_type_descriptor(@)",
    header: "XSDRAWSTLVRML_DataSource.hxx".}
proc DynamicType*(this: XSDRAWSTLVRML_DataSource): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "XSDRAWSTLVRML_DataSource.hxx".}