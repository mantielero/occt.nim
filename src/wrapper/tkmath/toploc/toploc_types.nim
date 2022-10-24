# PROVIDES: HandleTopLocDatum3D TopLocItemLocation TopLocLocation
# DEPENDS: StandardTransient StandardTransient StandardTransient

type
  HandleTopLocDatum3D* = Handle[TopLocDatum3D]
## ! Describes a coordinate transformation, i.e. a change
## ! to an elementary 3D coordinate system, or position in 3D space.
## ! A Datum3D is always described relative to the default datum.
## ! The default datum is described relative to itself: its
## ! origin is (0,0,0), and its axes are (1,0,0) (0,1,0) (0,0,1).

type
  TopLocItemLocation* {.importcpp: "TopLoc_ItemLocation",
                       header: "TopLoc_ItemLocation.hxx", bycopy.} = object ## ! Sets the
                                                                       ## elementary Datum to <D>
                                                                       ## ! Sets the exponent to <P>

type
  TopLocLocation* {.importcpp: "TopLoc_Location", header: "TopLoc_Location.hxx",
                   bycopy.} = object ## ! Constructs an empty local coordinate system object.
                                  ## ! Note: A Location constructed from a default datum is said to be "empty".

type
  TopLocDatum3D* {.importcpp: "TopLoc_Datum3D", header: "TopLoc_Datum3D.hxx", bycopy.} = object of StandardTransient ##
                                                                                                           ## !
                                                                                                           ## Constructs
                                                                                                           ## a
                                                                                                           ## default
                                                                                                           ## Datum3D.

type
  HandleTopLocSListNodeOfItemLocation* = Handle[TopLocSListNodeOfItemLocation]
  TopLocSListNodeOfItemLocation* {.importcpp: "TopLoc_SListNodeOfItemLocation",
                                  header: "TopLoc_SListNodeOfItemLocation.hxx",
                                  bycopy.} = object of StandardTransient

                                  bycopy.} = object of StandardTransient
type
  TopLocSListOfItemLocation* {.importcpp: "TopLoc_SListOfItemLocation",
                              header: "TopLoc_SListOfItemLocation.hxx", bycopy.} = object ##
                                                                                     ## !
                                                                                     ## Creates
                                                                                     ## an
                                                                                     ## empty
                                                                                     ## List.


