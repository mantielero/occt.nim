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



proc newBOPAlgoPaveFiller*(): BOPAlgoPaveFiller {.cdecl, constructor,
    importcpp: "BOPAlgo_PaveFiller(@)", header: "BOPAlgo_PaveFiller.hxx".}
proc destroyBOPAlgoPaveFiller*(this: var BOPAlgoPaveFiller) {.cdecl,
    importcpp: "#.~BOPAlgo_PaveFiller()", header: "BOPAlgo_PaveFiller.hxx".}
proc newBOPAlgoPaveFiller*(theAllocator: Handle[NCollectionBaseAllocator]): BOPAlgoPaveFiller {.
    cdecl, constructor, importcpp: "BOPAlgo_PaveFiller(@)", header: "BOPAlgo_PaveFiller.hxx".}
#proc ds*(this: var BOPAlgoPaveFiller): Bopds_Ds {.cdecl, importcpp: "DS", header: "BOPAlgo_PaveFiller.hxx".}
#proc pds*(this: var BOPAlgoPaveFiller): Bopds_Pds {.cdecl, importcpp: "PDS",
#    header: "BOPAlgo_PaveFiller.hxx".}
#proc `iterator`*(this: var BOPAlgoPaveFiller): BOPDS_PIterator {.cdecl,
#    importcpp: "Iterator", header: "BOPAlgo_PaveFiller.hxx".}
proc setArguments*(this: var BOPAlgoPaveFiller; theLS: TopToolsListOfShape) {.cdecl,
    importcpp: "SetArguments", header: "BOPAlgo_PaveFiller.hxx".}
proc addArgument*(this: var BOPAlgoPaveFiller; theShape: TopoDS_Shape) {.cdecl,
    importcpp: "AddArgument", header: "BOPAlgo_PaveFiller.hxx".}
proc arguments*(this: BOPAlgoPaveFiller): TopToolsListOfShape {.noSideEffect, cdecl,
    importcpp: "Arguments", header: "BOPAlgo_PaveFiller.hxx".}
#proc context*(this: var BOPAlgoPaveFiller): Handle[IntToolsContext] {.cdecl,
#    importcpp: "Context", header: "BOPAlgo_PaveFiller.hxx".}
proc setSectionAttribute*(this: var BOPAlgoPaveFiller;
                         theSecAttr: BOPAlgoSectionAttribute) {.cdecl,
    importcpp: "SetSectionAttribute", header: "BOPAlgo_PaveFiller.hxx".}
proc setNonDestructive*(this: var BOPAlgoPaveFiller; theFlag: bool) {.cdecl,
    importcpp: "SetNonDestructive", header: "BOPAlgo_PaveFiller.hxx".}
proc nonDestructive*(this: BOPAlgoPaveFiller): bool {.noSideEffect, cdecl,
    importcpp: "NonDestructive", header: "BOPAlgo_PaveFiller.hxx".}
proc perform*(this: var BOPAlgoPaveFiller) {.cdecl, importcpp: "Perform", header: "BOPAlgo_PaveFiller.hxx".}
proc setGlue*(this: var BOPAlgoPaveFiller; theGlue: BOPAlgoGlueEnum) {.cdecl,
    importcpp: "SetGlue", header: "BOPAlgo_PaveFiller.hxx".}
proc glue*(this: BOPAlgoPaveFiller): BOPAlgoGlueEnum {.noSideEffect, cdecl,
    importcpp: "Glue", header: "BOPAlgo_PaveFiller.hxx".}
proc setAvoidBuildPCurve*(this: var BOPAlgoPaveFiller; theValue: bool) {.cdecl,
    importcpp: "SetAvoidBuildPCurve", header: "BOPAlgo_PaveFiller.hxx".}
proc isAvoidBuildPCurve*(this: BOPAlgoPaveFiller): bool {.noSideEffect, cdecl,
    importcpp: "IsAvoidBuildPCurve", header: "BOPAlgo_PaveFiller.hxx".}


