##  Created on: 2018-03-16
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
  ../Standard/Standard_Handle, BOPAlgo_Options, ../BRepTools/BRepTools_History,
  ../Standard/Standard_Boolean, ../TopoDS/TopoDS_Shape,
  ../TopTools/TopTools_DataMapOfShapeShape

## ! BOPAlgo_MakePeriodic is the tool for making an arbitrary shape periodic
## ! in 3D space in specified directions.
## !
## ! Periodicity of the shape means that the shape can be repeated in any
## ! periodic direction any number of times without creation of the new
## ! geometry or splits.
## !
## ! The idea is to make the shape look identical on the opposite sides of the
## ! periodic directions, so when translating the copy of a shape on the period
## ! there will be no coinciding parts of different dimensions.
## !
## ! If necessary the algorithm will trim the shape to fit it into the
## ! requested period by splitting it by the planes limiting the shape's
## ! requested period.
## !
## ! For making the shape periodic in certain direction the algorithm performs
## ! the following steps:
## ! * Creates the copy of the shape and moves it on the period into negative
## !   side of the requested direction;
## ! * Splits the negative side of the shape by the moved copy, ensuring copying
## !   of the geometry from positive side to negative;
## ! * Creates the copy of the shape (with already split negative side) and moves
## !   it on the period into the positive side of the requested direction;
## ! * Splits the positive side of the shape by the moved copy, ensuring copying
## !   of the geometry from negative side to positive.
## !
## ! The algorithm also associates the identical (or twin) shapes located
## ! on the opposite sides of the result shape.
## ! Using the *GetTwins()* method it is possible to get the twin shapes from
## ! the opposite sides.
## !
## ! Algorithm also provides the methods to repeat the periodic shape in
## ! periodic directions. The subsequent repetitions are performed on the
## ! repeated shape, thus repeating the shape two times in X direction will
## ! create result in three shapes (original plus two copies).
## ! Single subsequent repetition will result already in 6 shapes.
## ! The repetitions can be cleared and started over.
## !
## ! The algorithm supports History of shapes modifications, thus
## ! it is possible to track how the shape has been changed to make it periodic
## ! and what new shapes have been created during repetitions.
## !
## ! The algorithm supports the parallel processing mode, which allows faster
## ! completion of the operations.
## !
## ! The algorithm supports the Error/Warning system and returns the following alerts:
## ! - *BOPAlgo_AlertNoPeriodicityRequired* - Error alert is given if no periodicity
## !                                          has been requested in any direction;
## ! - *BOPAlgo_AlertUnableToTrim* - Error alert is given if the trimming of the shape
## !                                 for fitting it into requested period has failed;
## ! - *BOPAlgo_AlertUnableToMakeIdentical* - Error alert is given if splitting of the
## !                                          shape by its moved copies has failed;
## ! - *BOPAlgo_AlertUnableToRepeat* - Warning alert is given if the gluing of the repeated
## !                                   shapes has failed.
## !
## ! Example of usage of the algorithm:
## ! ~~~~
## ! TopoDS_Shape aShape = ...;                 // The shape to make periodic
## ! Standard_Boolean bMakeXPeriodic = ...;     // Flag for making or not the shape periodic in X direction
## ! Standard_Real aXPeriod = ...;              // X period for the shape
## ! Standard_Boolean isXTrimmed = ...;         // Flag defining whether it is necessary to trimming
## !                                            // the shape to fit to X period
## ! Standard_Real aXFirst = ...;               // Start of the X period
## !                                            // (really necessary only if the trimming is requested)
## ! Standard_Boolean bRunParallel = ...;       // Parallel processing mode or single
## !
## ! BOPAlgo_MakePeriodic aPeriodicityMaker;                   // Periodicity maker
## ! aPeriodicityMaker.SetShape(aShape);                       // Set the shape
## ! aPeriodicityMaker.MakeXPeriodic(bMakePeriodic, aXPeriod); // Making the shape periodic in X direction
## ! aPeriodicityMaker.SetTrimmed(isXTrimmed, aXFirst);        // Trim the shape to fit X period
## ! aPeriodicityMaker.SetRunParallel(bRunParallel);           // Set the parallel processing mode
## ! aPeriodicityMaker.Perform();                              // Performing the operation
## !
## ! if (aPeriodicityMaker.HasErrors())                        // Check for the errors
## ! {
## !   // errors treatment
## !   Standard_SStream aSStream;
## !   aPeriodicityMaker.DumpErrors(aSStream);
## !   return;
## ! }
## ! if (aPeriodicityMaker.HasWarnings())                      // Check for the warnings
## ! {
## !   // warnings treatment
## !   Standard_SStream aSStream;
## !   aPeriodicityMaker.DumpWarnings(aSStream);
## ! }
## ! const TopoDS_Shape& aPeriodicShape = aPeriodicityMaker.Shape(); // Result periodic shape
## !
## !
## ! aPeriodicityMaker.XRepeat(2);                                    // Making repetitions
## ! const TopoDS_Shape& aRepeat = aPeriodicityMaker.RepeatedShape(); // Getting the repeated shape
## ! aPeriodicityMaker.ClearRepetitions();                            // Clearing the repetitions
## ! ~~~~
## !

