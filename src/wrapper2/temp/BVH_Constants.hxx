# 1 "/usr/include/opencascade/BVH_Constants.hxx"
# 1 "<interno>"
# 1 "<línea-de-órdenes>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<línea-de-órdenes>" 2
# 1 "/usr/include/opencascade/BVH_Constants.hxx"
# 17 "/usr/include/opencascade/BVH_Constants.hxx"
enum
{


  BVH_Constants_MaxTreeDepth = 32,



  BVH_Constants_LeafNodeSizeSingle = 1,

  BVH_Constants_LeafNodeSizeAverage = 4,

  BVH_Constants_LeafNodeSizeDefault = 5,

  BVH_Constants_LeafNodeSizeSmall = 8,


  BVH_Constants_NbBinsOptimal = 32,

  BVH_Constants_NbBinsBest = 48,
};

namespace BVH
{

  const double THE_NODE_MIN_SIZE = 1e-5;
}
