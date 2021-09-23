##  Created by: Peter KURNEV
##  Copyright (c) 2010-2014 OPEN CASCADE SAS
##  Copyright (c) 2007-2010 CEA/DEN, EDF R&D, OPEN CASCADE
##  Copyright (c) 2003-2007 OPEN CASCADE, EADS/CCR, LIP6, CEA/DEN, CEDRAT,
##                          EDF R&D, LEG, PRINCIPIA R&D, BUREAU VERITAS
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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, BOPAlgo_Algo,
  ../NCollection/NCollection_BaseAllocator, ../TopTools/TopTools_ListOfShape,
  ../TopTools/TopTools_IndexedMapOfOrientedShape

discard "forward decl of IntTools_Context"
type
  BOPAlgo_BuilderArea* {.importcpp: "BOPAlgo_BuilderArea",
                        header: "BOPAlgo_BuilderArea.hxx", bycopy.} = object of BOPAlgo_Algo ##
                                                                                      ## !
                                                                                      ## Sets
                                                                                      ## the
                                                                                      ## context
                                                                                      ## for
                                                                                      ## the
                                                                                      ## algorithms


proc SetContext*(this: var BOPAlgo_BuilderArea; theContext: handle[IntTools_Context]) {.
    importcpp: "SetContext", header: "BOPAlgo_BuilderArea.hxx".}
proc Shapes*(this: BOPAlgo_BuilderArea): TopTools_ListOfShape {.noSideEffect,
    importcpp: "Shapes", header: "BOPAlgo_BuilderArea.hxx".}
proc SetShapes*(this: var BOPAlgo_BuilderArea; theLS: TopTools_ListOfShape) {.
    importcpp: "SetShapes", header: "BOPAlgo_BuilderArea.hxx".}
proc Loops*(this: BOPAlgo_BuilderArea): TopTools_ListOfShape {.noSideEffect,
    importcpp: "Loops", header: "BOPAlgo_BuilderArea.hxx".}
proc Areas*(this: BOPAlgo_BuilderArea): TopTools_ListOfShape {.noSideEffect,
    importcpp: "Areas", header: "BOPAlgo_BuilderArea.hxx".}
proc SetAvoidInternalShapes*(this: var BOPAlgo_BuilderArea;
                            theAvoidInternal: Standard_Boolean) {.
    importcpp: "SetAvoidInternalShapes", header: "BOPAlgo_BuilderArea.hxx".}
proc IsAvoidInternalShapes*(this: BOPAlgo_BuilderArea): Standard_Boolean {.
    noSideEffect, importcpp: "IsAvoidInternalShapes",
    header: "BOPAlgo_BuilderArea.hxx".}