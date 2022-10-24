import bopalgo_types

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



proc newBOPAlgoMakePeriodic*(): BOPAlgoMakePeriodic {.cdecl, constructor,
    importcpp: "BOPAlgo_MakePeriodic(@)", header: "BOPAlgo_MakePeriodic.hxx".}
proc setShape*(this: var BOPAlgoMakePeriodic; theShape: TopoDS_Shape) {.cdecl,
    importcpp: "SetShape", header: "BOPAlgo_MakePeriodic.hxx".}


proc newBOPAlgoMakePeriodicPeriodicityParams*(): BOPAlgoMakePeriodicPeriodicityParams {.
    cdecl, constructor, importcpp: "BOPAlgo_MakePeriodic::PeriodicityParams(@)",
    header: "BOPAlgo_MakePeriodic.hxx".}
proc clear*(this: var BOPAlgoMakePeriodicPeriodicityParams) {.cdecl,
    importcpp: "Clear", header: "BOPAlgo_MakePeriodic.hxx".}
proc setPeriodicityParameters*(this: var BOPAlgoMakePeriodic;
                              theParams: BOPAlgoMakePeriodicPeriodicityParams) {.
    cdecl, importcpp: "SetPeriodicityParameters", header: "BOPAlgo_MakePeriodic.hxx".}
proc periodicityParameters*(this: BOPAlgoMakePeriodic): BOPAlgoMakePeriodicPeriodicityParams {.
    noSideEffect, cdecl, importcpp: "PeriodicityParameters", header: "BOPAlgo_MakePeriodic.hxx".}
proc makePeriodic*(this: var BOPAlgoMakePeriodic; theDirectionID: cint;
                  theIsPeriodic: bool; thePeriod: cfloat = 0.0) {.cdecl,
    importcpp: "MakePeriodic", header: "BOPAlgo_MakePeriodic.hxx".}
proc isPeriodic*(this: BOPAlgoMakePeriodic; theDirectionID: cint): bool {.
    noSideEffect, cdecl, importcpp: "IsPeriodic", header: "BOPAlgo_MakePeriodic.hxx".}
proc period*(this: BOPAlgoMakePeriodic; theDirectionID: cint): cfloat {.noSideEffect,
    cdecl, importcpp: "Period", header: "BOPAlgo_MakePeriodic.hxx".}
proc makeXPeriodic*(this: var BOPAlgoMakePeriodic; theIsPeriodic: bool;
                   thePeriod: cfloat = 0.0) {.cdecl, importcpp: "MakeXPeriodic",
    header: "BOPAlgo_MakePeriodic.hxx".}
proc isXPeriodic*(this: BOPAlgoMakePeriodic): bool {.noSideEffect, cdecl,
    importcpp: "IsXPeriodic", header: "BOPAlgo_MakePeriodic.hxx".}
proc xPeriod*(this: BOPAlgoMakePeriodic): cfloat {.noSideEffect, cdecl,
    importcpp: "XPeriod", header: "BOPAlgo_MakePeriodic.hxx".}
proc makeYPeriodic*(this: var BOPAlgoMakePeriodic; theIsPeriodic: bool;
                   thePeriod: cfloat = 0.0) {.cdecl, importcpp: "MakeYPeriodic",
    header: "BOPAlgo_MakePeriodic.hxx".}
proc isYPeriodic*(this: BOPAlgoMakePeriodic): bool {.noSideEffect, cdecl,
    importcpp: "IsYPeriodic", header: "BOPAlgo_MakePeriodic.hxx".}
proc yPeriod*(this: BOPAlgoMakePeriodic): cfloat {.noSideEffect, cdecl,
    importcpp: "YPeriod", header: "BOPAlgo_MakePeriodic.hxx".}
proc makeZPeriodic*(this: var BOPAlgoMakePeriodic; theIsPeriodic: bool;
                   thePeriod: cfloat = 0.0) {.cdecl, importcpp: "MakeZPeriodic",
    header: "BOPAlgo_MakePeriodic.hxx".}
proc isZPeriodic*(this: BOPAlgoMakePeriodic): bool {.noSideEffect, cdecl,
    importcpp: "IsZPeriodic", header: "BOPAlgo_MakePeriodic.hxx".}
proc zPeriod*(this: BOPAlgoMakePeriodic): cfloat {.noSideEffect, cdecl,
    importcpp: "ZPeriod", header: "BOPAlgo_MakePeriodic.hxx".}
proc setTrimmed*(this: var BOPAlgoMakePeriodic; theDirectionID: cint;
                theIsTrimmed: bool; theFirst: cfloat = 0.0) {.cdecl,
    importcpp: "SetTrimmed", header: "BOPAlgo_MakePeriodic.hxx".}
proc isInputTrimmed*(this: BOPAlgoMakePeriodic; theDirectionID: cint): bool {.
    noSideEffect, cdecl, importcpp: "IsInputTrimmed", header: "BOPAlgo_MakePeriodic.hxx".}
