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
  BOPAlgoMakePeriodic* {.importcpp: "BOPAlgo_MakePeriodic",
                        header: "BOPAlgo_MakePeriodic.hxx", bycopy.} = object of BOPAlgoOptions ##
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


proc constructBOPAlgoMakePeriodic*(): BOPAlgoMakePeriodic {.constructor,
    importcpp: "BOPAlgo_MakePeriodic(@)", header: "BOPAlgo_MakePeriodic.hxx".}
proc setShape*(this: var BOPAlgoMakePeriodic; theShape: TopoDS_Shape) {.
    importcpp: "SetShape", header: "BOPAlgo_MakePeriodic.hxx".}
type
  BOPAlgoMakePeriodicPeriodicityParams* {.
      importcpp: "BOPAlgo_MakePeriodic::PeriodicityParams",
      header: "BOPAlgo_MakePeriodic.hxx", bycopy.} = object
    myPeriodic* {.importc: "myPeriodic".}: array[3, StandardBoolean] ## !< Array of flags defining whether the shape should be
                                                                ## ! periodic in XYZ directions
    myPeriod* {.importc: "myPeriod".}: array[3, StandardReal] ## !< Array of XYZ period values. Defining the period for any
                                                         ## ! direction the corresponding flag for that direction in
                                                         ## ! myPeriodic should be set to true
    myIsTrimmed* {.importc: "myIsTrimmed".}: array[3, StandardBoolean] ## !< Array of flags defining whether the input shape has to be
                                                                  ## ! trimmed to fit the required period in the required direction
    myPeriodFirst* {.importc: "myPeriodFirst".}: array[3, StandardReal] ## !< Array of start parameters of the XYZ periods: required for trimming


proc constructBOPAlgoMakePeriodicPeriodicityParams*(): BOPAlgoMakePeriodicPeriodicityParams {.
    constructor, importcpp: "BOPAlgo_MakePeriodic::PeriodicityParams(@)",
    header: "BOPAlgo_MakePeriodic.hxx".}
proc clear*(this: var BOPAlgoMakePeriodicPeriodicityParams) {.importcpp: "Clear",
    header: "BOPAlgo_MakePeriodic.hxx".}
proc setPeriodicityParameters*(this: var BOPAlgoMakePeriodic;
                              theParams: BOPAlgoMakePeriodicPeriodicityParams) {.
    importcpp: "SetPeriodicityParameters", header: "BOPAlgo_MakePeriodic.hxx".}
proc periodicityParameters*(this: BOPAlgoMakePeriodic): BOPAlgoMakePeriodicPeriodicityParams {.
    noSideEffect, importcpp: "PeriodicityParameters",
    header: "BOPAlgo_MakePeriodic.hxx".}
proc makePeriodic*(this: var BOPAlgoMakePeriodic; theDirectionID: StandardInteger;
                  theIsPeriodic: StandardBoolean; thePeriod: StandardReal = 0.0) {.
    importcpp: "MakePeriodic", header: "BOPAlgo_MakePeriodic.hxx".}
proc isPeriodic*(this: BOPAlgoMakePeriodic; theDirectionID: StandardInteger): StandardBoolean {.
    noSideEffect, importcpp: "IsPeriodic", header: "BOPAlgo_MakePeriodic.hxx".}
proc period*(this: BOPAlgoMakePeriodic; theDirectionID: StandardInteger): StandardReal {.
    noSideEffect, importcpp: "Period", header: "BOPAlgo_MakePeriodic.hxx".}
proc makeXPeriodic*(this: var BOPAlgoMakePeriodic; theIsPeriodic: StandardBoolean;
                   thePeriod: StandardReal = 0.0) {.importcpp: "MakeXPeriodic",
    header: "BOPAlgo_MakePeriodic.hxx".}
proc isXPeriodic*(this: BOPAlgoMakePeriodic): StandardBoolean {.noSideEffect,
    importcpp: "IsXPeriodic", header: "BOPAlgo_MakePeriodic.hxx".}
proc xPeriod*(this: BOPAlgoMakePeriodic): StandardReal {.noSideEffect,
    importcpp: "XPeriod", header: "BOPAlgo_MakePeriodic.hxx".}
proc makeYPeriodic*(this: var BOPAlgoMakePeriodic; theIsPeriodic: StandardBoolean;
                   thePeriod: StandardReal = 0.0) {.importcpp: "MakeYPeriodic",
    header: "BOPAlgo_MakePeriodic.hxx".}
proc isYPeriodic*(this: BOPAlgoMakePeriodic): StandardBoolean {.noSideEffect,
    importcpp: "IsYPeriodic", header: "BOPAlgo_MakePeriodic.hxx".}
proc yPeriod*(this: BOPAlgoMakePeriodic): StandardReal {.noSideEffect,
    importcpp: "YPeriod", header: "BOPAlgo_MakePeriodic.hxx".}
proc makeZPeriodic*(this: var BOPAlgoMakePeriodic; theIsPeriodic: StandardBoolean;
                   thePeriod: StandardReal = 0.0) {.importcpp: "MakeZPeriodic",
    header: "BOPAlgo_MakePeriodic.hxx".}
proc isZPeriodic*(this: BOPAlgoMakePeriodic): StandardBoolean {.noSideEffect,
    importcpp: "IsZPeriodic", header: "BOPAlgo_MakePeriodic.hxx".}
proc zPeriod*(this: BOPAlgoMakePeriodic): StandardReal {.noSideEffect,
    importcpp: "ZPeriod", header: "BOPAlgo_MakePeriodic.hxx".}
