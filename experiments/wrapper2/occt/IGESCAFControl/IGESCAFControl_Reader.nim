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

discard "forward decl of XSControl_WorkSession"
discard "forward decl of TDocStd_Document"
type
  IGESCAFControlReader* {.importcpp: "IGESCAFControl_Reader",
                         header: "IGESCAFControl_Reader.hxx", bycopy.} = object of IGESControlReader ##
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


proc constructIGESCAFControlReader*(): IGESCAFControlReader {.constructor,
    importcpp: "IGESCAFControl_Reader(@)", header: "IGESCAFControl_Reader.hxx".}
proc constructIGESCAFControlReader*(theWS: Handle[XSControlWorkSession];
                                   fromScratch: bool = true): IGESCAFControlReader {.
    constructor, importcpp: "IGESCAFControl_Reader(@)",
    header: "IGESCAFControl_Reader.hxx".}
proc transfer*(this: var IGESCAFControlReader; theDoc: var Handle[TDocStdDocument];
              theProgress: MessageProgressRange = messageProgressRange()): bool {.
    importcpp: "Transfer", header: "IGESCAFControl_Reader.hxx".}
proc perform*(this: var IGESCAFControlReader; theFileName: TCollectionAsciiString;
             theDoc: var Handle[TDocStdDocument];
             theProgress: MessageProgressRange = messageProgressRange()): bool {.
    importcpp: "Perform", header: "IGESCAFControl_Reader.hxx".}
proc perform*(this: var IGESCAFControlReader; theFileName: StandardCString;
             theDoc: var Handle[TDocStdDocument];
             theProgress: MessageProgressRange = messageProgressRange()): bool {.
    importcpp: "Perform", header: "IGESCAFControl_Reader.hxx".}
proc setColorMode*(this: var IGESCAFControlReader; theMode: bool) {.
    importcpp: "SetColorMode", header: "IGESCAFControl_Reader.hxx".}
proc getColorMode*(this: IGESCAFControlReader): bool {.noSideEffect,
    importcpp: "GetColorMode", header: "IGESCAFControl_Reader.hxx".}
proc setNameMode*(this: var IGESCAFControlReader; theMode: bool) {.
    importcpp: "SetNameMode", header: "IGESCAFControl_Reader.hxx".}
proc getNameMode*(this: IGESCAFControlReader): bool {.noSideEffect,
    importcpp: "GetNameMode", header: "IGESCAFControl_Reader.hxx".}
proc setLayerMode*(this: var IGESCAFControlReader; theMode: bool) {.
    importcpp: "SetLayerMode", header: "IGESCAFControl_Reader.hxx".}
proc getLayerMode*(this: IGESCAFControlReader): bool {.noSideEffect,
    importcpp: "GetLayerMode", header: "IGESCAFControl_Reader.hxx".}
