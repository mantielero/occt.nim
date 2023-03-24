# https://github.com/ulikoehler/OCCUtils/blob/379359ada1f73daf446a3a6abb964a58079d6740/include/occutils/ShapeComponents.hxx
import ../explorer/explorer

#[
        /**
         * If [shape] is a solid, return shape.
         * Else, if there is a single solid within [shape],
         * returns that solid. Else, returns no value.
         * 
         * If there are multiple solids within shape:
         *  - if [firstOfMultipleOK] == true => get first of these solids
         *  - if [firstOfMultipleOK] == false => return std::nullopt
         */
        std::optional<TopoDS_Solid> TryGetSingleSolid (const TopoDS_Shape& shape, bool firstOfMultipleOK=true);
]#

#[
std::optional<TopoDS_Solid> OCCUtils::ShapeComponents::TryGetSingleSolid (const TopoDS_Shape& shape, bool firstOfMultipleOK) {
    // Is shape itself a solid?
    if(shape.ShapeType() == TopAbs_SOLID) {
        return TopoDS::Solid(shape);
    }
    // Else, expect there to be ONE sub-solid
    auto solids = ShapeComponents::AllSolidsWithin(shape);
    if(solids.empty()) {
        return std::nullopt;
    }
    if(solids.size() > 1 && !firstOfMultipleOK) {
        return std::nullopt;
    }
    return solids[0];
}
]#


#[
* Get all solids in a given shape
* (not including the shape itself, if it is a solid)

std::vector<TopoDS_Solid> OCCUtils::ShapeComponents::AllSolidsWithin(const TopoDS_Shape& shape) {
    std::vector<TopoDS_Solid> solids;
    for (TopExp_Explorer solidExplorer(shape, TopAbs_SOLID); solidExplorer.More(); solidExplorer.Next()) {
        const auto &face = TopoDS::Solid(solidExplorer.Current());
        if (face.IsNull()) {
            continue;
        }
        solids.push_back(face);
    }
    return solids;
}

]#

# proc allSolidsWithin*(shp:TopoDS_Shape) =
#   for s in shp.getSolids:
#     discard


proc tryGetSingleSolid*(shp:TopoDS_Shape) =
  # Is shape itself a solid?
  if shp.isSolid:
    return shp.isSolid

  # Else, expect there to be ONE sub-solid
  auto solids = ShapeComponents::AllSolidsWithin(shape);
  if(solids.empty()) {
      return std::nullopt;
  }
  if(solids.size() > 1 && !firstOfMultipleOK) {
      return std::nullopt;
  }
  return solids[0];