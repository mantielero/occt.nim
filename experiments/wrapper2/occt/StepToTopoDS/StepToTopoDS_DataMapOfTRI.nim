##  Created on: 1993-07-28
##  Created by: Martine LANGLOIS
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
  ../StepShape/StepShape_TopologicalRepresentationItem, ../TopoDS/TopoDS_Shape,
  ../TColStd/TColStd_MapTransientHasher, ../NCollection/NCollection_DataMap

type
  StepToTopoDS_DataMapOfTRI* = NCollection_DataMap[
      handle[StepShape_TopologicalRepresentationItem], TopoDS_Shape,
      TColStd_MapTransientHasher]
  StepToTopoDS_DataMapIteratorOfDataMapOfTRI* = Iterator[
      handle[StepShape_TopologicalRepresentationItem], TopoDS_Shape,
      TColStd_MapTransientHasher]
