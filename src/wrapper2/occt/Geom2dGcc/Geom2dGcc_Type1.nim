##  Created on: 1992-06-29
##  Created by: Remi GILET
##  Copyright (c) 1992-1999 Matra Datavision
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

type
  Geom2dGcc_Type1* {.size: sizeof(cint), importcpp: "Geom2dGcc_Type1",
                    header: "Geom2dGcc_Type1.hxx".} = enum
    Geom2dGcc_CuCuCu, Geom2dGcc_CiCuCu, Geom2dGcc_CiCiCu, Geom2dGcc_CiLiCu,
    Geom2dGcc_LiLiCu, Geom2dGcc_LiCuCu

