# PROVIDES: TopLocItemLocation TopLocLocation TopLocSListOfItemLocation
# DEPENDS:  Handle[TopLocDatum3D] StandardTransient  Handle[TopLocSListNodeOfItemLocation] StandardTransient

import tkmath/toploc/toploc_types
import tkernel/standard/standard_types
type
  TopLocItemLocation* {.importcpp: "TopLoc_ItemLocation",
                       header: "TopLoc_ItemLocation.hxx", bycopy.} = object 
                                                                       
                                                                       

  TopLocLocation* {.importcpp: "TopLoc_Location", header: "TopLoc_Location.hxx",
                   bycopy.} = object 
                                  

  TopLocSListOfItemLocation* {.importcpp: "TopLoc_SListOfItemLocation",
                              header: "TopLoc_SListOfItemLocation.hxx", bycopy.} = object 
                                                                                     
                                                                                     
                                                                                     
                                                                                     
                                                                                     

  HandleTopLocDatum3D* = Handle[TopLocDatum3D]








  TopLocDatum3D* {.importcpp: "TopLoc_Datum3D", header: "TopLoc_Datum3D.hxx", bycopy.} = object of StandardTransient 
                                                                                                           
                                                                                                           
                                                                                                           
                                                                                                           
                                                                                                           



  HandleTopLocSListNodeOfItemLocation* = Handle[TopLocSListNodeOfItemLocation]



  TopLocSListNodeOfItemLocation* {.importcpp: "TopLoc_SListNodeOfItemLocation",
                                  header: "TopLoc_SListNodeOfItemLocation.hxx",
                                  bycopy.} = object of StandardTransient

                                  bycopy.} = object of StandardTransient



