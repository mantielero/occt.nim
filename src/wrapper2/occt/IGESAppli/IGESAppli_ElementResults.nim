##  Created on: 1993-01-11
##  Created by: CKY / Contract Toubro-Larsen ( Anand NATRAJAN )
##  Copyright (c) 1993-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  ../Standard/Standard_Real, ../TColStd/TColStd_HArray1OfInteger,
  IGESAppli_HArray1OfFiniteElement, ../IGESData/IGESData_IGESEntity,
  ../TColStd/TColStd_HArray1OfReal

discard "forward decl of IGESDimen_GeneralNote"
discard "forward decl of IGESBasic_HArray1OfHArray1OfInteger"
discard "forward decl of IGESBasic_HArray1OfHArray1OfReal"
discard "forward decl of Standard_DimensionMismatch"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of IGESAppli_FiniteElement"
discard "forward decl of IGESAppli_ElementResults"
discard "forward decl of IGESAppli_ElementResults"
type
  Handle_IGESAppli_ElementResults* = handle[IGESAppli_ElementResults]

## ! defines ElementResults, Type <148>
## ! in package IGESAppli
## ! Used to find the results of FEM analysis

type
  IGESAppli_ElementResults* {.importcpp: "IGESAppli_ElementResults",
                             header: "IGESAppli_ElementResults.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESAppli_ElementResults*(): IGESAppli_ElementResults {.constructor,
    importcpp: "IGESAppli_ElementResults(@)",
    header: "IGESAppli_ElementResults.hxx".}
proc Init*(this: var IGESAppli_ElementResults; aNote: handle[IGESDimen_GeneralNote];
          aSubCase: Standard_Integer; aTime: Standard_Real;
          nbResults: Standard_Integer; aResRepFlag: Standard_Integer;
          allElementIdents: handle[TColStd_HArray1OfInteger];
          allFiniteElems: handle[IGESAppli_HArray1OfFiniteElement];
          allTopTypes: handle[TColStd_HArray1OfInteger];
          nbLayers: handle[TColStd_HArray1OfInteger];
          allDataLayerFlags: handle[TColStd_HArray1OfInteger];
          allnbResDataLocs: handle[TColStd_HArray1OfInteger];
          allResDataLocs: handle[IGESBasic_HArray1OfHArray1OfInteger];
          allResults: handle[IGESBasic_HArray1OfHArray1OfReal]) {.
    importcpp: "Init", header: "IGESAppli_ElementResults.hxx".}
proc SetFormNumber*(this: var IGESAppli_ElementResults; form: Standard_Integer) {.
    importcpp: "SetFormNumber", header: "IGESAppli_ElementResults.hxx".}
proc Note*(this: IGESAppli_ElementResults): handle[IGESDimen_GeneralNote] {.
    noSideEffect, importcpp: "Note", header: "IGESAppli_ElementResults.hxx".}
proc SubCaseNumber*(this: IGESAppli_ElementResults): Standard_Integer {.
    noSideEffect, importcpp: "SubCaseNumber",
    header: "IGESAppli_ElementResults.hxx".}
proc Time*(this: IGESAppli_ElementResults): Standard_Real {.noSideEffect,
    importcpp: "Time", header: "IGESAppli_ElementResults.hxx".}
proc NbResultValues*(this: IGESAppli_ElementResults): Standard_Integer {.
    noSideEffect, importcpp: "NbResultValues",
    header: "IGESAppli_ElementResults.hxx".}
proc ResultReportFlag*(this: IGESAppli_ElementResults): Standard_Integer {.
    noSideEffect, importcpp: "ResultReportFlag",
    header: "IGESAppli_ElementResults.hxx".}
proc NbElements*(this: IGESAppli_ElementResults): Standard_Integer {.noSideEffect,
    importcpp: "NbElements", header: "IGESAppli_ElementResults.hxx".}
proc ElementIdentifier*(this: IGESAppli_ElementResults; Index: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "ElementIdentifier",
    header: "IGESAppli_ElementResults.hxx".}
proc Element*(this: IGESAppli_ElementResults; Index: Standard_Integer): handle[
    IGESAppli_FiniteElement] {.noSideEffect, importcpp: "Element",
                              header: "IGESAppli_ElementResults.hxx".}
proc ElementTopologyType*(this: IGESAppli_ElementResults; Index: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "ElementTopologyType",
    header: "IGESAppli_ElementResults.hxx".}
proc NbLayers*(this: IGESAppli_ElementResults; Index: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "NbLayers", header: "IGESAppli_ElementResults.hxx".}
proc DataLayerFlag*(this: IGESAppli_ElementResults; Index: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "DataLayerFlag",
    header: "IGESAppli_ElementResults.hxx".}
proc NbResultDataLocs*(this: IGESAppli_ElementResults; Index: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "NbResultDataLocs",
    header: "IGESAppli_ElementResults.hxx".}
proc ResultDataLoc*(this: IGESAppli_ElementResults; NElem: Standard_Integer;
                   NLoc: Standard_Integer): Standard_Integer {.noSideEffect,
    importcpp: "ResultDataLoc", header: "IGESAppli_ElementResults.hxx".}
proc NbResults*(this: IGESAppli_ElementResults; Index: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "NbResults", header: "IGESAppli_ElementResults.hxx".}
proc ResultData*(this: IGESAppli_ElementResults; NElem: Standard_Integer;
                num: Standard_Integer): Standard_Real {.noSideEffect,
    importcpp: "ResultData", header: "IGESAppli_ElementResults.hxx".}
proc ResultRank*(this: IGESAppli_ElementResults; NElem: Standard_Integer;
                NVal: Standard_Integer; NLay: Standard_Integer;
                NLoc: Standard_Integer): Standard_Integer {.noSideEffect,
    importcpp: "ResultRank", header: "IGESAppli_ElementResults.hxx".}
proc ResultData*(this: IGESAppli_ElementResults; NElem: Standard_Integer;
                NVal: Standard_Integer; NLay: Standard_Integer;
                NLoc: Standard_Integer): Standard_Real {.noSideEffect,
    importcpp: "ResultData", header: "IGESAppli_ElementResults.hxx".}
proc ResultList*(this: IGESAppli_ElementResults; NElem: Standard_Integer): handle[
    TColStd_HArray1OfReal] {.noSideEffect, importcpp: "ResultList",
                            header: "IGESAppli_ElementResults.hxx".}
type
  IGESAppli_ElementResultsbase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESAppli_ElementResults::get_type_name(@)",
                              header: "IGESAppli_ElementResults.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESAppli_ElementResults::get_type_descriptor(@)",
    header: "IGESAppli_ElementResults.hxx".}
proc DynamicType*(this: IGESAppli_ElementResults): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESAppli_ElementResults.hxx".}