type
  BOPAlgo_MakePeriodic* {.importcpp: "BOPAlgo_MakePeriodic",
                         header: "BOPAlgo_MakePeriodic.hxx", bycopy.} = object of BOPAlgo_Options ##
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
                                                                                           ## Setting
                                                                                           ## the
                                                                                           ## shape
                                                                                           ## to
                                                                                           ## make
                                                                                           ## it
                                                                                           ## periodic
                                                                                           ##
                                                                                           ## !
                                                                                           ## Sets
                                                                                           ## the
                                                                                           ## shape
                                                                                           ## to
                                                                                           ## make
                                                                                           ## it
                                                                                           ## periodic.
                                                                                           ##
                                                                                           ## !
                                                                                           ## @param
                                                                                           ## theShape
                                                                                           ## [in]
                                                                                           ## The
                                                                                           ## shape
                                                                                           ## to
                                                                                           ## make
                                                                                           ## periodic.
                                                                                           ##
                                                                                           ## !
                                                                                           ## @name
                                                                                           ## Definition
                                                                                           ## of
                                                                                           ## the
                                                                                           ## structure
                                                                                           ## to
                                                                                           ## keep
                                                                                           ## all
                                                                                           ## periodicity
                                                                                           ## parameters
                                                                                           ##
                                                                                           ## !
                                                                                           ## Structure
                                                                                           ## to
                                                                                           ## keep
                                                                                           ## all
                                                                                           ## periodicity
                                                                                           ## parameters:
                                                                                           ##
                                                                                           ## !
                                                                                           ## @name
                                                                                           ## Setters/Getters
                                                                                           ## for
                                                                                           ## periodicity
                                                                                           ## parameters
                                                                                           ## structure
                                                                                           ##
                                                                                           ## !
                                                                                           ## Sets
                                                                                           ## the
                                                                                           ## periodicity
                                                                                           ## parameters.
                                                                                           ##
                                                                                           ## !
                                                                                           ## @param
                                                                                           ## theParams
                                                                                           ## [in]
                                                                                           ## Periodicity
                                                                                           ## parameters
                                                                                           ##
                                                                                           ## !
                                                                                           ## @name
                                                                                           ## Methods
                                                                                           ## for
                                                                                           ## setting/getting
                                                                                           ## periodicity
                                                                                           ## info
                                                                                           ## using
                                                                                           ## ID
                                                                                           ## as
                                                                                           ## a
                                                                                           ## direction
                                                                                           ##
                                                                                           ## !
                                                                                           ## Sets
                                                                                           ## the
                                                                                           ## flag
                                                                                           ## to
                                                                                           ## make
                                                                                           ## the
                                                                                           ## shape
                                                                                           ## periodic
                                                                                           ## in
                                                                                           ## specified
                                                                                           ## direction:
                                                                                           ##
                                                                                           ## !
                                                                                           ## -
                                                                                           ## 0
                                                                                           ## -
                                                                                           ## X
                                                                                           ## direction;
                                                                                           ##
                                                                                           ## !
                                                                                           ## -
                                                                                           ## 1
                                                                                           ## -
                                                                                           ## Y
                                                                                           ## direction;
                                                                                           ##
                                                                                           ## !
                                                                                           ## -
                                                                                           ## 2
                                                                                           ## -
                                                                                           ## Z
                                                                                           ## direction.
                                                                                           ##
                                                                                           ## !
                                                                                           ##
                                                                                           ## !
                                                                                           ## @param
                                                                                           ## theDirectionID
                                                                                           ## [in]
                                                                                           ## The
                                                                                           ## direction's
                                                                                           ## ID;
                                                                                           ##
                                                                                           ## !
                                                                                           ## @param
                                                                                           ## theIsPeriodic
                                                                                           ## [in]
                                                                                           ## Flag
                                                                                           ## defining
                                                                                           ## periodicity
                                                                                           ## in
                                                                                           ## given
                                                                                           ## direction;
                                                                                           ##
                                                                                           ## !
                                                                                           ## @param
                                                                                           ## thePeriod
                                                                                           ## [in]
                                                                                           ## Required
                                                                                           ## period
                                                                                           ## in
                                                                                           ## given
                                                                                           ## direction.
                                                                                           ##
                                                                                           ## !
                                                                                           ## @name
                                                                                           ## Named
                                                                                           ## methods
                                                                                           ## for
                                                                                           ## setting/getting
                                                                                           ## info
                                                                                           ## about
                                                                                           ## shape's
                                                                                           ## periodicity
                                                                                           ##
                                                                                           ## !
                                                                                           ## Sets
                                                                                           ## the
                                                                                           ## flag
                                                                                           ## to
                                                                                           ## make
                                                                                           ## the
                                                                                           ## shape
                                                                                           ## periodic
                                                                                           ## in
                                                                                           ## X
                                                                                           ## direction.
                                                                                           ##
                                                                                           ## !
                                                                                           ## @param
                                                                                           ## theIsPeriodic
                                                                                           ## [in]
                                                                                           ## Flag
                                                                                           ## defining
                                                                                           ## periodicity
                                                                                           ## in
                                                                                           ## X
                                                                                           ## direction;
                                                                                           ##
                                                                                           ## !
                                                                                           ## @param
                                                                                           ## thePeriod
                                                                                           ## [in]
                                                                                           ## Required
                                                                                           ## period
                                                                                           ## in
                                                                                           ## X
                                                                                           ## direction.
                                                                                           ##
                                                                                           ## !
                                                                                           ## @name
                                                                                           ## Methods
                                                                                           ## for
                                                                                           ## setting/getting
                                                                                           ## trimming
                                                                                           ## info
                                                                                           ## taking
                                                                                           ## Direction
                                                                                           ## ID
                                                                                           ## as
                                                                                           ## a
                                                                                           ## parameter
                                                                                           ##
                                                                                           ## !
                                                                                           ## Defines
                                                                                           ## whether
                                                                                           ## the
                                                                                           ## input
                                                                                           ## shape
                                                                                           ## is
                                                                                           ## already
                                                                                           ## trimmed
                                                                                           ## in
                                                                                           ## specified
                                                                                           ## direction
                                                                                           ##
                                                                                           ## !
                                                                                           ## to
                                                                                           ## fit
                                                                                           ## the
                                                                                           ## period
                                                                                           ## in
                                                                                           ## this
                                                                                           ## direction.
                                                                                           ##
                                                                                           ## !
                                                                                           ## Direction
                                                                                           ## is
                                                                                           ## defined
                                                                                           ## by
                                                                                           ## an
                                                                                           ## ID:
                                                                                           ##
                                                                                           ## !
                                                                                           ## -
                                                                                           ## 0
                                                                                           ## -
                                                                                           ## X
                                                                                           ## direction;
                                                                                           ##
                                                                                           ## !
                                                                                           ## -
                                                                                           ## 1
                                                                                           ## -
                                                                                           ## Y
                                                                                           ## direction;
                                                                                           ##
                                                                                           ## !
                                                                                           ## -
                                                                                           ## 2
                                                                                           ## -
                                                                                           ## Z
                                                                                           ## direction.
                                                                                           ##
                                                                                           ## !
                                                                                           ##
                                                                                           ## !
                                                                                           ## If
                                                                                           ## the
                                                                                           ## shape
                                                                                           ## is
                                                                                           ## not
                                                                                           ## trimmed
                                                                                           ## it
                                                                                           ## is
                                                                                           ## required
                                                                                           ## to
                                                                                           ## set
                                                                                           ## the
                                                                                           ## first
                                                                                           ## parameter
                                                                                           ##
                                                                                           ## !
                                                                                           ## of
                                                                                           ## the
                                                                                           ## period
                                                                                           ## in
                                                                                           ## that
                                                                                           ## direction.
                                                                                           ##
                                                                                           ## !
                                                                                           ## The
                                                                                           ## algorithm
                                                                                           ## will
                                                                                           ## make
                                                                                           ## the
                                                                                           ## shape
                                                                                           ## fit
                                                                                           ## into
                                                                                           ## the
                                                                                           ## period.
                                                                                           ##
                                                                                           ## !
                                                                                           ##
                                                                                           ## !
                                                                                           ## Before
                                                                                           ## calling
                                                                                           ## this
                                                                                           ## method,
                                                                                           ## the
                                                                                           ## shape
                                                                                           ## has
                                                                                           ## to
                                                                                           ## be
                                                                                           ## set
                                                                                           ## to
                                                                                           ## be
                                                                                           ## periodic
                                                                                           ## in
                                                                                           ## this
                                                                                           ## direction.
                                                                                           ##
                                                                                           ## !
                                                                                           ##
                                                                                           ## !
                                                                                           ## @param
                                                                                           ## theDirectionID
                                                                                           ## [in]
                                                                                           ## The
                                                                                           ## direction's
                                                                                           ## ID;
                                                                                           ##
                                                                                           ## !
                                                                                           ## @param
                                                                                           ## theIsTrimmed
                                                                                           ## [in]
                                                                                           ## The
                                                                                           ## flag
                                                                                           ## defining
                                                                                           ## trimming
                                                                                           ## of
                                                                                           ## the
                                                                                           ## shape
                                                                                           ## in
                                                                                           ## given
                                                                                           ## direction;
                                                                                           ##
                                                                                           ## !
                                                                                           ## @param
                                                                                           ## theFirst
                                                                                           ## [in]
                                                                                           ## The
                                                                                           ## first
                                                                                           ## periodic
                                                                                           ## parameter
                                                                                           ## in
                                                                                           ## the
                                                                                           ## given
                                                                                           ## direction.
                                                                                           ##
                                                                                           ## !
                                                                                           ## @name
                                                                                           ## Named
                                                                                           ## methods
                                                                                           ## for
                                                                                           ## setting/getting
                                                                                           ## trimming
                                                                                           ## info
                                                                                           ##
                                                                                           ## !
                                                                                           ## Defines
                                                                                           ## whether
                                                                                           ## the
                                                                                           ## input
                                                                                           ## shape
                                                                                           ## is
                                                                                           ## already
                                                                                           ## trimmed
                                                                                           ## in
                                                                                           ## X
                                                                                           ## direction
                                                                                           ##
                                                                                           ## !
                                                                                           ## to
                                                                                           ## fit
                                                                                           ## the
                                                                                           ## X
                                                                                           ## period.
                                                                                           ## If
                                                                                           ## the
                                                                                           ## shape
                                                                                           ## is
                                                                                           ## not
                                                                                           ## trimmed
                                                                                           ## it
                                                                                           ## is
                                                                                           ## required
                                                                                           ##
                                                                                           ## !
                                                                                           ## to
                                                                                           ## set
                                                                                           ## the
                                                                                           ## first
                                                                                           ## parameter
                                                                                           ## for
                                                                                           ## the
                                                                                           ## X
                                                                                           ## period.
                                                                                           ##
                                                                                           ## !
                                                                                           ## The
                                                                                           ## algorithm
                                                                                           ## will
                                                                                           ## make
                                                                                           ## the
                                                                                           ## shape
                                                                                           ## fit
                                                                                           ## into
                                                                                           ## the
                                                                                           ## period.
                                                                                           ##
                                                                                           ## !
                                                                                           ##
                                                                                           ## !
                                                                                           ## Before
                                                                                           ## calling
                                                                                           ## this
                                                                                           ## method,
                                                                                           ## the
                                                                                           ## shape
                                                                                           ## has
                                                                                           ## to
                                                                                           ## be
                                                                                           ## set
                                                                                           ## to
                                                                                           ## be
                                                                                           ## periodic
                                                                                           ## in
                                                                                           ## this
                                                                                           ## direction.
                                                                                           ##
                                                                                           ## !
                                                                                           ##
                                                                                           ## !
                                                                                           ## @param
                                                                                           ## theIsTrimmed
                                                                                           ## [in]
                                                                                           ## Flag
                                                                                           ## defining
                                                                                           ## whether
                                                                                           ## the
                                                                                           ## shape
                                                                                           ## is
                                                                                           ## already
                                                                                           ## trimmed
                                                                                           ##
                                                                                           ## !
                                                                                           ## in
                                                                                           ## X
                                                                                           ## direction
                                                                                           ## to
                                                                                           ## fit
                                                                                           ## the
                                                                                           ## X
                                                                                           ## period;
                                                                                           ##
                                                                                           ## !
                                                                                           ## @param
                                                                                           ## theFirst
                                                                                           ## [in]
                                                                                           ## The
                                                                                           ## first
                                                                                           ## X
                                                                                           ## periodic
                                                                                           ## parameter.
                                                                                           ##
                                                                                           ## !
                                                                                           ## @name
                                                                                           ## Performing
                                                                                           ## the
                                                                                           ## operation
                                                                                           ##
                                                                                           ## !
                                                                                           ## Makes
                                                                                           ## the
                                                                                           ## shape
                                                                                           ## periodic
                                                                                           ## in
                                                                                           ## necessary
                                                                                           ## directions
                                                                                           ##
                                                                                           ## !
                                                                                           ## @name
                                                                                           ## Using
                                                                                           ## the
                                                                                           ## algorithm
                                                                                           ## to
                                                                                           ## repeat
                                                                                           ## the
                                                                                           ## shape
                                                                                           ##
                                                                                           ## !
                                                                                           ## Performs
                                                                                           ## repetition
                                                                                           ## of
                                                                                           ## the
                                                                                           ## shape
                                                                                           ## in
                                                                                           ## specified
                                                                                           ## direction
                                                                                           ##
                                                                                           ## !
                                                                                           ## required
                                                                                           ## number
                                                                                           ## of
                                                                                           ## times.
                                                                                           ##
                                                                                           ## !
                                                                                           ## Negative
                                                                                           ## value
                                                                                           ## of
                                                                                           ## times
                                                                                           ## means
                                                                                           ## that
                                                                                           ## the
                                                                                           ## repetition
                                                                                           ## should
                                                                                           ##
                                                                                           ## !
                                                                                           ## be
                                                                                           ## perform
                                                                                           ## in
                                                                                           ## negative
                                                                                           ## direction.
                                                                                           ##
                                                                                           ## !
                                                                                           ## Makes
                                                                                           ## the
                                                                                           ## repeated
                                                                                           ## shape
                                                                                           ## a
                                                                                           ## base
                                                                                           ## for
                                                                                           ## following
                                                                                           ## repetitions.
                                                                                           ##
                                                                                           ## !
                                                                                           ##
                                                                                           ## !
                                                                                           ## @param
                                                                                           ## theDirectionID
                                                                                           ## [in]
                                                                                           ## The
                                                                                           ## direction's
                                                                                           ## ID;
                                                                                           ##
                                                                                           ## !
                                                                                           ## @param
                                                                                           ## theTimes
                                                                                           ## [in]
                                                                                           ## Requested
                                                                                           ## number
                                                                                           ## of
                                                                                           ## repetitions.
                                                                                           ##
                                                                                           ## !
                                                                                           ## @name
                                                                                           ## Starting
                                                                                           ## the
                                                                                           ## repetitions
                                                                                           ## over
                                                                                           ##
                                                                                           ## !
                                                                                           ## Returns
                                                                                           ## the
                                                                                           ## repeated
                                                                                           ## shape
                                                                                           ##
                                                                                           ## !
                                                                                           ## @name
                                                                                           ## Obtaining
                                                                                           ## the
                                                                                           ## result
                                                                                           ## shape
                                                                                           ##
                                                                                           ## !
                                                                                           ## Returns
                                                                                           ## the
                                                                                           ## resulting
                                                                                           ## periodic
                                                                                           ## shape
                                                                                           ##
                                                                                           ## !
                                                                                           ## @name
                                                                                           ## Getting
                                                                                           ## the
                                                                                           ## identical
                                                                                           ## shapes
                                                                                           ##
                                                                                           ## !
                                                                                           ## Returns
                                                                                           ## the
                                                                                           ## identical
                                                                                           ## shapes
                                                                                           ## for
                                                                                           ## the
                                                                                           ## given
                                                                                           ## shape
                                                                                           ## located
                                                                                           ##
                                                                                           ## !
                                                                                           ## on
                                                                                           ## the
                                                                                           ## opposite
                                                                                           ## periodic
                                                                                           ## side.
                                                                                           ##
                                                                                           ## !
                                                                                           ## Returns
                                                                                           ## empty
                                                                                           ## list
                                                                                           ## in
                                                                                           ## case
                                                                                           ## the
                                                                                           ## shape
                                                                                           ## has
                                                                                           ## no
                                                                                           ## twin.
                                                                                           ##
                                                                                           ## !
                                                                                           ##
                                                                                           ## !
                                                                                           ## @param
                                                                                           ## theS
                                                                                           ## [in]
                                                                                           ## Shape
                                                                                           ## to
                                                                                           ## get
                                                                                           ## the
                                                                                           ## twins
                                                                                           ## for.
                                                                                           ##
                                                                                           ## !
                                                                                           ## @name
                                                                                           ## Getting
                                                                                           ## the
                                                                                           ## History
                                                                                           ## of
                                                                                           ## the
                                                                                           ## algorithm
                                                                                           ##
                                                                                           ## !
                                                                                           ## Returns
                                                                                           ## the
                                                                                           ## History
                                                                                           ## of
                                                                                           ## the
                                                                                           ## algorithm
                                                                                           ##
                                                                                           ## !
                                                                                           ## @name
                                                                                           ## Clearing
                                                                                           ## the
                                                                                           ## algorithm
                                                                                           ## from
                                                                                           ## previous
                                                                                           ## runs
                                                                                           ##
                                                                                           ## !
                                                                                           ## Clears
                                                                                           ## the
                                                                                           ## algorithm
                                                                                           ## from
                                                                                           ## previous
                                                                                           ## runs
                                                                                           ##
                                                                                           ## !
                                                                                           ## @name
                                                                                           ## Conversion
                                                                                           ## of
                                                                                           ## the
                                                                                           ## integer
                                                                                           ## to
                                                                                           ## ID
                                                                                           ## of
                                                                                           ## periodic
                                                                                           ## direction
                                                                                           ##
                                                                                           ## !
                                                                                           ## Converts
                                                                                           ## the
                                                                                           ## integer
                                                                                           ## to
                                                                                           ## ID
                                                                                           ## of
                                                                                           ## periodic
                                                                                           ## direction
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
                                                                                           ## data
                                                                                           ##
                                                                                           ## !
                                                                                           ## @name
                                                                                           ## Fields
                                                                                           ##
                                                                                           ## Inputs
    ## !< Input shape to make periodic
    ## !< Periodicity parameters
    ##  Results
    ## !< Resulting periodic shape (base for repetitions)
    ## !< Resulting shape after making repetitions of the base
    ## !< XYZ repeat period
    ## !< Map of associations of the identical sub-shapes
    ## ! after repetition of the periodic shape
    ##  Twins
    ## !< Map of associations of the identical sub-shapes
    ## ! located on the opposite sides of the shape
    ##  History
    ## !< Split history - history of shapes modification
    ## ! after the split for making the shape periodic
    ## !< Final history of shapes modifications
    ## ! (to include the history of shape repetition)


