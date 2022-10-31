


##  Created on: 1991-10-07
##  Created by: NW,JPB,CAL
##  Copyright (c) 1991-1999 Matra Datavision
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

## ! Definition of all the type of light source.


const
  v3dAMBIENT     = graphic3dTOLS_AMBIENT
  v3dDIRECTIONAL = graphic3dTOLS_DIRECTIONAL
  v3dPOSITIONAL  = graphic3dTOLS_POSITIONAL
  v3dSPOT        = graphic3dTOLS_SPOT


const                         ## ! Auxiliary value defining the overall number of values in enumeration Graphic3d_TypeOfLightSource
  Graphic3dTypeOfLightSourceNB* = graphic3dTOLS_SPOT.int + 1


