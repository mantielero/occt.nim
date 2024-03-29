import v3d_types





##  Copyright (c) 2016 OPEN CASCADE SAS
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

## ! The structure defines options for image dump functionality.



proc newV3dImageDumpOptions*(): V3dImageDumpOptions {.cdecl, constructor,
    importcpp: "V3d_ImageDumpOptions(@)", header: "V3d_ImageDumpOptions.hxx".}


