import graphic3d_types

##  Created on: 2004-10-29
##  Created by: Alexander BORODIN
##  Copyright (c) 2004-2014 OPEN CASCADE SAS
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

## ! Transform Persistence Mode defining whether to lock in object position, rotation and / or zooming relative to camera position.

const
  graphic3dTMF_ZoomRotatePers = (graphic3dTMF_ZoomPers.int or graphic3dTMF_RotatePers.int).Graphic3dTransModeFlags


