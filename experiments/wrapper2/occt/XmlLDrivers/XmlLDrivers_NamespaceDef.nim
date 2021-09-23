##  Created on: 2001-09-19
##  Created by: admin of fao FACTORY
##  Copyright (c) 2001-2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TCollection/TCollection_AsciiString

discard "forward decl of TCollection_AsciiString"
type
  XmlLDrivers_NamespaceDef* {.importcpp: "XmlLDrivers_NamespaceDef",
                             header: "XmlLDrivers_NamespaceDef.hxx", bycopy.} = object


proc constructXmlLDrivers_NamespaceDef*(): XmlLDrivers_NamespaceDef {.constructor,
    importcpp: "XmlLDrivers_NamespaceDef(@)",
    header: "XmlLDrivers_NamespaceDef.hxx".}
proc constructXmlLDrivers_NamespaceDef*(thePrefix: TCollection_AsciiString;
                                       theURI: TCollection_AsciiString): XmlLDrivers_NamespaceDef {.
    constructor, importcpp: "XmlLDrivers_NamespaceDef(@)",
    header: "XmlLDrivers_NamespaceDef.hxx".}
proc Prefix*(this: XmlLDrivers_NamespaceDef): TCollection_AsciiString {.
    noSideEffect, importcpp: "Prefix", header: "XmlLDrivers_NamespaceDef.hxx".}
proc URI*(this: XmlLDrivers_NamespaceDef): TCollection_AsciiString {.noSideEffect,
    importcpp: "URI", header: "XmlLDrivers_NamespaceDef.hxx".}