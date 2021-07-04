##  Created on: 2014-08-04
##  Created by: Artem NOVIKOV
##  Copyright (c) 2014 OPEN CASCADE SAS
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
  ../TColStd/TColStd_PackedMapOfInteger, ../TColStd/TColStd_HArray1OfInteger,
  ../TColStd/TColStd_HArray2OfReal, ../TColStd/TColStd_HArray2OfInteger,
  ../MeshVS/MeshVS_DataSource, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer, ../TColStd/TColStd_Array1OfReal,
  ../MeshVS/MeshVS_EntityType, ../MeshVS/MeshVS_HArray1OfSequenceOfInteger,
  ../Standard/Standard_Address, ../TColStd/TColStd_Array1OfInteger,
  ../Standard/Standard_Real

discard "forward decl of XSDRAWSTLVRML_DataSource3D"
discard "forward decl of XSDRAWSTLVRML_DataSource3D"
type
  Handle_XSDRAWSTLVRML_DataSource3D* = handle[XSDRAWSTLVRML_DataSource3D]

## ! The sample DataSource3D for working with STLMesh_Mesh

type
  XSDRAWSTLVRML_DataSource3D* {.importcpp: "XSDRAWSTLVRML_DataSource3D",
                               header: "XSDRAWSTLVRML_DataSource3D.hxx", bycopy.} = object of MeshVS_DataSource ##
                                                                                                         ## !
                                                                                                         ## Constructor


proc constructXSDRAWSTLVRML_DataSource3D*(): XSDRAWSTLVRML_DataSource3D {.
    constructor, importcpp: "XSDRAWSTLVRML_DataSource3D(@)",
    header: "XSDRAWSTLVRML_DataSource3D.hxx".}
proc GetGeom*(this: XSDRAWSTLVRML_DataSource3D; theID: Standard_Integer;
             theIsElement: Standard_Boolean; theCoords: var TColStd_Array1OfReal;
             theNbNodes: var Standard_Integer; theType: var MeshVS_EntityType): Standard_Boolean {.
    noSideEffect, importcpp: "GetGeom", header: "XSDRAWSTLVRML_DataSource3D.hxx".}
proc Get3DGeom*(this: XSDRAWSTLVRML_DataSource3D; theID: Standard_Integer;
               theNbNodes: var Standard_Integer;
               theData: var handle[MeshVS_HArray1OfSequenceOfInteger]): Standard_Boolean {.
    noSideEffect, importcpp: "Get3DGeom", header: "XSDRAWSTLVRML_DataSource3D.hxx".}
proc GetGeomType*(this: XSDRAWSTLVRML_DataSource3D; theID: Standard_Integer;
                 theIsElement: Standard_Boolean; theType: var MeshVS_EntityType): Standard_Boolean {.
    noSideEffect, importcpp: "GetGeomType",
    header: "XSDRAWSTLVRML_DataSource3D.hxx".}
proc GetAddr*(this: XSDRAWSTLVRML_DataSource3D; theID: Standard_Integer;
             theIsElement: Standard_Boolean): Standard_Address {.noSideEffect,
    importcpp: "GetAddr", header: "XSDRAWSTLVRML_DataSource3D.hxx".}
proc GetNodesByElement*(this: XSDRAWSTLVRML_DataSource3D; theID: Standard_Integer;
                       theNodeIDs: var TColStd_Array1OfInteger;
                       theNbNodes: var Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "GetNodesByElement",
    header: "XSDRAWSTLVRML_DataSource3D.hxx".}
proc GetAllNodes*(this: XSDRAWSTLVRML_DataSource3D): TColStd_PackedMapOfInteger {.
    noSideEffect, importcpp: "GetAllNodes",
    header: "XSDRAWSTLVRML_DataSource3D.hxx".}
proc GetAllElements*(this: XSDRAWSTLVRML_DataSource3D): TColStd_PackedMapOfInteger {.
    noSideEffect, importcpp: "GetAllElements",
    header: "XSDRAWSTLVRML_DataSource3D.hxx".}
proc GetNormal*(this: XSDRAWSTLVRML_DataSource3D; theID: Standard_Integer;
               theMax: Standard_Integer; theNx: var Standard_Real;
               theNy: var Standard_Real; theNz: var Standard_Real): Standard_Boolean {.
    noSideEffect, importcpp: "GetNormal", header: "XSDRAWSTLVRML_DataSource3D.hxx".}
type
  XSDRAWSTLVRML_DataSource3Dbase_type* = MeshVS_DataSource

proc get_type_name*(): cstring {.importcpp: "XSDRAWSTLVRML_DataSource3D::get_type_name(@)",
                              header: "XSDRAWSTLVRML_DataSource3D.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "XSDRAWSTLVRML_DataSource3D::get_type_descriptor(@)",
    header: "XSDRAWSTLVRML_DataSource3D.hxx".}
proc DynamicType*(this: XSDRAWSTLVRML_DataSource3D): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "XSDRAWSTLVRML_DataSource3D.hxx".}