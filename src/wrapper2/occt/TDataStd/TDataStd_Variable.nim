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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Boolean,
  ../TCollection/TCollection_AsciiString, ../TDF/TDF_Attribute,
  ../Standard/Standard_Real, TDataStd_RealEnum, ../Standard/Standard_OStream

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
  Handle_TDataStd_Variable* = handle[TDataStd_Variable]

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
  TDataStd_Variable* {.importcpp: "TDataStd_Variable",
                      header: "TDataStd_Variable.hxx", bycopy.} = object of TDF_Attribute ##
                                                                                   ## !
                                                                                   ## class
                                                                                   ## methods
                                                                                   ##
                                                                                   ## !
                                                                                   ## =============


proc GetID*(): Standard_GUID {.importcpp: "TDataStd_Variable::GetID(@)",
                            header: "TDataStd_Variable.hxx".}
proc Set*(label: TDF_Label): handle[TDataStd_Variable] {.
    importcpp: "TDataStd_Variable::Set(@)", header: "TDataStd_Variable.hxx".}
proc constructTDataStd_Variable*(): TDataStd_Variable {.constructor,
    importcpp: "TDataStd_Variable(@)", header: "TDataStd_Variable.hxx".}
proc Name*(this: var TDataStd_Variable; string: TCollection_ExtendedString) {.
    importcpp: "Name", header: "TDataStd_Variable.hxx".}
proc Name*(this: TDataStd_Variable): TCollection_ExtendedString {.noSideEffect,
    importcpp: "Name", header: "TDataStd_Variable.hxx".}
proc Set*(this: TDataStd_Variable; value: Standard_Real) {.noSideEffect,
    importcpp: "Set", header: "TDataStd_Variable.hxx".}
## !!!Ignored construct:  ! Obsolete method that will be removed in next versions.
## ! The dimension argument is not supported in the persistence mechanism. Standard_DEPRECATED ( TDataStd_Variable::Set(value, dimension) is deprecated. Please use TDataStd_Variable::Set(value) instead. ) void Set ( const Standard_Real value , const TDataStd_RealEnum dimension ) const ;
## Error: identifier expected, but got: TDataStd_Variable::Set(value, dimension) is deprecated. Please use TDataStd_Variable::Set(value) instead.!!!

proc IsValued*(this: TDataStd_Variable): Standard_Boolean {.noSideEffect,
    importcpp: "IsValued", header: "TDataStd_Variable.hxx".}
proc Get*(this: TDataStd_Variable): Standard_Real {.noSideEffect, importcpp: "Get",
    header: "TDataStd_Variable.hxx".}
proc Real*(this: TDataStd_Variable): handle[TDataStd_Real] {.noSideEffect,
    importcpp: "Real", header: "TDataStd_Variable.hxx".}
proc IsAssigned*(this: TDataStd_Variable): Standard_Boolean {.noSideEffect,
    importcpp: "IsAssigned", header: "TDataStd_Variable.hxx".}
proc Assign*(this: TDataStd_Variable): handle[TDataStd_Expression] {.noSideEffect,
    importcpp: "Assign", header: "TDataStd_Variable.hxx".}
proc Desassign*(this: TDataStd_Variable) {.noSideEffect, importcpp: "Desassign",
                                        header: "TDataStd_Variable.hxx".}
proc Expression*(this: TDataStd_Variable): handle[TDataStd_Expression] {.
    noSideEffect, importcpp: "Expression", header: "TDataStd_Variable.hxx".}
proc IsCaptured*(this: TDataStd_Variable): Standard_Boolean {.noSideEffect,
    importcpp: "IsCaptured", header: "TDataStd_Variable.hxx".}
proc IsConstant*(this: TDataStd_Variable): Standard_Boolean {.noSideEffect,
    importcpp: "IsConstant", header: "TDataStd_Variable.hxx".}
proc Unit*(this: var TDataStd_Variable; unit: TCollection_AsciiString) {.
    importcpp: "Unit", header: "TDataStd_Variable.hxx".}
proc Unit*(this: TDataStd_Variable): TCollection_AsciiString {.noSideEffect,
    importcpp: "Unit", header: "TDataStd_Variable.hxx".}
proc Constant*(this: var TDataStd_Variable; status: Standard_Boolean) {.
    importcpp: "Constant", header: "TDataStd_Variable.hxx".}
proc ID*(this: TDataStd_Variable): Standard_GUID {.noSideEffect, importcpp: "ID",
    header: "TDataStd_Variable.hxx".}
proc Restore*(this: var TDataStd_Variable; With: handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TDataStd_Variable.hxx".}
proc NewEmpty*(this: TDataStd_Variable): handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "TDataStd_Variable.hxx".}
proc Paste*(this: TDataStd_Variable; Into: handle[TDF_Attribute];
           RT: handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "TDataStd_Variable.hxx".}
proc References*(this: TDataStd_Variable; DS: handle[TDF_DataSet]) {.noSideEffect,
    importcpp: "References", header: "TDataStd_Variable.hxx".}
proc Dump*(this: TDataStd_Variable; anOS: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "Dump", header: "TDataStd_Variable.hxx".}
proc DumpJson*(this: TDataStd_Variable; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "TDataStd_Variable.hxx".}
type
  TDataStd_Variablebase_type* = TDF_Attribute

proc get_type_name*(): cstring {.importcpp: "TDataStd_Variable::get_type_name(@)",
                              header: "TDataStd_Variable.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TDataStd_Variable::get_type_descriptor(@)",
    header: "TDataStd_Variable.hxx".}
proc DynamicType*(this: TDataStd_Variable): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "TDataStd_Variable.hxx".}