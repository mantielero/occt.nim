# PROVIDES: TopLocMapIteratorOfMapOfLocation TopLocItemLocation TopLocLocation TopLocSListOfItemLocation
# DEPENDS:  NCollectionIndexedMap[TopLocLocation,  NCollectionDefaultHasher[TopLocLocation]  NCollectionMap[TopLocLocation, TopLocMapLocationHasher]  Handle[TopLocDatum3D] StandardTransient  Handle[TopLocSListNodeOfItemLocation] StandardTransient

import ../ncollection/ncollection_types
import ../standard/standard_types
type
  TopLocMapIteratorOfMapOfLocation* {.importcpp:"NCollection_Map<TopLoc_Location,TopLoc_MapLocationHasher>::Iterator", header: "TopoDS_MapOfLocation.hxx", bycopy.} = object

  TopLocItemLocation* {.importcpp: "TopLoc_ItemLocation",
                       header: "TopLoc_ItemLocation.hxx", bycopy.} = object 

  TopLocLocation* {.importcpp: "TopLoc_Location", header: "TopLoc_Location.hxx",
                   bycopy.} = object 

  TopLocSListOfItemLocation* {.importcpp: "TopLoc_SListOfItemLocation",
                              header: "TopLoc_SListOfItemLocation.hxx", bycopy.} = object 

  TopLocIndexedMapOfLocation* = NCollectionIndexedMap[TopLocLocation,
      TopLocMapLocationHasher]

  TopLocMapLocationHasher* = NCollectionDefaultHasher[TopLocLocation]

  TopLocMapOfLocation* = NCollectionMap[TopLocLocation, TopLocMapLocationHasher]

  HandleTopLocDatum3D* = Handle[TopLocDatum3D]

  TopLocDatum3D* {.importcpp: "TopLoc_Datum3D", header: "TopLoc_Datum3D.hxx", bycopy.} = object of StandardTransient 

  HandleTopLocSListNodeOfItemLocation* = Handle[TopLocSListNodeOfItemLocation]

  #HandleTopLocSListNodeOfItemLocation* = Handle[TopLocSListNodeOfItemLocation]
  TopLocSListNodeOfItemLocation* {.importcpp: "TopLoc_SListNodeOfItemLocation",
                                  header: "TopLoc_SListNodeOfItemLocation.hxx",
                                  bycopy.} = object of StandardTransient
                                  #bycopy.} = object of StandardTransient


