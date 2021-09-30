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

## ! Solid Builder is the algorithm for building solids from set of faces.
## ! The given faces should be non-intersecting, i.e. all coinciding parts
## ! of the faces should be shared among them.
## !
## ! The algorithm performs the following steps to build the solids:
## ! 1. Find:
## !    - faces orientated INTERNAL;
## !    - alone faces given twice with different orientation;
## ! 2. Build all possible closed shells from the rest of the faces
## !    (*BOPAlgo_ShellSplitter* is used for that);
## ! 3. Classify the obtained shells on the Holes and Growths;
## ! 4. Build solids from the Growth shells, put Hole shells into closest Growth solids;
## ! 5. Classify all unused faces relatively created solids and put them as internal
## !    shells into the closest solids;
## ! 6. Find all unclassified faces, i.e. faces outside of all created solids,
## !    make internal shells from them and put these shells into a warning.
## !
## ! It is possible to avoid all internal shells in the resulting solids.
## ! For that it is necessary to use the method SetAvoidInternalShapes(true)
## ! of the base class. In this case the steps 5 and 6 will not be performed at all.
## !
## ! The algorithm may return the following warnings:
## ! - *BOPAlgo_AlertShellSplitterFailed* in case the ShellSplitter algorithm has failed;
## ! - *BOPAlgo_AlertSolidBuilderUnusedFaces* in case there are some faces outside of
## !   created solids left.
## !
## ! Example of usage of the algorithm:
## ! ~~~~
## ! const TopTools_ListOfShape& aFaces = ...;     // Faces to build the solids
## ! Standard_Boolean isAvoidInternals = ...;      // Flag which defines whether to create the internal shells or not
## ! BOPAlgo_BuilderSolid aBS;                     // Solid Builder tool
## ! aBS.SetShapes(aFaces);                        // Set the faces
## ! aBS.SetAvoidInternalShapes(isAvoidInternals); // Set the AvoidInternalShapesFlag
## ! aBS.Perform();                                // Perform the operation
## ! if (!aBS.IsDone())                            // Check for the errors
## ! {
## !   // error treatment
## !   Standard_SStream aSStream;
## !   aBS.DumpErrors(aSStream);
## !   return;
## ! }
## ! if (aBS.HasWarnings())                        // Check for the warnings
## ! {
## !   // warnings treatment
## !   Standard_SStream aSStream;
## !   aBS.DumpWarnings(aSStream);
## ! }
## !
## ! const TopTools_ListOfShape& aSolids = aBS.Areas(); // Obtaining the result solids
## ! ~~~~
## !

type
  BOPAlgoBuilderSolid* {.importcpp: "BOPAlgo_BuilderSolid",
                        header: "BOPAlgo_BuilderSolid.hxx", bycopy.} = object of BOPAlgoBuilderArea ##
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
                                                                                             ## Performing
                                                                                             ## the
                                                                                             ## operation
                                                                                             ##
                                                                                             ## !
                                                                                             ## Performs
                                                                                             ## the
                                                                                             ## construction
                                                                                             ## of
                                                                                             ## the
                                                                                             ## solids
                                                                                             ## from
                                                                                             ## the
                                                                                             ## given
                                                                                             ## faces
                                                                                             ##
                                                                                             ## !
                                                                                             ## @name
                                                                                             ## Getting
                                                                                             ## the
                                                                                             ## bounding
                                                                                             ## boxes
                                                                                             ## of
                                                                                             ## the
                                                                                             ## created
                                                                                             ## solids
                                                                                             ##
                                                                                             ## !
                                                                                             ## For
                                                                                             ## classification
                                                                                             ## purposes
                                                                                             ## the
                                                                                             ## algorithm
                                                                                             ## builds
                                                                                             ## the
                                                                                             ## bounding
                                                                                             ## boxes
                                                                                             ##
                                                                                             ## !
                                                                                             ## for
                                                                                             ## all
                                                                                             ## created
                                                                                             ## solids.
                                                                                             ## This
                                                                                             ## method
                                                                                             ## returns
                                                                                             ## the
                                                                                             ## data
                                                                                             ## map
                                                                                             ## of
                                                                                             ## solid
                                                                                             ## -
                                                                                             ## box
                                                                                             ## pairs.
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
                                                                                             ## Collect
                                                                                             ## the
                                                                                             ## faces:
                                                                                             ##
                                                                                             ## !
                                                                                             ## -
                                                                                             ## with
                                                                                             ## INTERNAL
                                                                                             ## orientation;
                                                                                             ##
                                                                                             ## !
                                                                                             ## -
                                                                                             ## that
                                                                                             ## are
                                                                                             ## alone
                                                                                             ## but
                                                                                             ## given
                                                                                             ## twice
                                                                                             ## with
                                                                                             ## different
                                                                                             ## orientation.
                                                                                             ##
                                                                                             ## !
                                                                                             ## These
                                                                                             ## faces
                                                                                             ## will
                                                                                             ## be
                                                                                             ## put
                                                                                             ## into
                                                                                             ## the
                                                                                             ## map
                                                                                             ## *myShapesToAvoid*
                                                                                             ## and
                                                                                             ## will
                                                                                             ## be
                                                                                             ##
                                                                                             ## !
                                                                                             ## avoided
                                                                                             ## in
                                                                                             ## shells
                                                                                             ## construction,
                                                                                             ## but
                                                                                             ## will
                                                                                             ## be
                                                                                             ## classified
                                                                                             ## later
                                                                                             ## on.
    ##  Boxes of the produced solids


proc constructBOPAlgoBuilderSolid*(): BOPAlgoBuilderSolid {.constructor,
    importcpp: "BOPAlgo_BuilderSolid(@)", header: "BOPAlgo_BuilderSolid.hxx".}
proc destroyBOPAlgoBuilderSolid*(this: var BOPAlgoBuilderSolid) {.
    importcpp: "#.~BOPAlgo_BuilderSolid()", header: "BOPAlgo_BuilderSolid.hxx".}
proc constructBOPAlgoBuilderSolid*(theAllocator: Handle[NCollectionBaseAllocator]): BOPAlgoBuilderSolid {.
    constructor, importcpp: "BOPAlgo_BuilderSolid(@)",
    header: "BOPAlgo_BuilderSolid.hxx".}
proc perform*(this: var BOPAlgoBuilderSolid) {.importcpp: "Perform",
    header: "BOPAlgo_BuilderSolid.hxx".}
proc getBoxesMap*(this: BOPAlgoBuilderSolid): TopToolsDataMapOfShapeBox {.
    noSideEffect, importcpp: "GetBoxesMap", header: "BOPAlgo_BuilderSolid.hxx".}

























