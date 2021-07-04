##  Copyright (c) 2015 OPEN CASCADE SAS
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
  ../gp/gp_Trsf, ../NCollection/NCollection_Array1,
  ../NCollection/NCollection_Mat4, ../NCollection/NCollection_Vec3,
  ../NCollection/NCollection_Vec4

type
  SelectMgr_Vec3* = NCollection_Vec3[Standard_Real]
  SelectMgr_Vec4* = NCollection_Vec4[Standard_Real]
  SelectMgr_Mat4* = NCollection_Mat4[Standard_Real]

proc Transform*(theTrsf: gp_Trsf; theVec: SelectMgr_Vec3): SelectMgr_Vec3 =
  discard
