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

## ! Auxiliary functions for DCU <-> Pixels conversions.

proc round*(theValue: float): int =
  discard

proc convertCoordinates*(theParentPxSizeX: int; theParentPxSizeY: int;
                        theQCenterX: float; theQCenterY: float; theQSizeX: float;
                        theQSizeY: float; thePxLeft: var int; thePxTop: var int;
                        thePxSizeX: var int; thePxSizeY: var int) =
  discard

proc convertCoordinates*(theParentPxSizeX: int; theParentPxSizeY: int;
                        thePxLeft: int; thePxTop: int; thePxSizeX: int;
                        thePxSizeY: int; theQCenterX: var float;
                        theQCenterY: var float; theQSizeX: var float;
                        theQSizeY: var float) =
  discard

proc fitIn*(theParentPxSizeX: int; theParentPxSizeY: int; thePxLeft: var int;
           thePxTop: var int; thePxSizeX: var int; thePxSizeY: var int) =
  discard

##  namespace Aspect_Convert

