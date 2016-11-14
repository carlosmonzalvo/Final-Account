//
//  Inverso.swift
//  Final Account
//
//  Created by Pedro Carlos Monzalvo Navarro on 14/11/16.
//  Copyright © 2016 Pedro Carlos Monzalvo Navarro. All rights reserved.
//

import Foundation
import UIKit

class Inverso{
    
<<<<<<< HEAD
    var a: Float!
    var b: Float!
    
    init(a: Float, b: Float){
        self.a = a
        self.b = b
    }
    
    func ejecutarAlgoritmo(){
        //ALgoritmo en C
        main()
            {
                int anterior,a,b,congruente[5],inverso[5],mcd,ban=1,m=0,n=2,i=1;
                a=13;
                b=2;
                mcd=euclides(a,b);
                if(mcd!=1)
                {
                    printf("a y b no son primos");
                    system("pause");
                    return 0;
                }else
                {
                    //caso a<b
                    if(a<b){
                        do
                        {
                            m++;
                            if(a*m-1==b)
                            {
                                ban=0;
                                inverso[0]=m;
                                congruente[0]=a*(m)-1;
                            }else if(a*(-m)-1==-b){
                                ban=0;
                                inverso[0]=-m;
                                congruente[0]=-a*(m)-1;
                            }
                        }while(ban==1);
                    }else{
                        // caso si a>b multiplicar por el doble
                        do{
                            m=0;
                            do{
                                m++;
                                if(a*m-1==n*b){
                                    ban=0;
                                    inverso[0]=m;
                                    congruente[0]=-a*(-m)-1;
                                }else if(a*(-m)-1==-n*b)
                                {
                                    ban=0;
                                    inverso[0]=-m;
                                    congruente[0]=-a*(m)-1;
                                    //m negativa
                                }
                            }while(m<=n);
                            n=n*2;
                        }while(ban==1);
                    }//fin caso a>b
                    for(i=0;i<5;i++){
                        //para los demas valores
                        if(i>0){
                            congruente[i]=a*(inverso[i-1]+congruente[i-1])-1;
                            inverso[i]=inverso[i-1]+congruente[i-1];
                        }
                        printf("inverso[%i] = %i congruente con %i \n",i,inverso[i],congruente[i]); 
                    }//fin for
                    
                }//else
                
                system("pause");
        }
        
        int euclides(int a,int b){
            int r,c,mcd;
            
            do{
                if (a!=0 && b!=0){
                    c=a/b;
                    r=a%b;
                }
                if(a==((b*c)+r)){
                    a=b;
                    b=r;
                }
            }while(a!=0 && b!= 0);
            
            if(a==0)
            mcd=b;
            else
            mcd=a;
            //printf("%i",mcd);
            return mcd;
        }
=======
    class func ejecutarAlgoritmo(a: Float, b: Float){
>>>>>>> origin/master
        
    }
}
