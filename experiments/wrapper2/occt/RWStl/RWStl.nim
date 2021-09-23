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

import
  ../OSD/OSD_Path, ../Poly/Poly_Triangulation, ../Standard/Standard_Macro,
  ../Message/Message_ProgressScope

## ! This class provides methods to read and write triangulation from / to the STL files.

type
  RWStl* {.importcpp: "RWStl", header: "RWStl.hxx", bycopy.} = object ## ! Write triangulation to binary STL file.
                                                              ## ! binary format of an STL file.
                                                              ## ! Returns false if the cannot be opened;
                                                              ## ! Write ASCII version.


proc WriteBinary*(theMesh: handle[Poly_Triangulation]; thePath: OSD_Path;
                 theProgress: Message_ProgressRange = Message_ProgressRange()): Standard_Boolean {.
    importcpp: "RWStl::WriteBinary(@)", header: "RWStl.hxx".}
proc WriteAscii*(theMesh: handle[Poly_Triangulation]; thePath: OSD_Path;
                theProgress: Message_ProgressRange = Message_ProgressRange()): Standard_Boolean {.
    importcpp: "RWStl::WriteAscii(@)", header: "RWStl.hxx".}
proc ReadFile*(theFile: OSD_Path;
              aProgInd: Message_ProgressRange = Message_ProgressRange()): handle[
    Poly_Triangulation] {.importcpp: "RWStl::ReadFile(@)", header: "RWStl.hxx".}
proc ReadFile*(theFile: Standard_CString;
              aProgInd: Message_ProgressRange = Message_ProgressRange()): handle[
    Poly_Triangulation] {.importcpp: "RWStl::ReadFile(@)", header: "RWStl.hxx".}
proc ReadBinary*(thePath: OSD_Path;
                theProgress: Message_ProgressRange = Message_ProgressRange()): handle[
    Poly_Triangulation] {.importcpp: "RWStl::ReadBinary(@)", header: "RWStl.hxx".}
proc ReadAscii*(thePath: OSD_Path;
               theProgress: Message_ProgressRange = Message_ProgressRange()): handle[
    Poly_Triangulation] {.importcpp: "RWStl::ReadAscii(@)", header: "RWStl.hxx".}