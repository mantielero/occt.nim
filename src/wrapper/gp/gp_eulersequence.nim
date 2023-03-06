#import gp_types

##  Created on: 1993-04-13
##  Created by: JCV
##  Copyright (c) 1993-1999 Matra Datavision
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

## ! Enumerates all 24 possible variants of generalized
## ! Euler angles, defining general 3d rotation by three
## ! rotations around main axes of coordinate system,
## ! in different possible orders.
## !
## ! The name of the enumeration
## ! corresponds to order of rotations, prefixed by type
## ! of co-ordinate system used:
## ! - Intrinsic: rotations are made around axes of rotating
## !   co-ordinate system associated with the object
## ! - Extrinsic: rotations are made around axes of fixed
## !   (static) co-ordinate system
## !
## ! Two specific values are provided for most frequently used
## ! conventions: classic Euler angles (intrinsic ZXZ) and
## ! yaw-pitch-roll (intrinsic ZYX).