proc constructBOPAlgo_MakePeriodic*(): BOPAlgo_MakePeriodic {.constructor,
    importcpp: "BOPAlgo_MakePeriodic(@)", header: "BOPAlgo_MakePeriodic.hxx".}
proc SetShape*(this: var BOPAlgo_MakePeriodic; theShape: TopoDS_Shape) {.
    importcpp: "SetShape", header: "BOPAlgo_MakePeriodic.hxx".}
type
  BOPAlgo_MakePeriodicPeriodicityParams* {.
      importcpp: "BOPAlgo_MakePeriodic::PeriodicityParams",
      header: "BOPAlgo_MakePeriodic.hxx", bycopy.} = object
    myPeriodic* {.importc: "myPeriodic".}: array[3, Standard_Boolean] ## !< Array of flags defining whether the shape should be
                                                                 ## ! periodic in XYZ directions
    myPeriod* {.importc: "myPeriod".}: array[3, Standard_Real] ## !< Array of XYZ period values. Defining the period for any
                                                          ## ! direction the corresponding flag for that direction in
                                                          ## ! myPeriodic should be set to true
    myIsTrimmed* {.importc: "myIsTrimmed".}: array[3, Standard_Boolean] ## !< Array of flags defining whether the input shape has to be
                                                                   ## ! trimmed to fit the required period in the required direction
    myPeriodFirst* {.importc: "myPeriodFirst".}: array[3, Standard_Real] ## !< Array of start parameters of the XYZ periods: required for trimming


