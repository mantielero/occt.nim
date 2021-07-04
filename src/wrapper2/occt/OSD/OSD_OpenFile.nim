##  Copyright (c) 2014 OPEN CASCADE SAS
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
## ! Auxiulary file to provide Unicode compatibility for file open functionality
## ! Names of files are encoded as UTF-16 strings

import
  ../Standard/Standard_Macro

## ! Function opens the file.
## ! @param theName name of file encoded in UTF-8
## ! @param theMode opening mode
## ! @return file handle of opened file

proc OSD_OpenFile*(theName: cstring; theMode: cstring): ptr FILE {.
    importcpp: "OSD_OpenFile(@)", header: "OSD_OpenFile.hxx".}