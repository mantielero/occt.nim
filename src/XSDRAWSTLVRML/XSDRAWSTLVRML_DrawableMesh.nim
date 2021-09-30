##  Created on: 2004-06-11
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

discard "forward decl of MeshVS_Mesh"
discard "forward decl of Draw_Display"
discard "forward decl of XSDRAWSTLVRML_DrawableMesh"
discard "forward decl of XSDRAWSTLVRML_DrawableMesh"
type
  HandleC1C1* = Handle[XSDRAWSTLVRML_DrawableMesh]
  XSDRAWSTLVRML_DrawableMesh* {.importcpp: "XSDRAWSTLVRML_DrawableMesh",
                               header: "XSDRAWSTLVRML_DrawableMesh.hxx", bycopy.} = object of DrawDrawable3D


proc constructXSDRAWSTLVRML_DrawableMesh*(aMesh: Handle[MeshVS_Mesh]): XSDRAWSTLVRML_DrawableMesh {.
    constructor, importcpp: "XSDRAWSTLVRML_DrawableMesh(@)",
    header: "XSDRAWSTLVRML_DrawableMesh.hxx".}
proc drawOn*(this: XSDRAWSTLVRML_DrawableMesh; dis: var DrawDisplay) {.noSideEffect,
    importcpp: "DrawOn", header: "XSDRAWSTLVRML_DrawableMesh.hxx".}
proc getMesh*(this: XSDRAWSTLVRML_DrawableMesh): Handle[MeshVS_Mesh] {.noSideEffect,
    importcpp: "GetMesh", header: "XSDRAWSTLVRML_DrawableMesh.hxx".}
type
  XSDRAWSTLVRML_DrawableMeshbaseType* = DrawDrawable3D

proc getTypeName*(): cstring {.importcpp: "XSDRAWSTLVRML_DrawableMesh::get_type_name(@)",
                            header: "XSDRAWSTLVRML_DrawableMesh.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "XSDRAWSTLVRML_DrawableMesh::get_type_descriptor(@)",
    header: "XSDRAWSTLVRML_DrawableMesh.hxx".}
proc dynamicType*(this: XSDRAWSTLVRML_DrawableMesh): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "XSDRAWSTLVRML_DrawableMesh.hxx".}

























