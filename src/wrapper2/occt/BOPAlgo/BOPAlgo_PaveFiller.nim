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

discard "forward decl of IntTools_Context"
discard "forward decl of BOPDS_DS"
discard "forward decl of BOPAlgo_SectionAttribute"
discard "forward decl of BOPDS_PaveBlock"
discard "forward decl of BOPDS_CommonBlock"
discard "forward decl of gp_Pnt"
discard "forward decl of BOPDS_Curve"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Face"
type
  BOPAlgoPaveFiller* {.importcpp: "BOPAlgo_PaveFiller",
                      header: "BOPAlgo_PaveFiller.hxx", bycopy.} = object of BOPAlgoAlgo ##
                                                                                  ## !
                                                                                  ## Fields
    ## !< Fence map of intersected faces and pave blocks
    ## !< Sub-shapes with increased tolerance during the operation
    ## !< Vertices located close to E/E or E/F intersection points
    ## ! which has already been extended to cover the real intersection
    ## ! points, and should not be extended any longer to be put
    ## ! on a section curve.
    ## !< Map to store minimal distances between shapes
    ## !  which have no real intersections


proc constructBOPAlgoPaveFiller*(): BOPAlgoPaveFiller {.constructor,
    importcpp: "BOPAlgo_PaveFiller(@)", header: "BOPAlgo_PaveFiller.hxx".}
proc destroyBOPAlgoPaveFiller*(this: var BOPAlgoPaveFiller) {.
    importcpp: "#.~BOPAlgo_PaveFiller()", header: "BOPAlgo_PaveFiller.hxx".}
proc constructBOPAlgoPaveFiller*(theAllocator: Handle[NCollectionBaseAllocator]): BOPAlgoPaveFiller {.
    constructor, importcpp: "BOPAlgo_PaveFiller(@)",
    header: "BOPAlgo_PaveFiller.hxx".}
proc ds*(this: var BOPAlgoPaveFiller): Bopds_Ds {.importcpp: "DS",
    header: "BOPAlgo_PaveFiller.hxx".}
proc pds*(this: var BOPAlgoPaveFiller): Bopds_Pds {.importcpp: "PDS",
    header: "BOPAlgo_PaveFiller.hxx".}
proc `iterator`*(this: var BOPAlgoPaveFiller): BOPDS_PIterator {.
    importcpp: "Iterator", header: "BOPAlgo_PaveFiller.hxx".}
proc setArguments*(this: var BOPAlgoPaveFiller; theLS: TopToolsListOfShape) {.
    importcpp: "SetArguments", header: "BOPAlgo_PaveFiller.hxx".}
proc addArgument*(this: var BOPAlgoPaveFiller; theShape: TopoDS_Shape) {.
    importcpp: "AddArgument", header: "BOPAlgo_PaveFiller.hxx".}
proc arguments*(this: BOPAlgoPaveFiller): TopToolsListOfShape {.noSideEffect,
    importcpp: "Arguments", header: "BOPAlgo_PaveFiller.hxx".}
proc context*(this: var BOPAlgoPaveFiller): Handle[IntToolsContext] {.
    importcpp: "Context", header: "BOPAlgo_PaveFiller.hxx".}
proc setSectionAttribute*(this: var BOPAlgoPaveFiller;
                         theSecAttr: BOPAlgoSectionAttribute) {.
    importcpp: "SetSectionAttribute", header: "BOPAlgo_PaveFiller.hxx".}
proc setNonDestructive*(this: var BOPAlgoPaveFiller; theFlag: StandardBoolean) {.
    importcpp: "SetNonDestructive", header: "BOPAlgo_PaveFiller.hxx".}
proc nonDestructive*(this: BOPAlgoPaveFiller): StandardBoolean {.noSideEffect,
    importcpp: "NonDestructive", header: "BOPAlgo_PaveFiller.hxx".}
proc perform*(this: var BOPAlgoPaveFiller) {.importcpp: "Perform",
    header: "BOPAlgo_PaveFiller.hxx".}
proc setGlue*(this: var BOPAlgoPaveFiller; theGlue: BOPAlgoGlueEnum) {.
    importcpp: "SetGlue", header: "BOPAlgo_PaveFiller.hxx".}
proc glue*(this: BOPAlgoPaveFiller): BOPAlgoGlueEnum {.noSideEffect,
    importcpp: "Glue", header: "BOPAlgo_PaveFiller.hxx".}
proc setAvoidBuildPCurve*(this: var BOPAlgoPaveFiller; theValue: StandardBoolean) {.
    importcpp: "SetAvoidBuildPCurve", header: "BOPAlgo_PaveFiller.hxx".}
proc isAvoidBuildPCurve*(this: BOPAlgoPaveFiller): StandardBoolean {.noSideEffect,
    importcpp: "IsAvoidBuildPCurve", header: "BOPAlgo_PaveFiller.hxx".}

