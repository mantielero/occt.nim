##  Created on: 2000-08-15
##  Created by: Andrey BETENEV
##  Copyright (c) 2000-2014 OPEN CASCADE SAS
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
  ../Standard/Standard_Handle, ../IGESControl/IGESControl_Reader,
  ../TCollection/TCollection_AsciiString

discard "forward decl of XSControl_WorkSession"
discard "forward decl of TDocStd_Document"
type
  IGESCAFControl_Reader* {.importcpp: "IGESCAFControl_Reader",
                          header: "IGESCAFControl_Reader.hxx", bycopy.} = object of IGESControl_Reader ##
                                                                                                ## !
                                                                                                ## Creates
                                                                                                ## a
                                                                                                ## reader
                                                                                                ## with
                                                                                                ## an
                                                                                                ## empty
                                                                                                ##
                                                                                                ## !
                                                                                                ## IGES
                                                                                                ## model
                                                                                                ## and
                                                                                                ## sets
                                                                                                ## ColorMode,
                                                                                                ## LayerMode
                                                                                                ## and
                                                                                                ## NameMode
                                                                                                ## to
                                                                                                ## Standard_True.


proc constructIGESCAFControl_Reader*(): IGESCAFControl_Reader {.constructor,
    importcpp: "IGESCAFControl_Reader(@)", header: "IGESCAFControl_Reader.hxx".}
proc constructIGESCAFControl_Reader*(theWS: handle[XSControl_WorkSession];
    FromScratch: Standard_Boolean = Standard_True): IGESCAFControl_Reader {.
    constructor, importcpp: "IGESCAFControl_Reader(@)",
    header: "IGESCAFControl_Reader.hxx".}
proc Transfer*(this: var IGESCAFControl_Reader;
              theDoc: var handle[TDocStd_Document];
              theProgress: Message_ProgressRange = Message_ProgressRange()): Standard_Boolean {.
    importcpp: "Transfer", header: "IGESCAFControl_Reader.hxx".}
proc Perform*(this: var IGESCAFControl_Reader; theFileName: TCollection_AsciiString;
             theDoc: var handle[TDocStd_Document];
             theProgress: Message_ProgressRange = Message_ProgressRange()): Standard_Boolean {.
    importcpp: "Perform", header: "IGESCAFControl_Reader.hxx".}
proc Perform*(this: var IGESCAFControl_Reader; theFileName: Standard_CString;
             theDoc: var handle[TDocStd_Document];
             theProgress: Message_ProgressRange = Message_ProgressRange()): Standard_Boolean {.
    importcpp: "Perform", header: "IGESCAFControl_Reader.hxx".}
proc SetColorMode*(this: var IGESCAFControl_Reader; theMode: Standard_Boolean) {.
    importcpp: "SetColorMode", header: "IGESCAFControl_Reader.hxx".}
proc GetColorMode*(this: IGESCAFControl_Reader): Standard_Boolean {.noSideEffect,
    importcpp: "GetColorMode", header: "IGESCAFControl_Reader.hxx".}
proc SetNameMode*(this: var IGESCAFControl_Reader; theMode: Standard_Boolean) {.
    importcpp: "SetNameMode", header: "IGESCAFControl_Reader.hxx".}
proc GetNameMode*(this: IGESCAFControl_Reader): Standard_Boolean {.noSideEffect,
    importcpp: "GetNameMode", header: "IGESCAFControl_Reader.hxx".}
proc SetLayerMode*(this: var IGESCAFControl_Reader; theMode: Standard_Boolean) {.
    importcpp: "SetLayerMode", header: "IGESCAFControl_Reader.hxx".}
proc GetLayerMode*(this: IGESCAFControl_Reader): Standard_Boolean {.noSideEffect,
    importcpp: "GetLayerMode", header: "IGESCAFControl_Reader.hxx".}