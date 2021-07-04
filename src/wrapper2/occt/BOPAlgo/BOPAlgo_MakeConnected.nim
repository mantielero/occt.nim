##  Created on: 2018-03-29
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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, BOPAlgo_Options, BOPAlgo_MakePeriodic,
  ../BRepTools/BRepTools_History, ../NCollection/NCollection_DataMap,
  ../TopTools/TopTools_OrientedShapeMapHasher

## ! BOPAlgo_MakeConnected is the algorithm for making the touching
## ! shapes connected or glued, i.e. for making the coinciding geometries
## ! be topologically shared among the shapes.
## !
## ! The input shapes should be of the same dimension, otherwise
## ! the gluing will not make any sense.
## !
## ! After the shapes are made connected, the border elements of input shapes
## ! are associated with the shapes to which they belong. At that, the orientation of
## ! the border element in the shape is taken into account.
## ! The associations are made for the following types:
## ! - For input SOLIDS, the resulting FACES are associated with the input solids;
## ! - For input FACES, the resulting EDGES are associated with the input faces;
## ! - For input EDGES, the resulting VERTICES are associated with the input edges.
## !
## ! In frames of this algorithm the input shapes are called materials,
## ! and the association process is called the material association.
## ! The material association allows finding the coinciding elements for the opposite
## ! input shapes. These elements will be associated to at least two materials.
## !
## ! After making the shapes connected, it is possible to make the connected
## ! shape periodic using the *BOPAlgo_MakePeriodic* tool.
## ! After making the shape periodic, the material associations will be updated
## ! to correspond to the actual state of the result shape.
## ! Repetition of the periodic shape is also possible here. Material associations
## ! are not going to be lost.
## !
## ! The algorithm supports history of shapes modification, thus it is possible
## ! to track the modification of the input shapes during the operations.
## ! Additionally to standard history methods, the algorithm provides the
## ! the method *GetOrigins()* which allows obtaining the input shapes from which
## ! the resulting shape has been created.
## !
## ! The algorithm supports the parallel processing mode, which allows faster
## ! completion of the operations.
## !
## ! The algorithm returns the following Error/Warning messages:
## ! - *BOPAlgo_AlertTooFewArguments* - error alert is given on the attempt to run
## !     the algorithm without the arguments;
## ! - *BOPAlgo_AlertMultiDimensionalArguments* - error alert is given on the attempt
## !     to run the algorithm on multi-dimensional arguments;
## ! - *BOPAlgo_AlertUnableToGlue* - error alert is given if the gluer algorithm
## !     is unable to glue the given arguments;
## ! - *BOPAlgo_AlertUnableToMakePeriodic* - warning alert is given if the periodicity
## !     maker is unable to make the connected shape periodic with given options;
## ! - *BOPAlgo_AlertShapeIsNotPeriodic* - warning alert is given on the attempt to
## !     repeat the shape before making it periodic.
## !
## ! Here is the example of usage of the algorithm:
## ! ~~~~
## ! TopTools_ListOfShape anArguments = ...;  // Shapes to make connected
## ! Standard_Boolean bRunParallel = ...;     // Parallel processing mode
## !
## ! BOPAlgo_MakeConnected aMC;               // Tool for making the shapes connected
## ! aMC.SetArguments(anArguments);           // Set the shapes
## ! aMC.SetRunParallel(bRunParallel);        // Set parallel processing mode
## ! aMC.Perform();                           // Perform the operation
## !
## ! if (aMC.HasErrors())                     // Check for the errors
## ! {
## !   // errors treatment
## !   Standard_SStream aSStream;
## !   aMC.DumpErrors(aSStream);
## !   return;
## ! }
## ! if (aMC.HasWarnings())                   // Check for the warnings
## ! {
## !   // warnings treatment
## !   Standard_SStream aSStream;
## !   aMC.DumpWarnings(aSStream);
## ! }
## !
## ! const TopoDS_Shape& aGluedShape = aMC.Shape(); // Connected shape
## !
## ! // Checking material associations
## ! TopAbs_ShapeEnum anElemType = ...;       // Type of border element
## ! TopExp_Explorer anExp(anArguments.First(), anElemType);
## ! for (; anExp.More(); anExp.Next())
## ! {
## !   const TopoDS_Shape& anElement = anExp.Current();
## !   const TopTools_ListOfShape& aNegativeM = aMC.MaterialsOnNegativeSide(anElement);
## !   const TopTools_ListOfShape& aPositiveM = aMC.MaterialsOnPositiveSide(anElement);
## ! }
## !
## ! // Making the connected shape periodic
## ! BOPAlgo_MakePeriodic::PeriodicityParams aParams = ...; // Options for periodicity of the connected shape
## ! aMC.MakePeriodic(aParams);
## !
## ! // Shape repetition after making it periodic
## ! // Check if the shape has been made periodic successfully
## ! if (aMC.PeriodicityTool().HasErrors())
## ! {
## !   // Periodicity maker error treatment
## ! }
## !
## ! // Shape repetition in periodic directions
## ! aMC.RepeatShape(0, 2);
## !
## ! const TopoDS_Shape& aShape = aMC.PeriodicShape(); // Periodic and repeated shape
## ! ~~~~
## !

