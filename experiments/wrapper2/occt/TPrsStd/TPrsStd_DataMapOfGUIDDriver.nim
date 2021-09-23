##  Created on: 1997-03-16
##  Created by: SMO
##  Copyright (c) 1997-1999 Matra Datavision
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

import
  ../Standard/Standard_GUID, TPrsStd_Driver, ../Standard/Standard_GUID,
  ../NCollection/NCollection_DataMap

type
  TPrsStd_DataMapOfGUIDDriver* = NCollection_DataMap[Standard_GUID,
      handle[TPrsStd_Driver], Standard_GUID]
  TPrsStd_DataMapIteratorOfDataMapOfGUIDDriver* = Iterator[Standard_GUID,
      handle[TPrsStd_Driver], Standard_GUID]