proc constructBOPAlgo_MakePeriodicPeriodicityParams*(): BOPAlgo_MakePeriodicPeriodicityParams {.
    constructor, importcpp: "BOPAlgo_MakePeriodic::PeriodicityParams(@)",
    header: "BOPAlgo_MakePeriodic.hxx".}
proc Clear*(this: var BOPAlgo_MakePeriodicPeriodicityParams) {.importcpp: "Clear",
    header: "BOPAlgo_MakePeriodic.hxx".}
proc SetPeriodicityParameters*(this: var BOPAlgo_MakePeriodic;
                              theParams: BOPAlgo_MakePeriodicPeriodicityParams) {.
    importcpp: "SetPeriodicityParameters", header: "BOPAlgo_MakePeriodic.hxx".}
proc PeriodicityParameters*(this: BOPAlgo_MakePeriodic): BOPAlgo_MakePeriodicPeriodicityParams {.
    noSideEffect, importcpp: "PeriodicityParameters",
    header: "BOPAlgo_MakePeriodic.hxx".}
proc MakePeriodic*(this: var BOPAlgo_MakePeriodic; theDirectionID: Standard_Integer;
                  theIsPeriodic: Standard_Boolean; thePeriod: Standard_Real = 0.0) {.
    importcpp: "MakePeriodic", header: "BOPAlgo_MakePeriodic.hxx".}
