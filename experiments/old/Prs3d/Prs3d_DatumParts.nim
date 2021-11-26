##  Copyright (c) 2016 OPEN CASCADE SAS
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

## ! Enumeration defining a part of datum aspect, see Prs3d_Datum.

type
  Prs3dDatumParts* {.size: sizeof(cint), importcpp: "Prs3d_DatumParts",
                    header: "Prs3d_DatumParts.hxx".} = enum
    Prs3dDP_Origin = 0, Prs3dDP_XAxis, Prs3dDP_YAxis, Prs3dDP_ZAxis, Prs3dDP_XArrow,
    Prs3dDP_YArrow, Prs3dDP_ZArrow, Prs3dDP_XOYAxis, Prs3dDP_YOZAxis,
    Prs3dDP_XOZAxis, Prs3dDP_None



























