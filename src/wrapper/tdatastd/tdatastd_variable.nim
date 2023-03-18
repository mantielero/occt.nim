import ../stepcafcontrol/stepcafcontrol_types
import tdatastd_types
import ../standard/standard_types
import ../tcollection/tcollection_types
import ../tdf/tdf_types


##  Created on: 1997-12-10
##  Created by: Denis PASCAL
##  Copyright (c) 1997-1999 Matra Datavision
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





proc getID*(): StandardGUID {.cdecl, importcpp: "TDataStd_Variable::GetID(@)",
                           header: "TDataStd_Variable.hxx".}
proc set*(label: TDF_Label): Handle[TDataStdVariable] {.cdecl,
    importcpp: "TDataStd_Variable::Set(@)", header: "TDataStd_Variable.hxx".}
proc newTDataStdVariable*(): TDataStdVariable {.cdecl, constructor,
    importcpp: "TDataStd_Variable(@)", header: "TDataStd_Variable.hxx".}
proc name*(this: var TDataStdVariable; string: TCollectionExtendedString) {.cdecl,
    importcpp: "Name", header: "TDataStd_Variable.hxx".}
proc name*(this: TDataStdVariable): TCollectionExtendedString {.noSideEffect, cdecl,
    importcpp: "Name", header: "TDataStd_Variable.hxx".}
proc set*(this: TDataStdVariable; value: cfloat) {.noSideEffect, cdecl,
    importcpp: "Set", header: "TDataStd_Variable.hxx".}
proc set*(this: TDataStdVariable; value: cfloat; dimension: TDataStdRealEnum) {.
    noSideEffect, cdecl, importcpp: "Set", header: "TDataStd_Variable.hxx".}
proc isValued*(this: TDataStdVariable): bool {.noSideEffect, cdecl,
    importcpp: "IsValued", header: "TDataStd_Variable.hxx".}
proc get*(this: TDataStdVariable): cfloat {.noSideEffect, cdecl, importcpp: "Get",
                                        header: "TDataStd_Variable.hxx".}
proc real*(this: TDataStdVariable): Handle[TDataStdReal] {.noSideEffect, cdecl,
    importcpp: "Real", header: "TDataStd_Variable.hxx".}
proc isAssigned*(this: TDataStdVariable): bool {.noSideEffect, cdecl,
    importcpp: "IsAssigned", header: "TDataStd_Variable.hxx".}
proc assign*(this: TDataStdVariable): Handle[TDataStdExpression] {.noSideEffect,
    cdecl, importcpp: "Assign", header: "TDataStd_Variable.hxx".}
proc desassign*(this: TDataStdVariable) {.noSideEffect, cdecl,
                                       importcpp: "Desassign",
                                       header: "TDataStd_Variable.hxx".}
proc expression*(this: TDataStdVariable): Handle[TDataStdExpression] {.noSideEffect,
    cdecl, importcpp: "Expression", header: "TDataStd_Variable.hxx".}
proc isCaptured*(this: TDataStdVariable): bool {.noSideEffect, cdecl,
    importcpp: "IsCaptured", header: "TDataStd_Variable.hxx".}
proc isConstant*(this: TDataStdVariable): bool {.noSideEffect, cdecl,
    importcpp: "IsConstant", header: "TDataStd_Variable.hxx".}
proc unit*(this: var TDataStdVariable; unit: TCollectionAsciiString) {.cdecl,
    importcpp: "Unit", header: "TDataStd_Variable.hxx".}
proc unit*(this: TDataStdVariable): TCollectionAsciiString {.noSideEffect, cdecl,
    importcpp: "Unit", header: "TDataStd_Variable.hxx".}
proc constant*(this: var TDataStdVariable; status: bool) {.cdecl,
    importcpp: "Constant", header: "TDataStd_Variable.hxx".}
proc id*(this: TDataStdVariable): StandardGUID {.noSideEffect, cdecl, importcpp: "ID",
    header: "TDataStd_Variable.hxx".}
proc restore*(this: var TDataStdVariable; with: Handle[TDF_Attribute]) {.cdecl,
    importcpp: "Restore", header: "TDataStd_Variable.hxx".}
proc newEmpty*(this: TDataStdVariable): Handle[TDF_Attribute] {.noSideEffect, cdecl,
    importcpp: "NewEmpty", header: "TDataStd_Variable.hxx".}
proc paste*(this: TDataStdVariable; into: Handle[TDF_Attribute];
           rt: Handle[TDF_RelocationTable]) {.noSideEffect, cdecl,
    importcpp: "Paste", header: "TDataStd_Variable.hxx".}
proc references*(this: TDataStdVariable; ds: Handle[TDF_DataSet]) {.noSideEffect,
    cdecl, importcpp: "References", header: "TDataStd_Variable.hxx".}
proc dump*(this: TDataStdVariable; anOS: var StandardOStream): var StandardOStream {.
    noSideEffect, cdecl, importcpp: "Dump", header: "TDataStd_Variable.hxx".}
proc dumpJson*(this: TDataStdVariable; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "TDataStd_Variable.hxx".}

