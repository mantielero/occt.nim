##  Created on: 1999-06-11
##  Created by: Sergey RUIN
##  Copyright (c) 1999 Matra Datavision
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
discard "forward decl of Standard_GUID"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of TDF_DataSet"
discard "forward decl of TDataStd_UAttribute"
discard "forward decl of TDataStd_UAttribute"
type
  HandleTDataStdUAttribute* = Handle[TDataStdUAttribute]
  TDataStdUAttribute* {.importcpp: "TDataStd_UAttribute",
                       header: "TDataStd_UAttribute.hxx", bycopy.} = object of TDF_Attribute ##
                                                                                      ## !
                                                                                      ## api
                                                                                      ## class
                                                                                      ## methods
                                                                                      ##
                                                                                      ## !
                                                                                      ## =============
                                                                                      ##
                                                                                      ## !
                                                                                      ## Find,
                                                                                      ## or
                                                                                      ## create,
                                                                                      ## a
                                                                                      ## UAttribute
                                                                                      ## attribute
                                                                                      ## with
                                                                                      ## <LocalID>
                                                                                      ## as
                                                                                      ## Local
                                                                                      ## GUID.
                                                                                      ##
                                                                                      ## !
                                                                                      ## The
                                                                                      ## UAttribute
                                                                                      ## attribute
                                                                                      ## is
                                                                                      ## returned.
                                                                                      ##
                                                                                      ## !
                                                                                      ## UAttribute
                                                                                      ## methods
                                                                                      ##
                                                                                      ## !
                                                                                      ## ============


proc set*(label: TDF_Label; localID: StandardGUID): Handle[TDataStdUAttribute] {.
    importcpp: "TDataStd_UAttribute::Set(@)", header: "TDataStd_UAttribute.hxx".}
proc constructTDataStdUAttribute*(): TDataStdUAttribute {.constructor,
    importcpp: "TDataStd_UAttribute(@)", header: "TDataStd_UAttribute.hxx".}
proc setID*(this: var TDataStdUAttribute; localID: StandardGUID) {.importcpp: "SetID",
    header: "TDataStd_UAttribute.hxx".}
proc id*(this: TDataStdUAttribute): StandardGUID {.noSideEffect, importcpp: "ID",
    header: "TDataStd_UAttribute.hxx".}
proc restore*(this: var TDataStdUAttribute; with: Handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TDataStd_UAttribute.hxx".}
proc newEmpty*(this: TDataStdUAttribute): Handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "TDataStd_UAttribute.hxx".}
proc paste*(this: TDataStdUAttribute; into: Handle[TDF_Attribute];
           rt: Handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "TDataStd_UAttribute.hxx".}
proc references*(this: TDataStdUAttribute; ds: Handle[TDF_DataSet]) {.noSideEffect,
    importcpp: "References", header: "TDataStd_UAttribute.hxx".}
proc dump*(this: TDataStdUAttribute; anOS: var StandardOStream): var StandardOStream {.
    noSideEffect, importcpp: "Dump", header: "TDataStd_UAttribute.hxx".}
proc dumpJson*(this: TDataStdUAttribute; theOStream: var StandardOStream;
              theDepth: int = -1) {.noSideEffect, importcpp: "DumpJson",
                                header: "TDataStd_UAttribute.hxx".}
type
  TDataStdUAttributebaseType* = TDF_Attribute

proc getTypeName*(): cstring {.importcpp: "TDataStd_UAttribute::get_type_name(@)",
                            header: "TDataStd_UAttribute.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TDataStd_UAttribute::get_type_descriptor(@)",
    header: "TDataStd_UAttribute.hxx".}
proc dynamicType*(this: TDataStdUAttribute): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "TDataStd_UAttribute.hxx".}
