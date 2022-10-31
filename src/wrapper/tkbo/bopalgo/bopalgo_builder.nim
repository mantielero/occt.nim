import ../../tkg3d/topabs/topabs_types
import ../../tkernel/standard/standard_types
import bopalgo_types
import ../../tkernel/ncollection/ncollection_types
import ../../tkbrep/toptools/toptools_types
import ../../tkbrep/topods/topods_types



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



proc newBOPAlgoBuilder*(): BOPAlgoBuilder {.cdecl, constructor,
    importcpp: "BOPAlgo_Builder(@)", header: "BOPAlgo_Builder.hxx".}
proc destroyBOPAlgoBuilder*(this: var BOPAlgoBuilder) {.cdecl,
    importcpp: "#.~BOPAlgo_Builder()", header: "BOPAlgo_Builder.hxx".}
proc newBOPAlgoBuilder*(theAllocator: Handle[NCollectionBaseAllocator]): BOPAlgoBuilder {.
    cdecl, constructor, importcpp: "BOPAlgo_Builder(@)", header: "BOPAlgo_Builder.hxx".}
proc clear*(this: var BOPAlgoBuilder) {.cdecl, importcpp: "Clear", header: "BOPAlgo_Builder.hxx".}
proc pPaveFiller*(this: var BOPAlgoBuilder): BOPAlgoPPaveFiller {.cdecl,
    importcpp: "PPaveFiller", header: "BOPAlgo_Builder.hxx".}
#proc pds*(this: var BOPAlgoBuilder): Bopds_Pds {.cdecl, importcpp: "PDS", header: "BOPAlgo_Builder.hxx".}
#proc context*(this: BOPAlgoBuilder): Handle[IntToolsContext] {.noSideEffect, cdecl,
#    importcpp: "Context", header: "BOPAlgo_Builder.hxx".}
proc addArgument*(this: var BOPAlgoBuilder; theShape: TopoDS_Shape) {.cdecl,
    importcpp: "AddArgument", header: "BOPAlgo_Builder.hxx".}
proc setArguments*(this: var BOPAlgoBuilder; theLS: TopToolsListOfShape) {.cdecl,
    importcpp: "SetArguments", header: "BOPAlgo_Builder.hxx".}
proc arguments*(this: BOPAlgoBuilder): TopToolsListOfShape {.noSideEffect, cdecl,
    importcpp: "Arguments", header: "BOPAlgo_Builder.hxx".}
proc setNonDestructive*(this: var BOPAlgoBuilder; theFlag: bool) {.cdecl,
    importcpp: "SetNonDestructive", header: "BOPAlgo_Builder.hxx".}
proc nonDestructive*(this: BOPAlgoBuilder): bool {.noSideEffect, cdecl,
    importcpp: "NonDestructive", header: "BOPAlgo_Builder.hxx".}
proc setGlue*(this: var BOPAlgoBuilder; theGlue: BOPAlgoGlueEnum) {.cdecl,
    importcpp: "SetGlue", header: "BOPAlgo_Builder.hxx".}
proc glue*(this: BOPAlgoBuilder): BOPAlgoGlueEnum {.noSideEffect, cdecl,
    importcpp: "Glue", header: "BOPAlgo_Builder.hxx".}
proc setCheckInverted*(this: var BOPAlgoBuilder; theCheck: bool) {.cdecl,
    importcpp: "SetCheckInverted", header: "BOPAlgo_Builder.hxx".}
proc checkInverted*(this: BOPAlgoBuilder): bool {.noSideEffect, cdecl,
    importcpp: "CheckInverted", header: "BOPAlgo_Builder.hxx".}
proc perform*(this: var BOPAlgoBuilder) {.cdecl, importcpp: "Perform", header: "BOPAlgo_Builder.hxx".}
proc performWithFiller*(this: var BOPAlgoBuilder; theFiller: BOPAlgoPaveFiller) {.
    cdecl, importcpp: "PerformWithFiller", header: "BOPAlgo_Builder.hxx".}
proc buildBOP*(this: var BOPAlgoBuilder; theObjects: TopToolsListOfShape;
              theObjState: TopAbsState; theTools: TopToolsListOfShape;
              theToolsState: TopAbsState; theReport: Handle[MessageReport] = cast[Handle[MessageReport] ](nil)) {.
    cdecl, importcpp: "BuildBOP", header: "BOPAlgo_Builder.hxx".}
proc buildBOP*(this: var BOPAlgoBuilder; theObjects: TopToolsListOfShape;
              theTools: TopToolsListOfShape; theOperation: BOPAlgoOperation;
              theReport: Handle[MessageReport] = cast[Handle[MessageReport] ](nil)) {.cdecl, importcpp: "BuildBOP",
    header: "BOPAlgo_Builder.hxx".}
proc images*(this: BOPAlgoBuilder): TopToolsDataMapOfShapeListOfShape {.
    noSideEffect, cdecl, importcpp: "Images", header: "BOPAlgo_Builder.hxx".}
proc origins*(this: BOPAlgoBuilder): TopToolsDataMapOfShapeListOfShape {.
    noSideEffect, cdecl, importcpp: "Origins", header: "BOPAlgo_Builder.hxx".}
proc shapesSD*(this: BOPAlgoBuilder): TopToolsDataMapOfShapeShape {.noSideEffect,
    cdecl, importcpp: "ShapesSD", header: "BOPAlgo_Builder.hxx".}