proc periodFirst*(this: BOPAlgoMakePeriodic; theDirectionID: cint): cfloat {.
    noSideEffect, cdecl, importcpp: "PeriodFirst", header: "BOPAlgo_MakePeriodic.hxx".}
proc setXTrimmed*(this: var BOPAlgoMakePeriodic; theIsTrimmed: bool;
                 theFirst: bool = false) {.cdecl, importcpp: "SetXTrimmed", header: "BOPAlgo_MakePeriodic.hxx".}
proc isInputXTrimmed*(this: BOPAlgoMakePeriodic): bool {.noSideEffect, cdecl,
    importcpp: "IsInputXTrimmed", header: "BOPAlgo_MakePeriodic.hxx".}
proc xPeriodFirst*(this: BOPAlgoMakePeriodic): cfloat {.noSideEffect, cdecl,
    importcpp: "XPeriodFirst", header: "BOPAlgo_MakePeriodic.hxx".}
proc setYTrimmed*(this: var BOPAlgoMakePeriodic; theIsTrimmed: bool;
                 theFirst: bool = false) {.cdecl, importcpp: "SetYTrimmed", header: "BOPAlgo_MakePeriodic.hxx".}
proc isInputYTrimmed*(this: BOPAlgoMakePeriodic): bool {.noSideEffect, cdecl,
    importcpp: "IsInputYTrimmed", header: "BOPAlgo_MakePeriodic.hxx".}
proc yPeriodFirst*(this: BOPAlgoMakePeriodic): cfloat {.noSideEffect, cdecl,
    importcpp: "YPeriodFirst", header: "BOPAlgo_MakePeriodic.hxx".}
proc setZTrimmed*(this: var BOPAlgoMakePeriodic; theIsTrimmed: bool;
                 theFirst: bool = false) {.cdecl, importcpp: "SetZTrimmed", header: "BOPAlgo_MakePeriodic.hxx".}
proc isInputZTrimmed*(this: BOPAlgoMakePeriodic): bool {.noSideEffect, cdecl,
    importcpp: "IsInputZTrimmed", header: "BOPAlgo_MakePeriodic.hxx".}
proc zPeriodFirst*(this: BOPAlgoMakePeriodic): cfloat {.noSideEffect, cdecl,
    importcpp: "ZPeriodFirst", header: "BOPAlgo_MakePeriodic.hxx".}
proc perform*(this: var BOPAlgoMakePeriodic) {.cdecl, importcpp: "Perform",
    header: "BOPAlgo_MakePeriodic.hxx".}
proc repeatShape*(this: var BOPAlgoMakePeriodic; theDirectionID: cint; theTimes: cint): TopoDS_Shape {.
    cdecl, importcpp: "RepeatShape", header: "BOPAlgo_MakePeriodic.hxx".}
proc xRepeat*(this: var BOPAlgoMakePeriodic; theTimes: cint): TopoDS_Shape {.cdecl,
    importcpp: "XRepeat", header: "BOPAlgo_MakePeriodic.hxx".}
proc yRepeat*(this: var BOPAlgoMakePeriodic; theTimes: cint): TopoDS_Shape {.cdecl,
    importcpp: "YRepeat", header: "BOPAlgo_MakePeriodic.hxx".}
proc zRepeat*(this: var BOPAlgoMakePeriodic; theTimes: cint): TopoDS_Shape {.cdecl,
    importcpp: "ZRepeat", header: "BOPAlgo_MakePeriodic.hxx".}
proc repeatedShape*(this: BOPAlgoMakePeriodic): TopoDS_Shape {.noSideEffect, cdecl,
    importcpp: "RepeatedShape", header: "BOPAlgo_MakePeriodic.hxx".}
proc clearRepetitions*(this: var BOPAlgoMakePeriodic) {.cdecl,
    importcpp: "ClearRepetitions", header: "BOPAlgo_MakePeriodic.hxx".}
proc shape*(this: BOPAlgoMakePeriodic): TopoDS_Shape {.noSideEffect, cdecl,
    importcpp: "Shape", header: "BOPAlgo_MakePeriodic.hxx".}
proc getTwins*(this: BOPAlgoMakePeriodic; theS: TopoDS_Shape): TopToolsListOfShape {.
    noSideEffect, cdecl, importcpp: "GetTwins", header: "BOPAlgo_MakePeriodic.hxx".}
#proc history*(this: BOPAlgoMakePeriodic): Handle[BRepToolsHistory] {.noSideEffect,
#    cdecl, importcpp: "History", header: "BOPAlgo_MakePeriodic.hxx".}
proc clear*(this: var BOPAlgoMakePeriodic) {.cdecl, importcpp: "Clear", header: "BOPAlgo_MakePeriodic.hxx".}
proc toDirectionID*(theDirectionID: cint): cint {.cdecl,
    importcpp: "BOPAlgo_MakePeriodic::ToDirectionID(@)", header: "BOPAlgo_MakePeriodic.hxx".}
