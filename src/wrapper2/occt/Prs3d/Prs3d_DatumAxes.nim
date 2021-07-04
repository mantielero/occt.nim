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

## ! Enumeration defining an axes used in datum aspect, see Prs3d_Datum.

type
  Prs3d_DatumAxes* {.size: sizeof(cint), importcpp: "Prs3d_DatumAxes",
                    header: "Prs3d_DatumAxes.hxx".} = enum
    Prs3d_DA_XAxis = 0x00000001, ## !< X axis of the datum
    Prs3d_DA_YAxis = 0x00000002, ## !< Y axis of the datum
    Prs3d_DA_ZAxis = 0x00000004, ## !< Z axis of the datum
    Prs3d_DA_XYAxis = Prs3d_DA_XAxis or Prs3d_DA_YAxis, ## !< XOY 2D axes
    Prs3d_DA_YZAxis = Prs3d_DA_YAxis or Prs3d_DA_ZAxis, ## !< YOZ 2D axes
    Prs3d_DA_XZAxis = Prs3d_DA_XAxis or Prs3d_DA_ZAxis, ## !< XOZ 2D axes
    Prs3d_DA_XYZAxis = Prs3d_DA_XAxis or Prs3d_DA_YAxis or Prs3d_DA_ZAxis

