##  Created on: 2004-11-22
##  Created by: Pavel TELKOV
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
##  The original implementation Copyright: (C) RINA S.p.A
##  Purpose:   This header file collects basic definitions
##             to be included in most of sources

## ! Basic CASCADE definitions

import
  ../Standard/Standard_Type, ../Standard/Standard_Type,
  ../Standard/Standard_Transient, ../TCollection/TCollection_ExtendedString,
  ../TCollection/TCollection_HExtendedString, ../Standard/Standard_Failure

## ! Methods inline implimentation for HExtendedString
## ! Computes a hash code for the given handle referred to extended string, in the range [1, theUpperBound]
## ! @param theHExtendedString the handle referred to extended string which hash code is to be computed
## ! @param theUpperBound the upper bound of the range a computing hash code must be within
## ! @return a computed hash code, in the range [1, theUpperBound]

proc HashCode*(theHExtendedString: handle[TCollection_HExtendedString];
              theUpperBound: Standard_Integer): Standard_Integer =
  discard

proc IsEqual*(theStr1: handle[TCollection_HExtendedString];
             theStr2: handle[TCollection_HExtendedString]): Standard_Boolean =
  discard

when defined(_MSC_VER):
  discard