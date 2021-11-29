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

discard "forward decl of TopoDS_Shape"
type
  BOPAlgoBuilderShape* {.importcpp: "BOPAlgo_BuilderShape",
                        header: "BOPAlgo_BuilderShape.hxx", bycopy.} = object of BOPAlgoAlgo ##
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


proc shape*(this: BOPAlgoBuilderShape): TopoDS_Shape {.noSideEffect, cdecl,
    importcpp: "Shape", header: "BOPAlgo_BuilderShape.hxx".}
proc modified*(this: var BOPAlgoBuilderShape; theS: TopoDS_Shape): TopToolsListOfShape {.
    cdecl, importcpp: "Modified", header: "BOPAlgo_BuilderShape.hxx".}
proc generated*(this: var BOPAlgoBuilderShape; theS: TopoDS_Shape): TopToolsListOfShape {.
    cdecl, importcpp: "Generated", header: "BOPAlgo_BuilderShape.hxx".}
proc isDeleted*(this: var BOPAlgoBuilderShape; theS: TopoDS_Shape): bool {.cdecl,
    importcpp: "IsDeleted", header: "BOPAlgo_BuilderShape.hxx".}
proc hasModified*(this: BOPAlgoBuilderShape): bool {.noSideEffect, cdecl,
    importcpp: "HasModified", header: "BOPAlgo_BuilderShape.hxx".}
proc hasGenerated*(this: BOPAlgoBuilderShape): bool {.noSideEffect, cdecl,
    importcpp: "HasGenerated", header: "BOPAlgo_BuilderShape.hxx".}
proc hasDeleted*(this: BOPAlgoBuilderShape): bool {.noSideEffect, cdecl,
    importcpp: "HasDeleted", header: "BOPAlgo_BuilderShape.hxx".}
#proc history*(this: var BOPAlgoBuilderShape): Handle[BRepToolsHistory] {.cdecl,
#    importcpp: "History", header: "BOPAlgo_BuilderShape.hxx".}
proc setToFillHistory*(this: var BOPAlgoBuilderShape; theHistFlag: bool) {.cdecl,
    importcpp: "SetToFillHistory", header: "BOPAlgo_BuilderShape.hxx".}
proc hasHistory*(this: BOPAlgoBuilderShape): bool {.noSideEffect, cdecl,
    importcpp: "HasHistory", header: "BOPAlgo_BuilderShape.hxx".}