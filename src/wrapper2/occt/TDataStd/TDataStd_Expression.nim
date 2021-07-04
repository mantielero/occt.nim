##  Created on: 1997-12-16
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
  ../Standard/Standard, ../Standard/Standard_Type,
  ../TCollection/TCollection_ExtendedString, ../TDF/TDF_AttributeList,
  ../TDF/TDF_DerivedAttribute, ../Standard/Standard_OStream

discard "forward decl of Standard_GUID"
discard "forward decl of TDF_Label"
discard "forward decl of TCollection_ExtendedString"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of TDataStd_Expression"
discard "forward decl of TDataStd_Expression"
type
  Handle_TDataStd_Expression* = handle[TDataStd_Expression]

## ! Expression attribute.
## ! ====================
## !
## ! * Data Structure  of the Expression   is stored in a
## ! string and references to variables used by the string
## !
## ! Warning:  To be consistent,  each  Variable  referenced by  the
## ! expression must have its equivalent in the string

type
  TDataStd_Expression* {.importcpp: "TDataStd_Expression",
                        header: "TDataStd_Expression.hxx", bycopy.} = object of TDF_Attribute ##
                                                                                       ## !
                                                                                       ## class
                                                                                       ## methods
                                                                                       ##
                                                                                       ## !
                                                                                       ## =============


proc GetID*(): Standard_GUID {.importcpp: "TDataStd_Expression::GetID(@)",
                            header: "TDataStd_Expression.hxx".}
proc Set*(label: TDF_Label): handle[TDataStd_Expression] {.
    importcpp: "TDataStd_Expression::Set(@)", header: "TDataStd_Expression.hxx".}
proc constructTDataStd_Expression*(): TDataStd_Expression {.constructor,
    importcpp: "TDataStd_Expression(@)", header: "TDataStd_Expression.hxx".}
proc Name*(this: TDataStd_Expression): TCollection_ExtendedString {.noSideEffect,
    importcpp: "Name", header: "TDataStd_Expression.hxx".}
proc SetExpression*(this: var TDataStd_Expression; E: TCollection_ExtendedString) {.
    importcpp: "SetExpression", header: "TDataStd_Expression.hxx".}
proc GetExpression*(this: TDataStd_Expression): TCollection_ExtendedString {.
    noSideEffect, importcpp: "GetExpression", header: "TDataStd_Expression.hxx".}
proc GetVariables*(this: var TDataStd_Expression): var TDF_AttributeList {.
    importcpp: "GetVariables", header: "TDataStd_Expression.hxx".}
proc ID*(this: TDataStd_Expression): Standard_GUID {.noSideEffect, importcpp: "ID",
    header: "TDataStd_Expression.hxx".}
proc Restore*(this: var TDataStd_Expression; With: handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TDataStd_Expression.hxx".}
proc NewEmpty*(this: TDataStd_Expression): handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "TDataStd_Expression.hxx".}
proc Paste*(this: TDataStd_Expression; Into: handle[TDF_Attribute];
           RT: handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "TDataStd_Expression.hxx".}
proc Dump*(this: TDataStd_Expression; anOS: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "Dump", header: "TDataStd_Expression.hxx".}
proc DumpJson*(this: TDataStd_Expression; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "TDataStd_Expression.hxx".}
type
  TDataStd_Expressionbase_type* = TDF_Attribute

proc get_type_name*(): cstring {.importcpp: "TDataStd_Expression::get_type_name(@)",
                              header: "TDataStd_Expression.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TDataStd_Expression::get_type_descriptor(@)",
    header: "TDataStd_Expression.hxx".}
proc DynamicType*(this: TDataStd_Expression): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "TDataStd_Expression.hxx".}