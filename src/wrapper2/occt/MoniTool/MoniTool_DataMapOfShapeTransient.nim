##  Created on: 1998-04-01
##  Created by: Christian CAILLET
##  Copyright (c) 1998-1999 Matra Datavision
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
  ../TopoDS/TopoDS_Shape, ../Standard/Standard_Transient,
  ../TopTools/TopTools_ShapeMapHasher, ../NCollection/NCollection_DataMap

type
  MoniTool_DataMapOfShapeTransient* = NCollection_DataMap[TopoDS_Shape,
      handle[Standard_Transient], TopTools_ShapeMapHasher]
  MoniTool_DataMapIteratorOfDataMapOfShapeTransient* = Iterator[TopoDS_Shape,
      handle[Standard_Transient], TopTools_ShapeMapHasher]
