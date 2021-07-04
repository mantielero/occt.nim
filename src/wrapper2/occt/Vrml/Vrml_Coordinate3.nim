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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../TColgp/TColgp_HArray1OfVec,
  ../Standard/Standard_Transient, ../Standard/Standard_OStream

discard "forward decl of Vrml_Coordinate3"
discard "forward decl of Vrml_Coordinate3"
type
  Handle_Vrml_Coordinate3* = handle[Vrml_Coordinate3]

## ! defines a Coordinate3 node of VRML specifying
## ! properties of geometry and its appearance.
## ! This node defines a set of 3D coordinates to be used by a subsequent IndexedFaceSet,
## ! IndexedLineSet, or PointSet node. This node does not produce a visible result
## ! during rendering; it simply replaces the current coordinates in the rendering
## ! state for subsequent nodes to use.

type
  Vrml_Coordinate3* {.importcpp: "Vrml_Coordinate3",
                     header: "Vrml_Coordinate3.hxx", bycopy.} = object of Standard_Transient


proc constructVrml_Coordinate3*(aPoint: handle[TColgp_HArray1OfVec]): Vrml_Coordinate3 {.
    constructor, importcpp: "Vrml_Coordinate3(@)", header: "Vrml_Coordinate3.hxx".}
proc constructVrml_Coordinate3*(): Vrml_Coordinate3 {.constructor,
    importcpp: "Vrml_Coordinate3(@)", header: "Vrml_Coordinate3.hxx".}
proc SetPoint*(this: var Vrml_Coordinate3; aPoint: handle[TColgp_HArray1OfVec]) {.
    importcpp: "SetPoint", header: "Vrml_Coordinate3.hxx".}
proc Point*(this: Vrml_Coordinate3): handle[TColgp_HArray1OfVec] {.noSideEffect,
    importcpp: "Point", header: "Vrml_Coordinate3.hxx".}
proc Print*(this: Vrml_Coordinate3; anOStream: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "Print", header: "Vrml_Coordinate3.hxx".}
type
  Vrml_Coordinate3base_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Vrml_Coordinate3::get_type_name(@)",
                              header: "Vrml_Coordinate3.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Vrml_Coordinate3::get_type_descriptor(@)",
    header: "Vrml_Coordinate3.hxx".}
proc DynamicType*(this: Vrml_Coordinate3): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Vrml_Coordinate3.hxx".}