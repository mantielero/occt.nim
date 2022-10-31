import ../tkbo/bopalgo/bopalgo_types
import ../../tkbrep/toptools/toptools_types
import ../../tkbrep/topods/topods_types
import brepalgoapi_types



##  Created by: Peter KURNEV
##  Copyright (c) 2014 OPEN CASCADE SAS
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

## ! The class contains API level of the General Fuse algorithm.<br>
## !
## ! Additionally to the options defined in the base class, the algorithm has
## ! the following options:<br>
## ! - *Safe processing mode* - allows to avoid modification of the input
## !                            shapes during the operation (by default it is off);
## ! - *Gluing options* - allows to speed up the calculation of the intersections
## !                      on the special cases, in which some sub-shapes are coinciding.
## ! - *Disabling the check for inverted solids* - Disables/Enables the check of the input solids
## !                          for inverted status (holes in the space). The default value is TRUE,
## !                          i.e. the check is performed. Setting this flag to FALSE for inverted solids,
## !                          most likely will lead to incorrect results.
## ! - *Disabling history collection* - allows disabling the collection of the history
## !                                    of shapes modifications during the operation.
## !
## ! It returns the following Error statuses:<br>
## ! - 0 - in case of success;<br>
## ! - *BOPAlgo_AlertTooFewArguments* - in case there are no enough arguments to perform the operation;<br>
## ! - *BOPAlgo_AlertIntersectionFailed* - in case the intersection of the arguments has failed;<br>
## ! - *BOPAlgo_AlertBuilderFailed* - in case building of the result shape has failed.<br>
## !
## ! Warnings statuses from underlying DS Filler and Builder algorithms
## ! are collected in the report.
## !
## ! The class provides possibility to simplify the resulting shape by unification
## ! of the tangential edges and faces. It is performed by the method *SimplifyResult*.
## ! See description of this method for more details.
## !



proc newBRepAlgoAPI_BuilderAlgo*(): BRepAlgoAPI_BuilderAlgo {.cdecl, constructor,
    importcpp: "BRepAlgoAPI_BuilderAlgo(@)", header: "BRepAlgoAPI_BuilderAlgo.hxx".}
proc destroyBRepAlgoAPI_BuilderAlgo*(this: var BRepAlgoAPI_BuilderAlgo) {.cdecl,
    importcpp: "#.~BRepAlgoAPI_BuilderAlgo()", header: "BRepAlgoAPI_BuilderAlgo.hxx".}
proc newBRepAlgoAPI_BuilderAlgo*(thePF: BOPAlgoPaveFiller): BRepAlgoAPI_BuilderAlgo {.
    cdecl, constructor, importcpp: "BRepAlgoAPI_BuilderAlgo(@)", header: "BRepAlgoAPI_BuilderAlgo.hxx".}
proc setArguments*(this: var BRepAlgoAPI_BuilderAlgo; theLS: TopToolsListOfShape) {.
    cdecl, importcpp: "SetArguments", header: "BRepAlgoAPI_BuilderAlgo.hxx".}
proc arguments*(this: BRepAlgoAPI_BuilderAlgo): TopToolsListOfShape {.noSideEffect,
    cdecl, importcpp: "Arguments", header: "BRepAlgoAPI_BuilderAlgo.hxx".}
proc setNonDestructive*(this: var BRepAlgoAPI_BuilderAlgo; theFlag: bool) {.cdecl,
    importcpp: "SetNonDestructive", header: "BRepAlgoAPI_BuilderAlgo.hxx".}
proc nonDestructive*(this: BRepAlgoAPI_BuilderAlgo): bool {.noSideEffect, cdecl,
    importcpp: "NonDestructive", header: "BRepAlgoAPI_BuilderAlgo.hxx".}
proc setGlue*(this: var BRepAlgoAPI_BuilderAlgo; theGlue: BOPAlgoGlueEnum) {.cdecl,
    importcpp: "SetGlue", header: "BRepAlgoAPI_BuilderAlgo.hxx".}
