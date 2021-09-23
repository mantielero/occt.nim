##  Created on: 2001-07-09
##  Created by: Julia DOROVSKIKH
##  Copyright (c) 2001-2014 OPEN CASCADE SAS
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
  ../TCollection/TCollection_AsciiString, XmlMDF_ADriver,
  ../TCollection/TCollection_AsciiString, ../NCollection/NCollection_DataMap

type
  XmlMDF_MapOfDriver* = NCollection_DataMap[TCollection_AsciiString,
      handle[XmlMDF_ADriver], TCollection_AsciiString]
  XmlMDF_DataMapIteratorOfMapOfDriver* = Iterator[TCollection_AsciiString,
      handle[XmlMDF_ADriver], TCollection_AsciiString]
