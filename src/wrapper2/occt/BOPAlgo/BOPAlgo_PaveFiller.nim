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
  ../Standard/Standard_Handle, BOPAlgo_Algo, BOPAlgo_GlueEnum,
  BOPAlgo_SectionAttribute, ../BOPDS/BOPDS_DataMapOfPaveBlockListOfPaveBlock,
  ../BOPDS/BOPDS_IndexedDataMapOfPaveBlockListOfInteger,
  ../BOPDS/BOPDS_IndexedDataMapOfShapeCoupleOfPaveBlocks,
  ../BOPDS/BOPDS_IndexedMapOfPaveBlock, ../BOPDS/BOPDS_ListOfPaveBlock,
  ../BOPDS/BOPDS_MapOfPair, ../BOPDS/BOPDS_MapOfPaveBlock, ../BOPDS/BOPDS_PDS,
  ../BOPDS/BOPDS_PIterator, ../BOPDS/BOPDS_VectorOfCurve,
  ../BOPTools/BOPTools_BoxTree, ../IntSurf/IntSurf_ListOfPntOn2S,
  ../IntTools/IntTools_ShrunkRange, ../NCollection/NCollection_BaseAllocator,
  ../Standard/Standard_Boolean, ../Standard/Standard_Integer,
  ../Standard/Standard_Real, ../TColStd/TColStd_DataMapOfIntegerInteger,
  ../TColStd/TColStd_DataMapOfIntegerListOfInteger,
  ../TColStd/TColStd_DataMapOfIntegerReal, ../TColStd/TColStd_ListOfInteger,
  ../TColStd/TColStd_MapOfInteger, ../TopAbs/TopAbs_ShapeEnum,
  ../TopTools/TopTools_DataMapOfShapeInteger,
  ../TopTools/TopTools_IndexedDataMapOfShapeListOfShape,
  ../TopTools/TopTools_IndexedMapOfShape, ../TopTools/TopTools_ListOfShape

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
  BOPAlgo_PaveFiller* {.importcpp: "BOPAlgo_PaveFiller",
                       header: "BOPAlgo_PaveFiller.hxx", bycopy.} = object of BOPAlgo_Algo ##
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


proc constructBOPAlgo_PaveFiller*(): BOPAlgo_PaveFiller {.constructor,
    importcpp: "BOPAlgo_PaveFiller(@)", header: "BOPAlgo_PaveFiller.hxx".}
proc destroyBOPAlgo_PaveFiller*(this: var BOPAlgo_PaveFiller) {.
    importcpp: "#.~BOPAlgo_PaveFiller()", header: "BOPAlgo_PaveFiller.hxx".}
proc constructBOPAlgo_PaveFiller*(theAllocator: handle[NCollection_BaseAllocator]): BOPAlgo_PaveFiller {.
    constructor, importcpp: "BOPAlgo_PaveFiller(@)",
    header: "BOPAlgo_PaveFiller.hxx".}
proc DS*(this: var BOPAlgo_PaveFiller): BOPDS_DS {.importcpp: "DS",
    header: "BOPAlgo_PaveFiller.hxx".}
proc PDS*(this: var BOPAlgo_PaveFiller): BOPDS_PDS {.importcpp: "PDS",
    header: "BOPAlgo_PaveFiller.hxx".}
proc Iterator*(this: var BOPAlgo_PaveFiller): BOPDS_PIterator {.
    importcpp: "Iterator", header: "BOPAlgo_PaveFiller.hxx".}
proc SetArguments*(this: var BOPAlgo_PaveFiller; theLS: TopTools_ListOfShape) {.
    importcpp: "SetArguments", header: "BOPAlgo_PaveFiller.hxx".}
proc AddArgument*(this: var BOPAlgo_PaveFiller; theShape: TopoDS_Shape) {.
    importcpp: "AddArgument", header: "BOPAlgo_PaveFiller.hxx".}
proc Arguments*(this: BOPAlgo_PaveFiller): TopTools_ListOfShape {.noSideEffect,
    importcpp: "Arguments", header: "BOPAlgo_PaveFiller.hxx".}
proc Context*(this: var BOPAlgo_PaveFiller): handle[IntTools_Context] {.
    importcpp: "Context", header: "BOPAlgo_PaveFiller.hxx".}
proc SetSectionAttribute*(this: var BOPAlgo_PaveFiller;
                         theSecAttr: BOPAlgo_SectionAttribute) {.
    importcpp: "SetSectionAttribute", header: "BOPAlgo_PaveFiller.hxx".}
proc SetNonDestructive*(this: var BOPAlgo_PaveFiller; theFlag: Standard_Boolean) {.
    importcpp: "SetNonDestructive", header: "BOPAlgo_PaveFiller.hxx".}
proc NonDestructive*(this: BOPAlgo_PaveFiller): Standard_Boolean {.noSideEffect,
    importcpp: "NonDestructive", header: "BOPAlgo_PaveFiller.hxx".}
proc Perform*(this: var BOPAlgo_PaveFiller) {.importcpp: "Perform",
    header: "BOPAlgo_PaveFiller.hxx".}
proc SetGlue*(this: var BOPAlgo_PaveFiller; theGlue: BOPAlgo_GlueEnum) {.
    importcpp: "SetGlue", header: "BOPAlgo_PaveFiller.hxx".}
proc Glue*(this: BOPAlgo_PaveFiller): BOPAlgo_GlueEnum {.noSideEffect,
    importcpp: "Glue", header: "BOPAlgo_PaveFiller.hxx".}
proc SetAvoidBuildPCurve*(this: var BOPAlgo_PaveFiller; theValue: Standard_Boolean) {.
    importcpp: "SetAvoidBuildPCurve", header: "BOPAlgo_PaveFiller.hxx".}
proc IsAvoidBuildPCurve*(this: BOPAlgo_PaveFiller): Standard_Boolean {.noSideEffect,
    importcpp: "IsAvoidBuildPCurve", header: "BOPAlgo_PaveFiller.hxx".}