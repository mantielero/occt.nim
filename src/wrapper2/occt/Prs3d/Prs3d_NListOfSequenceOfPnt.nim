##  Created on: 2006-04-20
##  Created by: Sergey Kochetkov	
##  Copyright (c) 2006-2014 OPEN CASCADE SAS
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
  ../TColgp/TColgp_HSequenceOfPnt, ../NCollection/NCollection_List

type
  Prs3d_NListOfSequenceOfPnt* = NCollection_List[handle[TColgp_HSequenceOfPnt]]