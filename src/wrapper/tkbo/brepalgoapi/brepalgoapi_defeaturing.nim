##  Created by: Eugeny MALTCHIKOV
##  Copyright (c) 2018 OPEN CASCADE SAS
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

## ! The BRepAlgoAPI_Defeaturing algorithm is the API algorithm intended for
## ! removal of the unwanted parts from the shape. The unwanted parts
## ! (or features) can be holes, protrusions, gaps, chamfers, fillets etc.
## ! The shape itself is not modified, the new shape is built as the result.
## !
## ! The actual removal of the features from the shape is performed by
## ! the low-level *BOPAlgo_RemoveFeatures* tool. So the defeaturing algorithm
## ! has the same options, input data requirements, limitations as the
## ! low-level algorithm.
## !
## ! <b>Input data</b>
## !
## ! Currently, only the shapes of type SOLID, COMPSOLID, and COMPOUND of Solids
## ! are supported. And only the FACEs can be removed from the shape.
## !
## ! On the input the algorithm accepts the shape itself and the
## ! features which have to be removed. It does not matter how the features
## ! are given. It could be the separate faces or the collections
## ! of faces. The faces should belong to the initial shape, and those that
## ! do not belong will be ignored.
## !
## ! <b>Options</b>
## !
## ! The algorithm has the following options:
## ! - History support;
## !
## ! and the options available from base class:
## ! - Error/Warning reporting system;
## ! - Parallel processing mode.
## !
## ! Please note that the other options of the base class are not supported
## ! here and will have no effect.
## !
## ! For the details on the available options please refer to the description
## ! of *BOPAlgo_RemoveFeatures* algorithm.
## !
## ! <b>Limitations</b>
## !
## ! The defeaturing algorithm has the same limitations as *BOPAlgo_RemoveFeatures*
## ! algorithm.
## !
## ! <b>Example</b>
## !
## ! Here is the example of usage of the algorithm:
## ! ~~~~
## ! TopoDS_Shape aSolid = ...;               // Input shape to remove the features from
## ! TopTools_ListOfShape aFeatures = ...;    // Features to remove from the shape
## ! Standard_Boolean bRunParallel = ...;     // Parallel processing mode
## ! Standard_Boolean isHistoryNeeded = ...;  // History support
## !
## ! BRepAlgoAPI_Defeaturing aDF;             // De-Featuring algorithm
## ! aDF.SetShape(aSolid);                    // Set the shape
## ! aDF.AddFacesToRemove(aFaces);            // Add faces to remove
## ! aDF.SetRunParallel(bRunParallel);        // Define the processing mode (parallel or single)
## ! aDF.SetToFillHistory(isHistoryNeeded);   // Define whether to track the shapes modifications
## ! aDF.Build();                             // Perform the operation
## ! if (!aDF.IsDone())                       // Check for the errors
## ! {
## !   // error treatment
## !   Standard_SStream aSStream;
## !   aDF.DumpErrors(aSStream);
## !   return;
## ! }
## ! if (aDF.HasWarnings())                   // Check for the warnings
## ! {
## !   // warnings treatment
## !   Standard_SStream aSStream;
## !   aDF.DumpWarnings(aSStream);
## ! }
## ! const TopoDS_Shape& aResult = aDF.Shape(); // Result shape
## ! ~~~~
## !
## ! The algorithm preserves the type of the input shape in the result shape. Thus,
## ! if the input shape is a COMPSOLID, the resulting solids will also be put into a COMPSOLID.
## !

