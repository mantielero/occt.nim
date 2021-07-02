##  Created on: 1994-11-04
##  Created by: Christian CAILLET
##  Copyright (c) 1994-1999 Matra Datavision
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

discard "forward decl of MoniTool_AttrList"
discard "forward decl of MoniTool_Element"
discard "forward decl of MoniTool_Element"
type
  HandleMoniToolElement* = Handle[MoniToolElement]

## ! a Element allows to map any kind of object as a Key for a Map.
## ! This works by defining, for a Hash Code, that of the real Key,
## ! not of the Element which acts only as an intermediate.
## ! When a Map asks for the HashCode of a Element, this one returns
## ! the code it has determined at creation time

type
  MoniToolElement* {.importcpp: "MoniTool_Element", header: "MoniTool_Element.hxx",
                    bycopy.} = object of StandardTransient ## ! Empty constructor
                                                      ## ! Stores the HashCode which corresponds to the Value given to
                                                      ## ! create the Mapper


proc constructMoniToolElement*(): MoniToolElement {.constructor,
    importcpp: "MoniTool_Element(@)", header: "MoniTool_Element.hxx".}
proc getHashCode*(this: MoniToolElement): StandardInteger {.noSideEffect,
    importcpp: "GetHashCode", header: "MoniTool_Element.hxx".}
proc equates*(this: MoniToolElement; other: Handle[MoniToolElement]): StandardBoolean {.
    noSideEffect, importcpp: "Equates", header: "MoniTool_Element.hxx".}
proc valueType*(this: MoniToolElement): Handle[StandardType] {.noSideEffect,
    importcpp: "ValueType", header: "MoniTool_Element.hxx".}
proc valueTypeName*(this: MoniToolElement): StandardCString {.noSideEffect,
    importcpp: "ValueTypeName", header: "MoniTool_Element.hxx".}
proc listAttr*(this: MoniToolElement): MoniToolAttrList {.noSideEffect,
    importcpp: "ListAttr", header: "MoniTool_Element.hxx".}
proc changeAttr*(this: var MoniToolElement): var MoniToolAttrList {.
    importcpp: "ChangeAttr", header: "MoniTool_Element.hxx".}
type
  MoniToolElementbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "MoniTool_Element::get_type_name(@)",
                            header: "MoniTool_Element.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "MoniTool_Element::get_type_descriptor(@)",
    header: "MoniTool_Element.hxx".}
proc dynamicType*(this: MoniToolElement): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "MoniTool_Element.hxx".}

