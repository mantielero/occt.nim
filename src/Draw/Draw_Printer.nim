##  Created on: 2007-07-31
##  Created by: OCC Team
##  Copyright (c) 2007-2014 OPEN CASCADE SAS
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

discard "forward decl of Draw_Printer"
discard "forward decl of Draw_Printer"
type
  HandleC1C1* = Handle[DrawPrinter]

## ! Implementation of Printer class with output
## ! (Message_Messenge) directed to Draw_Interpretor

type
  DrawPrinter* {.importcpp: "Draw_Printer", header: "Draw_Printer.hxx", bycopy.} = object of MessagePrinter ##
                                                                                                  ## !
                                                                                                  ## Creates
                                                                                                  ## a
                                                                                                  ## printer
                                                                                                  ## connected
                                                                                                  ## to
                                                                                                  ## the
                                                                                                  ## interpretor.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Send
                                                                                                  ## a
                                                                                                  ## string
                                                                                                  ## message
                                                                                                  ## with
                                                                                                  ## specified
                                                                                                  ## trace
                                                                                                  ## level.

  DrawPrinterbaseType* = MessagePrinter

proc getTypeName*(): cstring {.importcpp: "Draw_Printer::get_type_name(@)",
                            header: "Draw_Printer.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Draw_Printer::get_type_descriptor(@)", header: "Draw_Printer.hxx".}
proc dynamicType*(this: DrawPrinter): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Draw_Printer.hxx".}
proc constructDrawPrinter*(theTcl: var DrawInterpretor): DrawPrinter {.constructor,
    importcpp: "Draw_Printer(@)", header: "Draw_Printer.hxx".}

























