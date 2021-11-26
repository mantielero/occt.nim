##  Created on: 1997-02-11
##  Created by: Alexander BRIVIN and Dmitry TARASOV
##  Copyright (c) 1997-1999 Matra Datavision
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

discard "forward decl of Vrml_Normal"
discard "forward decl of Vrml_Normal"
type
  HandleC1C1* = Handle[VrmlNormal]

## ! defines a Normal node of VRML specifying properties of geometry
## ! and its appearance.
## ! This node defines a set of 3D surface normal vectors to be used by vertex-based shape
## ! nodes (IndexedFaceSet, IndexedLineSet, PointSet) that follow it in the scene graph. This
## ! node does not produce a visible result during rendering; it simply replaces the current
## ! normals in the rendering state for subsequent nodes to use. This node contains one
## ! multiple-valued field that contains the normal vectors.

type
  VrmlNormal* {.importcpp: "Vrml_Normal", header: "Vrml_Normal.hxx", bycopy.} = object of StandardTransient


proc constructVrmlNormal*(aVector: Handle[TColgpHArray1OfVec]): VrmlNormal {.
    constructor, importcpp: "Vrml_Normal(@)", header: "Vrml_Normal.hxx".}
proc constructVrmlNormal*(): VrmlNormal {.constructor, importcpp: "Vrml_Normal(@)",
                                       header: "Vrml_Normal.hxx".}
proc setVector*(this: var VrmlNormal; aVector: Handle[TColgpHArray1OfVec]) {.
    importcpp: "SetVector", header: "Vrml_Normal.hxx".}
proc vector*(this: VrmlNormal): Handle[TColgpHArray1OfVec] {.noSideEffect,
    importcpp: "Vector", header: "Vrml_Normal.hxx".}
proc print*(this: VrmlNormal; anOStream: var StandardOStream): var StandardOStream {.
    noSideEffect, importcpp: "Print", header: "Vrml_Normal.hxx".}
type
  VrmlNormalbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Vrml_Normal::get_type_name(@)",
                            header: "Vrml_Normal.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Vrml_Normal::get_type_descriptor(@)", header: "Vrml_Normal.hxx".}
proc dynamicType*(this: VrmlNormal): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Vrml_Normal.hxx".}

























