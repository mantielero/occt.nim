##  Created on: 2012-12-17
##  Created by: Eugeny MALTCHIKOV
##  Copyright (c) 2012-2014 OPEN CASCADE SAS
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
  ../Standard/Standard_Handle, ../BOPAlgo/BOPAlgo_ListOfCheckResult,
  ../BOPAlgo/BOPAlgo_Operation, ../BOPAlgo/BOPAlgo_Options,
  ../Standard/Standard_Boolean, ../Standard/Standard_Real, ../TopoDS/TopoDS_Shape

## ! The class Check provides a diagnostic tool for checking the validity
## ! of the single shape or couple of shapes.
## ! The shapes are checked on:
## ! - Topological validity;
## ! - Small edges;
## ! - Self-interference;
## ! - Validity for Boolean operation of certain type (for couple of shapes only).
## !
## ! The class provides two ways of checking shape(-s)
## ! 1. Constructors
## ! BRepAlgoAPI_Check aCh(theS);
## ! Standard_Boolean isValid = aCh.IsValid();
## ! 2. Methods SetData and Perform
## ! BRepAlgoAPI_Check aCh;
## ! aCh.SetData(theS1, theS2, BOPAlgo_FUSE, Standard_False);
## ! aCh.Perform();
## ! Standard_Boolean isValid = aCh.IsValid();
## !

type
  BRepAlgoAPI_Check* {.importcpp: "BRepAlgoAPI_Check",
                      header: "BRepAlgoAPI_Check.hxx", bycopy.} = object of BOPAlgo_Options ##
                                                                                     ## !
                                                                                     ## @name
                                                                                     ## Constructors
                                                                                     ##
                                                                                     ## !
                                                                                     ## Empty
                                                                                     ## constructor.
                                                                                     ##
                                                                                     ## !
                                                                                     ## @name
                                                                                     ## Initializing
                                                                                     ## the
                                                                                     ## algorithm
                                                                                     ##
                                                                                     ## !
                                                                                     ## Initializes
                                                                                     ## the
                                                                                     ## algorithm
                                                                                     ## with
                                                                                     ## single
                                                                                     ## shape.
                                                                                     ##
                                                                                     ## !
                                                                                     ##
                                                                                     ## !
                                                                                     ## @param
                                                                                     ## theS
                                                                                     ## [in]
                                                                                     ## -
                                                                                     ## the
                                                                                     ## shape
                                                                                     ## to
                                                                                     ## check;
                                                                                     ##
                                                                                     ## !
                                                                                     ## @param
                                                                                     ## bTestSE
                                                                                     ## [in]
                                                                                     ## -
                                                                                     ## flag
                                                                                     ## which
                                                                                     ## specifies
                                                                                     ## whether
                                                                                     ## to
                                                                                     ## check
                                                                                     ## the
                                                                                     ## shape
                                                                                     ##
                                                                                     ## !
                                                                                     ## on
                                                                                     ## small
                                                                                     ## edges
                                                                                     ## or
                                                                                     ## not;
                                                                                     ## by
                                                                                     ## default
                                                                                     ## it
                                                                                     ## is
                                                                                     ## set
                                                                                     ## to
                                                                                     ## TRUE;
                                                                                     ##
                                                                                     ## !
                                                                                     ## @param
                                                                                     ## bTestSI
                                                                                     ## [in]
                                                                                     ## -
                                                                                     ## flag
                                                                                     ## which
                                                                                     ## specifies
                                                                                     ## whether
                                                                                     ## to
                                                                                     ## check
                                                                                     ## the
                                                                                     ## shape
                                                                                     ##
                                                                                     ## !
                                                                                     ## on
                                                                                     ## self-interference
                                                                                     ## or
                                                                                     ## not;
                                                                                     ## by
                                                                                     ## default
                                                                                     ## it
                                                                                     ## is
                                                                                     ## set
                                                                                     ## to
                                                                                     ## TRUE;
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
                                                                                     ## check.
                                                                                     ##
                                                                                     ## !
                                                                                     ## @name
                                                                                     ## Getting
                                                                                     ## the
                                                                                     ## results.
                                                                                     ##
                                                                                     ## !
                                                                                     ## Shows
                                                                                     ## whether
                                                                                     ## shape(s)
                                                                                     ## valid
                                                                                     ## or
                                                                                     ## not.
                                                                                     ##
                                                                                     ## !
                                                                                     ## @name
                                                                                     ## Fields
                                                                                     ##
                                                                                     ## Inputs
    ## !< The first shape
    ## !< The second shape
    ## !< Flag defining whether to look for small edges in the given shapes or not
    ## !< Flag defining whether to check the input edges on self-interference or not
    ## !< Type of Boolean operation for which the validity of input shapes should be checked
    ##  Results
    ## !< Found faulty shapes


proc constructBRepAlgoAPI_Check*(): BRepAlgoAPI_Check {.constructor,
    importcpp: "BRepAlgoAPI_Check(@)", header: "BRepAlgoAPI_Check.hxx".}
proc destroyBRepAlgoAPI_Check*(this: var BRepAlgoAPI_Check) {.
    importcpp: "#.~BRepAlgoAPI_Check()", header: "BRepAlgoAPI_Check.hxx".}
proc constructBRepAlgoAPI_Check*(theS: TopoDS_Shape;
                                bTestSE: Standard_Boolean = Standard_True;
                                bTestSI: Standard_Boolean = Standard_True): BRepAlgoAPI_Check {.
    constructor, importcpp: "BRepAlgoAPI_Check(@)", header: "BRepAlgoAPI_Check.hxx".}
proc constructBRepAlgoAPI_Check*(theS1: TopoDS_Shape; theS2: TopoDS_Shape;
                                theOp: BOPAlgo_Operation = BOPAlgo_UNKNOWN;
                                bTestSE: Standard_Boolean = Standard_True;
                                bTestSI: Standard_Boolean = Standard_True): BRepAlgoAPI_Check {.
    constructor, importcpp: "BRepAlgoAPI_Check(@)", header: "BRepAlgoAPI_Check.hxx".}
proc SetData*(this: var BRepAlgoAPI_Check; theS: TopoDS_Shape;
             bTestSE: Standard_Boolean = Standard_True;
             bTestSI: Standard_Boolean = Standard_True) {.importcpp: "SetData",
    header: "BRepAlgoAPI_Check.hxx".}
proc SetData*(this: var BRepAlgoAPI_Check; theS1: TopoDS_Shape; theS2: TopoDS_Shape;
             theOp: BOPAlgo_Operation = BOPAlgo_UNKNOWN;
             bTestSE: Standard_Boolean = Standard_True;
             bTestSI: Standard_Boolean = Standard_True) {.importcpp: "SetData",
    header: "BRepAlgoAPI_Check.hxx".}
proc Perform*(this: var BRepAlgoAPI_Check) {.importcpp: "Perform",
    header: "BRepAlgoAPI_Check.hxx".}
proc IsValid*(this: var BRepAlgoAPI_Check): Standard_Boolean {.importcpp: "IsValid",
    header: "BRepAlgoAPI_Check.hxx".}
proc Result*(this: var BRepAlgoAPI_Check): BOPAlgo_ListOfCheckResult {.
    importcpp: "Result", header: "BRepAlgoAPI_Check.hxx".}