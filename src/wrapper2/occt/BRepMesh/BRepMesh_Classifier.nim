##  Created on: 2016-07-07
##  Copyright (c) 2016 OPEN CASCADE SAS
##  Created by: Oleg AGASHIN
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
  ../Standard/Standard, ../Standard/Standard_Macro, ../TopAbs/TopAbs_State,
  ../IMeshData/IMeshData_Types, ../NCollection/NCollection_Handle

discard "forward decl of gp_Pnt2d"
discard "forward decl of CSLib_Class2d"
type
  BRepMesh_Classifier* {.importcpp: "BRepMesh_Classifier",
                        header: "BRepMesh_Classifier.hxx", bycopy.} = object of Standard_Transient ##
                                                                                            ## !
                                                                                            ## Constructor.


proc constructBRepMesh_Classifier*(): BRepMesh_Classifier {.constructor,
    importcpp: "BRepMesh_Classifier(@)", header: "BRepMesh_Classifier.hxx".}
proc destroyBRepMesh_Classifier*(this: var BRepMesh_Classifier) {.
    importcpp: "#.~BRepMesh_Classifier()", header: "BRepMesh_Classifier.hxx".}
proc Perform*(this: BRepMesh_Classifier; thePoint: gp_Pnt2d): TopAbs_State {.
    noSideEffect, importcpp: "Perform", header: "BRepMesh_Classifier.hxx".}
proc RegisterWire*(this: var BRepMesh_Classifier;
                  theWire: NCollection_Sequence[ptr gp_Pnt2d];
                  theTolUV: pair[Standard_Real, Standard_Real];
                  theRangeU: pair[Standard_Real, Standard_Real];
                  theRangeV: pair[Standard_Real, Standard_Real]) {.
    importcpp: "RegisterWire", header: "BRepMesh_Classifier.hxx".}
type
  BRepMesh_Classifierbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "BRepMesh_Classifier::get_type_name(@)",
                              header: "BRepMesh_Classifier.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BRepMesh_Classifier::get_type_descriptor(@)",
    header: "BRepMesh_Classifier.hxx".}
proc DynamicType*(this: BRepMesh_Classifier): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "BRepMesh_Classifier.hxx".}