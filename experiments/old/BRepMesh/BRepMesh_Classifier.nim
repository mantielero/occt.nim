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

discard "forward decl of gp_Pnt2d"
discard "forward decl of CSLib_Class2d"
type
  BRepMeshClassifier* {.importcpp: "BRepMesh_Classifier",
                       header: "BRepMesh_Classifier.hxx", bycopy.} = object of StandardTransient ##
                                                                                          ## !
                                                                                          ## Constructor.


proc constructBRepMeshClassifier*(): BRepMeshClassifier {.constructor,
    importcpp: "BRepMesh_Classifier(@)", header: "BRepMesh_Classifier.hxx".}
proc destroyBRepMeshClassifier*(this: var BRepMeshClassifier) {.
    importcpp: "#.~BRepMesh_Classifier()", header: "BRepMesh_Classifier.hxx".}
proc perform*(this: BRepMeshClassifier; thePoint: Pnt2d): TopAbsState {.noSideEffect,
    importcpp: "Perform", header: "BRepMesh_Classifier.hxx".}
proc registerWire*(this: var BRepMeshClassifier;
                  theWire: NCollectionSequence[ptr Pnt2d];
                  theTolUV: Pair[StandardReal, StandardReal];
                  theRangeU: Pair[StandardReal, StandardReal];
                  theRangeV: Pair[StandardReal, StandardReal]) {.
    importcpp: "RegisterWire", header: "BRepMesh_Classifier.hxx".}
type
  BRepMeshClassifierbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "BRepMesh_Classifier::get_type_name(@)",
                            header: "BRepMesh_Classifier.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRepMesh_Classifier::get_type_descriptor(@)",
    header: "BRepMesh_Classifier.hxx".}
proc dynamicType*(this: BRepMeshClassifier): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "BRepMesh_Classifier.hxx".}