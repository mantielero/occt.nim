##  Created by: DAUTRY Philippe
##  Copyright (c) 1997-1999 Matra Datavision
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

discard "forward decl of TDF_Label"
discard "forward decl of Draw_Display"
discard "forward decl of Draw_Drawable3D"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of TDataStd_TreeNode"
discard "forward decl of DDataStd_TreeBrowser"
discard "forward decl of DDataStd_TreeBrowser"
type
  HandleC1C1* = Handle[DDataStdTreeBrowser]

## ! Browses a TreeNode from TDataStd.
## ! =================================

type
  DDataStdTreeBrowser* {.importcpp: "DDataStd_TreeBrowser",
                        header: "DDataStd_TreeBrowser.hxx", bycopy.} = object of DrawDrawable3D ##
                                                                                         ## !
                                                                                         ## Returns
                                                                                         ## a
                                                                                         ## string
                                                                                         ## composed
                                                                                         ## with
                                                                                         ## the
                                                                                         ## sub-TreeNodes
                                                                                         ##
                                                                                         ## !
                                                                                         ## of
                                                                                         ## <aTreeNode>.
                                                                                         ## Used
                                                                                         ## to
                                                                                         ## implement
                                                                                         ## other
                                                                                         ## methods.


proc constructDDataStdTreeBrowser*(root: TDF_Label): DDataStdTreeBrowser {.
    constructor, importcpp: "DDataStd_TreeBrowser(@)",
    header: "DDataStd_TreeBrowser.hxx".}
proc drawOn*(this: DDataStdTreeBrowser; dis: var DrawDisplay) {.noSideEffect,
    importcpp: "DrawOn", header: "DDataStd_TreeBrowser.hxx".}
proc copy*(this: DDataStdTreeBrowser): Handle[DrawDrawable3D] {.noSideEffect,
    importcpp: "Copy", header: "DDataStd_TreeBrowser.hxx".}
proc dump*(this: DDataStdTreeBrowser; s: var StandardOStream) {.noSideEffect,
    importcpp: "Dump", header: "DDataStd_TreeBrowser.hxx".}
proc whatis*(this: DDataStdTreeBrowser; i: var DrawInterpretor) {.noSideEffect,
    importcpp: "Whatis", header: "DDataStd_TreeBrowser.hxx".}
proc label*(this: var DDataStdTreeBrowser; root: TDF_Label) {.importcpp: "Label",
    header: "DDataStd_TreeBrowser.hxx".}
proc label*(this: DDataStdTreeBrowser): TDF_Label {.noSideEffect, importcpp: "Label",
    header: "DDataStd_TreeBrowser.hxx".}
proc openRoot*(this: DDataStdTreeBrowser): TCollectionAsciiString {.noSideEffect,
    importcpp: "OpenRoot", header: "DDataStd_TreeBrowser.hxx".}
proc openNode*(this: DDataStdTreeBrowser; L: TDF_Label): TCollectionAsciiString {.
    noSideEffect, importcpp: "OpenNode", header: "DDataStd_TreeBrowser.hxx".}
type
  DDataStdTreeBrowserbaseType* = DrawDrawable3D

proc getTypeName*(): cstring {.importcpp: "DDataStd_TreeBrowser::get_type_name(@)",
                            header: "DDataStd_TreeBrowser.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "DDataStd_TreeBrowser::get_type_descriptor(@)",
    header: "DDataStd_TreeBrowser.hxx".}
proc dynamicType*(this: DDataStdTreeBrowser): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "DDataStd_TreeBrowser.hxx".}

























