##  Created on: 2017-06-13
##  Created by: Alexander MALYSHEV
##  Copyright (c) 2017 OPEN CASCADE SAS
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

## ! This class provides methods to read and write triangulation from / to the STL files.

type
  RWStl* {.importcpp: "RWStl", header: "RWStl.hxx", bycopy.} = object ## ! Write triangulation to binary STL file.
                                                              ## ! binary format of an STL file.
                                                              ## ! Returns false if the cannot be opened;
                                                              ## ! Write ASCII version.


proc writeBinary*(theMesh: Handle[PolyTriangulation]; thePath: OSD_Path;
                 theProgress: MessageProgressRange = messageProgressRange()): bool {.
    importcpp: "RWStl::WriteBinary(@)", header: "RWStl.hxx".}
proc writeAscii*(theMesh: Handle[PolyTriangulation]; thePath: OSD_Path;
                theProgress: MessageProgressRange = messageProgressRange()): bool {.
    importcpp: "RWStl::WriteAscii(@)", header: "RWStl.hxx".}
proc readFile*(theFile: OSD_Path;
              aProgInd: MessageProgressRange = messageProgressRange()): Handle[
    PolyTriangulation] {.importcpp: "RWStl::ReadFile(@)", header: "RWStl.hxx".}
proc readFile*(theFile: StandardCString;
              aProgInd: MessageProgressRange = messageProgressRange()): Handle[
    PolyTriangulation] {.importcpp: "RWStl::ReadFile(@)", header: "RWStl.hxx".}
proc readBinary*(thePath: OSD_Path;
                theProgress: MessageProgressRange = messageProgressRange()): Handle[
    PolyTriangulation] {.importcpp: "RWStl::ReadBinary(@)", header: "RWStl.hxx".}
proc readAscii*(thePath: OSD_Path;
               theProgress: MessageProgressRange = messageProgressRange()): Handle[
    PolyTriangulation] {.importcpp: "RWStl::ReadAscii(@)", header: "RWStl.hxx".}