type
  BOPAlgo_MakeConnected* {.importcpp: "BOPAlgo_MakeConnected",
                          header: "BOPAlgo_MakeConnected.hxx", bycopy.} = object of BOPAlgo_Options ##
                                                                                             ## !
                                                                                             ## @name
                                                                                             ## Constructor
                                                                                             ##
                                                                                             ## !
                                                                                             ## Empty
                                                                                             ## constructor
                                                                                             ##
                                                                                             ## !
                                                                                             ## @name
                                                                                             ## Setters
                                                                                             ## for
                                                                                             ## the
                                                                                             ## shapes
                                                                                             ## to
                                                                                             ## make
                                                                                             ## connected
                                                                                             ##
                                                                                             ## !
                                                                                             ## Sets
                                                                                             ## the
                                                                                             ## shape
                                                                                             ## for
                                                                                             ## making
                                                                                             ## them
                                                                                             ## connected.
                                                                                             ##
                                                                                             ## !
                                                                                             ## @param
                                                                                             ## theArgs
                                                                                             ## [in]
                                                                                             ## The
                                                                                             ## arguments
                                                                                             ## for
                                                                                             ## the
                                                                                             ## operation.
                                                                                             ##
                                                                                             ## !
                                                                                             ## @name
                                                                                             ## Performing
                                                                                             ## the
                                                                                             ## operations
                                                                                             ##
                                                                                             ## !
                                                                                             ## Performs
                                                                                             ## the
                                                                                             ## operation,
                                                                                             ## i.e.
                                                                                             ## makes
                                                                                             ## the
                                                                                             ## input
                                                                                             ## shapes
                                                                                             ## connected.
                                                                                             ##
                                                                                             ## !
                                                                                             ## @name
                                                                                             ## Shape
                                                                                             ## periodicity
                                                                                             ## &
                                                                                             ## repetition
                                                                                             ##
                                                                                             ## !
                                                                                             ## Makes
                                                                                             ## the
                                                                                             ## connected
                                                                                             ## shape
                                                                                             ## periodic.
                                                                                             ##
                                                                                             ## !
                                                                                             ## Repeated
                                                                                             ## calls
                                                                                             ## of
                                                                                             ## this
                                                                                             ## method
                                                                                             ## overwrite
                                                                                             ## the
                                                                                             ## previous
                                                                                             ## calls
                                                                                             ##
                                                                                             ## !
                                                                                             ## working
                                                                                             ## with
                                                                                             ## the
                                                                                             ## basis
                                                                                             ## connected
                                                                                             ## shape.
                                                                                             ##
                                                                                             ## !
                                                                                             ## @param
                                                                                             ## theParams
                                                                                             ## [in]
                                                                                             ## Periodic
                                                                                             ## options.
                                                                                             ##
                                                                                             ## !
                                                                                             ## @name
                                                                                             ## Material
                                                                                             ## transitions
                                                                                             ##
                                                                                             ## !
                                                                                             ## Returns
                                                                                             ## the
                                                                                             ## original
                                                                                             ## shapes
                                                                                             ## which
                                                                                             ## images
                                                                                             ## contain
                                                                                             ## the
                                                                                             ##
                                                                                             ## !
                                                                                             ## the
                                                                                             ## given
                                                                                             ## shape
                                                                                             ## with
                                                                                             ## FORWARD
                                                                                             ## orientation.
                                                                                             ##
                                                                                             ## !
                                                                                             ## @param
                                                                                             ## theS
                                                                                             ## [in]
                                                                                             ## The
                                                                                             ## shape
                                                                                             ## for
                                                                                             ## which
                                                                                             ## the
                                                                                             ## materials
                                                                                             ## are
                                                                                             ## necessary.
                                                                                             ##
                                                                                             ## !
                                                                                             ## @name
                                                                                             ## History
                                                                                             ## methods
                                                                                             ##
                                                                                             ## !
                                                                                             ## Returns
                                                                                             ## the
                                                                                             ## history
                                                                                             ## of
                                                                                             ## operations
                                                                                             ##
                                                                                             ## !
                                                                                             ## @name
                                                                                             ## Getting
                                                                                             ## the
                                                                                             ## result
                                                                                             ## shapes
                                                                                             ##
                                                                                             ## !
                                                                                             ## Returns
                                                                                             ## the
                                                                                             ## resulting
                                                                                             ## connected
                                                                                             ## shape
                                                                                             ##
                                                                                             ## !
                                                                                             ## @name
                                                                                             ## Clearing
                                                                                             ## the
                                                                                             ## contents
                                                                                             ## of
                                                                                             ## the
                                                                                             ## algorithm
                                                                                             ## from
                                                                                             ## previous
                                                                                             ## runs
                                                                                             ##
                                                                                             ## !
                                                                                             ## Clears
                                                                                             ## the
                                                                                             ## contents
                                                                                             ## of
                                                                                             ## the
                                                                                             ## algorithm.
                                                                                             ##
                                                                                             ## !
                                                                                             ## @name
                                                                                             ## Protected
                                                                                             ## methods
                                                                                             ## performing
                                                                                             ## the
                                                                                             ## operation
                                                                                             ##
                                                                                             ## !
                                                                                             ## Checks
                                                                                             ## the
                                                                                             ## validity
                                                                                             ## of
                                                                                             ## input
                                                                                             ## data.
                                                                                             ##
                                                                                             ## !
                                                                                             ## Returns
                                                                                             ## an
                                                                                             ## empty
                                                                                             ## list.
                                                                                             ##
                                                                                             ## !
                                                                                             ## @name
                                                                                             ## Fields
                                                                                             ##
                                                                                             ## Inputs
    ## !< Input shapes for making them connected
    ## !< Map of all BRep sub-elements of the input shapes
    ##  Tools
    ## !< Tool for making the shape periodic
    ##  Results
    ## !< Map of the materials associations
    ## ! for the border elements
    ## !< Map of origins
    ## ! (allows tracking the shape's ancestors)
    ## !< Gluing History
    ## !< Final History of shapes modifications
    ## ! (including making the shape periodic and repetitions)
    ## !< The resulting connected (glued) shape
    ## !< The resulting shape


