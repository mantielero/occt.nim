# 1 "/usr/include/opencascade/Aspect_FrustumLRBT.hxx"
# 1 "<interno>"
# 1 "<línea-de-órdenes>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<línea-de-órdenes>" 2
# 1 "/usr/include/opencascade/Aspect_FrustumLRBT.hxx"
# 18 "/usr/include/opencascade/Aspect_FrustumLRBT.hxx"
template<typename Elem_t>
struct Aspect_FrustumLRBT
{
  Elem_t Left;
  Elem_t Right;
  Elem_t Bottom;
  Elem_t Top;


  Aspect_FrustumLRBT() : Left (0), Right (0), Bottom (0), Top (0) {}


  template<typename Other_t>
  explicit Aspect_FrustumLRBT (const Aspect_FrustumLRBT<Other_t>& theOther)
  : Left (static_cast<Elem_t> (theOther.Left)),
    Right (static_cast<Elem_t> (theOther.Right)),
    Bottom(static_cast<Elem_t> (theOther.Bottom)),
    Top (static_cast<Elem_t> (theOther.Top)) {}


  void Multiply (Elem_t theScale)
  {
    Left *= theScale;
    Right *= theScale;
    Bottom *= theScale;
    Top *= theScale;
  }


  Aspect_FrustumLRBT<Elem_t> Multiplied (Elem_t theScale)
  {
    Aspect_FrustumLRBT<Elem_t> aCopy (*this);
    aCopy.Multiply (theScale);
    return aCopy;
  }
};
