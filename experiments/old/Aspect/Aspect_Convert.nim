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

proc round*(theValue: cfloat): cint =
  discard

proc convertCoordinates*(theParentPxSizeX: cint; theParentPxSizeY: cint;
                        theQCenterX: cfloat; theQCenterY: cfloat; theQSizeX: cfloat;
                        theQSizeY: cfloat; thePxLeft: var cint; thePxTop: var cint;
                        thePxSizeX: var cint; thePxSizeY: var cint) =
  discard

proc convertCoordinates*(theParentPxSizeX: cint; theParentPxSizeY: cint;
                        thePxLeft: cint; thePxTop: cint; thePxSizeX: cint;
                        thePxSizeY: cint; theQCenterX: var cfloat;
                        theQCenterY: var cfloat; theQSizeX: var cfloat;
                        theQSizeY: var cfloat) =
  discard

proc fitIn*(theParentPxSizeX: cint; theParentPxSizeY: cint; thePxLeft: var cint;
           thePxTop: var cint; thePxSizeX: var cint; thePxSizeY: var cint) =
  discard

##  namespace Aspect_Convert


























