import aspect_types





##  Created on: 2004-03-22
##  Created by: Sergey ANIKIN
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

##  Enumeration for polygon offset modes

const
  aspectPOM_All = (aspectPOM_Fill.int or aspectPOM_Line.int or aspectPOM_Point.int).AspectPolygonOffsetMode
  aspectPOM_None = 0x08 ##  do not change current polygon offset mode
  aspectPOM_Mask = (aspectPOM_All.int or aspectPOM_None.int).AspectPolygonOffsetMode




