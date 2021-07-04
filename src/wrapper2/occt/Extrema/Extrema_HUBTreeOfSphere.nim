##  Created on: 2005-03-17
##  Created by: OPEN CASCADE Support
##  Copyright (c) 2005-2014 OPEN CASCADE SAS
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
  ../NCollection/NCollection_UBTree, ../NCollection/NCollection_UBTreeFiller,
  ../NCollection/NCollection_Handle, ../Bnd/Bnd_Sphere

type
  Extrema_UBTreeOfSphere* = NCollection_UBTree[Standard_Integer, Bnd_Sphere]
  Extrema_UBTreeFillerOfSphere* = NCollection_UBTreeFiller[Standard_Integer,
      Bnd_Sphere]
  Extrema_HUBTreeOfSphere* = NCollection_Handle[Extrema_UBTreeOfSphere]
