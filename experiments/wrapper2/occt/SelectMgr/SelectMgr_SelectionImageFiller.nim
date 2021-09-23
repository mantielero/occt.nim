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

import
  ../Image/Image_PixMap, ../math/math_BullardGenerator,
  ../NCollection/NCollection_Map, ../StdSelect/StdSelect_TypeOfSelectionImage,
  ../Quantity/Quantity_ColorHasher

discard "forward decl of SelectMgr_ViewerSelector"
type
  SelectMgr_SelectionImageFiller* {.importcpp: "SelectMgr_SelectionImageFiller", header: "SelectMgr_SelectionImageFiller.hxx",
                                   bycopy.} = object of Standard_Transient ## ! Create filler of specified type.
                                                                      ## ! Main
                                                                      ## constructor.
                                                                      ## ! Find the new unique random color.


proc CreateFiller*(thePixMap: var Image_PixMap;
                  theSelector: ptr SelectMgr_ViewerSelector;
                  theType: StdSelect_TypeOfSelectionImage): handle[
    SelectMgr_SelectionImageFiller] {.importcpp: "SelectMgr_SelectionImageFiller::CreateFiller(@)", header: "SelectMgr_SelectionImageFiller.hxx".}
proc constructSelectMgr_SelectionImageFiller*(thePixMap: var Image_PixMap;
    theSelector: ptr SelectMgr_ViewerSelector): SelectMgr_SelectionImageFiller {.
    constructor, importcpp: "SelectMgr_SelectionImageFiller(@)",
    header: "SelectMgr_SelectionImageFiller.hxx".}
proc Fill*(this: var SelectMgr_SelectionImageFiller; theCol: Standard_Integer;
          theRow: Standard_Integer; thePicked: Standard_Integer) {.
    importcpp: "Fill", header: "SelectMgr_SelectionImageFiller.hxx".}
proc Flush*(this: var SelectMgr_SelectionImageFiller) {.importcpp: "Flush",
    header: "SelectMgr_SelectionImageFiller.hxx".}