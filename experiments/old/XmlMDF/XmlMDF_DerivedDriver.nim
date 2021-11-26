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

## ! A universal driver for the attribute that inherits another attribute with
## ! ready to used persistence mechanism implemented (already has a driver to store/retrieve).

type
  XmlMDF_DerivedDriver* {.importcpp: "XmlMDF_DerivedDriver",
                         header: "XmlMDF_DerivedDriver.hxx", bycopy.} = object of XmlMDF_ADriver ##
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

  XmlMDF_DerivedDriverbaseType* = XmlMDF_ADriver

proc getTypeName*(): cstring {.importcpp: "XmlMDF_DerivedDriver::get_type_name(@)",
                            header: "XmlMDF_DerivedDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "XmlMDF_DerivedDriver::get_type_descriptor(@)",
    header: "XmlMDF_DerivedDriver.hxx".}
proc dynamicType*(this: XmlMDF_DerivedDriver): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "XmlMDF_DerivedDriver.hxx".}
proc constructXmlMDF_DerivedDriver*(theDerivative: Handle[TDF_Attribute];
                                   theBaseDriver: Handle[XmlMDF_ADriver]): XmlMDF_DerivedDriver {.
    constructor, importcpp: "XmlMDF_DerivedDriver(@)",
    header: "XmlMDF_DerivedDriver.hxx".}
proc newEmpty*(this: XmlMDF_DerivedDriver): Handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "XmlMDF_DerivedDriver.hxx".}
proc typeName*(this: XmlMDF_DerivedDriver): TCollectionAsciiString {.noSideEffect,
    importcpp: "TypeName", header: "XmlMDF_DerivedDriver.hxx".}
proc paste*(this: XmlMDF_DerivedDriver; theSource: XmlObjMgtPersistent;
           theTarget: Handle[TDF_Attribute];
           theRelocTable: var XmlObjMgtRRelocationTable): bool {.noSideEffect,
    importcpp: "Paste", header: "XmlMDF_DerivedDriver.hxx".}
proc paste*(this: XmlMDF_DerivedDriver; theSource: Handle[TDF_Attribute];
           theTarget: var XmlObjMgtPersistent;
           theRelocTable: var XmlObjMgtSRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "XmlMDF_DerivedDriver.hxx".}

























