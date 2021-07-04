##  Created on: 1999-04-07
##  Created by: Denis PASCAL
##  Copyright (c) 1999 Matra Datavision
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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TDF/TDF_IDList

discard "forward decl of TDocStd_Application"
discard "forward decl of TDocStd_Document"
discard "forward decl of TDocStd_Context"
discard "forward decl of TDocStd_XLink"
discard "forward decl of TDocStd_XLinkIterator"
discard "forward decl of TDocStd_XLinkTool"
discard "forward decl of TDocStd_Owner"
discard "forward decl of TDocStd_Modified"
discard "forward decl of TDocStd_XLinkRoot"
discard "forward decl of TDocStd_PathParser"
discard "forward decl of TDocStd_CompoundDelta"
discard "forward decl of TDocStd_ApplicationDelta"
discard "forward decl of TDocStd_MultiTransactionManager"
type
  TDocStd* {.importcpp: "TDocStd", header: "TDocStd.hxx", bycopy.} = object ## ! specific GUID of this package
                                                                    ## !
                                                                    ## =============================
                                                                    ## ! Appends to <anIDList> the list of the attributes
                                                                    ## ! IDs of this package. CAUTION: <anIDList> is NOT
                                                                    ## ! cleared before use.


proc IDList*(anIDList: var TDF_IDList) {.importcpp: "TDocStd::IDList(@)",
                                     header: "TDocStd.hxx".}