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
  Prs3dDatumAttribute* {.size: sizeof(cint), importcpp: "Prs3d_DatumAttribute",
                        header: "Prs3d_DatumAttribute.hxx".} = enum
    Prs3dDA_XAxisLength = 0, Prs3dDA_YAxisLength, Prs3dDA_ZAxisLength,
    Prs3dDP_ShadingTubeRadiusPercent, Prs3dDP_ShadingConeRadiusPercent,
    Prs3dDP_ShadingConeLengthPercent, Prs3dDP_ShadingOriginRadiusPercent,
    Prs3dDP_ShadingNumberOfFacettes


