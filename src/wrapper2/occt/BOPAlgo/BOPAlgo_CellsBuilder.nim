##  Created by: Eugeny MALTCHIKOV
##  Copyright (c) 2015 OPEN CASCADE SAS
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

## !
## ! The algorithm is based on the General Fuse algorithm (GFA). The result of
## ! GFA is all split parts of the Arguments.<br>
## !
## ! The purpose of this algorithm is to provide the result with the content of:<br>
## ! 1. Cells (parts) defined by the user;<br>
## ! 2. Internal boundaries defined by the user.<br>
## !
## ! In other words the algorithm should provide the possibility for the user
## ! to add or remove any part to (from) result and remove any internal boundaries
## ! between parts.<br>
## !
## ! Requirements for the Data:<br>
## ! All the requirements of GFA for the DATA are inherited in this algorithm -
## ! The arguments could be of any type (dimension) and should be valid in terms of
## ! BRepCheck_Analyzer and BOPAlgo_ArgumentAnalyzer.<br>
## !
## ! Results:<br>
## ! The result of the algorithm is compound containing selected parts of
## ! the basic types (VERTEX, EDGE, FACE or SOLID). The default result
## ! is empty compound. It is possible to add any split part to the result
## ! by using the methods AddToRessult() and AddAllToResult().
## ! It is also possible to remove any part from the result by using methods
## ! RemoveFromResult() and RemoveAllFromResult().
## ! The method RemoveAllFromResult() is also suitable for clearing the result.<br>
## !
## ! To remove Internal boundaries it is necessary to set the same material to the
## ! parts between which the boundaries should be removed and call the method
## ! RemoveInternalBoundaries(). The material should not be equal to 0, as this is
## ! default material value. The boundaries between parts with this value
## ! will not be removed.
## ! One part cannot be added with the different materials.
## ! It is also possible to remove the boundaries during combining the result.
## ! To do this it is necessary to set the material for parts (not equal to 0)
## ! and set the flag bUpdate to TRUE.
## ! For the arguments of the types FACE or EDGE it is recommended
## ! to remove the boundaries in the end when the result is completely built.
## ! It will help to avoid self-intersections in the result.<br>
## ! Note, that if the result contains the parts with same material but of different
## ! dimension the boundaries between such parts will not be removed. Currently,
## ! the removal of the internal boundaries between multi-dimensional shapes is not supported.<br>
## !
## ! It is possible to create typed Containers from the parts added to result by using
## ! method MakeContainers(). The type of the containers will depend on the type of
## ! the arguments: WIRES for EEDGE, SHELLS for FACES and COMPSOLIDS for SOLIDS.
## ! The result will be compound containing containers.
## ! Adding of the parts to such result will not update containers. The result
## ! compound will contain the containers and new added parts (of basic type).
## ! Removing of the parts from such result may affect some containers if
## ! the parts that should be removed is in container. In this case this container
## ! will be rebuilt without that part.<br>
## !
## ! History:<br>
## ! The algorithm supports history information for basic types of the shapes -
## ! VERTEX, EDGE, FACE. This information available through the methods
## ! IsDeleted() and Modified().<br>
## ! In DRAW Test Harness it is available through the same
## ! commands as for Boolean Operations (bmodified, bgenerated and bisdeleted).<br>
## !
## ! The algorithm can return the following Error Statuses:
## ! - Error status acquired in the General Fuse algorithm.
## ! The Error status can be checked with HasErrors() method.
## ! If the Error status is not equal to zero, the result cannot be trustworthy.
## !
## ! The algorithm can set the following Warning Statuses:
## ! - Warning status acquired in the General Fuse algorithm;
## ! - BOPAlgo_AlertRemovalOfIBForMDimShapes
## ! - BOPAlgo_AlertRemovalOfIBForFacesFailed
## ! - BOPAlgo_AlertRemovalOfIBForEdgesFailed
## ! - BOPAlgo_AlertRemovalOfIBForSolidsFailed
## !
## ! The Warning status can be checked with HasWarnings() method or
## ! printed with the DumpWarnings() method. If warnings are recorded,
## ! the result may be not as expected.<br>
## !
## ! Examples:<br>
## ! 1. API<br>
## ! BOPAlgo_CellsBuilder aCBuilder;<br>
## ! TopTools_ListOfShape aLS = ...; // arguments<br>
## ! /* parallel or single mode (the default value is FALSE)*/<br>
## ! Standard_Boolean bRunParallel = Standard_False;<br>
## ! /* fuzzy option (default value is 0)*/<br>
## ! Standard_Real aTol = 0.0;<br>
## ! //<br>
## ! aCBuilder.SetArguments(aLS);<br>
## ! aCBuilder.SetRunParallel(bRunParallel);<br>
## ! aCBuilder.SetFuzzyValue(aTol);<br>
## ! //<br>
## ! aCBuilder.Perform();<br>
## ! if (aCBuilder.HasErrors()) { // check error status<br>
## !   return;<br>
## ! }<br>
## ! /* empty compound, as nothing has been added yet */<br>
## ! const TopoDS_Shape& aRes = aCBuilder.Shape();<br>
## ! /* all split parts */<br>
## ! const TopoDS_Shape& aRes = aCBuilder.GetAllParts();<br>
## ! //<br>
## ! TopTools_ListOfShape aLSToTake = ...; // parts of these arguments will be taken into result<br>
## ! TopTools_ListOfShape aLSToAvoid = ...; // parts of these arguments will not be taken into result<br>
## ! //<br>
## ! /* defines the material common for the cells, i.e.
## !    the boundaries between cells with the same material
## !    will be removed.<br>
## !    By default it is set to 0. Thus, to remove some boundary
## !    the value of this variable should not be equal to 0 */<br>
## ! Standard_Integer iMaterial = ...;<br>
## ! /* defines whether to update the result right now or not */<br>
## ! Standard_Boolean bUpdate = ...;<br>
## ! // adding to result<br>
## ! aCBuilder.AddToResult(aLSToTake, aLSToAvoid, iMaterial, bUpdate);<br>
## ! aR = aCBuilder.Shape(); // the result<br>
## ! // removing of the boundaries (should be called only if bUpdate is false)<br>
## ! aCBuilder.RemoveInternalBoundaries();<br>
## ! //<br>
## ! // removing from result<br>
## ! aCBuilder.AddAllToResult();<br>
## ! aCBuilder.RemoveFromResult(aLSToTake, aLSToAvoid);<br>
## ! aR = aCBuilder.Shape(); // the result<br>
## ! <br>
## !
## ! 2. DRAW Test Harness<br>
## ! psphere s1 15<br>
## ! psphere s2 15<br>
## ! psphere s3 15<br>
## ! ttranslate s1 0 0 10<br>
## ! ttranslate s2 20 0 10<br>
## ! ttranslate s3 10 0 0<br>
## ! \# adding arguments<br>
## ! bclearobjects; bcleartools<br>
## ! baddobjects s1 s2 s3<br>
## ! \# intersection<br>
## ! bfillds<br>
## ! \# rx will contain all split parts<br>
## ! bcbuild rx<br>
## ! \# add to result the part that is common for all three spheres<br>
## ! bcadd res s1 1 s2 1 s3 1 -m 1<br>
## ! \# add to result the part that is common only for first and third spheres<br>
## ! bcadd res s1 1 s2 0 s3 1 -m 1<br>
## ! \# remove internal boundaries<br>
## ! bcremoveint res<br>
## !

