##  Created on: 1996-04-30
##  Created by: cle
##  Copyright (c) 1996-1999 Matra Datavision
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

discard "forward decl of TCollection_AsciiString"
discard "forward decl of Storage_BaseDriver"
discard "forward decl of Storage_CallBack"
discard "forward decl of Storage_DefaultCallBack"
discard "forward decl of Storage_HeaderData"
discard "forward decl of Storage_Data"
discard "forward decl of Storage_TypeData"
discard "forward decl of Storage_RootData"
discard "forward decl of Storage_Root"
discard "forward decl of Storage_Schema"
discard "forward decl of Storage_InternalData"
discard "forward decl of Storage_stCONSTclCOM"
discard "forward decl of Storage_TypedCallBack"
type
  Storage* {.importcpp: "Storage", header: "Storage.hxx", bycopy.} = object ## ! returns the version of Storage's read/write routines


proc version*(): TCollectionAsciiString {.importcpp: "Storage::Version(@)",
                                       header: "Storage.hxx".}

