proc setTrimmed*(this: var BOPAlgoMakePeriodic; theDirectionID: StandardInteger;
                theIsTrimmed: StandardBoolean; theFirst: StandardReal = 0.0) {.
    importcpp: "SetTrimmed", header: "BOPAlgo_MakePeriodic.hxx".}
proc isInputTrimmed*(this: BOPAlgoMakePeriodic; theDirectionID: StandardInteger): StandardBoolean {.
    noSideEffect, importcpp: "IsInputTrimmed", header: "BOPAlgo_MakePeriodic.hxx".}
proc periodFirst*(this: BOPAlgoMakePeriodic; theDirectionID: StandardInteger): StandardReal {.
    noSideEffect, importcpp: "PeriodFirst", header: "BOPAlgo_MakePeriodic.hxx".}
proc setXTrimmed*(this: var BOPAlgoMakePeriodic; theIsTrimmed: StandardBoolean;
                 theFirst: StandardBoolean = 0.0) {.importcpp: "SetXTrimmed",
    header: "BOPAlgo_MakePeriodic.hxx".}
proc isInputXTrimmed*(this: BOPAlgoMakePeriodic): StandardBoolean {.noSideEffect,
    importcpp: "IsInputXTrimmed", header: "BOPAlgo_MakePeriodic.hxx".}
proc xPeriodFirst*(this: BOPAlgoMakePeriodic): StandardReal {.noSideEffect,
    importcpp: "XPeriodFirst", header: "BOPAlgo_MakePeriodic.hxx".}
proc setYTrimmed*(this: var BOPAlgoMakePeriodic; theIsTrimmed: StandardBoolean;
                 theFirst: StandardBoolean = 0.0) {.importcpp: "SetYTrimmed",
    header: "BOPAlgo_MakePeriodic.hxx".}
proc isInputYTrimmed*(this: BOPAlgoMakePeriodic): StandardBoolean {.noSideEffect,
    importcpp: "IsInputYTrimmed", header: "BOPAlgo_MakePeriodic.hxx".}
proc yPeriodFirst*(this: BOPAlgoMakePeriodic): StandardReal {.noSideEffect,
    importcpp: "YPeriodFirst", header: "BOPAlgo_MakePeriodic.hxx".}
proc setZTrimmed*(this: var BOPAlgoMakePeriodic; theIsTrimmed: StandardBoolean;
                 theFirst: StandardBoolean = 0.0) {.importcpp: "SetZTrimmed",
    header: "BOPAlgo_MakePeriodic.hxx".}
proc isInputZTrimmed*(this: BOPAlgoMakePeriodic): StandardBoolean {.noSideEffect,
    importcpp: "IsInputZTrimmed", header: "BOPAlgo_MakePeriodic.hxx".}
proc zPeriodFirst*(this: BOPAlgoMakePeriodic): StandardReal {.noSideEffect,
    importcpp: "ZPeriodFirst", header: "BOPAlgo_MakePeriodic.hxx".}
proc perform*(this: var BOPAlgoMakePeriodic) {.importcpp: "Perform",
    header: "BOPAlgo_MakePeriodic.hxx".}
proc repeatShape*(this: var BOPAlgoMakePeriodic; theDirectionID: StandardInteger;
                 theTimes: StandardInteger): TopoDS_Shape {.
    importcpp: "RepeatShape", header: "BOPAlgo_MakePeriodic.hxx".}
proc xRepeat*(this: var BOPAlgoMakePeriodic; theTimes: StandardInteger): TopoDS_Shape {.
    importcpp: "XRepeat", header: "BOPAlgo_MakePeriodic.hxx".}
proc yRepeat*(this: var BOPAlgoMakePeriodic; theTimes: StandardInteger): TopoDS_Shape {.
    importcpp: "YRepeat", header: "BOPAlgo_MakePeriodic.hxx".}
proc zRepeat*(this: var BOPAlgoMakePeriodic; theTimes: StandardInteger): TopoDS_Shape {.
    importcpp: "ZRepeat", header: "BOPAlgo_MakePeriodic.hxx".}
proc repeatedShape*(this: BOPAlgoMakePeriodic): TopoDS_Shape {.noSideEffect,
    importcpp: "RepeatedShape", header: "BOPAlgo_MakePeriodic.hxx".}
proc clearRepetitions*(this: var BOPAlgoMakePeriodic) {.
    importcpp: "ClearRepetitions", header: "BOPAlgo_MakePeriodic.hxx".}
proc shape*(this: BOPAlgoMakePeriodic): TopoDS_Shape {.noSideEffect,
    importcpp: "Shape", header: "BOPAlgo_MakePeriodic.hxx".}
proc getTwins*(this: BOPAlgoMakePeriodic; theS: TopoDS_Shape): TopToolsListOfShape {.
    noSideEffect, importcpp: "GetTwins", header: "BOPAlgo_MakePeriodic.hxx".}
proc history*(this: BOPAlgoMakePeriodic): Handle[BRepToolsHistory] {.noSideEffect,
    importcpp: "History", header: "BOPAlgo_MakePeriodic.hxx".}
proc clear*(this: var BOPAlgoMakePeriodic) {.importcpp: "Clear",
    header: "BOPAlgo_MakePeriodic.hxx".}
proc toDirectionID*(theDirectionID: StandardInteger): StandardInteger {.
    importcpp: "BOPAlgo_MakePeriodic::ToDirectionID(@)",
    header: "BOPAlgo_MakePeriodic.hxx".}

