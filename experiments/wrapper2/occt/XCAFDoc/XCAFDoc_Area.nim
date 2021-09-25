##  Created on: 2000-09-08
##  Created by: data exchange team
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

discard "forward decl of Standard_GUID"
discard "forward decl of TDF_Label"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of XCAFDoc_Area"
discard "forward decl of XCAFDoc_Area"
type
  HandleXCAFDocArea* = Handle[XCAFDocArea]

## ! attribute to store area

type
  XCAFDocArea* {.importcpp: "XCAFDoc_Area", header: "XCAFDoc_Area.hxx", bycopy.} = object of TDataStdReal ##
                                                                                                ## !
                                                                                                ## class
                                                                                                ## methods
                                                                                                ##
                                                                                                ## !
                                                                                                ## =============


proc constructXCAFDocArea*(): XCAFDocArea {.constructor,
    importcpp: "XCAFDoc_Area(@)", header: "XCAFDoc_Area.hxx".}
proc getID*(): StandardGUID {.importcpp: "XCAFDoc_Area::GetID(@)",
                           header: "XCAFDoc_Area.hxx".}
proc id*(this: XCAFDocArea): StandardGUID {.noSideEffect, importcpp: "ID",
                                        header: "XCAFDoc_Area.hxx".}
proc set*(this: var XCAFDocArea; vol: float) {.importcpp: "Set",
    header: "XCAFDoc_Area.hxx".}
proc set*(label: TDF_Label; area: float): Handle[XCAFDocArea] {.
    importcpp: "XCAFDoc_Area::Set(@)", header: "XCAFDoc_Area.hxx".}
proc get*(this: XCAFDocArea): float {.noSideEffect, importcpp: "Get",
                                  header: "XCAFDoc_Area.hxx".}
proc get*(label: TDF_Label; area: var float): bool {.importcpp: "XCAFDoc_Area::Get(@)",
    header: "XCAFDoc_Area.hxx".}
proc dump*(this: XCAFDocArea; anOS: var StandardOStream): var StandardOStream {.
    noSideEffect, importcpp: "Dump", header: "XCAFDoc_Area.hxx".}
proc dumpJson*(this: XCAFDocArea; theOStream: var StandardOStream; theDepth: int = -1) {.
    noSideEffect, importcpp: "DumpJson", header: "XCAFDoc_Area.hxx".}
## !!!Ignored construct:  DEFINE_DERIVED_ATTRIBUTE ( XCAFDoc_Area , TDataStd_Real ) }
## Error: token expected: ) but got: ,!!!

