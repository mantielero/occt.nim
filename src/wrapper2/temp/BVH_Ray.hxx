# 1 "/usr/include/opencascade/BVH_Ray.hxx"
# 1 "<interno>"
# 1 "<línea-de-órdenes>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<línea-de-órdenes>" 2
# 1 "/usr/include/opencascade/BVH_Ray.hxx"
# 20 "/usr/include/opencascade/BVH_Ray.hxx"
template<class T, int N>
class BVH_Ray
{
public:

  typedef typename BVH::VectorType<T, N>::Type BVH_VecNt;

public:

  BVH_VecNt Origin;
  BVH_VecNt Direct;

public:

  BVH_Ray (const BVH_VecNt& theOrigin,
           const BVH_VecNt& theDirect) : Origin (theOrigin),
                                         Direct (theDirect) { }
};
