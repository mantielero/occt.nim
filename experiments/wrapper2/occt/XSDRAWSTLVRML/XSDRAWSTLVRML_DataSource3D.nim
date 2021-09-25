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

discard "forward decl of XSDRAWSTLVRML_DataSource3D"
discard "forward decl of XSDRAWSTLVRML_DataSource3D"
type
  HandleXSDRAWSTLVRML_DataSource3D* = Handle[XSDRAWSTLVRML_DataSource3D]

## ! The sample DataSource3D for working with STLMesh_Mesh

type
  XSDRAWSTLVRML_DataSource3D* {.importcpp: "XSDRAWSTLVRML_DataSource3D",
                               header: "XSDRAWSTLVRML_DataSource3D.hxx", bycopy.} = object of MeshVS_DataSource ##
                                                                                                         ## !
                                                                                                         ## Constructor


proc constructXSDRAWSTLVRML_DataSource3D*(): XSDRAWSTLVRML_DataSource3D {.
    constructor, importcpp: "XSDRAWSTLVRML_DataSource3D(@)",
    header: "XSDRAWSTLVRML_DataSource3D.hxx".}
proc getGeom*(this: XSDRAWSTLVRML_DataSource3D; theID: int; theIsElement: bool;
             theCoords: var TColStdArray1OfReal; theNbNodes: var int;
             theType: var MeshVS_EntityType): bool {.noSideEffect,
    importcpp: "GetGeom", header: "XSDRAWSTLVRML_DataSource3D.hxx".}
proc get3DGeom*(this: XSDRAWSTLVRML_DataSource3D; theID: int; theNbNodes: var int;
               theData: var Handle[MeshVS_HArray1OfSequenceOfInteger]): bool {.
    noSideEffect, importcpp: "Get3DGeom", header: "XSDRAWSTLVRML_DataSource3D.hxx".}
proc getGeomType*(this: XSDRAWSTLVRML_DataSource3D; theID: int; theIsElement: bool;
                 theType: var MeshVS_EntityType): bool {.noSideEffect,
    importcpp: "GetGeomType", header: "XSDRAWSTLVRML_DataSource3D.hxx".}
proc getAddr*(this: XSDRAWSTLVRML_DataSource3D; theID: int; theIsElement: bool): StandardAddress {.
    noSideEffect, importcpp: "GetAddr", header: "XSDRAWSTLVRML_DataSource3D.hxx".}
proc getNodesByElement*(this: XSDRAWSTLVRML_DataSource3D; theID: int;
                       theNodeIDs: var TColStdArray1OfInteger; theNbNodes: var int): bool {.
    noSideEffect, importcpp: "GetNodesByElement",
    header: "XSDRAWSTLVRML_DataSource3D.hxx".}
proc getAllNodes*(this: XSDRAWSTLVRML_DataSource3D): TColStdPackedMapOfInteger {.
    noSideEffect, importcpp: "GetAllNodes",
    header: "XSDRAWSTLVRML_DataSource3D.hxx".}
proc getAllElements*(this: XSDRAWSTLVRML_DataSource3D): TColStdPackedMapOfInteger {.
    noSideEffect, importcpp: "GetAllElements",
    header: "XSDRAWSTLVRML_DataSource3D.hxx".}
proc getNormal*(this: XSDRAWSTLVRML_DataSource3D; theID: int; theMax: int;
               theNx: var float; theNy: var float; theNz: var float): bool {.noSideEffect,
    importcpp: "GetNormal", header: "XSDRAWSTLVRML_DataSource3D.hxx".}
type
  XSDRAWSTLVRML_DataSource3DbaseType* = MeshVS_DataSource

proc getTypeName*(): cstring {.importcpp: "XSDRAWSTLVRML_DataSource3D::get_type_name(@)",
                            header: "XSDRAWSTLVRML_DataSource3D.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "XSDRAWSTLVRML_DataSource3D::get_type_descriptor(@)",
    header: "XSDRAWSTLVRML_DataSource3D.hxx".}
proc dynamicType*(this: XSDRAWSTLVRML_DataSource3D): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "XSDRAWSTLVRML_DataSource3D.hxx".}
