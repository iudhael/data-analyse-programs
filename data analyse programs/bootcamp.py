def decision(python, numpy, pandas, matplotlib, abscence, niveau):
    moy = ( python*3 + numpy*4 + pandas*7 + matplotlib*5 )/19
    
    if abscence == 0:
        bonus = ( moy * 10 )/100
        moy = moy + bonus
        moy = round(moy,1)
        print(moy)
    elif abscence != 0:
        minus = ( ( moy * 5 )/100 ) * abscence
        moy = moy - minus
        moy = round(moy,1)
        print(moy)
    
    if niveau == 1 and moy == 12.0:
        return 'oui'
    
    
    if niveau == 2 and moy == 13.5:
        return 'oui'
  
    
    if niveau == 3 and moy == 14.0:
        return 'oui'
  
    
    if niveau == 4 and moy == 15.0:
        return 'oui'
   
    
    if niveau == 5 and moy == 17.0:
        return 'oui'
    return 'non'
if __name__ == "__main__":
    print(decision(python=15, numpy=12, pandas=14.6, matplotlib=18, abscence=2, niveau=5))