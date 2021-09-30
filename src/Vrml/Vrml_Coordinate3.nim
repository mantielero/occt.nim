##  Created on: 1997-02-05
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

discard "forward decl of Vrml_Coordinate3"
discard "forward decl of Vrml_Coordinate3"
type
  HandleC1C1* = Handle[VrmlCoordinate3]

## ! defines a Coordinate3 node of VRML specifying
## ! properties of geometry and its appearance.
## ! This node defines a set of 3D coordinates to be used by a subsequent IndexedFaceSet,
## ! IndexedLineSet, or PointSet node. This node does not produce a visible result
## ! during rendering; it simply replaces the current coordinates in the rendering
## ! state for subsequent nodes to use.

type
  VrmlCoordinate3* {.importcpp: "Vrml_Coordinate3", header: "Vrml_Coordinate3.hxx",
                    bycopy.} = object of StandardTransient


proc constructVrmlCoordinate3*(aPoint: Handle[TColgpHArray1OfVec]): VrmlCoordinate3 {.
    constructor, importcpp: "Vrml_Coordinate3(@)", header: "Vrml_Coordinate3.hxx".}
proc constructVrmlCoordinate3*(): VrmlCoordinate3 {.constructor,
    importcpp: "Vrml_Coordinate3(@)", header: "Vrml_Coordinate3.hxx".}
proc setPoint*(this: var VrmlCoordinate3; aPoint: Handle[TColgpHArray1OfVec]) {.
    importcpp: "SetPoint", header: "Vrml_Coordinate3.hxx".}
proc point*(this: VrmlCoordinate3): Handle[TColgpHArray1OfVec] {.noSideEffect,
    importcpp: "Point", header: "Vrml_Coordinate3.hxx".}
proc print*(this: VrmlCoordinate3; anOStream: var StandardOStream): var StandardOStream {.
    noSideEffect, importcpp: "Print", header: "Vrml_Coordinate3.hxx".}
type
  VrmlCoordinate3baseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Vrml_Coordinate3::get_type_name(@)",
                            header: "Vrml_Coordinate3.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Vrml_Coordinate3::get_type_descriptor(@)",
    header: "Vrml_Coordinate3.hxx".}
proc dynamicType*(this: VrmlCoordinate3): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Vrml_Coordinate3.hxx".}

