type
  BRepAlgoAPI_Defeaturing* {.importcpp: "BRepAlgoAPI_Defeaturing",
                            header: "BRepAlgoAPI_Defeaturing.hxx", bycopy.} = object of BRepAlgoAPI_Algo ##
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
                                                                                                  ## Setting
                                                                                                  ## input
                                                                                                  ## data
                                                                                                  ## for
                                                                                                  ## the
                                                                                                  ## algorithm
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Sets
                                                                                                  ## the
                                                                                                  ## shape
                                                                                                  ## for
                                                                                                  ## processing.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## @param
                                                                                                  ## theShape
                                                                                                  ## [in]
                                                                                                  ## The
                                                                                                  ## shape
                                                                                                  ## to
                                                                                                  ## remove
                                                                                                  ## the
                                                                                                  ## features
                                                                                                  ## from.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## It
                                                                                                  ## should
                                                                                                  ## either
                                                                                                  ## be
                                                                                                  ## the
                                                                                                  ## SOLID,
                                                                                                  ## COMPSOLID
                                                                                                  ## or
                                                                                                  ## COMPOUND
                                                                                                  ## of
                                                                                                  ## Solids.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## @name
                                                                                                  ## Performing
                                                                                                  ## the
                                                                                                  ## operation
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Performs
                                                                                                  ## the
                                                                                                  ## operation
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## @name
                                                                                                  ## History
                                                                                                  ## Methods
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Defines
                                                                                                  ## whether
                                                                                                  ## to
                                                                                                  ## track
                                                                                                  ## the
                                                                                                  ## modification
                                                                                                  ## of
                                                                                                  ## the
                                                                                                  ## shapes
                                                                                                  ## or
                                                                                                  ## not.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## @name
                                                                                                  ## Setting
                                                                                                  ## the
                                                                                                  ## algorithm
                                                                                                  ## into
                                                                                                  ## default
                                                                                                  ## state
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## @name
                                                                                                  ## Fields
    ## !< Input shape to remove the features from
    ## !< Features to remove from the shape
    ## !< Defines whether to track the history of
    ## ! shapes modifications or not (true by default)
    ## !< Tool for the features removal


proc newBRepAlgoAPI_Defeaturing*(): BRepAlgoAPI_Defeaturing {.cdecl, constructor,
    importcpp: "BRepAlgoAPI_Defeaturing(@)", dynlib: tkbo.}
proc setShape*(this: var BRepAlgoAPI_Defeaturing; theShape: TopoDS_Shape) {.cdecl,
    importcpp: "SetShape", dynlib: tkbo.}
proc inputShape*(this: BRepAlgoAPI_Defeaturing): TopoDS_Shape {.noSideEffect, cdecl,
    importcpp: "InputShape", dynlib: tkbo.}
proc addFaceToRemove*(this: var BRepAlgoAPI_Defeaturing; theFace: TopoDS_Shape) {.
    cdecl, importcpp: "AddFaceToRemove", dynlib: tkbo.}
proc addFacesToRemove*(this: var BRepAlgoAPI_Defeaturing;
                      theFaces: TopToolsListOfShape) {.cdecl,
    importcpp: "AddFacesToRemove", dynlib: tkbo.}
proc facesToRemove*(this: BRepAlgoAPI_Defeaturing): TopToolsListOfShape {.
    noSideEffect, cdecl, importcpp: "FacesToRemove", dynlib: tkbo.}
proc build*(this: var BRepAlgoAPI_Defeaturing) {.cdecl, importcpp: "Build",
    dynlib: tkbo.}
proc setToFillHistory*(this: var BRepAlgoAPI_Defeaturing; theFlag: bool) {.cdecl,
    importcpp: "SetToFillHistory", dynlib: tkbo.}
proc hasHistory*(this: BRepAlgoAPI_Defeaturing): bool {.noSideEffect, cdecl,
    importcpp: "HasHistory", dynlib: tkbo.}
proc modified*(this: var BRepAlgoAPI_Defeaturing; theS: TopoDS_Shape): TopToolsListOfShape {.
    cdecl, importcpp: "Modified", dynlib: tkbo.}
proc generated*(this: var BRepAlgoAPI_Defeaturing; theS: TopoDS_Shape): TopToolsListOfShape {.
    cdecl, importcpp: "Generated", dynlib: tkbo.}
proc isDeleted*(this: var BRepAlgoAPI_Defeaturing; theS: TopoDS_Shape): bool {.cdecl,
    importcpp: "IsDeleted", dynlib: tkbo.}
proc hasModified*(this: BRepAlgoAPI_Defeaturing): bool {.noSideEffect, cdecl,
    importcpp: "HasModified", dynlib: tkbo.}
proc hasGenerated*(this: BRepAlgoAPI_Defeaturing): bool {.noSideEffect, cdecl,
    importcpp: "HasGenerated", dynlib: tkbo.}
proc hasDeleted*(this: BRepAlgoAPI_Defeaturing): bool {.noSideEffect, cdecl,
    importcpp: "HasDeleted", dynlib: tkbo.}
#proc history*(this: var BRepAlgoAPI_Defeaturing): Handle[BRepToolsHistory] {.cdecl,
#    importcpp: "History", dynlib: tkbo.}