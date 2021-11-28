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


proc newBOPAlgoPaveFiller*(): BOPAlgoPaveFiller {.cdecl, constructor,
    importcpp: "BOPAlgo_PaveFiller(@)", dynlib: tkbo.}
proc destroyBOPAlgoPaveFiller*(this: var BOPAlgoPaveFiller) {.cdecl,
    importcpp: "#.~BOPAlgo_PaveFiller()", dynlib: tkbo.}
proc newBOPAlgoPaveFiller*(theAllocator: Handle[NCollectionBaseAllocator]): BOPAlgoPaveFiller {.
    cdecl, constructor, importcpp: "BOPAlgo_PaveFiller(@)", dynlib: tkbo.}
#proc ds*(this: var BOPAlgoPaveFiller): Bopds_Ds {.cdecl, importcpp: "DS", dynlib: tkbo.}
#proc pds*(this: var BOPAlgoPaveFiller): Bopds_Pds {.cdecl, importcpp: "PDS",
#    dynlib: tkbo.}
#proc `iterator`*(this: var BOPAlgoPaveFiller): BOPDS_PIterator {.cdecl,
#    importcpp: "Iterator", dynlib: tkbo.}
proc setArguments*(this: var BOPAlgoPaveFiller; theLS: TopToolsListOfShape) {.cdecl,
    importcpp: "SetArguments", dynlib: tkbo.}
proc addArgument*(this: var BOPAlgoPaveFiller; theShape: TopoDS_Shape) {.cdecl,
    importcpp: "AddArgument", dynlib: tkbo.}
proc arguments*(this: BOPAlgoPaveFiller): TopToolsListOfShape {.noSideEffect, cdecl,
    importcpp: "Arguments", dynlib: tkbo.}
#proc context*(this: var BOPAlgoPaveFiller): Handle[IntToolsContext] {.cdecl,
#    importcpp: "Context", dynlib: tkbo.}
proc setSectionAttribute*(this: var BOPAlgoPaveFiller;
                         theSecAttr: BOPAlgoSectionAttribute) {.cdecl,
    importcpp: "SetSectionAttribute", dynlib: tkbo.}
proc setNonDestructive*(this: var BOPAlgoPaveFiller; theFlag: bool) {.cdecl,
    importcpp: "SetNonDestructive", dynlib: tkbo.}
proc nonDestructive*(this: BOPAlgoPaveFiller): bool {.noSideEffect, cdecl,
    importcpp: "NonDestructive", dynlib: tkbo.}
proc perform*(this: var BOPAlgoPaveFiller) {.cdecl, importcpp: "Perform", dynlib: tkbo.}
proc setGlue*(this: var BOPAlgoPaveFiller; theGlue: BOPAlgoGlueEnum) {.cdecl,
    importcpp: "SetGlue", dynlib: tkbo.}
proc glue*(this: BOPAlgoPaveFiller): BOPAlgoGlueEnum {.noSideEffect, cdecl,
    importcpp: "Glue", dynlib: tkbo.}
proc setAvoidBuildPCurve*(this: var BOPAlgoPaveFiller; theValue: bool) {.cdecl,
    importcpp: "SetAvoidBuildPCurve", dynlib: tkbo.}
proc isAvoidBuildPCurve*(this: BOPAlgoPaveFiller): bool {.noSideEffect, cdecl,
    importcpp: "IsAvoidBuildPCurve", dynlib: tkbo.}