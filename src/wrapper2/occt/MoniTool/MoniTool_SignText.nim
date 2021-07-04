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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Transient,
  ../Standard/Standard_CString

discard "forward decl of TCollection_AsciiString"
discard "forward decl of Standard_Transient"
discard "forward decl of MoniTool_SignText"
discard "forward decl of MoniTool_SignText"
type
  Handle_MoniTool_SignText* = handle[MoniTool_SignText]

## ! Provides the basic service to get a text which identifies
## ! an object in a context
## ! It can be used for other classes (general signatures ...)
## ! It can also be used to build a message in which an object
## ! is to be identified

type
  MoniTool_SignText* {.importcpp: "MoniTool_SignText",
                      header: "MoniTool_SignText.hxx", bycopy.} = object of Standard_Transient ##
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


proc Name*(this: MoniTool_SignText): Standard_CString {.noSideEffect,
    importcpp: "Name", header: "MoniTool_SignText.hxx".}
proc TextAlone*(this: MoniTool_SignText; ent: handle[Standard_Transient]): TCollection_AsciiString {.
    noSideEffect, importcpp: "TextAlone", header: "MoniTool_SignText.hxx".}
proc Text*(this: MoniTool_SignText; ent: handle[Standard_Transient];
          context: handle[Standard_Transient]): TCollection_AsciiString {.
    noSideEffect, importcpp: "Text", header: "MoniTool_SignText.hxx".}
type
  MoniTool_SignTextbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "MoniTool_SignText::get_type_name(@)",
                              header: "MoniTool_SignText.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "MoniTool_SignText::get_type_descriptor(@)",
    header: "MoniTool_SignText.hxx".}
proc DynamicType*(this: MoniTool_SignText): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "MoniTool_SignText.hxx".}