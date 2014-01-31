diff(x, x, 1).
diff(-U, x, -R):-diff(U, x, R).
diff(plus(U,V),x,plus(RU,RV)):-diff(U,x,RU),diff(V,x,RV).
diff(minus(U,V),x,minus(RU,RV)):-diff(U,x,RU),diff(V,x,RV).
diff(times(U,V),x,plus(times(V,RU),times(U,RV))):-diff(U,x,RU),diff(V,x,RV).
