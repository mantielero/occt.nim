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

discard "forward decl of Vrml_IndexedFaceSet"
discard "forward decl of Vrml_IndexedFaceSet"
type
  HandleC1C1* = Handle[VrmlIndexedFaceSet]

## ! defines a IndexedFaceSet node of VRML specifying geometry shapes.
## ! This node represents a 3D shape formed by constructing faces (polygons) from
## ! vertices located at the current coordinates. IndexedFaceSet uses the indices
## ! in its coordIndex to define polygonal faces. An index of -1 separates faces
## ! (so a -1 at the end of the list is optional).

type
  VrmlIndexedFaceSet* {.importcpp: "Vrml_IndexedFaceSet",
                       header: "Vrml_IndexedFaceSet.hxx", bycopy.} = object of StandardTransient


proc constructVrmlIndexedFaceSet*(aCoordIndex: Handle[TColStdHArray1OfInteger];
    aMaterialIndex: Handle[TColStdHArray1OfInteger];
                                 aNormalIndex: Handle[TColStdHArray1OfInteger];
    aTextureCoordIndex: Handle[TColStdHArray1OfInteger]): VrmlIndexedFaceSet {.
    constructor, importcpp: "Vrml_IndexedFaceSet(@)",
    header: "Vrml_IndexedFaceSet.hxx".}
proc constructVrmlIndexedFaceSet*(): VrmlIndexedFaceSet {.constructor,
    importcpp: "Vrml_IndexedFaceSet(@)", header: "Vrml_IndexedFaceSet.hxx".}
proc setCoordIndex*(this: var VrmlIndexedFaceSet;
                   aCoordIndex: Handle[TColStdHArray1OfInteger]) {.
    importcpp: "SetCoordIndex", header: "Vrml_IndexedFaceSet.hxx".}
proc coordIndex*(this: VrmlIndexedFaceSet): Handle[TColStdHArray1OfInteger] {.
    noSideEffect, importcpp: "CoordIndex", header: "Vrml_IndexedFaceSet.hxx".}
proc setMaterialIndex*(this: var VrmlIndexedFaceSet;
                      aMaterialIndex: Handle[TColStdHArray1OfInteger]) {.
    importcpp: "SetMaterialIndex", header: "Vrml_IndexedFaceSet.hxx".}
proc materialIndex*(this: VrmlIndexedFaceSet): Handle[TColStdHArray1OfInteger] {.
    noSideEffect, importcpp: "MaterialIndex", header: "Vrml_IndexedFaceSet.hxx".}
proc setNormalIndex*(this: var VrmlIndexedFaceSet;
                    aNormalIndex: Handle[TColStdHArray1OfInteger]) {.
    importcpp: "SetNormalIndex", header: "Vrml_IndexedFaceSet.hxx".}
proc normalIndex*(this: VrmlIndexedFaceSet): Handle[TColStdHArray1OfInteger] {.
    noSideEffect, importcpp: "NormalIndex", header: "Vrml_IndexedFaceSet.hxx".}
proc setTextureCoordIndex*(this: var VrmlIndexedFaceSet;
                          aTextureCoordIndex: Handle[TColStdHArray1OfInteger]) {.
    importcpp: "SetTextureCoordIndex", header: "Vrml_IndexedFaceSet.hxx".}
proc textureCoordIndex*(this: VrmlIndexedFaceSet): Handle[TColStdHArray1OfInteger] {.
    noSideEffect, importcpp: "TextureCoordIndex", header: "Vrml_IndexedFaceSet.hxx".}
proc print*(this: VrmlIndexedFaceSet; anOStream: var StandardOStream): var StandardOStream {.
    noSideEffect, importcpp: "Print", header: "Vrml_IndexedFaceSet.hxx".}
type
  VrmlIndexedFaceSetbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Vrml_IndexedFaceSet::get_type_name(@)",
                            header: "Vrml_IndexedFaceSet.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Vrml_IndexedFaceSet::get_type_descriptor(@)",
    header: "Vrml_IndexedFaceSet.hxx".}
proc dynamicType*(this: VrmlIndexedFaceSet): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Vrml_IndexedFaceSet.hxx".}

























