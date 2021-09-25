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

discard "forward decl of Standard_GUID"
discard "forward decl of TDF_Label"
discard "forward decl of TCollection_ExtendedString"
discard "forward decl of TDataStd_Real"
discard "forward decl of TDataStd_Expression"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of TDF_DataSet"
discard "forward decl of TDataStd_Variable"
discard "forward decl of TDataStd_Variable"
type
  HandleTDataStdVariable* = Handle[TDataStdVariable]

## ! Variable attribute.
## ! ==================
## !
## ! * A variable is  associated to a TDataStd_Real (which
## ! contains its    current  value) and  a   TDataStd_Name
## ! attribute (which  contains  its name).  It  contains a
## ! constant flag, and a Unit
## !
## ! * An  expression may  be assigned  to a variable.   In
## ! thatcase the expression  is handled by the  associated
## ! Expression Attribute  and the Variable returns True to
## ! the method <IsAssigned>.

type
  TDataStdVariable* {.importcpp: "TDataStd_Variable",
                     header: "TDataStd_Variable.hxx", bycopy.} = object of TDF_Attribute ##
                                                                                  ## !
                                                                                  ## class
                                                                                  ## methods
                                                                                  ##
                                                                                  ## !
                                                                                  ## =============


proc getID*(): StandardGUID {.importcpp: "TDataStd_Variable::GetID(@)",
                           header: "TDataStd_Variable.hxx".}
proc set*(label: TDF_Label): Handle[TDataStdVariable] {.
    importcpp: "TDataStd_Variable::Set(@)", header: "TDataStd_Variable.hxx".}
proc constructTDataStdVariable*(): TDataStdVariable {.constructor,
    importcpp: "TDataStd_Variable(@)", header: "TDataStd_Variable.hxx".}
proc name*(this: var TDataStdVariable; string: TCollectionExtendedString) {.
    importcpp: "Name", header: "TDataStd_Variable.hxx".}
proc name*(this: TDataStdVariable): TCollectionExtendedString {.noSideEffect,
    importcpp: "Name", header: "TDataStd_Variable.hxx".}
proc set*(this: TDataStdVariable; value: float) {.noSideEffect, importcpp: "Set",
    header: "TDataStd_Variable.hxx".}
## !!!Ignored construct:  ! Obsolete method that will be removed in next versions.
## ! The dimension argument is not supported in the persistence mechanism. Standard_DEPRECATED ( TDataStd_Variable::Set(value, dimension) is deprecated. Please use TDataStd_Variable::Set(value) instead. ) void Set ( const Standard_Real value , const TDataStd_RealEnum dimension ) const ;
## Error: identifier expected, but got: TDataStd_Variable::Set(value, dimension) is deprecated. Please use TDataStd_Variable::Set(value) instead.!!!

proc isValued*(this: TDataStdVariable): bool {.noSideEffect, importcpp: "IsValued",
    header: "TDataStd_Variable.hxx".}
proc get*(this: TDataStdVariable): float {.noSideEffect, importcpp: "Get",
                                       header: "TDataStd_Variable.hxx".}
proc real*(this: TDataStdVariable): Handle[TDataStdReal] {.noSideEffect,
    importcpp: "Real", header: "TDataStd_Variable.hxx".}
proc isAssigned*(this: TDataStdVariable): bool {.noSideEffect,
    importcpp: "IsAssigned", header: "TDataStd_Variable.hxx".}
proc assign*(this: TDataStdVariable): Handle[TDataStdExpression] {.noSideEffect,
    importcpp: "Assign", header: "TDataStd_Variable.hxx".}
proc desassign*(this: TDataStdVariable) {.noSideEffect, importcpp: "Desassign",
                                       header: "TDataStd_Variable.hxx".}
proc expression*(this: TDataStdVariable): Handle[TDataStdExpression] {.noSideEffect,
    importcpp: "Expression", header: "TDataStd_Variable.hxx".}
proc isCaptured*(this: TDataStdVariable): bool {.noSideEffect,
    importcpp: "IsCaptured", header: "TDataStd_Variable.hxx".}
proc isConstant*(this: TDataStdVariable): bool {.noSideEffect,
    importcpp: "IsConstant", header: "TDataStd_Variable.hxx".}
proc unit*(this: var TDataStdVariable; unit: TCollectionAsciiString) {.
    importcpp: "Unit", header: "TDataStd_Variable.hxx".}
proc unit*(this: TDataStdVariable): TCollectionAsciiString {.noSideEffect,
    importcpp: "Unit", header: "TDataStd_Variable.hxx".}
proc constant*(this: var TDataStdVariable; status: bool) {.importcpp: "Constant",
    header: "TDataStd_Variable.hxx".}
proc id*(this: TDataStdVariable): StandardGUID {.noSideEffect, importcpp: "ID",
    header: "TDataStd_Variable.hxx".}
proc restore*(this: var TDataStdVariable; with: Handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TDataStd_Variable.hxx".}
proc newEmpty*(this: TDataStdVariable): Handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "TDataStd_Variable.hxx".}
proc paste*(this: TDataStdVariable; into: Handle[TDF_Attribute];
           rt: Handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "TDataStd_Variable.hxx".}
proc references*(this: TDataStdVariable; ds: Handle[TDF_DataSet]) {.noSideEffect,
    importcpp: "References", header: "TDataStd_Variable.hxx".}
proc dump*(this: TDataStdVariable; anOS: var StandardOStream): var StandardOStream {.
    noSideEffect, importcpp: "Dump", header: "TDataStd_Variable.hxx".}
proc dumpJson*(this: TDataStdVariable; theOStream: var StandardOStream;
              theDepth: int = -1) {.noSideEffect, importcpp: "DumpJson",
                                header: "TDataStd_Variable.hxx".}
type
  TDataStdVariablebaseType* = TDF_Attribute

proc getTypeName*(): cstring {.importcpp: "TDataStd_Variable::get_type_name(@)",
                            header: "TDataStd_Variable.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TDataStd_Variable::get_type_descriptor(@)",
    header: "TDataStd_Variable.hxx".}
proc dynamicType*(this: TDataStdVariable): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "TDataStd_Variable.hxx".}
