##  Created on: 1993-01-09
##  Created by: CKY / Contract Toubro-Larsen ( SIVA )
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

discard "forward decl of IGESBasic_HArray1OfHArray1OfReal"
discard "forward decl of Standard_DimensionMismatch"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of IGESDefs_TabularData"
discard "forward decl of IGESDefs_TabularData"
type
  HandleC1C1* = Handle[IGESDefsTabularData]

## ! Defines IGES Tabular Data, Type <406> Form <11>,
## ! in package IGESDefs
## ! This Class is used to provide a Structure to accomodate
## ! point form data.

type
  IGESDefsTabularData* {.importcpp: "IGESDefs_TabularData",
                        header: "IGESDefs_TabularData.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESDefsTabularData*(): IGESDefsTabularData {.constructor,
    importcpp: "IGESDefs_TabularData(@)", header: "IGESDefs_TabularData.hxx".}
proc init*(this: var IGESDefsTabularData; nbProps: cint; propType: cint;
          typesInd: Handle[TColStdHArray1OfInteger];
          nbValuesInd: Handle[TColStdHArray1OfInteger];
          valuesInd: Handle[IGESBasicHArray1OfHArray1OfReal];
          valuesDep: Handle[IGESBasicHArray1OfHArray1OfReal]) {.importcpp: "Init",
    header: "IGESDefs_TabularData.hxx".}
proc nbPropertyValues*(this: IGESDefsTabularData): cint {.noSideEffect,
    importcpp: "NbPropertyValues", header: "IGESDefs_TabularData.hxx".}
proc computedNbPropertyValues*(this: IGESDefsTabularData): cint {.noSideEffect,
    importcpp: "ComputedNbPropertyValues", header: "IGESDefs_TabularData.hxx".}
proc ownCorrect*(this: var IGESDefsTabularData): bool {.importcpp: "OwnCorrect",
    header: "IGESDefs_TabularData.hxx".}
proc propertyType*(this: IGESDefsTabularData): cint {.noSideEffect,
    importcpp: "PropertyType", header: "IGESDefs_TabularData.hxx".}
proc nbDependents*(this: IGESDefsTabularData): cint {.noSideEffect,
    importcpp: "NbDependents", header: "IGESDefs_TabularData.hxx".}
proc nbIndependents*(this: IGESDefsTabularData): cint {.noSideEffect,
    importcpp: "NbIndependents", header: "IGESDefs_TabularData.hxx".}
proc typeOfIndependents*(this: IGESDefsTabularData; num: cint): cint {.noSideEffect,
    importcpp: "TypeOfIndependents", header: "IGESDefs_TabularData.hxx".}
proc nbValues*(this: IGESDefsTabularData; num: cint): cint {.noSideEffect,
    importcpp: "NbValues", header: "IGESDefs_TabularData.hxx".}
proc independentValue*(this: IGESDefsTabularData; variablenum: cint; valuenum: cint): cfloat {.
    noSideEffect, importcpp: "IndependentValue", header: "IGESDefs_TabularData.hxx".}
proc dependentValues*(this: IGESDefsTabularData; num: cint): Handle[
    TColStdHArray1OfReal] {.noSideEffect, importcpp: "DependentValues",
                           header: "IGESDefs_TabularData.hxx".}
proc dependentValue*(this: IGESDefsTabularData; variablenum: cint; valuenum: cint): cfloat {.
    noSideEffect, importcpp: "DependentValue", header: "IGESDefs_TabularData.hxx".}
type
  IGESDefsTabularDatabaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESDefs_TabularData::get_type_name(@)",
                            header: "IGESDefs_TabularData.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESDefs_TabularData::get_type_descriptor(@)",
    header: "IGESDefs_TabularData.hxx".}
proc dynamicType*(this: IGESDefsTabularData): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESDefs_TabularData.hxx".}

























