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

discard "forward decl of Vrml_IndexedLineSet"
discard "forward decl of Vrml_IndexedLineSet"
type
  Handle_Vrml_IndexedLineSet* = handle[Vrml_IndexedLineSet]

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
  Vrml_IndexedLineSet* {.importcpp: "Vrml_IndexedLineSet",
                        header: "Vrml_IndexedLineSet.hxx", bycopy.} = object of Standard_Transient


proc constructVrml_IndexedLineSet*(aCoordIndex: handle[TColStd_HArray1OfInteger];
    aMaterialIndex: handle[TColStd_HArray1OfInteger]; aNormalIndex: handle[
    TColStd_HArray1OfInteger]; aTextureCoordIndex: handle[TColStd_HArray1OfInteger]): Vrml_IndexedLineSet {.
    constructor, importcpp: "Vrml_IndexedLineSet(@)",
    header: "Vrml_IndexedLineSet.hxx".}
proc constructVrml_IndexedLineSet*(): Vrml_IndexedLineSet {.constructor,
    importcpp: "Vrml_IndexedLineSet(@)", header: "Vrml_IndexedLineSet.hxx".}
proc SetCoordIndex*(this: var Vrml_IndexedLineSet;
                   aCoordIndex: handle[TColStd_HArray1OfInteger]) {.
    importcpp: "SetCoordIndex", header: "Vrml_IndexedLineSet.hxx".}
proc CoordIndex*(this: Vrml_IndexedLineSet): handle[TColStd_HArray1OfInteger] {.
    noSideEffect, importcpp: "CoordIndex", header: "Vrml_IndexedLineSet.hxx".}
proc SetMaterialIndex*(this: var Vrml_IndexedLineSet;
                      aMaterialIndex: handle[TColStd_HArray1OfInteger]) {.
    importcpp: "SetMaterialIndex", header: "Vrml_IndexedLineSet.hxx".}
proc MaterialIndex*(this: Vrml_IndexedLineSet): handle[TColStd_HArray1OfInteger] {.
    noSideEffect, importcpp: "MaterialIndex", header: "Vrml_IndexedLineSet.hxx".}
proc SetNormalIndex*(this: var Vrml_IndexedLineSet;
                    aNormalIndex: handle[TColStd_HArray1OfInteger]) {.
    importcpp: "SetNormalIndex", header: "Vrml_IndexedLineSet.hxx".}
proc NormalIndex*(this: Vrml_IndexedLineSet): handle[TColStd_HArray1OfInteger] {.
    noSideEffect, importcpp: "NormalIndex", header: "Vrml_IndexedLineSet.hxx".}
proc SetTextureCoordIndex*(this: var Vrml_IndexedLineSet;
                          aTextureCoordIndex: handle[TColStd_HArray1OfInteger]) {.
    importcpp: "SetTextureCoordIndex", header: "Vrml_IndexedLineSet.hxx".}
proc TextureCoordIndex*(this: Vrml_IndexedLineSet): handle[TColStd_HArray1OfInteger] {.
    noSideEffect, importcpp: "TextureCoordIndex", header: "Vrml_IndexedLineSet.hxx".}
proc Print*(this: Vrml_IndexedLineSet; anOStream: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "Print", header: "Vrml_IndexedLineSet.hxx".}
type
  Vrml_IndexedLineSetbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Vrml_IndexedLineSet::get_type_name(@)",
                              header: "Vrml_IndexedLineSet.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Vrml_IndexedLineSet::get_type_descriptor(@)",
    header: "Vrml_IndexedLineSet.hxx".}
proc DynamicType*(this: Vrml_IndexedLineSet): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Vrml_IndexedLineSet.hxx".}