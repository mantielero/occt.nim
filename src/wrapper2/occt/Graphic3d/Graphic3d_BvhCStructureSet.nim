##  Created on: 2013-12-25
##  Created by: Varvara POSKONINA
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
  ../BVH/BVH_PrimitiveSet3d, Graphic3d_BndBox3d,
  ../NCollection/NCollection_IndexedMap

discard "forward decl of Graphic3d_CStructure"
type
  Graphic3d_BvhCStructureSet* {.importcpp: "Graphic3d_BvhCStructureSet",
                               header: "Graphic3d_BvhCStructureSet.hxx", bycopy.} = object of BVH_PrimitiveSet3d ##
                                                                                                          ## !
                                                                                                          ## Creates
                                                                                                          ## an
                                                                                                          ## empty
                                                                                                          ## primitive
                                                                                                          ## set
                                                                                                          ## for
                                                                                                          ## BVH
                                                                                                          ## clipping.
    ## !< Indexed map of structures.

  Graphic3d_BvhCStructureSetbase_type* = BVH_PrimitiveSet3d

proc get_type_name*(): cstring {.importcpp: "Graphic3d_BvhCStructureSet::get_type_name(@)",
                              header: "Graphic3d_BvhCStructureSet.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Graphic3d_BvhCStructureSet::get_type_descriptor(@)",
    header: "Graphic3d_BvhCStructureSet.hxx".}
proc DynamicType*(this: Graphic3d_BvhCStructureSet): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "Graphic3d_BvhCStructureSet.hxx".}
## using statement

proc constructGraphic3d_BvhCStructureSet*(): Graphic3d_BvhCStructureSet {.
    constructor, importcpp: "Graphic3d_BvhCStructureSet(@)",
    header: "Graphic3d_BvhCStructureSet.hxx".}
proc Size*(this: Graphic3d_BvhCStructureSet): Standard_Integer {.noSideEffect,
    importcpp: "Size", header: "Graphic3d_BvhCStructureSet.hxx".}
proc Box*(this: Graphic3d_BvhCStructureSet; theIdx: Standard_Integer): Graphic3d_BndBox3d {.
    noSideEffect, importcpp: "Box", header: "Graphic3d_BvhCStructureSet.hxx".}
proc Center*(this: Graphic3d_BvhCStructureSet; theIdx: Standard_Integer;
            theAxis: Standard_Integer): Standard_Real {.noSideEffect,
    importcpp: "Center", header: "Graphic3d_BvhCStructureSet.hxx".}
proc Swap*(this: var Graphic3d_BvhCStructureSet; theIdx1: Standard_Integer;
          theIdx2: Standard_Integer) {.importcpp: "Swap",
                                     header: "Graphic3d_BvhCStructureSet.hxx".}
proc Add*(this: var Graphic3d_BvhCStructureSet; theStruct: ptr Graphic3d_CStructure): Standard_Boolean {.
    importcpp: "Add", header: "Graphic3d_BvhCStructureSet.hxx".}
proc Remove*(this: var Graphic3d_BvhCStructureSet;
            theStruct: ptr Graphic3d_CStructure): Standard_Boolean {.
    importcpp: "Remove", header: "Graphic3d_BvhCStructureSet.hxx".}
proc Clear*(this: var Graphic3d_BvhCStructureSet) {.importcpp: "Clear",
    header: "Graphic3d_BvhCStructureSet.hxx".}
proc GetStructureById*(this: var Graphic3d_BvhCStructureSet; theId: Standard_Integer): ptr Graphic3d_CStructure {.
    importcpp: "GetStructureById", header: "Graphic3d_BvhCStructureSet.hxx".}
proc Structures*(this: Graphic3d_BvhCStructureSet): NCollection_IndexedMap[
    ptr Graphic3d_CStructure] {.noSideEffect, importcpp: "Structures",
                              header: "Graphic3d_BvhCStructureSet.hxx".}