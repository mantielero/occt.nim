##  Created on: 2002-03-28
##  Created by: Alexander GRIGORIEV
##  Copyright (c) 2002-2014 OPEN CASCADE SAS
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
##             Automatically created from NCollection_Sequence.hxx by GAWK
##  Purpose:     Definition of a sequence of elements indexed by
##               an Integer in range of 1..n

##  **************************************** Template for Sequence class ********

template define_Sequence*(className, baseCollection, theItemType: untyped): void =
  type
    ClassName* = NCollectionSequence[TheItemType]
