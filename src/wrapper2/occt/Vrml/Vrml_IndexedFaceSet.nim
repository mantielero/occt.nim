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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  ../TColStd/TColStd_HArray1OfInteger, ../Standard/Standard_Transient,
  ../Standard/Standard_OStream

discard "forward decl of Vrml_IndexedFaceSet"
discard "forward decl of Vrml_IndexedFaceSet"
type
  Handle_Vrml_IndexedFaceSet* = handle[Vrml_IndexedFaceSet]

## ! defines a IndexedFaceSet node of VRML specifying geometry shapes.
## ! This node represents a 3D shape formed by constructing faces (polygons) from
## ! vertices located at the current coordinates. IndexedFaceSet uses the indices
## ! in its coordIndex to define polygonal faces. An index of -1 separates faces
## ! (so a -1 at the end of the list is optional).

type
  Vrml_IndexedFaceSet* {.importcpp: "Vrml_IndexedFaceSet",
                        header: "Vrml_IndexedFaceSet.hxx", bycopy.} = object of Standard_Transient


proc constructVrml_IndexedFaceSet*(aCoordIndex: handle[TColStd_HArray1OfInteger];
    aMaterialIndex: handle[TColStd_HArray1OfInteger]; aNormalIndex: handle[
    TColStd_HArray1OfInteger]; aTextureCoordIndex: handle[TColStd_HArray1OfInteger]): Vrml_IndexedFaceSet {.
    constructor, importcpp: "Vrml_IndexedFaceSet(@)",
    header: "Vrml_IndexedFaceSet.hxx".}
proc constructVrml_IndexedFaceSet*(): Vrml_IndexedFaceSet {.constructor,
    importcpp: "Vrml_IndexedFaceSet(@)", header: "Vrml_IndexedFaceSet.hxx".}
proc SetCoordIndex*(this: var Vrml_IndexedFaceSet;
                   aCoordIndex: handle[TColStd_HArray1OfInteger]) {.
    importcpp: "SetCoordIndex", header: "Vrml_IndexedFaceSet.hxx".}
proc CoordIndex*(this: Vrml_IndexedFaceSet): handle[TColStd_HArray1OfInteger] {.
    noSideEffect, importcpp: "CoordIndex", header: "Vrml_IndexedFaceSet.hxx".}
proc SetMaterialIndex*(this: var Vrml_IndexedFaceSet;
                      aMaterialIndex: handle[TColStd_HArray1OfInteger]) {.
    importcpp: "SetMaterialIndex", header: "Vrml_IndexedFaceSet.hxx".}
proc MaterialIndex*(this: Vrml_IndexedFaceSet): handle[TColStd_HArray1OfInteger] {.
    noSideEffect, importcpp: "MaterialIndex", header: "Vrml_IndexedFaceSet.hxx".}
proc SetNormalIndex*(this: var Vrml_IndexedFaceSet;
                    aNormalIndex: handle[TColStd_HArray1OfInteger]) {.
    importcpp: "SetNormalIndex", header: "Vrml_IndexedFaceSet.hxx".}
proc NormalIndex*(this: Vrml_IndexedFaceSet): handle[TColStd_HArray1OfInteger] {.
    noSideEffect, importcpp: "NormalIndex", header: "Vrml_IndexedFaceSet.hxx".}
proc SetTextureCoordIndex*(this: var Vrml_IndexedFaceSet;
                          aTextureCoordIndex: handle[TColStd_HArray1OfInteger]) {.
    importcpp: "SetTextureCoordIndex", header: "Vrml_IndexedFaceSet.hxx".}
proc TextureCoordIndex*(this: Vrml_IndexedFaceSet): handle[TColStd_HArray1OfInteger] {.
    noSideEffect, importcpp: "TextureCoordIndex", header: "Vrml_IndexedFaceSet.hxx".}
proc Print*(this: Vrml_IndexedFaceSet; anOStream: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "Print", header: "Vrml_IndexedFaceSet.hxx".}
type
  Vrml_IndexedFaceSetbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Vrml_IndexedFaceSet::get_type_name(@)",
                              header: "Vrml_IndexedFaceSet.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Vrml_IndexedFaceSet::get_type_descriptor(@)",
    header: "Vrml_IndexedFaceSet.hxx".}
proc DynamicType*(this: Vrml_IndexedFaceSet): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Vrml_IndexedFaceSet.hxx".}