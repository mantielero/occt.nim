# 1 "/usr/include/opencascade/NCollection_Lerp.hxx"
# 1 "<interno>"
# 1 "<línea-de-órdenes>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<línea-de-órdenes>" 2
# 1 "/usr/include/opencascade/NCollection_Lerp.hxx"
# 20 "/usr/include/opencascade/NCollection_Lerp.hxx"
template<class T>
class NCollection_Lerp
{
public:





  static T Interpolate (const T& theStart,
                        const T& theEnd,
                        double theT)
  {
    T aResult;
    NCollection_Lerp aLerp (theStart, theEnd);
    aLerp.Interpolate (theT, aResult);
    return aResult;
  }

public:


  NCollection_Lerp() : myStart(), myEnd() {}


  NCollection_Lerp (const T& theStart, const T& theEnd)
  {
    Init (theStart, theEnd);
  }


  void Init (const T& theStart, const T& theEnd)
  {
    myStart = theStart;
    myEnd = theEnd;
  }





  void Interpolate (double theT, T& theResult) const
  {
    theResult = (1.0 - theT) * myStart + theT * myEnd;
  }

private:
  T myStart;
  T myEnd;
};
