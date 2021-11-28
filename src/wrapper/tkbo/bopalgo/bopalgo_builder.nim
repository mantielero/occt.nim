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
discard "forward decl of TopoDS_Shape"
discard "forward decl of BOPAlgo_PaveFiller"
discard "forward decl of TopoDS_Solid"
type
  BOPAlgoBuilder* {.importcpp: "BOPAlgo_Builder", header: "BOPAlgo_Builder.hxx",
                   bycopy.} = object of BOPAlgoBuilderShape ## ! Empty constructor.
                                                       ## ! @name Arguments
                                                       ## ! Adds the argument to the operation.
                                                       ## ! @name Options
                                                       ## ! Sets the flag that defines the mode of treatment.
                                                       ## ! In non-destructive mode the argument shapes are not modified. Instead
                                                       ## ! a copy of a sub-shape is created in the result if it is needed to be updated.
                                                       ## ! This flag is taken into account if internal PaveFiller is used only.
                                                       ## ! In the case of calling PerformWithFiller the corresponding flag of that PaveFiller
                                                       ## ! is in force.
                                                       ## ! @name Performing the operation
                                                       ## ! Performs the operation.
                                                       ## ! The intersection will be performed also.
                                                       ## ! @name BOPs on open solids
                                                       ## ! Builds the result shape according to the given states for the objects
                                                       ## ! and tools. These states can be unambiguously converted into the Boolean operation type.
                                                       ## ! Thus, it performs the Boolean operation on the given groups of shapes.
                                                       ## !
                                                       ## ! The result is built basing on the result of Builder operation (GF or any other).
                                                       ## ! The only condition for the Builder is that the splits of faces should be created
                                                       ## ! and classified relatively solids.
                                                       ## !
                                                       ## ! The method uses classification approach for choosing the faces which will
                                                       ## ! participate in building the result shape:
                                                       ## ! - All faces from each group having the given state for the opposite group
                                                       ## !   will be taken into result.
                                                       ## !
                                                       ## ! Such approach shows better results (in comparison with BOPAlgo_BuilderSolid approach)
                                                       ## ! when working with open solids. However, the result may not be always
                                                       ## ! correct on such data (at least, not as expected) as the correct classification
                                                       ## ! of the faces relatively open solids is not always possible and may vary
                                                       ## ! depending on the chosen classification point on the face.
                                                       ## !
                                                       ## ! History is not created for the solids in this method.
                                                       ## !
                                                       ## ! To avoid pollution of the report of Builder algorithm, there is a possibility to pass
                                                       ## ! the different report to collect the alerts of the method only. But, if the new report
                                                       ## ! is not given, the Builder report will be used.
                                                       ## ! So, even if Builder passed without any errors, but some error has been stored into its report
                                                       ## ! in this method, for the following calls the Builder report must be cleared.
                                                       ## !
                                                       ## ! The method may set the following errors:
                                                       ## ! -
                                                       ## BOPAlgo_AlertBuilderFailed - Building operation has not been performed yet or failed;
                                                       ## ! - BOPAlgo_AlertBOPNotSet - invalid BOP type is given (COMMON/FUSE/CUT/CUT21 are supported);
                                                       ## ! -
                                                       ## BOPAlgo_AlertTooFewArguments - arguments are not given;
                                                       ## ! - BOPAlgo_AlertUnknownShape - the shape is unknown for the operation.
                                                       ## !
                                                       ## ! Parameters:
                                                       ## ! @param theObjects   - The group of Objects for BOP;
                                                       ## ! @param theObjState  - State for objects faces to pass into result;
                                                       ## ! @param theTools     - The group of Tools for BOP;
                                                       ## ! @param theObjState  - State for tools faces to pass into result;
                                                       ## ! @param theReport    - The alternative report to avoid pollution of the main one.
                                                       ## ! @name History methods
                                                       ## ! Prepare information for history support.
                                                       ## ! @name Images/Origins
                                                       ## ! Returns the map of images.
                                                       ## ! @name Methods for building the result
                                                       ## ! Performs the building of the result.
                                                       ## ! The method calls the PerfromInternal1() method surrounded by a try-catch block.
                                                       ## ! @name Checking input arguments
                                                       ## ! Checks the input data.
                                                       ## ! @name Fill Images of VERTICES
                                                       ## ! Fills the images of vertices.
                                                       ## ! @name Fill Images of EDGES
                                                       ## ! Fills the images of edges.
                                                       ## ! @name Fill Images of CONTAINERS
                                                       ## ! Fills the images of containers (WIRES/SHELLS/COMPSOLID).
                                                       ## ! @name Fill Images of FACES
                                                       ## ! Fills the images of faces.
                                                       ## ! The method consists of three steps:
                                                       ## ! 1. Build the splits of faces;
                                                       ## ! 2. Find SD faces;
                                                       ## ! 3. Add internal vertices (if any) to faces.
                                                       ## ! @name Fill Images of SOLIDS
                                                       ## ! Fills the images of solids.
                                                       ## ! The method consists of four steps:
                                                       ## ! 1. Build the draft solid - just rebuild the solid using the splits of faces;
                                                       ## ! 2. Find faces from other arguments located inside the solids;
                                                       ## ! 3. Build splits of solid using the inside faces;
                                                       ## ! 4. Fill internal shapes for the splits (Wires and vertices).
                                                       ## ! @name Fill Images of COMPOUNDS
                                                       ## ! Fills the images of compounds.
                                                       ## ! @name Post treatment
                                                       ## ! Post treatment of the result of the operation.
                                                       ## ! The method checks validity of the sub-shapes of the result
                                                       ## ! and updates the tolerances to make them valid.
                                                       ## ! @name Fields
    ## !< Arguments of the operation
    ## !< Fence map providing the uniqueness of the shapes in the list of arguments
    ## !< Pave Filler - algorithm for sub-shapes intersection
    ## !< Data Structure - holder of intersection information
    ## !< Context - tool for cashing heavy algorithms such as Projectors and Classifiers
    ## !< EntryPoint - controls the deletion of the PaveFiller, which could live longer than the Builder
    ## !< Images - map of Images of the sub-shapes of arguments
    ## !< ShapesSD - map of SD Shapes
    ## !< Origins - map of Origins, back map of Images
    ## !< InParts - map of own and acquired IN faces of the arguments solids
    ## !< Safe processing option allows avoiding modification of the input shapes
    ## !< Gluing option allows speeding up the intersection of the input shapes
    ## !< Check inverted option allows disabling the check of input solids on inverted status


