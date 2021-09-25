##  Created on: 2000-08-17
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
discard "forward decl of TCollection_AsciiString"
discard "forward decl of TopoDS_Shape"
discard "forward decl of XCAFPrs_Style"
type
  IGESCAFControlWriter* {.importcpp: "IGESCAFControl_Writer",
                         header: "IGESCAFControl_Writer.hxx", bycopy.} = object of IGESControlWriter ##
                                                                                              ## !
                                                                                              ## Creates
                                                                                              ## a
                                                                                              ## writer
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
                                                                                              ##
                                                                                              ## !
                                                                                              ## Reads
                                                                                              ## colors
                                                                                              ## from
                                                                                              ## DECAF
                                                                                              ## document
                                                                                              ## and
                                                                                              ## assigns
                                                                                              ## them
                                                                                              ##
                                                                                              ## !
                                                                                              ## to
                                                                                              ## corresponding
                                                                                              ## IGES
                                                                                              ## entities
                                                                                              ##
                                                                                              ## !
                                                                                              ## Recursively
                                                                                              ## iterates
                                                                                              ## on
                                                                                              ## subshapes
                                                                                              ## and
                                                                                              ## assigns
                                                                                              ## colors
                                                                                              ##
                                                                                              ## !
                                                                                              ## to
                                                                                              ## faces
                                                                                              ## and
                                                                                              ## edges
                                                                                              ## (if
                                                                                              ## set)


proc constructIGESCAFControlWriter*(): IGESCAFControlWriter {.constructor,
    importcpp: "IGESCAFControl_Writer(@)", header: "IGESCAFControl_Writer.hxx".}
proc constructIGESCAFControlWriter*(ws: Handle[XSControlWorkSession];
                                   scratch: bool = true): IGESCAFControlWriter {.
    constructor, importcpp: "IGESCAFControl_Writer(@)",
    header: "IGESCAFControl_Writer.hxx".}
proc transfer*(this: var IGESCAFControlWriter; doc: Handle[TDocStdDocument];
              theProgress: MessageProgressRange = messageProgressRange()): bool {.
    importcpp: "Transfer", header: "IGESCAFControl_Writer.hxx".}
proc transfer*(this: var IGESCAFControlWriter; labels: TDF_LabelSequence;
              theProgress: MessageProgressRange = messageProgressRange()): bool {.
    importcpp: "Transfer", header: "IGESCAFControl_Writer.hxx".}
proc transfer*(this: var IGESCAFControlWriter; label: TDF_Label;
              theProgress: MessageProgressRange = messageProgressRange()): bool {.
    importcpp: "Transfer", header: "IGESCAFControl_Writer.hxx".}
proc perform*(this: var IGESCAFControlWriter; doc: Handle[TDocStdDocument];
             filename: TCollectionAsciiString;
             theProgress: MessageProgressRange = messageProgressRange()): bool {.
    importcpp: "Perform", header: "IGESCAFControl_Writer.hxx".}
proc perform*(this: var IGESCAFControlWriter; doc: Handle[TDocStdDocument];
             filename: StandardCString;
             theProgress: MessageProgressRange = messageProgressRange()): bool {.
    importcpp: "Perform", header: "IGESCAFControl_Writer.hxx".}
proc setColorMode*(this: var IGESCAFControlWriter; colormode: bool) {.
    importcpp: "SetColorMode", header: "IGESCAFControl_Writer.hxx".}
proc getColorMode*(this: IGESCAFControlWriter): bool {.noSideEffect,
    importcpp: "GetColorMode", header: "IGESCAFControl_Writer.hxx".}
proc setNameMode*(this: var IGESCAFControlWriter; namemode: bool) {.
    importcpp: "SetNameMode", header: "IGESCAFControl_Writer.hxx".}
proc getNameMode*(this: IGESCAFControlWriter): bool {.noSideEffect,
    importcpp: "GetNameMode", header: "IGESCAFControl_Writer.hxx".}
proc setLayerMode*(this: var IGESCAFControlWriter; layermode: bool) {.
    importcpp: "SetLayerMode", header: "IGESCAFControl_Writer.hxx".}
proc getLayerMode*(this: IGESCAFControlWriter): bool {.noSideEffect,
    importcpp: "GetLayerMode", header: "IGESCAFControl_Writer.hxx".}