proc IsPeriodic*(this: BOPAlgo_MakePeriodic; theDirectionID: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsPeriodic", header: "BOPAlgo_MakePeriodic.hxx".}
proc Period*(this: BOPAlgo_MakePeriodic; theDirectionID: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "Period", header: "BOPAlgo_MakePeriodic.hxx".}
proc MakeXPeriodic*(this: var BOPAlgo_MakePeriodic; theIsPeriodic: Standard_Boolean;
                   thePeriod: Standard_Real = 0.0) {.importcpp: "MakeXPeriodic",
    header: "BOPAlgo_MakePeriodic.hxx".}
proc IsXPeriodic*(this: BOPAlgo_MakePeriodic): Standard_Boolean {.noSideEffect,
    importcpp: "IsXPeriodic", header: "BOPAlgo_MakePeriodic.hxx".}
proc XPeriod*(this: BOPAlgo_MakePeriodic): Standard_Real {.noSideEffect,
    importcpp: "XPeriod", header: "BOPAlgo_MakePeriodic.hxx".}
proc MakeYPeriodic*(this: var BOPAlgo_MakePeriodic; theIsPeriodic: Standard_Boolean;
                   thePeriod: Standard_Real = 0.0) {.importcpp: "MakeYPeriodic",
    header: "BOPAlgo_MakePeriodic.hxx".}
proc IsYPeriodic*(this: BOPAlgo_MakePeriodic): Standard_Boolean {.noSideEffect,
    importcpp: "IsYPeriodic", header: "BOPAlgo_MakePeriodic.hxx".}
proc YPeriod*(this: BOPAlgo_MakePeriodic): Standard_Real {.noSideEffect,
    importcpp: "YPeriod", header: "BOPAlgo_MakePeriodic.hxx".}
proc MakeZPeriodic*(this: var BOPAlgo_MakePeriodic; theIsPeriodic: Standard_Boolean;
                   thePeriod: Standard_Real = 0.0) {.importcpp: "MakeZPeriodic",
    header: "BOPAlgo_MakePeriodic.hxx".}
proc IsZPeriodic*(this: BOPAlgo_MakePeriodic): Standard_Boolean {.noSideEffect,
    importcpp: "IsZPeriodic", header: "BOPAlgo_MakePeriodic.hxx".}
proc ZPeriod*(this: BOPAlgo_MakePeriodic): Standard_Real {.noSideEffect,
    importcpp: "ZPeriod", header: "BOPAlgo_MakePeriodic.hxx".}
proc SetTrimmed*(this: var BOPAlgo_MakePeriodic; theDirectionID: Standard_Integer;
                theIsTrimmed: Standard_Boolean; theFirst: Standard_Real = 0.0) {.
    importcpp: "SetTrimmed", header: "BOPAlgo_MakePeriodic.hxx".}
proc IsInputTrimmed*(this: BOPAlgo_MakePeriodic; theDirectionID: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsInputTrimmed", header: "BOPAlgo_MakePeriodic.hxx".}
proc PeriodFirst*(this: BOPAlgo_MakePeriodic; theDirectionID: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "PeriodFirst", header: "BOPAlgo_MakePeriodic.hxx".}
proc SetXTrimmed*(this: var BOPAlgo_MakePeriodic; theIsTrimmed: Standard_Boolean;
                 theFirst: Standard_Boolean = 0.0) {.importcpp: "SetXTrimmed",
    header: "BOPAlgo_MakePeriodic.hxx".}
proc IsInputXTrimmed*(this: BOPAlgo_MakePeriodic): Standard_Boolean {.noSideEffect,
    importcpp: "IsInputXTrimmed", header: "BOPAlgo_MakePeriodic.hxx".}
proc XPeriodFirst*(this: BOPAlgo_MakePeriodic): Standard_Real {.noSideEffect,
    importcpp: "XPeriodFirst", header: "BOPAlgo_MakePeriodic.hxx".}
proc SetYTrimmed*(this: var BOPAlgo_MakePeriodic; theIsTrimmed: Standard_Boolean;
                 theFirst: Standard_Boolean = 0.0) {.importcpp: "SetYTrimmed",
    header: "BOPAlgo_MakePeriodic.hxx".}
proc IsInputYTrimmed*(this: BOPAlgo_MakePeriodic): Standard_Boolean {.noSideEffect,
    importcpp: "IsInputYTrimmed", header: "BOPAlgo_MakePeriodic.hxx".}
proc YPeriodFirst*(this: BOPAlgo_MakePeriodic): Standard_Real {.noSideEffect,
    importcpp: "YPeriodFirst", header: "BOPAlgo_MakePeriodic.hxx".}
proc SetZTrimmed*(this: var BOPAlgo_MakePeriodic; theIsTrimmed: Standard_Boolean;
                 theFirst: Standard_Boolean = 0.0) {.importcpp: "SetZTrimmed",
    header: "BOPAlgo_MakePeriodic.hxx".}
proc IsInputZTrimmed*(this: BOPAlgo_MakePeriodic): Standard_Boolean {.noSideEffect,
    importcpp: "IsInputZTrimmed", header: "BOPAlgo_MakePeriodic.hxx".}
proc ZPeriodFirst*(this: BOPAlgo_MakePeriodic): Standard_Real {.noSideEffect,
    importcpp: "ZPeriodFirst", header: "BOPAlgo_MakePeriodic.hxx".}
proc Perform*(this: var BOPAlgo_MakePeriodic) {.importcpp: "Perform",
    header: "BOPAlgo_MakePeriodic.hxx".}
proc RepeatShape*(this: var BOPAlgo_MakePeriodic; theDirectionID: Standard_Integer;
                 theTimes: Standard_Integer): TopoDS_Shape {.
    importcpp: "RepeatShape", header: "BOPAlgo_MakePeriodic.hxx".}
proc XRepeat*(this: var BOPAlgo_MakePeriodic; theTimes: Standard_Integer): TopoDS_Shape {.
    importcpp: "XRepeat", header: "BOPAlgo_MakePeriodic.hxx".}
proc YRepeat*(this: var BOPAlgo_MakePeriodic; theTimes: Standard_Integer): TopoDS_Shape {.
    importcpp: "YRepeat", header: "BOPAlgo_MakePeriodic.hxx".}
proc ZRepeat*(this: var BOPAlgo_MakePeriodic; theTimes: Standard_Integer): TopoDS_Shape {.
    importcpp: "ZRepeat", header: "BOPAlgo_MakePeriodic.hxx".}
proc RepeatedShape*(this: BOPAlgo_MakePeriodic): TopoDS_Shape {.noSideEffect,
    importcpp: "RepeatedShape", header: "BOPAlgo_MakePeriodic.hxx".}
proc ClearRepetitions*(this: var BOPAlgo_MakePeriodic) {.
    importcpp: "ClearRepetitions", header: "BOPAlgo_MakePeriodic.hxx".}
proc Shape*(this: BOPAlgo_MakePeriodic): TopoDS_Shape {.noSideEffect,
    importcpp: "Shape", header: "BOPAlgo_MakePeriodic.hxx".}
proc GetTwins*(this: BOPAlgo_MakePeriodic; theS: TopoDS_Shape): TopTools_ListOfShape {.
    noSideEffect, importcpp: "GetTwins", header: "BOPAlgo_MakePeriodic.hxx".}
proc History*(this: BOPAlgo_MakePeriodic): handle[BRepTools_History] {.noSideEffect,
    importcpp: "History", header: "BOPAlgo_MakePeriodic.hxx".}
proc Clear*(this: var BOPAlgo_MakePeriodic) {.importcpp: "Clear",
    header: "BOPAlgo_MakePeriodic.hxx".}
proc ToDirectionID*(theDirectionID: Standard_Integer): Standard_Integer {.
    importcpp: "BOPAlgo_MakePeriodic::ToDirectionID(@)",
    header: "BOPAlgo_MakePeriodic.hxx".}