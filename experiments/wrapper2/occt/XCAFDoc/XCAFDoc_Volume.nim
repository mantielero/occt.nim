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
discard "forward decl of XCAFDoc_Volume"
discard "forward decl of XCAFDoc_Volume"
type
  HandleXCAFDocVolume* = Handle[XCAFDocVolume]

## ! attribute to store volume

type
  XCAFDocVolume* {.importcpp: "XCAFDoc_Volume", header: "XCAFDoc_Volume.hxx", bycopy.} = object of TDataStdReal ##
                                                                                                      ## !
                                                                                                      ## class
                                                                                                      ## methods
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## =============


proc constructXCAFDocVolume*(): XCAFDocVolume {.constructor,
    importcpp: "XCAFDoc_Volume(@)", header: "XCAFDoc_Volume.hxx".}
proc getID*(): StandardGUID {.importcpp: "XCAFDoc_Volume::GetID(@)",
                           header: "XCAFDoc_Volume.hxx".}
proc id*(this: XCAFDocVolume): StandardGUID {.noSideEffect, importcpp: "ID",
    header: "XCAFDoc_Volume.hxx".}
proc set*(this: var XCAFDocVolume; vol: float) {.importcpp: "Set",
    header: "XCAFDoc_Volume.hxx".}
proc set*(label: TDF_Label; vol: float): Handle[XCAFDocVolume] {.
    importcpp: "XCAFDoc_Volume::Set(@)", header: "XCAFDoc_Volume.hxx".}
proc get*(this: XCAFDocVolume): float {.noSideEffect, importcpp: "Get",
                                    header: "XCAFDoc_Volume.hxx".}
proc get*(label: TDF_Label; vol: var float): bool {.
    importcpp: "XCAFDoc_Volume::Get(@)", header: "XCAFDoc_Volume.hxx".}
proc dump*(this: XCAFDocVolume; anOS: var StandardOStream): var StandardOStream {.
    noSideEffect, importcpp: "Dump", header: "XCAFDoc_Volume.hxx".}
proc dumpJson*(this: XCAFDocVolume; theOStream: var StandardOStream;
              theDepth: int = -1) {.noSideEffect, importcpp: "DumpJson",
                                header: "XCAFDoc_Volume.hxx".}
## !!!Ignored construct:  DEFINE_DERIVED_ATTRIBUTE ( XCAFDoc_Volume , TDataStd_Real ) }
## Error: token expected: ) but got: ,!!!

