import brepbuilderapi_types


type
  BRepBuilderAPI_BndBoxTreeSelector* {.header: "BRepBuilderAPI_BndBoxTreeSelector.hxx", importcpp: "BRepBuilderAPI_BndBoxTreeSelector", byref.} = object
    ## Class BRepBuilderAPI_BndBoxTreeSelector derived from UBTree::Selector
    ## This class is used to select overlapping boxes, stored in
    ## NCollection::UBTree; contains methods to maintain the selection
    ## condition and to retrieve selected objects after search.

  BRepBuilderAPI_BndBoxTree* {.header: "BRepBuilderAPI_BndBoxTreeSelector.hxx", importcpp: "BRepBuilderAPI_BndBoxTree".} = NCollection_UBTree[Standard_Integer, Bnd_Box]


{.push header: "BRepBuilderAPI_BndBoxTreeSelector.hxx".}

proc constructBRepBuilderAPI_BndBoxTreeSelector*(): BRepBuilderAPI_BndBoxTreeSelector {.constructor,importcpp: "BRepBuilderAPI_BndBoxTreeSelector::BRepBuilderAPI_BndBoxTreeSelector".}
    ## Constructor; calls the base class constructor

proc reject*(this: BRepBuilderAPI_BndBoxTreeSelector, theBox: Bnd_Box): Standard_Boolean  {.importcpp: "Reject".}
    ## Implementation of rejection method

proc accept*(this: var BRepBuilderAPI_BndBoxTreeSelector, theObj: Standard_Integer): Standard_Boolean  {.importcpp: "Accept".}
    ## Implementation of acceptance method This method is called when the
    ## bounding box intersect with the current. It stores the object - the
    ## index of box in the list of accepted objects.

proc clearResList*(this: var BRepBuilderAPI_BndBoxTreeSelector)  {.importcpp: "ClearResList".}
    ## Clear the list of intersecting boxes

proc setCurrent*(this: var BRepBuilderAPI_BndBoxTreeSelector, theBox: Bnd_Box)  {.importcpp: "SetCurrent".}
    ## Set current box to search for overlapping with him

proc resInd*(this: var BRepBuilderAPI_BndBoxTreeSelector): TColStd_ListOfInteger  {.importcpp: "ResInd".}
    ## Get list of indexes of boxes intersecting with the current box

{.pop.}  # header: "BRepBuilderAPI_BndBoxTreeSelector.hxx"
