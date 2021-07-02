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

proc round*(theValue: StandardReal): StandardInteger =
  discard

proc convertCoordinates*(theParentPxSizeX: StandardInteger;
                        theParentPxSizeY: StandardInteger;
                        theQCenterX: StandardReal; theQCenterY: StandardReal;
                        theQSizeX: StandardReal; theQSizeY: StandardReal;
                        thePxLeft: var StandardInteger;
                        thePxTop: var StandardInteger;
                        thePxSizeX: var StandardInteger;
                        thePxSizeY: var StandardInteger) =
  discard

proc convertCoordinates*(theParentPxSizeX: StandardInteger;
                        theParentPxSizeY: StandardInteger;
                        thePxLeft: StandardInteger; thePxTop: StandardInteger;
                        thePxSizeX: StandardInteger; thePxSizeY: StandardInteger;
                        theQCenterX: var StandardReal;
                        theQCenterY: var StandardReal; theQSizeX: var StandardReal;
                        theQSizeY: var StandardReal) =
  discard

proc fitIn*(theParentPxSizeX: StandardInteger; theParentPxSizeY: StandardInteger;
           thePxLeft: var StandardInteger; thePxTop: var StandardInteger;
           thePxSizeX: var StandardInteger; thePxSizeY: var StandardInteger) =
  discard

##  namespace Aspect_Convert


