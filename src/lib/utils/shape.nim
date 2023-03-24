# https://github.com/ulikoehler/OCCUtils/blob/993fe2f6d3c5618c66a534b822b4190eedeae9d7/include/occutils/Shape.hxx
import ../../wrapper/topods/topods_includes
import ../../wrapper/topabs/topabs_types

proc isSolid*(shp: TopoDS_Shape):bool =
  # `true` if the given shape is a `TopoDS_Solid`
  shp.shapeType == topAbsSOLID


proc isCompound*(shp: TopoDS_Shape):bool =
  # `true` if the given shape is a `TopoDS_Solid`
  shp.shapeType == topAbsCOMPOUND