proc glue*(this: BRepAlgoAPI_BuilderAlgo): BOPAlgoGlueEnum {.noSideEffect, cdecl,
    importcpp: "Glue", header: "BRepAlgoAPI_BuilderAlgo.hxx".}
proc setCheckInverted*(this: var BRepAlgoAPI_BuilderAlgo; theCheck: bool) {.cdecl,
    importcpp: "SetCheckInverted", header: "BRepAlgoAPI_BuilderAlgo.hxx".}
proc checkInverted*(this: BRepAlgoAPI_BuilderAlgo): bool {.noSideEffect, cdecl,
    importcpp: "CheckInverted", header: "BRepAlgoAPI_BuilderAlgo.hxx".}
proc build*(this: var BRepAlgoAPI_BuilderAlgo) {.cdecl, importcpp: "Build",
    header: "BRepAlgoAPI_BuilderAlgo.hxx".}
proc simplifyResult*(this: var BRepAlgoAPI_BuilderAlgo; theUnifyEdges: bool = true;
                    theUnifyFaces: bool = true; theAngularTol: cfloat = angular()) {.
    cdecl, importcpp: "SimplifyResult", header: "BRepAlgoAPI_BuilderAlgo.hxx".}
proc modified*(this: var BRepAlgoAPI_BuilderAlgo; theS: TopoDS_Shape): TopToolsListOfShape {.
    cdecl, importcpp: "Modified", header: "BRepAlgoAPI_BuilderAlgo.hxx".}
proc generated*(this: var BRepAlgoAPI_BuilderAlgo; theS: TopoDS_Shape): TopToolsListOfShape {.
    cdecl, importcpp: "Generated", header: "BRepAlgoAPI_BuilderAlgo.hxx".}
proc isDeleted*(this: var BRepAlgoAPI_BuilderAlgo; `aS`: TopoDS_Shape): bool {.cdecl,
    importcpp: "IsDeleted", header: "BRepAlgoAPI_BuilderAlgo.hxx".}
proc hasModified*(this: BRepAlgoAPI_BuilderAlgo): bool {.noSideEffect, cdecl,
    importcpp: "HasModified", header: "BRepAlgoAPI_BuilderAlgo.hxx".}
proc hasGenerated*(this: BRepAlgoAPI_BuilderAlgo): bool {.noSideEffect, cdecl,
    importcpp: "HasGenerated", header: "BRepAlgoAPI_BuilderAlgo.hxx".}
proc hasDeleted*(this: BRepAlgoAPI_BuilderAlgo): bool {.noSideEffect, cdecl,
    importcpp: "HasDeleted", header: "BRepAlgoAPI_BuilderAlgo.hxx".}
proc setToFillHistory*(this: var BRepAlgoAPI_BuilderAlgo; theHistFlag: bool) {.cdecl,
    importcpp: "SetToFillHistory", header: "BRepAlgoAPI_BuilderAlgo.hxx".}
proc hasHistory*(this: BRepAlgoAPI_BuilderAlgo): bool {.noSideEffect, cdecl,
    importcpp: "HasHistory", header: "BRepAlgoAPI_BuilderAlgo.hxx".}
proc sectionEdges*(this: var BRepAlgoAPI_BuilderAlgo): TopToolsListOfShape {.cdecl,
    importcpp: "SectionEdges", header: "BRepAlgoAPI_BuilderAlgo.hxx".}
proc dSFiller*(this: BRepAlgoAPI_BuilderAlgo): BOPAlgoPPaveFiller {.noSideEffect,
    cdecl, importcpp: "DSFiller", header: "BRepAlgoAPI_BuilderAlgo.hxx".}
proc builder*(this: BRepAlgoAPI_BuilderAlgo): BOPAlgoPBuilder {.noSideEffect, cdecl,
    importcpp: "Builder", header: "BRepAlgoAPI_BuilderAlgo.hxx".}
#proc history*(this: BRepAlgoAPI_BuilderAlgo): Handle[BRepToolsHistory] {.
#    noSideEffect, cdecl, importcpp: "History", header: "BRepAlgoAPI_BuilderAlgo.hxx".}

