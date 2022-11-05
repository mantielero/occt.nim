## ! its friend classes (View,light,plane).

## !!!Ignored construct:  class V3d_Viewer : public Standard_Transient { friend class V3d_View ; DEFINE_STANDARD_RTTIEXT ( V3d_Viewer , Standard_Transient ) public : ! Create a Viewer with the given graphic driver and with default parameters:
## ! - View orientation: V3d_XposYnegZpos
## ! - View background: Quantity_NOC_GRAY30
## ! - Shading model: V3d_GOURAUD V3d_Viewer ( const Handle ( Graphic3d_GraphicDriver ) & theDriver ) ; ! Returns True if One View more can be defined in this Viewer. Standard_Boolean IfMoreViews ( ) const ; }
## Error: token expected: ; but got: :!!!
