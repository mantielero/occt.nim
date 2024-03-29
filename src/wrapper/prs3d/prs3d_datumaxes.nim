import prs3d_types




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

const
  prs3dDA_XYAxis*  = (prs3dDA_XAxis.int or prs3dDA_YAxis.int).Prs3dDatumAxes ## !< XOY 2D axes
  prs3dDA_YZAxis*  = prs3dDA_YAxis.int or prs3dDA_ZAxis.int ## !< YOZ 2D axes
  prs3dDA_XZAxis*  = prs3dDA_XAxis.int or prs3dDA_ZAxis.int ## !< XOZ 2D axes
  prs3dDA_XYZAxis* = prs3dDA_XAxis.int or prs3dDA_YAxis.int or prs3dDA_ZAxis.int




