##  Created on: 1996-03-13
##  Created by: Christian CAILLET
##  Copyright (c) 1996-1999 Matra Datavision
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

discard "forward decl of XSControl_Controller"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of TopoDS_Shape"
discard "forward decl of Interface_CheckIterator"
discard "forward decl of XSControl_TransferWriter"
discard "forward decl of XSControl_TransferWriter"
type
  HandleC1C1* = Handle[XSControlTransferWriter]

## ! TransferWriter gives help to control transfer to write a file
## ! after having converted data from Cascade/Imagine
## !
## ! It works with a Controller (which itself can work with an
## ! Actor to Write) and a FinderProcess. It records results and
## ! checks

type
  XSControlTransferWriter* {.importcpp: "XSControl_TransferWriter",
                            header: "XSControl_TransferWriter.hxx", bycopy.} = object of StandardTransient ##
                                                                                                    ## !
                                                                                                    ## Creates
                                                                                                    ## a
                                                                                                    ## TransferWriter,
                                                                                                    ## empty,
                                                                                                    ## ready
                                                                                                    ## to
                                                                                                    ## run
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## with
                                                                                                    ## an
                                                                                                    ## empty
                                                                                                    ## FinderProcess
                                                                                                    ## (but
                                                                                                    ## no
                                                                                                    ## controller,
                                                                                                    ## etc)


proc constructXSControlTransferWriter*(): XSControlTransferWriter {.constructor,
    importcpp: "XSControl_TransferWriter(@)",
    header: "XSControl_TransferWriter.hxx".}
proc finderProcess*(this: XSControlTransferWriter): Handle[TransferFinderProcess] {.
    noSideEffect, importcpp: "FinderProcess",
    header: "XSControl_TransferWriter.hxx".}
proc setFinderProcess*(this: var XSControlTransferWriter;
                      theFP: Handle[TransferFinderProcess]) {.
    importcpp: "SetFinderProcess", header: "XSControl_TransferWriter.hxx".}
proc controller*(this: XSControlTransferWriter): Handle[XSControlController] {.
    noSideEffect, importcpp: "Controller", header: "XSControl_TransferWriter.hxx".}
proc setController*(this: var XSControlTransferWriter;
                   theCtl: Handle[XSControlController]) {.
    importcpp: "SetController", header: "XSControl_TransferWriter.hxx".}
proc clear*(this: var XSControlTransferWriter; theMode: cint) {.importcpp: "Clear",
    header: "XSControl_TransferWriter.hxx".}
proc transferMode*(this: XSControlTransferWriter): cint {.noSideEffect,
    importcpp: "TransferMode", header: "XSControl_TransferWriter.hxx".}
proc setTransferMode*(this: var XSControlTransferWriter; theMode: cint) {.
    importcpp: "SetTransferMode", header: "XSControl_TransferWriter.hxx".}
proc printStats*(this: XSControlTransferWriter; theWhat: cint; theMode: cint = 0) {.
    noSideEffect, importcpp: "PrintStats", header: "XSControl_TransferWriter.hxx".}
proc recognizeTransient*(this: var XSControlTransferWriter;
                        theObj: Handle[StandardTransient]): bool {.
    importcpp: "RecognizeTransient", header: "XSControl_TransferWriter.hxx".}
proc transferWriteTransient*(this: var XSControlTransferWriter;
                            theModel: Handle[InterfaceInterfaceModel];
                            theObj: Handle[StandardTransient]; theProgress: MessageProgressRange = messageProgressRange()): IFSelectReturnStatus {.
    importcpp: "TransferWriteTransient", header: "XSControl_TransferWriter.hxx".}
proc recognizeShape*(this: var XSControlTransferWriter; theShape: TopoDS_Shape): bool {.
    importcpp: "RecognizeShape", header: "XSControl_TransferWriter.hxx".}
proc transferWriteShape*(this: var XSControlTransferWriter;
                        theModel: Handle[InterfaceInterfaceModel];
                        theShape: TopoDS_Shape; theProgress: MessageProgressRange = messageProgressRange()): IFSelectReturnStatus {.
    importcpp: "TransferWriteShape", header: "XSControl_TransferWriter.hxx".}
proc checkList*(this: XSControlTransferWriter): InterfaceCheckIterator {.
    noSideEffect, importcpp: "CheckList", header: "XSControl_TransferWriter.hxx".}
proc resultCheckList*(this: XSControlTransferWriter;
                     theModel: Handle[InterfaceInterfaceModel]): InterfaceCheckIterator {.
    noSideEffect, importcpp: "ResultCheckList",
    header: "XSControl_TransferWriter.hxx".}
type
  XSControlTransferWriterbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "XSControl_TransferWriter::get_type_name(@)",
                            header: "XSControl_TransferWriter.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "XSControl_TransferWriter::get_type_descriptor(@)",
    header: "XSControl_TransferWriter.hxx".}
proc dynamicType*(this: XSControlTransferWriter): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "XSControl_TransferWriter.hxx".}

























