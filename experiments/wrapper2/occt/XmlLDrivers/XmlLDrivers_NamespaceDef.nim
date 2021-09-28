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

discard "forward decl of TCollection_AsciiString"
type
  XmlLDriversNamespaceDef* {.importcpp: "XmlLDrivers_NamespaceDef",
                            header: "XmlLDrivers_NamespaceDef.hxx", bycopy.} = object


proc constructXmlLDriversNamespaceDef*(): XmlLDriversNamespaceDef {.constructor,
    importcpp: "XmlLDrivers_NamespaceDef(@)",
    header: "XmlLDrivers_NamespaceDef.hxx".}
proc constructXmlLDriversNamespaceDef*(thePrefix: TCollectionAsciiString;
                                      theURI: TCollectionAsciiString): XmlLDriversNamespaceDef {.
    constructor, importcpp: "XmlLDrivers_NamespaceDef(@)",
    header: "XmlLDrivers_NamespaceDef.hxx".}
proc prefix*(this: XmlLDriversNamespaceDef): TCollectionAsciiString {.noSideEffect,
    importcpp: "Prefix", header: "XmlLDrivers_NamespaceDef.hxx".}
proc uri*(this: XmlLDriversNamespaceDef): TCollectionAsciiString {.noSideEffect,
    importcpp: "URI", header: "XmlLDrivers_NamespaceDef.hxx".}

























