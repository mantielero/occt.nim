##  Created on: 2008-05-29
##  Created by: Sergey ZARITCHNY
##  Copyright (c) 2008-2014 OPEN CASCADE SAS
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

## ! The terms of this enumeration define the types of geometric shapes available.

type
  TDataXtdGeometryEnum* {.size: sizeof(cint), importcpp: "TDataXtd_GeometryEnum",
                         header: "TDataXtd_GeometryEnum.hxx".} = enum
    TDataXtdANY_GEOM, TDataXtdPOINT, TDataXtdLINE, TDataXtdCIRCLE, TDataXtdELLIPSE,
    TDataXtdSPLINE, TDataXtdPLANE, TDataXtdCYLINDER


