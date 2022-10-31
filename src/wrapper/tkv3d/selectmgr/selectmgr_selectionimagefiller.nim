import ../../tkernel/standard/standard_types
import selectmgr_types



##  Copyright (c) 2020 OPEN CASCADE SAS
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



proc createFiller*(thePixMap: var ImagePixMap;
                  theSelector: ptr SelectMgrViewerSelector;
                  theType: StdSelectTypeOfSelectionImage): Handle[
    SelectMgrSelectionImageFiller] {.cdecl, importcpp: "SelectMgr_SelectionImageFiller::CreateFiller(@)",
                                    header: "SelectMgr_SelectionImageFiller.hxx".}
proc newSelectMgrSelectionImageFiller*(thePixMap: var ImagePixMap;
                                      theSelector: ptr SelectMgrViewerSelector): SelectMgrSelectionImageFiller {.
    cdecl, constructor, importcpp: "SelectMgr_SelectionImageFiller(@)",
    header: "SelectMgr_SelectionImageFiller.hxx".}
proc fill*(this: var SelectMgrSelectionImageFiller; theCol: cint; theRow: cint;
          thePicked: cint) {.cdecl, importcpp: "Fill", header: "SelectMgr_SelectionImageFiller.hxx".}
proc flush*(this: var SelectMgrSelectionImageFiller) {.cdecl, importcpp: "Flush",
    header: "SelectMgr_SelectionImageFiller.hxx".}