proc newBOPAlgoBuilder*(): BOPAlgoBuilder {.cdecl, constructor,
    importcpp: "BOPAlgo_Builder(@)", dynlib: tkbo.}
proc destroyBOPAlgoBuilder*(this: var BOPAlgoBuilder) {.cdecl,
    importcpp: "#.~BOPAlgo_Builder()", dynlib: tkbo.}
proc newBOPAlgoBuilder*(theAllocator: Handle[NCollectionBaseAllocator]): BOPAlgoBuilder {.
    cdecl, constructor, importcpp: "BOPAlgo_Builder(@)", dynlib: tkbo.}
proc clear*(this: var BOPAlgoBuilder) {.cdecl, importcpp: "Clear", dynlib: tkbo.}
proc pPaveFiller*(this: var BOPAlgoBuilder): BOPAlgoPPaveFiller {.cdecl,
    importcpp: "PPaveFiller", dynlib: tkbo.}
#proc pds*(this: var BOPAlgoBuilder): Bopds_Pds {.cdecl, importcpp: "PDS", dynlib: tkbo.}
#proc context*(this: BOPAlgoBuilder): Handle[IntToolsContext] {.noSideEffect, cdecl,
#    importcpp: "Context", dynlib: tkbo.}
proc addArgument*(this: var BOPAlgoBuilder; theShape: TopoDS_Shape) {.cdecl,
    importcpp: "AddArgument", dynlib: tkbo.}
proc setArguments*(this: var BOPAlgoBuilder; theLS: TopToolsListOfShape) {.cdecl,
    importcpp: "SetArguments", dynlib: tkbo.}
proc arguments*(this: BOPAlgoBuilder): TopToolsListOfShape {.noSideEffect, cdecl,
    importcpp: "Arguments", dynlib: tkbo.}
proc setNonDestructive*(this: var BOPAlgoBuilder; theFlag: bool) {.cdecl,
    importcpp: "SetNonDestructive", dynlib: tkbo.}
proc nonDestructive*(this: BOPAlgoBuilder): bool {.noSideEffect, cdecl,
    importcpp: "NonDestructive", dynlib: tkbo.}
proc setGlue*(this: var BOPAlgoBuilder; theGlue: BOPAlgoGlueEnum) {.cdecl,
    importcpp: "SetGlue", dynlib: tkbo.}
proc glue*(this: BOPAlgoBuilder): BOPAlgoGlueEnum {.noSideEffect, cdecl,
    importcpp: "Glue", dynlib: tkbo.}
proc setCheckInverted*(this: var BOPAlgoBuilder; theCheck: bool) {.cdecl,
    importcpp: "SetCheckInverted", dynlib: tkbo.}
proc checkInverted*(this: BOPAlgoBuilder): bool {.noSideEffect, cdecl,
    importcpp: "CheckInverted", dynlib: tkbo.}
proc perform*(this: var BOPAlgoBuilder) {.cdecl, importcpp: "Perform", dynlib: tkbo.}
proc performWithFiller*(this: var BOPAlgoBuilder; theFiller: BOPAlgoPaveFiller) {.
    cdecl, importcpp: "PerformWithFiller", dynlib: tkbo.}
proc buildBOP*(this: var BOPAlgoBuilder; theObjects: TopToolsListOfShape;
              theObjState: TopAbsState; theTools: TopToolsListOfShape;
              theToolsState: TopAbsState; theReport: Handle[MessageReport] = cast[Handle[MessageReport] ](nil)) {.
    cdecl, importcpp: "BuildBOP", dynlib: tkbo.}
proc buildBOP*(this: var BOPAlgoBuilder; theObjects: TopToolsListOfShape;
              theTools: TopToolsListOfShape; theOperation: BOPAlgoOperation;
              theReport: Handle[MessageReport] = cast[Handle[MessageReport] ](nil)) {.cdecl, importcpp: "BuildBOP",
    dynlib: tkbo.}
proc images*(this: BOPAlgoBuilder): TopToolsDataMapOfShapeListOfShape {.
    noSideEffect, cdecl, importcpp: "Images", dynlib: tkbo.}
proc origins*(this: BOPAlgoBuilder): TopToolsDataMapOfShapeListOfShape {.
    noSideEffect, cdecl, importcpp: "Origins", dynlib: tkbo.}
proc shapesSD*(this: BOPAlgoBuilder): TopToolsDataMapOfShapeShape {.noSideEffect,
    cdecl, importcpp: "ShapesSD", dynlib: tkbo.}