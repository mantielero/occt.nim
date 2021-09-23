##  Created on: 1993-07-06
##  Created by: Yves FRICAUD
##  Copyright (c) 1993-1999 Matra Datavision
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
  ../Standard/Standard_Integer, ../Bisector/Bisector_Bisec,
  ../TColStd/TColStd_MapIntegerHasher, ../NCollection/NCollection_DataMap

type
  MAT2d_DataMapOfIntegerBisec* = NCollection_DataMap[Standard_Integer,
      Bisector_Bisec, TColStd_MapIntegerHasher]
  MAT2d_DataMapIteratorOfDataMapOfIntegerBisec* = Iterator[Standard_Integer,
      Bisector_Bisec, TColStd_MapIntegerHasher]
