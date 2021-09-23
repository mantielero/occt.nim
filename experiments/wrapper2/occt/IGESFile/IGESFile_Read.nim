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
##   Include a utiliser pour appeler IGESFile_Read

import
  ../IGESData/IGESData_IGESModel, ../IGESData/IGESData_Protocol,
  ../IGESData/IGESData_FileRecognizer

proc IGESFile_Read*(nomfic: cstring; amodel: handle[IGESData_IGESModel];
                   protocol: handle[IGESData_Protocol]): Standard_Integer {.
    importcpp: "IGESFile_Read(@)", header: "IGESFile_Read.hxx".}
proc IGESFile_ReadFNES*(nomfic: cstring; amodel: handle[IGESData_IGESModel];
                       protocol: handle[IGESData_Protocol]): Standard_Integer {.
    importcpp: "IGESFile_ReadFNES(@)", header: "IGESFile_Read.hxx".}
proc IGESFile_Read*(nomfic: cstring; amodel: handle[IGESData_IGESModel];
                   protocol: handle[IGESData_Protocol];
                   reco: handle[IGESData_FileRecognizer];
                   modefnes: Standard_Boolean = Standard_False): Standard_Integer {.
    importcpp: "IGESFile_Read(@)", header: "IGESFile_Read.hxx".}