type
  BOPAlgoCellsBuilder* {.importcpp: "BOPAlgo_CellsBuilder",
                        header: "BOPAlgo_CellsBuilder.hxx", bycopy.} = object of BOPAlgoBuilder ##
                                                                                         ## !
                                                                                         ## Prepare
                                                                                         ## information
                                                                                         ## for
                                                                                         ## history
                                                                                         ## support
                                                                                         ## taking
                                                                                         ## into
                                                                                         ## account
                                                                                         ##
                                                                                         ## !
                                                                                         ## local
                                                                                         ## modification
                                                                                         ## map
                                                                                         ## of
                                                                                         ## unified
                                                                                         ## elements
                                                                                         ## -
                                                                                         ## myMapModified.
    ## !< All split parts of the arguments
    ## !< Connection map from all splits parts to the argument shapes from which they were created
    ## !< Map of assigned materials (material -> list of shape)
    ## !< Map of assigned materials (shape -> material)
    ## !< Local modification map to track unification of the splits


proc constructBOPAlgoCellsBuilder*(): BOPAlgoCellsBuilder {.constructor,
    importcpp: "BOPAlgo_CellsBuilder(@)", header: "BOPAlgo_CellsBuilder.hxx".}
proc constructBOPAlgoCellsBuilder*(theAllocator: Handle[NCollectionBaseAllocator]): BOPAlgoCellsBuilder {.
    constructor, importcpp: "BOPAlgo_CellsBuilder(@)",
    header: "BOPAlgo_CellsBuilder.hxx".}
proc destroyBOPAlgoCellsBuilder*(this: var BOPAlgoCellsBuilder) {.
    importcpp: "#.~BOPAlgo_CellsBuilder()", header: "BOPAlgo_CellsBuilder.hxx".}
proc clear*(this: var BOPAlgoCellsBuilder) {.importcpp: "Clear",
    header: "BOPAlgo_CellsBuilder.hxx".}
proc addToResult*(this: var BOPAlgoCellsBuilder; theLSToTake: TopToolsListOfShape;
                 theLSToAvoid: TopToolsListOfShape;
                 theMaterial: StandardInteger = 0;
                 theUpdate: StandardBoolean = standardFalse) {.
    importcpp: "AddToResult", header: "BOPAlgo_CellsBuilder.hxx".}
proc addAllToResult*(this: var BOPAlgoCellsBuilder;
                    theMaterial: StandardInteger = 0;
                    theUpdate: StandardBoolean = standardFalse) {.
    importcpp: "AddAllToResult", header: "BOPAlgo_CellsBuilder.hxx".}
proc removeFromResult*(this: var BOPAlgoCellsBuilder;
                      theLSToTake: TopToolsListOfShape;
                      theLSToAvoid: TopToolsListOfShape) {.
    importcpp: "RemoveFromResult", header: "BOPAlgo_CellsBuilder.hxx".}
proc removeAllFromResult*(this: var BOPAlgoCellsBuilder) {.
    importcpp: "RemoveAllFromResult", header: "BOPAlgo_CellsBuilder.hxx".}
proc removeInternalBoundaries*(this: var BOPAlgoCellsBuilder) {.
    importcpp: "RemoveInternalBoundaries", header: "BOPAlgo_CellsBuilder.hxx".}
proc getAllParts*(this: BOPAlgoCellsBuilder): TopoDS_Shape {.noSideEffect,
    importcpp: "GetAllParts", header: "BOPAlgo_CellsBuilder.hxx".}
proc makeContainers*(this: var BOPAlgoCellsBuilder) {.importcpp: "MakeContainers",
    header: "BOPAlgo_CellsBuilder.hxx".}

