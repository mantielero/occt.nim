# PROVIDES: PrsMgrListOfPresentableObjectsIter PrsMgrPresentation3d HandlePrsMgrPresentation3d HandlePrsMgrPresentationManager3d PrsMgrTypeOfPresentation3d PrsMgrPresentationManager3d
# DEPENDS:  NCollectionList[  NCollectionList[Handle[Prs3dPresentation]]  NCollectionSequence[Handle[PrsMgrPresentation]]  Handle[PrsMgrPresentationManager] StandardTransient  Handle[PrsMgrPresentation] Graphic3dStructure StandardTransient

import tkv3d/prsmgr/prsmgr_types
import tkv3d/graphic3d/graphic3d_types
import tkernel/ncollection/ncollection_types
import tkernel/standard/standard_types
type
  PrsMgrListOfPresentableObjectsIter*[HandlePrsMgrPresentableObject] {.importcpp:"NCollection_List<'0>::Iterator", header:"PrsMgr_ListOfPresentableObjects.hxx", bycopy.} = object

  PrsMgrPresentation3d* = PrsMgrPresentation

  HandlePrsMgrPresentation3d* = HandlePrsMgrPresentation

  HandlePrsMgrPresentationManager3d* = HandlePrsMgrPresentationManager

  PrsMgrTypeOfPresentation3d* {.size: sizeof(cint),
                               importcpp: "PrsMgr_TypeOfPresentation3d",
                               header: "PrsMgr_TypeOfPresentation3d.hxx".} = enum
    prsMgrTOP_AllView, prsMgrTOP_ProjectorDependant

  PrsMgrPresentationManager3d* = PrsMgrPresentationManager

  PrsMgrListOfPresentableObjects* = NCollectionList[
      Handle[PrsMgrPresentableObject]]

  PrsMgrListOfPresentations* = NCollectionList[Handle[Prs3dPresentation]]

  PrsMgrPresentations* = NCollectionSequence[Handle[PrsMgrPresentation]]

  HandlePrsMgrPresentationManager* = Handle[PrsMgrPresentationManager]

  PrsMgrPresentableObject* {.importcpp: "PrsMgr_PresentableObject",
                            header: "PrsMgr_PresentableObject.hxx", bycopy.} = object of StandardTransient 

  HandlePrsMgrPresentation* = Handle[PrsMgrPresentation]

  PrsMgrPresentation* {.importcpp: "PrsMgr_Presentation",
                       header: "PrsMgr_Presentation.hxx", bycopy.} = object of Graphic3dStructure 

                       header: "PrsMgr_Presentation.hxx", bycopy.} = object of Graphic3dStructure 
  PrsMgrPresentationManager* {.importcpp: "PrsMgr_PresentationManager",
                              header: "PrsMgr_PresentationManager.hxx", bycopy.} = object of StandardTransient 


