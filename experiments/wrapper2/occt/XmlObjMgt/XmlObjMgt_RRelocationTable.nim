##  Created on: 2001-07-17
##  Created by: Julia DOROVSKIKH <jfa@hotdox.nnov.matra-dtv.fr>
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
  ../TColStd/TColStd_DataMapOfIntegerTransient, ../Storage/Storage_HeaderData

## ! Retrieval relocation table is modeled as a child class of
## ! TColStd_DataMapOfIntegerTransient that stores a handle to the file
## ! header section. With that attribute drivers have access to the file header
## ! section.

type
  XmlObjMgt_RRelocationTable* {.importcpp: "XmlObjMgt_RRelocationTable",
                               header: "XmlObjMgt_RRelocationTable.hxx", bycopy.} = object of TColStd_DataMapOfIntegerTransient ##
                                                                                                                         ## !
                                                                                                                         ## Returns
                                                                                                                         ## a
                                                                                                                         ## handle
                                                                                                                         ## to
                                                                                                                         ## the
                                                                                                                         ## header
                                                                                                                         ## data
                                                                                                                         ## of
                                                                                                                         ## the
                                                                                                                         ## file
                                                                                                                         ## that
                                                                                                                         ## is
                                                                                                                         ## begin
                                                                                                                         ## read


proc GetHeaderData*(this: XmlObjMgt_RRelocationTable): handle[Storage_HeaderData] {.
    noSideEffect, importcpp: "GetHeaderData",
    header: "XmlObjMgt_RRelocationTable.hxx".}
proc SetHeaderData*(this: var XmlObjMgt_RRelocationTable;
                   theHeaderData: handle[Storage_HeaderData]) {.
    importcpp: "SetHeaderData", header: "XmlObjMgt_RRelocationTable.hxx".}
proc Clear*(this: var XmlObjMgt_RRelocationTable;
           doReleaseMemory: Standard_Boolean = Standard_True) {.importcpp: "Clear",
    header: "XmlObjMgt_RRelocationTable.hxx".}