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

discard "forward decl of XSDRAWSTLVRML_DataSource"
discard "forward decl of XSDRAWSTLVRML_DataSource"
type
  HandleC1C1* = Handle[XSDRAWSTLVRML_DataSource]

## ! The sample DataSource for working with STLMesh_Mesh

type
  XSDRAWSTLVRML_DataSource* {.importcpp: "XSDRAWSTLVRML_DataSource",
                             header: "XSDRAWSTLVRML_DataSource.hxx", bycopy.} = object of MeshVS_DataSource ##
                                                                                                     ## !
                                                                                                     ## Constructor


proc constructXSDRAWSTLVRML_DataSource*(aMesh: Handle[PolyTriangulation]): XSDRAWSTLVRML_DataSource {.
    constructor, importcpp: "XSDRAWSTLVRML_DataSource(@)",
    header: "XSDRAWSTLVRML_DataSource.hxx".}
proc getGeom*(this: XSDRAWSTLVRML_DataSource; id: cint; isElement: bool;
             coords: var TColStdArray1OfReal; nbNodes: var cint;
             `type`: var MeshVS_EntityType): bool {.noSideEffect,
    importcpp: "GetGeom", header: "XSDRAWSTLVRML_DataSource.hxx".}
proc getGeomType*(this: XSDRAWSTLVRML_DataSource; id: cint; isElement: bool;
                 `type`: var MeshVS_EntityType): bool {.noSideEffect,
    importcpp: "GetGeomType", header: "XSDRAWSTLVRML_DataSource.hxx".}
proc getAddr*(this: XSDRAWSTLVRML_DataSource; id: cint; isElement: bool): StandardAddress {.
    noSideEffect, importcpp: "GetAddr", header: "XSDRAWSTLVRML_DataSource.hxx".}
proc getNodesByElement*(this: XSDRAWSTLVRML_DataSource; id: cint;
                       nodeIDs: var TColStdArray1OfInteger; nbNodes: var cint): bool {.
    noSideEffect, importcpp: "GetNodesByElement",
    header: "XSDRAWSTLVRML_DataSource.hxx".}
proc getAllNodes*(this: XSDRAWSTLVRML_DataSource): TColStdPackedMapOfInteger {.
    noSideEffect, importcpp: "GetAllNodes", header: "XSDRAWSTLVRML_DataSource.hxx".}
proc getAllElements*(this: XSDRAWSTLVRML_DataSource): TColStdPackedMapOfInteger {.
    noSideEffect, importcpp: "GetAllElements",
    header: "XSDRAWSTLVRML_DataSource.hxx".}
proc getNormal*(this: XSDRAWSTLVRML_DataSource; id: cint; max: cint; nx: var cfloat;
               ny: var cfloat; nz: var cfloat): bool {.noSideEffect,
    importcpp: "GetNormal", header: "XSDRAWSTLVRML_DataSource.hxx".}
type
  XSDRAWSTLVRML_DataSourcebaseType* = MeshVS_DataSource

proc getTypeName*(): cstring {.importcpp: "XSDRAWSTLVRML_DataSource::get_type_name(@)",
                            header: "XSDRAWSTLVRML_DataSource.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "XSDRAWSTLVRML_DataSource::get_type_descriptor(@)",
    header: "XSDRAWSTLVRML_DataSource.hxx".}
proc dynamicType*(this: XSDRAWSTLVRML_DataSource): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "XSDRAWSTLVRML_DataSource.hxx".}

























