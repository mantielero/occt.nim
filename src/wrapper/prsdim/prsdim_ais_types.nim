#import ../ais/ais_types
import ../selectmgr/selectmgr_types

type
  #FIXME: for some reason the ais_types import is not working 
  AIS_InteractiveObject* {.importcpp: "AIS_InteractiveObject",
                         header: "AIS_InteractiveObject.hxx", bycopy.} = object of SelectMgrSelectableObject 



  PrsDimDimension* {.importcpp: "PrsDim_Dimension", header: "PrsDim_Dimension.hxx",
                    bycopy.} = object of AIS_InteractiveObject 

  PrsDimRelation* {.importcpp: "PrsDim_Relation", header: "PrsDim_Relation.hxx",
                   bycopy.} = object of AIS_InteractiveObject 
