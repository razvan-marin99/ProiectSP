r = normrnd(0,1,[1,10]);  %generam random numerele
 z=r<0;  %matrice care intoarce 1 daca numarul de pe pozitie e negativ, 0 daca e pozitiv
 r(z)   %afiseaza doar numerele negative

