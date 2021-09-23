##  Copyright (c) 2020 OPEN CASCADE SAS
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
  BinMDF_ADriver

## ! A universal driver for the attribute that inherits another attribute with
## ! ready to used persistence mechanism implemented (already has a driver to store/retrieve).

type
  BinMDF_DerivedDriver* {.importcpp: "BinMDF_DerivedDriver",
                         header: "BinMDF_DerivedDriver.hxx", bycopy.} = object of BinMDF_ADriver ##
                                                                                          ## !
                                                                                          ## Creates
                                                                                          ## a
                                                                                          ## derivative
                                                                                          ## persistence
                                                                                          ## driver
                                                                                          ## for
                                                                                          ## theDerivative
                                                                                          ## attribute
                                                                                          ## by
                                                                                          ## reusage
                                                                                          ## of
                                                                                          ## theBaseDriver
                                                                                          ##
                                                                                          ## !
                                                                                          ## @param
                                                                                          ## theDerivative
                                                                                          ## an
                                                                                          ## instance
                                                                                          ## of
                                                                                          ## the
                                                                                          ## attribute,
                                                                                          ## just
                                                                                          ## created,
                                                                                          ## detached
                                                                                          ## from
                                                                                          ## any
                                                                                          ## label
                                                                                          ##
                                                                                          ## !
                                                                                          ## @param
                                                                                          ## theBaseDriver
                                                                                          ## a
                                                                                          ## driver
                                                                                          ## of
                                                                                          ## the
                                                                                          ## base
                                                                                          ## attribute,
                                                                                          ## called
                                                                                          ## by
                                                                                          ## Paste
                                                                                          ## methods
    ## !< the derivative attribute that inherits the base
    ## !< the base attribute driver to be reused here

  BinMDF_DerivedDriverbase_type* = BinMDF_ADriver

proc get_type_name*(): cstring {.importcpp: "BinMDF_DerivedDriver::get_type_name(@)",
                              header: "BinMDF_DerivedDriver.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BinMDF_DerivedDriver::get_type_descriptor(@)",
    header: "BinMDF_DerivedDriver.hxx".}
proc DynamicType*(this: BinMDF_DerivedDriver): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "BinMDF_DerivedDriver.hxx".}
proc constructBinMDF_DerivedDriver*(theDerivative: handle[TDF_Attribute];
                                   theBaseDriver: handle[BinMDF_ADriver]): BinMDF_DerivedDriver {.
    constructor, importcpp: "BinMDF_DerivedDriver(@)",
    header: "BinMDF_DerivedDriver.hxx".}
proc NewEmpty*(this: BinMDF_DerivedDriver): handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "BinMDF_DerivedDriver.hxx".}
proc Paste*(this: BinMDF_DerivedDriver; theSource: BinObjMgt_Persistent;
           theTarget: handle[TDF_Attribute];
           theRelocTable: var BinObjMgt_RRelocationTable): Standard_Boolean {.
    noSideEffect, importcpp: "Paste", header: "BinMDF_DerivedDriver.hxx".}
proc Paste*(this: BinMDF_DerivedDriver; theSource: handle[TDF_Attribute];
           theTarget: var BinObjMgt_Persistent;
           theRelocTable: var BinObjMgt_SRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "BinMDF_DerivedDriver.hxx".}