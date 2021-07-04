##  Created on: 1997-02-06
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Real,
  TDataStd_RealEnum, ../TDF/TDF_DerivedAttribute, ../Standard/Standard_Boolean,
  ../Standard/Standard_OStream, ../Standard/Standard_GUID

discard "forward decl of TDF_Label"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of TDataStd_Real"
discard "forward decl of TDataStd_Real"
type
  Handle_TDataStd_Real* = handle[TDataStd_Real]

## ! The basis to define a real number attribute.

type
  TDataStd_Real* {.importcpp: "TDataStd_Real", header: "TDataStd_Real.hxx", bycopy.} = object of TDF_Attribute ##
                                                                                                     ## !
                                                                                                     ## class
                                                                                                     ## methods
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## =============
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## Returns
                                                                                                     ## the
                                                                                                     ## default
                                                                                                     ## GUID
                                                                                                     ## for
                                                                                                     ## real
                                                                                                     ## numbers.
    ## ! An obsolete field that will be removed in next versions.


proc GetID*(): Standard_GUID {.importcpp: "TDataStd_Real::GetID(@)",
                            header: "TDataStd_Real.hxx".}
proc Set*(label: TDF_Label; value: Standard_Real): handle[TDataStd_Real] {.
    importcpp: "TDataStd_Real::Set(@)", header: "TDataStd_Real.hxx".}
proc Set*(label: TDF_Label; guid: Standard_GUID; value: Standard_Real): handle[
    TDataStd_Real] {.importcpp: "TDataStd_Real::Set(@)",
                    header: "TDataStd_Real.hxx".}
proc constructTDataStd_Real*(): TDataStd_Real {.constructor,
    importcpp: "TDataStd_Real(@)", header: "TDataStd_Real.hxx".}
## !!!Ignored construct:  ! Obsolete method that will be removed in next versions.
## ! This field is not supported in the persistence mechanism. Standard_DEPRECATED ( TDataStd_Real::SetDimension() is deprecated. Please avoid usage of this method. ) void SetDimension ( const TDataStd_RealEnum DIM ) ;
## Error: identifier expected, but got: TDataStd_Real::SetDimension() is deprecated. Please avoid usage of this method.!!!

## !!!Ignored construct:  ! Obsolete method that will be removed in next versions.
## ! This field is not supported in the persistence mechanism. Standard_DEPRECATED ( TDataStd_Real::GetDimension() is deprecated. Please avoid usage of this method. ) TDataStd_RealEnum GetDimension ( ) const ;
## Error: identifier expected, but got: TDataStd_Real::GetDimension() is deprecated. Please avoid usage of this method.!!!

proc Set*(this: var TDataStd_Real; V: Standard_Real) {.importcpp: "Set",
    header: "TDataStd_Real.hxx".}
proc SetID*(this: var TDataStd_Real; guid: Standard_GUID) {.importcpp: "SetID",
    header: "TDataStd_Real.hxx".}
proc SetID*(this: var TDataStd_Real) {.importcpp: "SetID", header: "TDataStd_Real.hxx".}
proc Get*(this: TDataStd_Real): Standard_Real {.noSideEffect, importcpp: "Get",
    header: "TDataStd_Real.hxx".}
proc IsCaptured*(this: TDataStd_Real): Standard_Boolean {.noSideEffect,
    importcpp: "IsCaptured", header: "TDataStd_Real.hxx".}
proc ID*(this: TDataStd_Real): Standard_GUID {.noSideEffect, importcpp: "ID",
    header: "TDataStd_Real.hxx".}
proc Restore*(this: var TDataStd_Real; With: handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TDataStd_Real.hxx".}
proc NewEmpty*(this: TDataStd_Real): handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "TDataStd_Real.hxx".}
proc Paste*(this: TDataStd_Real; Into: handle[TDF_Attribute];
           RT: handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "TDataStd_Real.hxx".}
proc Dump*(this: TDataStd_Real; anOS: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "Dump", header: "TDataStd_Real.hxx".}
proc DumpJson*(this: TDataStd_Real; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "TDataStd_Real.hxx".}
type
  TDataStd_Realbase_type* = TDF_Attribute

proc get_type_name*(): cstring {.importcpp: "TDataStd_Real::get_type_name(@)",
                              header: "TDataStd_Real.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TDataStd_Real::get_type_descriptor(@)",
    header: "TDataStd_Real.hxx".}
proc DynamicType*(this: TDataStd_Real): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "TDataStd_Real.hxx".}