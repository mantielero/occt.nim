##  Created on: 1996-12-26
##  Created by: Alexander BRIVIN and Dmitry TARASOV
##  Copyright (c) 1996-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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

discard "forward decl of Vrml_IndexedLineSet"
discard "forward decl of Vrml_IndexedLineSet"
type
  HandleC1C1* = Handle[VrmlIndexedLineSet]

## ! defines a IndexedLineSet node of VRML specifying geometry shapes.
## ! This node represents a 3D shape formed by constructing polylines from vertices
## ! located at the current coordinates. IndexedLineSet uses the indices in its coordIndex
## ! field to specify the polylines. An index of -1 separates one polyline from the next
## ! (thus, a final -1 is optional). the current polyline has ended and the next one begins.
## ! Treatment of the current material and normal binding is as follows: The PER_PART binding
## ! specifies a material or normal for each segment of the line. The PER_FACE binding
## ! specifies a material or normal for each polyline. PER_VERTEX specifies a material or
## ! normal for each vertex. The corresponding _INDEXED bindings are the same, but use
## ! the materialIndex or normalIndex indices. The DEFAULT material binding is equal
## ! to OVERALL. The DEFAULT normal binding is equal to  PER_VERTEX_INDEXED;
## ! if insufficient normals exist in the state, the lines will be drawn unlit. The same
## ! rules for texture coordinate generation as IndexedFaceSet are used.

type
  VrmlIndexedLineSet* {.importcpp: "Vrml_IndexedLineSet",
                       header: "Vrml_IndexedLineSet.hxx", bycopy.} = object of StandardTransient


proc constructVrmlIndexedLineSet*(aCoordIndex: Handle[TColStdHArray1OfInteger];
    aMaterialIndex: Handle[TColStdHArray1OfInteger];
                                 aNormalIndex: Handle[TColStdHArray1OfInteger];
    aTextureCoordIndex: Handle[TColStdHArray1OfInteger]): VrmlIndexedLineSet {.
    constructor, importcpp: "Vrml_IndexedLineSet(@)",
    header: "Vrml_IndexedLineSet.hxx".}
proc constructVrmlIndexedLineSet*(): VrmlIndexedLineSet {.constructor,
    importcpp: "Vrml_IndexedLineSet(@)", header: "Vrml_IndexedLineSet.hxx".}
proc setCoordIndex*(this: var VrmlIndexedLineSet;
                   aCoordIndex: Handle[TColStdHArray1OfInteger]) {.
    importcpp: "SetCoordIndex", header: "Vrml_IndexedLineSet.hxx".}
proc coordIndex*(this: VrmlIndexedLineSet): Handle[TColStdHArray1OfInteger] {.
    noSideEffect, importcpp: "CoordIndex", header: "Vrml_IndexedLineSet.hxx".}
proc setMaterialIndex*(this: var VrmlIndexedLineSet;
                      aMaterialIndex: Handle[TColStdHArray1OfInteger]) {.
    importcpp: "SetMaterialIndex", header: "Vrml_IndexedLineSet.hxx".}
proc materialIndex*(this: VrmlIndexedLineSet): Handle[TColStdHArray1OfInteger] {.
    noSideEffect, importcpp: "MaterialIndex", header: "Vrml_IndexedLineSet.hxx".}
proc setNormalIndex*(this: var VrmlIndexedLineSet;
                    aNormalIndex: Handle[TColStdHArray1OfInteger]) {.
    importcpp: "SetNormalIndex", header: "Vrml_IndexedLineSet.hxx".}
proc normalIndex*(this: VrmlIndexedLineSet): Handle[TColStdHArray1OfInteger] {.
    noSideEffect, importcpp: "NormalIndex", header: "Vrml_IndexedLineSet.hxx".}
proc setTextureCoordIndex*(this: var VrmlIndexedLineSet;
                          aTextureCoordIndex: Handle[TColStdHArray1OfInteger]) {.
    importcpp: "SetTextureCoordIndex", header: "Vrml_IndexedLineSet.hxx".}
proc textureCoordIndex*(this: VrmlIndexedLineSet): Handle[TColStdHArray1OfInteger] {.
    noSideEffect, importcpp: "TextureCoordIndex", header: "Vrml_IndexedLineSet.hxx".}
proc print*(this: VrmlIndexedLineSet; anOStream: var StandardOStream): var StandardOStream {.
    noSideEffect, importcpp: "Print", header: "Vrml_IndexedLineSet.hxx".}
type
  VrmlIndexedLineSetbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Vrml_IndexedLineSet::get_type_name(@)",
                            header: "Vrml_IndexedLineSet.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Vrml_IndexedLineSet::get_type_descriptor(@)",
    header: "Vrml_IndexedLineSet.hxx".}
proc dynamicType*(this: VrmlIndexedLineSet): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Vrml_IndexedLineSet.hxx".}

























