import ../tkv3d/graphic3d/graphic3d_types
import ../../tkernel/ncollection/ncollection_types
import ../../tkernel/standard/standard_types
type
  PrsMgrListOfPresentableObjectsIter*[HandlePrsMgrPresentableObject] {.importcpp:"NCollection_List<'0>::Iterator", header:"PrsMgr_ListOfPresentableObjects.hxx", bycopy.} = object

  PrsMgrTypeOfPresentation3d* {.size: sizeof(cint),
                               importcpp: "PrsMgr_TypeOfPresentation3d",
                               header: "PrsMgr_TypeOfPresentation3d.hxx".} = enum
    prsMgrTOP_AllView, prsMgrTOP_ProjectorDependant

  PrsMgrListOfPresentableObjects* = NCollectionList[
      Handle[PrsMgrPresentableObject]]

  PrsMgrListOfPresentations* = NCollectionList[Handle[Prs3dPresentation]]

  PrsMgrPresentations* = NCollectionSequence[Handle[PrsMgrPresentation]]

  PrsMgrPresentableObject* {.importcpp: "PrsMgr_PresentableObject",
                            header: "PrsMgr_PresentableObject.hxx", bycopy.} = object of StandardTransient 

  PrsMgrPresentation* {.importcpp: "PrsMgr_Presentation",
                       header: "PrsMgr_Presentation.hxx", bycopy.} = object of Graphic3dStructure 
                       header: "PrsMgr_Presentation.hxx", bycopy.} = object of Graphic3dStructure 

  HandlePrsMgrPresentation* = Handle[PrsMgrPresentation]

  HandlePrsMgrPresentation3d* = HandlePrsMgrPresentation

  PrsMgrPresentation3d* = PrsMgrPresentation

                       header: "PrsMgr_Presentation.hxx", bycopy.} = object of Graphic3dStructure 
  PrsMgrPresentationManager* {.importcpp: "PrsMgr_PresentationManager",
                              header: "PrsMgr_PresentationManager.hxx", bycopy.} = object of StandardTransient 

  HandlePrsMgrPresentationManager* = Handle[PrsMgrPresentationManager]

  HandlePrsMgrPresentationManager3d* = HandlePrsMgrPresentationManager

  PrsMgrPresentationManager3d* = PrsMgrPresentationManager

