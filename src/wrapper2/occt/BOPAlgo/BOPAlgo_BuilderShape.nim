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
  ../Standard/Standard_Handle, BOPAlgo_Algo, ../BRepTools/BRepTools_History,
  ../Standard/Standard_Boolean, ../NCollection/NCollection_BaseAllocator,
  ../TopoDS/TopoDS_Shape, ../TopTools/TopTools_ListOfShape,
  ../TopTools/TopTools_MapOfShape,
  ../TopTools/TopTools_IndexedDataMapOfShapeListOfShape

discard "forward decl of TopoDS_Shape"
type
  BOPAlgo_BuilderShape* {.importcpp: "BOPAlgo_BuilderShape",
                         header: "BOPAlgo_BuilderShape.hxx", bycopy.} = object of BOPAlgo_Algo ##
                                                                                        ## !
                                                                                        ## @name
                                                                                        ## Getting
                                                                                        ## the
                                                                                        ## result
                                                                                        ##
                                                                                        ## !
                                                                                        ## Returns
                                                                                        ## the
                                                                                        ## result
                                                                                        ## of
                                                                                        ## algorithm
                                                                                        ##
                                                                                        ## !
                                                                                        ## @name
                                                                                        ## History
                                                                                        ## methods
                                                                                        ##
                                                                                        ## !
                                                                                        ## Returns
                                                                                        ## the
                                                                                        ## list
                                                                                        ## of
                                                                                        ## shapes
                                                                                        ## Modified
                                                                                        ## from
                                                                                        ## the
                                                                                        ## shape
                                                                                        ## theS.
                                                                                        ##
                                                                                        ## !
                                                                                        ## @name
                                                                                        ## Enabling/Disabling
                                                                                        ## the
                                                                                        ## history
                                                                                        ## collection.
                                                                                        ##
                                                                                        ## !
                                                                                        ## Allows
                                                                                        ## disabling
                                                                                        ## the
                                                                                        ## history
                                                                                        ## collection
                                                                                        ##
                                                                                        ## !
                                                                                        ## @name
                                                                                        ## Constructors
                                                                                        ##
                                                                                        ## !
                                                                                        ## Empty
                                                                                        ## constructor
                                                                                        ##
                                                                                        ## !
                                                                                        ## @name
                                                                                        ## Clearing
                                                                                        ##
                                                                                        ## !
                                                                                        ## Clears
                                                                                        ## the
                                                                                        ## content
                                                                                        ## of
                                                                                        ## the
                                                                                        ## algorithm.
                                                                                        ##
                                                                                        ## !
                                                                                        ## @name
                                                                                        ## Fields
    ## !< Result of the operation
    ## !< Storer for the history shapes
    ## !< Cashed map of all arguments shapes
    ## !< Controls the history filling
    ## !< History tool


proc Shape*(this: BOPAlgo_BuilderShape): TopoDS_Shape {.noSideEffect,
    importcpp: "Shape", header: "BOPAlgo_BuilderShape.hxx".}
proc Modified*(this: var BOPAlgo_BuilderShape; theS: TopoDS_Shape): TopTools_ListOfShape {.
    importcpp: "Modified", header: "BOPAlgo_BuilderShape.hxx".}
proc Generated*(this: var BOPAlgo_BuilderShape; theS: TopoDS_Shape): TopTools_ListOfShape {.
    importcpp: "Generated", header: "BOPAlgo_BuilderShape.hxx".}
proc IsDeleted*(this: var BOPAlgo_BuilderShape; theS: TopoDS_Shape): Standard_Boolean {.
    importcpp: "IsDeleted", header: "BOPAlgo_BuilderShape.hxx".}
proc HasModified*(this: BOPAlgo_BuilderShape): Standard_Boolean {.noSideEffect,
    importcpp: "HasModified", header: "BOPAlgo_BuilderShape.hxx".}
proc HasGenerated*(this: BOPAlgo_BuilderShape): Standard_Boolean {.noSideEffect,
    importcpp: "HasGenerated", header: "BOPAlgo_BuilderShape.hxx".}
proc HasDeleted*(this: BOPAlgo_BuilderShape): Standard_Boolean {.noSideEffect,
    importcpp: "HasDeleted", header: "BOPAlgo_BuilderShape.hxx".}
proc History*(this: var BOPAlgo_BuilderShape): handle[BRepTools_History] {.
    importcpp: "History", header: "BOPAlgo_BuilderShape.hxx".}
proc SetToFillHistory*(this: var BOPAlgo_BuilderShape; theHistFlag: Standard_Boolean) {.
    importcpp: "SetToFillHistory", header: "BOPAlgo_BuilderShape.hxx".}
proc HasHistory*(this: BOPAlgo_BuilderShape): Standard_Boolean {.noSideEffect,
    importcpp: "HasHistory", header: "BOPAlgo_BuilderShape.hxx".}