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

import
  ../Standard/Standard, ../Standard/Standard_Real

## ! Auxiliary functions for DCU <-> Pixels conversions.

proc Round*(theValue: Standard_Real): Standard_Integer =
  discard

proc ConvertCoordinates*(theParentPxSizeX: Standard_Integer;
                        theParentPxSizeY: Standard_Integer;
                        theQCenterX: Standard_Real; theQCenterY: Standard_Real;
                        theQSizeX: Standard_Real; theQSizeY: Standard_Real;
                        thePxLeft: var Standard_Integer;
                        thePxTop: var Standard_Integer;
                        thePxSizeX: var Standard_Integer;
                        thePxSizeY: var Standard_Integer) =
  discard

proc ConvertCoordinates*(theParentPxSizeX: Standard_Integer;
                        theParentPxSizeY: Standard_Integer;
                        thePxLeft: Standard_Integer; thePxTop: Standard_Integer;
                        thePxSizeX: Standard_Integer;
                        thePxSizeY: Standard_Integer;
                        theQCenterX: var Standard_Real;
                        theQCenterY: var Standard_Real;
                        theQSizeX: var Standard_Real; theQSizeY: var Standard_Real) =
  discard

proc FitIn*(theParentPxSizeX: Standard_Integer; theParentPxSizeY: Standard_Integer;
           thePxLeft: var Standard_Integer; thePxTop: var Standard_Integer;
           thePxSizeX: var Standard_Integer; thePxSizeY: var Standard_Integer) =
  discard

##  namespace Aspect_Convert
