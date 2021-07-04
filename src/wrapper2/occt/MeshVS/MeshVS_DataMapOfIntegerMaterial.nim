##  Created on: 2003-10-10
##  Created by: Alexander SOLOVYOV
##  Copyright (c) 2003-2014 OPEN CASCADE SAS
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
  ../Standard/Standard_Integer, ../Graphic3d/Graphic3d_MaterialAspect,
  ../TColStd/TColStd_MapIntegerHasher, ../NCollection/NCollection_DataMap

type
  MeshVS_DataMapOfIntegerMaterial* = NCollection_DataMap[Standard_Integer,
      Graphic3d_MaterialAspect, TColStd_MapIntegerHasher]
  MeshVS_DataMapIteratorOfDataMapOfIntegerMaterial* = Iterator[Standard_Integer,
      Graphic3d_MaterialAspect, TColStd_MapIntegerHasher]