proc constructBOPAlgo_MakeConnected*(): BOPAlgo_MakeConnected {.constructor,
    importcpp: "BOPAlgo_MakeConnected(@)", header: "BOPAlgo_MakeConnected.hxx".}
proc SetArguments*(this: var BOPAlgo_MakeConnected; theArgs: TopTools_ListOfShape) {.
    importcpp: "SetArguments", header: "BOPAlgo_MakeConnected.hxx".}
proc AddArgument*(this: var BOPAlgo_MakeConnected; theS: TopoDS_Shape) {.
    importcpp: "AddArgument", header: "BOPAlgo_MakeConnected.hxx".}
proc Arguments*(this: BOPAlgo_MakeConnected): TopTools_ListOfShape {.noSideEffect,
    importcpp: "Arguments", header: "BOPAlgo_MakeConnected.hxx".}
proc Perform*(this: var BOPAlgo_MakeConnected) {.importcpp: "Perform",
    header: "BOPAlgo_MakeConnected.hxx".}
proc MakePeriodic*(this: var BOPAlgo_MakeConnected; theParams: PeriodicityParams) {.
    importcpp: "MakePeriodic", header: "BOPAlgo_MakeConnected.hxx".}
proc RepeatShape*(this: var BOPAlgo_MakeConnected; theDirectionID: Standard_Integer;
                 theTimes: Standard_Integer) {.importcpp: "RepeatShape",
    header: "BOPAlgo_MakeConnected.hxx".}
proc ClearRepetitions*(this: var BOPAlgo_MakeConnected) {.
    importcpp: "ClearRepetitions", header: "BOPAlgo_MakeConnected.hxx".}
proc PeriodicityTool*(this: BOPAlgo_MakeConnected): BOPAlgo_MakePeriodic {.
    noSideEffect, importcpp: "PeriodicityTool", header: "BOPAlgo_MakeConnected.hxx".}
proc MaterialsOnPositiveSide*(this: var BOPAlgo_MakeConnected; theS: TopoDS_Shape): TopTools_ListOfShape {.
    importcpp: "MaterialsOnPositiveSide", header: "BOPAlgo_MakeConnected.hxx".}
proc MaterialsOnNegativeSide*(this: var BOPAlgo_MakeConnected; theS: TopoDS_Shape): TopTools_ListOfShape {.
    importcpp: "MaterialsOnNegativeSide", header: "BOPAlgo_MakeConnected.hxx".}
proc History*(this: BOPAlgo_MakeConnected): handle[BRepTools_History] {.
    noSideEffect, importcpp: "History", header: "BOPAlgo_MakeConnected.hxx".}
proc GetModified*(this: var BOPAlgo_MakeConnected; theS: TopoDS_Shape): TopTools_ListOfShape {.
    importcpp: "GetModified", header: "BOPAlgo_MakeConnected.hxx".}
proc GetOrigins*(this: var BOPAlgo_MakeConnected; theS: TopoDS_Shape): TopTools_ListOfShape {.
    importcpp: "GetOrigins", header: "BOPAlgo_MakeConnected.hxx".}
proc Shape*(this: BOPAlgo_MakeConnected): TopoDS_Shape {.noSideEffect,
    importcpp: "Shape", header: "BOPAlgo_MakeConnected.hxx".}
proc PeriodicShape*(this: BOPAlgo_MakeConnected): TopoDS_Shape {.noSideEffect,
    importcpp: "PeriodicShape", header: "BOPAlgo_MakeConnected.hxx".}
proc Clear*(this: var BOPAlgo_MakeConnected) {.importcpp: "Clear",
    header: "BOPAlgo_MakeConnected.hxx".}