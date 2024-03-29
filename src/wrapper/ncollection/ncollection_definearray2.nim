import ../standard/standard_types
##  Created on: 2002-04-15
##  Created by: Alexander Kartomin (akm)
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
##             Automatically created from NCollection_Array2.hxx by GAWK
##  Purpose:   The class Array2 represents bi-dimensional arrays
##             of fixed size known at run time.
##             The ranges of indices are user defined.
##  Warning:   Programs clients of such class must be independant
##             of the range of the first element. Then, a C++ for
##             loop must be written like this
##             for (i = A.LowerRow(); i <= A.UpperRow(); i++)
##               for (j = A.LowerCol(); j <= A.UpperCol(); j++)

##  *********************************************** Template for Array2 class

template define_Array2*(className, baseCollection, theItemType: untyped): void =
  type
    ClassName* = NCollectionArray2[TheItemType]
