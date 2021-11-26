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

discard "forward decl of TDF_Label"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of TDataStd_Real"
discard "forward decl of TDataStd_Real"
type
  HandleTDataStdReal* = Handle[TDataStdReal]

## ! The basis to define a real number attribute.

type
  TDataStdReal* {.importcpp: "TDataStd_Real", header: "TDataStd_Real.hxx", bycopy.} = object of TDF_Attribute ##
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


proc getID*(): StandardGUID {.importcpp: "TDataStd_Real::GetID(@)",
                           header: "TDataStd_Real.hxx".}
proc set*(label: TDF_Label; value: float): Handle[TDataStdReal] {.
    importcpp: "TDataStd_Real::Set(@)", header: "TDataStd_Real.hxx".}
proc set*(label: TDF_Label; guid: StandardGUID; value: float): Handle[TDataStdReal] {.
    importcpp: "TDataStd_Real::Set(@)", header: "TDataStd_Real.hxx".}
proc constructTDataStdReal*(): TDataStdReal {.constructor,
    importcpp: "TDataStd_Real(@)", header: "TDataStd_Real.hxx".}
## !!!Ignored construct:  ! Obsolete method that will be removed in next versions.
## ! This field is not supported in the persistence mechanism. Standard_DEPRECATED ( TDataStd_Real::SetDimension() is deprecated. Please avoid usage of this method. ) void SetDimension ( const TDataStd_RealEnum DIM ) ;
## Error: identifier expected, but got: TDataStd_Real::SetDimension() is deprecated. Please avoid usage of this method.!!!

## !!!Ignored construct:  ! Obsolete method that will be removed in next versions.
## ! This field is not supported in the persistence mechanism. Standard_DEPRECATED ( TDataStd_Real::GetDimension() is deprecated. Please avoid usage of this method. ) TDataStd_RealEnum GetDimension ( ) const ;
## Error: identifier expected, but got: TDataStd_Real::GetDimension() is deprecated. Please avoid usage of this method.!!!

proc set*(this: var TDataStdReal; v: float) {.importcpp: "Set",
                                        header: "TDataStd_Real.hxx".}
proc setID*(this: var TDataStdReal; guid: StandardGUID) {.importcpp: "SetID",
    header: "TDataStd_Real.hxx".}
proc setID*(this: var TDataStdReal) {.importcpp: "SetID", header: "TDataStd_Real.hxx".}
proc get*(this: TDataStdReal): float {.noSideEffect, importcpp: "Get",
                                   header: "TDataStd_Real.hxx".}
proc isCaptured*(this: TDataStdReal): bool {.noSideEffect, importcpp: "IsCaptured",
    header: "TDataStd_Real.hxx".}
proc id*(this: TDataStdReal): StandardGUID {.noSideEffect, importcpp: "ID",
    header: "TDataStd_Real.hxx".}
proc restore*(this: var TDataStdReal; with: Handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TDataStd_Real.hxx".}
proc newEmpty*(this: TDataStdReal): Handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "TDataStd_Real.hxx".}
proc paste*(this: TDataStdReal; into: Handle[TDF_Attribute];
           rt: Handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "TDataStd_Real.hxx".}
proc dump*(this: TDataStdReal; anOS: var StandardOStream): var StandardOStream {.
    noSideEffect, importcpp: "Dump", header: "TDataStd_Real.hxx".}
proc dumpJson*(this: TDataStdReal; theOStream: var StandardOStream;
              theDepth: int = -1) {.noSideEffect, importcpp: "DumpJson",
                                header: "TDataStd_Real.hxx".}
type
  TDataStdRealbaseType* = TDF_Attribute

proc getTypeName*(): cstring {.importcpp: "TDataStd_Real::get_type_name(@)",
                            header: "TDataStd_Real.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TDataStd_Real::get_type_descriptor(@)",
    header: "TDataStd_Real.hxx".}
proc dynamicType*(this: TDataStdReal): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "TDataStd_Real.hxx".}














































