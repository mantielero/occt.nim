##  Created on: 1998-05-20
##  Created by: Christian CAILLET
##  Copyright (c) 1998-1999 Matra Datavision
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

discard "forward decl of TCollection_AsciiString"
discard "forward decl of Standard_Transient"
discard "forward decl of MoniTool_SignText"
discard "forward decl of MoniTool_SignText"
type
  HandleMoniToolSignText* = Handle[MoniToolSignText]

## ! Provides the basic service to get a text which identifies
## ! an object in a context
## ! It can be used for other classes (general signatures ...)
## ! It can also be used to build a message in which an object
## ! is to be identified

type
  MoniToolSignText* {.importcpp: "MoniTool_SignText",
                     header: "MoniTool_SignText.hxx", bycopy.} = object of StandardTransient ##
                                                                                      ## !
                                                                                      ## Returns
                                                                                      ## an
                                                                                      ## identification
                                                                                      ## of
                                                                                      ## the
                                                                                      ## Signature
                                                                                      ## (a
                                                                                      ## word),
                                                                                      ## given
                                                                                      ## at
                                                                                      ##
                                                                                      ## !
                                                                                      ## initialization
                                                                                      ## time


proc name*(this: MoniToolSignText): StandardCString {.noSideEffect,
    importcpp: "Name", header: "MoniTool_SignText.hxx".}
proc textAlone*(this: MoniToolSignText; ent: Handle[StandardTransient]): TCollectionAsciiString {.
    noSideEffect, importcpp: "TextAlone", header: "MoniTool_SignText.hxx".}
proc text*(this: MoniToolSignText; ent: Handle[StandardTransient];
          context: Handle[StandardTransient]): TCollectionAsciiString {.
    noSideEffect, importcpp: "Text", header: "MoniTool_SignText.hxx".}
type
  MoniToolSignTextbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "MoniTool_SignText::get_type_name(@)",
                            header: "MoniTool_SignText.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "MoniTool_SignText::get_type_descriptor(@)",
    header: "MoniTool_SignText.hxx".}
proc dynamicType*(this: MoniToolSignText): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "MoniTool_SignText.hxx".}
